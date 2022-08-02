using Franklin, Dates

function hfun_bar(vname)
  val = Meta.parse(vname[1])
  return round(sqrt(val), digits=2)
end

function hfun_m1fill(vname)
  var = vname[1]
  return pagevar("index", var)
end

function lx_baz(com, _)
  # keep this first line
  brace_content = Franklin.content(com.braces[1]) # input string
  # do whatever you want here
  return uppercase(brace_content)
end

function hfun_list_posts(folders)
    pages = String[]
    root = Franklin.PATHS[:folder]
    for folder in folders
        startswith(folder, "/") && (folder = folder[2:end])
        cd(root) do
            foreach(((r, _, fs),) ->  append!(pages, joinpath.(r, fs)), walkdir(folder))
        end # do
    end
    filter!(x -> endswith(x, ".md"), pages)
    for i in eachindex(pages)
        pages[i] = replace(pages[i], r"\.md$"=>"")
    end
    return list_pages_by_date(pages)
end

function list_pages_by_date(pages)
    # Collect required information from the pages
    items = Dict{Int,Any}()
    for page in pages
        date = pagevar(page, "date")
        date === nothing && error("no date found on page $page")
        date = Date(date)
        title = something(pagevar(page, "markdown_title"), pagevar(page, "title"))
        title === nothing && error("no title found on page $page")
        title = Franklin.md2html(title; stripp=true)
        stitle = something(pagevar(page, "title"), title) # for sorting (no <code> etc)
        url = get_url(page)
        push!(get!(items, year(date), []), (date=date, title=title, stitle=stitle, url=url))
    end
    # Write out the list
    io = IOBuffer()
    for k in sort!(collect(keys(items)); rev=true)
        year_items = items[k]
        # Sort primarily by date (in reverse) and secondary by title
        lt = (x, y) -> x.date == y.date ? x.stitle > y.stitle : x.date < y.date
        sort!(year_items; lt=lt, rev=true)
        print(io, """
            <div class="posts-group">
              <div class="post-year">$(k)</div>
              <ul class="posts-list">
            """)
        for item in year_items
            print(io, """
                    <li class="post-item">
                      <a href=\"$(item.url)\">
                        <span class="post-title">$(item.title)</span>
                        <span class="post-day">$(Dates.format(item.date, "d u"))</span>
                      </a>
                    </li>
                """)
        end
        print(io, """
              </ul>
            </div>
            """)
    end
    return String(take!(io))
end

function hfun_get_url()
    Franklin.get_url(Franklin.locvar("fd_rpath"))
end