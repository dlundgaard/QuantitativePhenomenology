
#let progress(current, lower, upper) = {
  let proportion_upper = 100% * (current / upper)
  let proportion_lower = 100% * (current / lower)
  let boundary = 100% * lower / upper
  let marker_width = 1%
  let marker_lower = boundary - marker_width / 2
  let marker_upper = boundary + marker_width / 2
  let marker_color = color.luma(150)

  rect(
    fill: gradient.linear(
     // (black, 0%),
      // (black, proportion_upper),
      // (silver, proportion_upper),
      // (silver, 100%),
      (black, 0%),
      (black, calc.min(proportion_upper, marker_lower)),
      (silver, calc.min(proportion_upper, marker_lower)),
      (silver, marker_lower),
      (marker_color, marker_lower),
      (marker_color, marker_upper),
      (black, marker_upper),
      (black, calc.max(marker_upper, calc.min(proportion_upper, 100%))),
      (silver, calc.max(marker_upper, calc.min(proportion_upper, 100%))),
      (silver, 100%),
    ),
    width: 15em,
    height: 1.2em,
    radius: 15%,
  )
}

#import "@preview/wordometer:0.1.4": word-count

#let char_count(content, discount: 0) = {
  word-count(body => [
    #place(
      top + left,
      dy: -2.1cm,
      context[
        #let amount_figures = int(counter(figure).final().at(0))
        #let total_char_count = body.characters + (800 * amount_figures) - discount
        #let amount_standard_pages = total_char_count / 2400
        #align(horizon)[
          #stack(
            dir: ltr,
            spacing: 0.2cm,
            progress(amount_standard_pages, 17, 20),
            text(size: 0.9em)[#(calc.round(amount_standard_pages, digits:1)) pages (#total_char_count chars)],
          )
        ]
      ]
    )
    #content
  ], exclude: "figure-body")
  // ])
}

