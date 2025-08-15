
= Results <results>

Results of multivariate multilevel modeling are summarized in @model_fit_summary. Posterior distributions for parameter estimates are visualized in @cosine_sim_distributions. 

#figure(
  grid(
    columns: (1fr, 1fr, 1fr),
    column-gutter: 0%,
    image("assets/OBN_fit.png"),
    image("assets/AED_fit.png"),
    image("assets/VIR_fit.png"),
  ),
  caption: [Parameter estimate distributions for compounds' cosine similarity with OAV dimensions. Vertical lines denote grand median within each dimension.],
  scope: "parent", 
  placement: top,
)<cosine_sim_distributions>

#figure(
  table(
    //columns: 4,
    columns: (3fr, 10fr, 4fr, 7fr),
    align: (center, right, right, right),
    stroke: (x, y) => (
	  top: if y == 0 or x == 0 and ((y > 1 and y < 8) or (y > 8 and y < 15) or (y > 15))  { white } else { 0.2pt + gray },
	 ),
    table.header([], [*Predictor Term*], [*Estimate*], [*89% Cred. Int.*]),
    ..csv("assets/model_summary.csv").flatten(),
  ),
  caption: [Summary of posterior estimates obtained from the generalized linear model. Values are in cosine similarity units.],
  placement: top,
)<model_fit_summary>

We find MDMA unambiguously associated with the lowest propensity for both Oceanic Boundlessness, Anxious Ego-Dissolution and Visual Restructuralization. DMT stood out as associated with the greatest degree of both Oceanic Boundlessness and Visual Restructuralization. Anxious Ego-Dissolution was found to be most pronounced in Psilocybin, although there was substantial uncertainty in the parameter estimate which was only partly separated from the from the overlapping distributions of DMT, LSD and Ketamine, respectively. 

The two predictors added to control for unbalanced group demographics yielded non-zero yet small estimates. 
Each year lived up until the experience took place was found to be associated with a slight negative influence on the propensity for each phenomenological dimension. However, considering that the largest inter-compound gap in age distribution was on the order of 2.2 years (25.1 years mean for Ketamine and 22.9 years mean for LSD; see @corpus_overview), age effects were of minimal scope in terms of comparing the compounds.  

Meanwhile, the effect associated with reported sex tended decidedly towards reduced expression for males in all three phenomenological dimensions, though with substantial uncertainty of magnitude. The effect of maleness was estimated to be twice as large for Anxious Ego-Dissolution as for Oceanic Boundlessness and Visual Restructuralization, respectively. However, ut should be noted that because the largest imbalance in sex distribution between any two compounds was a 25% shift between MDMA (63% male) to DMT (88% male), the magnitude of any inter-compound confounding due to sex — had it not been controlled for — would have been limited to 25% of the parameter estimate. 

/*
Juxtaposing with 
deviation

#lorem(100)
#figure(
  image("assets/decomposed_contour_NV-embed.png"),
  caption: [Two-dimensional projection of vector embeddings obtained from LDA. Contours denote 50th, 75th and 99th percentiles.],
  // scope: "parent", placement: top,
)<decomposed_contour>

#lorem(120)

#figure(
  image("assets/dimensions_heatmap.png"),
  caption: [Heatmap showing relative prevalence of APZ-OAV phenomenological dimension across compounds.],
)<dimensions_heatmap>

#lorem(130)

#figure(
  image("assets/factor_loadings.png"),
  caption: [Top 10 (by magnitude) semantic classes correlating with each of the two dimensions obtained from LDA.],
)<factor_loadings>


#import "@preview/subpar:0.1.1"

#place(
  top,
  float: true,
  scope: "parent",
  subpar.grid(
    figure(image("assets/decomposed_contour.png"), caption: []), <LDA_decomposition.a>,
    figure(image("assets/factor_loadings.png"), caption: []), <LDA_decomposition.b>,
    caption: [(a) Two-dimensional projection of vector embeddings via Linear Discriminant Analysis. (b) Top 10 (by magnitude) factor loadings with respect to the two dimensions obtained from LDA.],
    columns: (1fr, 1fr),
    placement: top,
    label: <LDA_decomposition>
  )
)

#figure(
  grid(
    columns: (1fr, 1fr),
    image("assets/decomposed_contour.png"),
    image("assets/factor_loadings.png"),
  ),
  caption: [Left: Two-dimensional projection of vector embeddings via Linear Discriminant Analysis. Right: Top 10 (by magnitude) factor loadings with respect to the two dimensions obtained from LDA.],
  scope: "parent", 
  placement: top,
)<LDA_decomposition>

#figure(
  image("assets/decomposed_contour.png"),
  caption: [Two-dimensional projection of vector embeddings obtained from LDA. Contours denote 50th, 75th and 99th percentiles.],
  // scope: "parent", placement: top,
)<decomposed_contour>

#figure(
  image("assets/factor_loadings.png"),
  caption: [Top 10 (by magnitude) semantic classes correlating with each of the two dimensions obtained from LDA.],
)<factor_loadings>

#figure(
  image("assets/decomposed_contour_all.png"),
  caption: [Two-dimensional LDA projection across of all psychoactive compounds in the dataset. Contours denote 50th and 90th percentiles.],
  // scope: "parent", placement: top,
)<decomposed_contour_all>
*/


