# This file was generated, do not modify it. # hide
#hideall
past_team = [
  (name="Adriano Bellotti", pic="", title="Ph.D. Student", vitae="currently somewhere else", email=""),
  (name="Adrianna R Loback", pic="", title="", vitae="currently...", email=""),
  ]

"@@cards @@row" |> println

for person in past_team
  """
  @@column
    \\card{$(person.name)}{$(person.pic)}{$(person.title)}{$(person.vitae)}{$(person.email)}
  @@
  """ |> println
end
println("@@ @@") # end of cards + row