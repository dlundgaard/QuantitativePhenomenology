#import "setup.typ": setup
#import "utils.typ": char_count

#show: document => setup(
  document,
  title: "Quantitative Phenomenology: Embedding Psychedelic Trip Reports",
  author: "Daniel Lundgaard",
)

#char_count([
#include "introduction.md"
#include "methodology.md"
#include "results.md"
#include "discussion.md"
#include "misc.md"
], discount: 4 * 800)

#bibliography(
  "assets/bib.bib",
  title: "References",
  style: "apa",
)