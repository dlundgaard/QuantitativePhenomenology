#let setup(doc, title: "", author: "", line_height: 0.6em) = {

set document(
  title: title,
  author:  author,
)

set page(
  paper: "a4",
  numbering: "1 of 1",
)
set par(
  justify: true,
  leading: line_height,
  linebreaks: "optimized",
)
set text(
  // font: "New Computer Modern",
  // size: 11pt,
  font: "Sabon",
  size: 10.5pt,
)
set figure(
  gap: 1.6em,
)
set figure.caption(
  separator: ".",
)
set table(
  stroke: gray + 0.2pt,
  inset: 0.5em, 
  align: center,
)
set cite(
  style: "american-psychological-association",
)

show heading: set block(above: 1.6em, below: 0.8em)
show figure: set block(
  width: 100%,
  radius: 1%,
  inset: (top: 0.2em, bottom: 0em, left: 0em, right: 0em), 
)
show bibliography: set text(
  size: 0.9em,
)
show bibliography: set par(
  leading: 0.9 * line_height,
)
show table: set block(
  width: 95%,
)
show table: set text(
  size: 0.65em,
)
show figure.caption: caption => [
  #align(left)[#text(size: 9pt)[
    #text(weight: "bold")[#caption.supplement #context[#caption.counter.display(caption.numbering)]#caption.separator]
    #text(style: "italic")[#caption.body]
  ]]
]
show link: this => underline[#this]

set page(
  margin: (x: 3cm, top: 3.6cm, bottom: 3cm),
  footer: grid(
    columns: (1fr, 1fr, 1fr),
    align: (left, center, right),
    image("assets/au_logo_international.png", height: 1.2cm),
    h(1fr),
    image("assets/au_seal.png", height: 1.2cm),
  ),
  footer-descent: 0%,
)

include "coverpage.typ"

// pagebreak()
// text(size: 1.2em)[#outline(
//   title: "Table of Contents",
//   indent: 2em,
//   depth: 3,
// )]

set page(
  margin: (x: 1.6cm, top: 3.2cm, bottom: 3cm),
  columns: 2,
  header: rect(
    text(
      size: 0.9em,
      fill: color.luma(100),
      grid(
        columns: 3,
        [Quantitative Phenomenology],
        h(1fr),
        [B.Sc. Thesis, Cognitive Science],
      )
    ),
    stroke: (bottom: color.luma(100) + 0.2pt)
  ),
  header-ascent: 0.6cm,
  footer: align(center)[
    #text(
      size: 0.8em, 
      fill: color.luma(100)
    )[#context{counter(page).display("1 of 1", both: true)}]
  ],
  footer-descent: 50%,
)

doc
}