# This file was generated, do not modify it. # hide
#hideall
past_team = [
  (name="Saeed Aljaberi", pic="avatar.jpg", title="Ph.D. Student", vitae="", email=""),
  (name="Adriano Bellotti", pic="avatar.jpg", title="Ph.D. Student", vitae="", email=""),
  (name="Kristine Heiney", pic="Kristine.jpg", title="Ph.D. Student", vitae="", email="kh732@cam.ac.uk"),
  (name="Dr. Monika Jozsa", pic="avatar.jpg", title="Research Associate", vitae="", email="mj555@cam.ac.uk"),
  (name="Adrianna R Loback", pic="avatar.jpg", title="Research Associate", vitae="", email=""),
  (name="Dr. Dhruva Raman", pic="avatar.jpg", title="Research Associate", vitae="",  email="dvr23@cam.ac.uk")
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