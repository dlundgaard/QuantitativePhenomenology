#set page(
    margin: (x: 3.6cm, y: 3cm),
    footer-descent: 50%,
)

= Introduction

#lorem(80)
This was shown by #cite(<zamberlanVarietiesPsychedelicExperience2018>, form: "prose").

= Methodology
#lorem(80)
#math.equation(
  block: true,
  $e^(i pi) + 1 = 0$
)
Which brings us to the following expression for a GLM (generalized linear model) where a transformation of the outcome variable, performed by the _link_ function, is explained by a linear combination of predictors.
#math.equation(
  block: true,
  $f#sub[link] [E(Y#sub[i] | x#sub[i])] = sum_(k=0)^n beta#sub[n] x#sub[kn] + epsilon#sub[i]$
)
#lorem(80)

= Results
#lorem(160)
#figure(
  // grid(
  //   columns: 2, 
  //   image("assets/fig1.png"),
  //   image("assets/fig2.png"),
  // ),
  image("assets/fig2.png", width: 75%),
  caption: [
    Linear Discriminant Analysis. 
  ],
)<LDA_contour>

#lorem(40)
#figure(
  image("assets/fig3.png", width: 75%),
  caption: [LDA factor loadings.],
)<LDA_factor_loadings>

#lorem(60)
@padmanabhanDefaultModeNetwork2017

#figure(
  image("assets/fig4.png", width: 75%),
  caption: [Relative frequency of word-tokens relating to the theme of "love".],
)<love_prevalence>

= Discussion
#lorem(80)
@murphyHarderDriveHard2022
@shevchukAdaptedColdShower2008
@kahnemanMapsBoundedRationality2003

#lorem(60)
@friedmanTrajectoriesSentiment112024
