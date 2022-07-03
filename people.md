+++
title = "People"
hascode = true
tags = ["people"]
+++

\toc

## Current team members

```julia:teamcards
#hideall
team = [
  (name="Dr. Timothy O'Leary", pic="", title="Principal Investigator", vitae="", email="tso24@cam.ac.uk"),
  (name="Dr. Thiago Burghi", pic="", title="Research Associate", vitae="", email="tbb29@cam.ac.uk"),
  (name="Dr. Monika Jozsa", pic="", title="Research Associate", vitae="", email="mj555@cam.ac.uk"),
  (name="Dr. Dhruva Raman", pic="", title="Research Associate", vitae="", email="dvr23@cam.ac.uk"),
  (name="Dr. Michael Rule", pic="", title="Research Associate", vitae="", email="mer49@cam.ac.uk"),
  (name="Thomas Burger", pic="", title="Ph.D. Student", vitae="", email="tsjb2@cam.ac.uk"),
  (name="Charles Micou", pic="", title="Ph.D. Student", vitae="", email="cm704@cam.ac.uk"),
  (name="Adriana Perez-Rotondo", pic="", title="Ph.D. Student", vitae="", email="ap2013@cam.ac.uk"),
  (name="Andrea Ramirez-Hincapie", pic="", title="Ph.D. Student", vitae="", email="air28@cam.ac.uk"),
  (name="Ethan Sorrell", pic="", title="Ph.D. Student", vitae="", email="ets30@cam.ac.uk"),
  (name="Ildiko Stark", pic="", title="Ph.D. Student", vitae="", email="is425@cam.ac.uk"),
  (name="Andrey Stoychev", pic="", title="Ph.D. Student", vitae="", email="avs44@cam.ac.uk"),
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
```

\textoutput{teamcards}