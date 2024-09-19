#let setup(doc, paper_texture: false) = {
  set page(
    paper: "a4",
    // background: image("assets/texture3_semi.jpg", width: 100%, height: 100%),
    background: if paper_texture [ #image("assets/texture3_semi.jpg", width: 100%, height: 100%) ] else [ #none ],
    numbering: "1 of 1",
    footer-descent: 40%,
    footer: 
      context {
        if counter(page).get().first() > 1 [
          #align(center)[
            #text(size: 0.9em)[
              #counter(page).display(
                  "1 of 1",
                  both: true,
              )
            ]
          ]
        ] else [
          #grid(
            columns: (1fr, 1fr, 1fr),
            align: (left, center, right),
            image("assets/au_logo_international.png", height: 1.2cm),
            h(1fr),
            image("assets/au_seal.png", height: 1.2cm),
          )
        ]
    }
  )
  set par(
    justify: true,
    // leading: 0.5em,
  )
  set text(
    font: "New Computer Modern",
    size: 10pt,
    // font: "Garamond",
    // font: "Liberation Serif",
    // font: "DejaVu Sans Mono",
    // font: "SF Mono",
    // weight: 300,
    // size: 9pt,
    // font: "Georgia",
    // size: 9pt,
  )
  set figure(
    gap: 1.6em,
  )
  set figure.caption(
    separator: ".",
  )
  set cite(
    style: "american-psychological-association",
  )

  show heading: set block(above: 2em, below: 1.4em)
  show figure: set block(
    width: 100%,
    radius: 1.6%,
    inset: (top: 0.6em, bottom: 1.6em), 
    stroke: color.luma(200) + 0.6pt,
  )
  show figure.caption: caption => [
    #align(left)[#text(size: 9pt)[
      #text(weight: "bold")[#"     "#caption.supplement #caption.counter.display(caption.numbering)#caption.separator]
      #caption.body
    ]]
  ]

  set page(
    margin: (x: 3.3cm, y: 3.3cm),
  )

  doc
}