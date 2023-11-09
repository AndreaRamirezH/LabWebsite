# This file was generated, do not modify it. # hide
#hideall
past_team = [
  (name="Saeed Aljaberi", pic="avatar.jpg", title="Ph.D. Student", vitae="", email=""),
  (name="Adriano Bellotti", pic="avatar.jpg", title="Ph.D. Student", vitae="", email=""),
  (name="Kristine Heiney", pic="Kristine.jpg", title="Ph.D. Student", vitae="", email=""),
  (name="Adriana Perez-Rotondo", pic="avatar.jpg", title="Ph.D. Student", vitae="", email=""),
  (name="Ethan Sorrell", pic="Ethan.jpg", title="Ph.D. Student", vitae="", email=""),
  (name="Dr. Adrianna R Loback", pic="avatar.jpg", title="Research Associate", vitae="", email=""),
  (name="Dr. Dhruva Raman", pic="avatar.jpg", title="Research Associate", vitae="",  email=""),
  (name="Dr. Monika Jozsa", pic="avatar.jpg", title="Research Associate", vitae="", email=""),
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