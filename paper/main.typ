#import "setup.typ": setup

#set document(
  title: "Quantitative Phenomenology: Vector-embedding Psychedelic Trip Reports",
  author:  "Daniel Lundgaard",
)
#show: document => setup(
  document,
  paper_texture: false,
)

#include "coverpage.typ"

#include "body.typ"

#colbreak()
#bibliography(
  "assets/bib.bib",
  title: "References",
  style: "apa",
)
