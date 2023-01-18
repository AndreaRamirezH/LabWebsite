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

function order_directories(path)
    items = Dict{Int, String}()

    path = path[findfirst('/', path):end]
    path = path[1:findlast('/', path)]

    return path
end

function hfun_wiki_navigation(folder)
    io = IOBuffer()
    buttons!(io, folder)
    return String(take!(io))
end
function buttons!(io::IOBuffer, folder)
    folder = only(folder)
        # make collapsible for folder
        # loop over content items
        #   if item == subfolders
        #       call buttons(item)
        #   else item == page
        #       link to page
        #   end

        pagecontents = readdir(folder; join=true)[isfile.(readdir(folder; join=true))]
        filter!(x -> endswith(x, ".md"), pagecontents)

        foldercontents= readdir(folder; join=true)[isdir.(readdir(folder; join=true))]

        displayname = folder
        print(io, """
            <button type="button" class="collapsible">$displayname</button>
            <div class="collapsiblecontent">
        """)

        for subfolder in foldercontents
            buttons!(io, ["$subfolder"],)
        end
        for page in pagecontents
            title = something(Franklin.pagevar(page, "markdown_title"), Franklin.pagevar(page, "title"))
            title === nothing && error("no title found on page $page")
            title = Franklin.md2html(title; stripp=true)
            print(io, """
            <a href=\"$(get_url(page))\">
                    <span class="post-title">$title</span>
            <br>
        """)
        end
        print(io, """
        </div>
        """)

end

function hfun_navigation(folders)
    pages = String[]
    folders = String[]

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

    # Collect required information from the pages
    items = Dict{String,Any}()
    for page in pages
        date = pagevar(page, "date")
        date === nothing && error("no date found on page $page")
        date = Date(date)
        path = String(page)
        path = order_directories(path)
        title = something(pagevar(page, "markdown_title"), pagevar(page, "title"))
        title === nothing && error("no title found on page $page")
        title = Franklin.md2html(title; stripp=true)
        stitle = something(pagevar(page, "title"), title) # for sorting (no <code> etc)
        url = get_url(page)
        push!(get!(items, String(path), []), (path=path, date=date, title=title, stitle=stitle, url=url))
    end

    # Write out the list
    io = IOBuffer()


    for k in sort!(collect(keys(items)); rev=false)
        path_items = items[k]
        # Sort by title
        lt = (x, y) -> x.stitle > y.stitle
        sort!(path_items; lt=lt, rev=true)
        if isdirpath(k)
            item = path_items[1]
            print(io, """
            <button type="button" class="collapsible">
                <a href=\"$(item.url)\">
                        <span class="post-title">$(item.title)</span>
            </button>
            """)
        else 
        print(io, """
            <button type="button" class="collapsible">$(k)</button>
            <div class="collapsiblecontent">
            """)
            for item in path_items
                print(io, """
                    <a href=\"$(item.url)\">
                            <span class="post-title">$(item.title)</span>
                    <br>
                """)
            end
        print(io, """
            </div>
            """)
        end
    end
        

    return String(take!(io))
end


function hfun_get_url()
    Franklin.get_url(Franklin.locvar("fd_rpath"))
end
