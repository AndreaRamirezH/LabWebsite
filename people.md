+++
title = "People"
hascode = true
tags = ["people"]
+++

## Current team members

```julia:teamcards
#hideall
team = [
  (name="Dr. Timothy O'Leary", pic="avatar.jpg", title="Principal Investigator", vitae="", email="tso24@cam.ac.uk"),
  (name="Dr. Thiago Burghi", pic="Thiago.jpg", title="Research Associate", vitae="", email="tbb29@cam.ac.uk"),
  (name="Dr. Michael Rule", pic="avatar.jpg", title="Research Associate", vitae="", email="mer49@cam.ac.uk"),
  (name="Thomas Burger", pic="Thomas.jpg", title="Ph.D. Student", vitae="", email="tsjb2@cam.ac.uk"),
   (name="Rory Byrne", pic="avatar.jpg", title="Ph.D. Student", vitae="", email="rb2053@cam.ac.uk"),
  (name="Charles Micou", pic="Charlie.jpeg", title="Ph.D. Student", vitae="", email="cm704@cam.ac.uk"),
  (name="Andrea Ramirez-Hincapie", pic="Andrea.jpg", title="Ph.D. Student", vitae="", email="air28@cam.ac.uk"),
  (name="Ildiko Stark", pic="Ildiko.jpg", title="Ph.D. Student", vitae="", email="is425@cam.ac.uk"),
  (name="Andrey Stoychev", pic="Andy.jpg", title="Ph.D. Student", vitae="", email="avs44@cam.ac.uk"),
   (name="Harry Wang", pic="avatar.jpg", title="Ph.D. Student", vitae="", email="hw668@cam.ac.uk"),
  ]

"@@cards @@row" |> println

for person in team
  """
  @@column
    \\card{$(person.name)}{$(person.pic)}{$(person.title)}{$(person.vitae)}{$(person.email)}
  @@
  """ |> println
end
println("@@ @@") # end of cards + row
```

\textoutput{teamcards}

## Past team members

```julia:teamcards
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
```

\textoutput{teamcards}