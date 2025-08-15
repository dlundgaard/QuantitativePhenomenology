= Methodology <methodology>

A computational approach is taken to quantify the semantics of text-based artifacts of psychedelic experiences as well as descriptions of phenomenological dimensions established in the literature on altered states of consciousness. This involves leveraging an LLM (large language model) to compute semantic vector representations in a latent semantic space, first for text paragraphs representative of established phenomenological dimensions and then for a corpus of experience reports across a range of psychedelic compounds. 
A generalized linear model is then employed to estimate each compound's affinity for each phenomenological dimension. 

#figure(
  image("assets/operationalization.png", width: 80%),
  caption: [Flowchart outlining conceptual steps of the approach taken to operationalize phenomenological dimensions using semantic embeddings.],
)<conceptual_flowchart>

=== Target Metrics

Although #cite(label("studerusPsychometricEvaluationAltered2010"), form: "prose") use structural equation modeling to argue that we can do better by furcating into 11 new lower-order, more granular dimensions, the three principal dimensions originally formulated in #cite(label("dittrichStandardizedPsychometricAssessment1998"), form: "author")'s APZ scale, collectively referred to with the initialism _OAV_ @Bodmer1994: _Oceanic Boundlessness (OBN), Anxious Ego-Dissolution (AED)_ and _Visual Restructuralization (VIR)_ seem well-suited for testing the proposed framework by virtue of their widespread, time-tested use as well as featuring comprehensive textual representations. An impression of the experiential qualities associated with- and defining of each of these dimensions may be gained from consulting @OAV_dimension_descriptions.
#cite(label("studerusPsychometricEvaluationAltered2010"), form: "prose"), by pooling data from 43 experimental studies, conducted a psychometric evaluation of the OAV dimensions across three compounds: Psilocybin, Ketamine and MDMA (see @studerus_OAV), which will serve as the benchmark against which we compare results obtained from the semantic embedding approach. 

#figure(
  image("assets/studerus_OAV_focused.jpg", width: 70%),
  caption: [OAV contrast across Psilocybin, Ketamine and MDMA. Adapted from #cite(label("studerusPsychometricEvaluationAltered2010"), form: "prose", supplement: "Figure 2").],
)<studerus_OAV>

=== Data

The empirical underpinnings for this inquiry take the form of a corpus of curated first-person psychedelic experience reports submitted/contributed to _Erowid Experience Vaults_ @erowidcenterErowidExperienceVaults. The vaults constitute an online repository of such experience reports and are hosted by the non-profit _Erowid Center_ (www.erowid.org). Erowid, founded in 1995, identify as "[...] a member-supported organization providing access to reliable, non-judgmental information about psychoactive plants, chemicals, and related issues" with a stated aim of fostering "[...] a world where people treat psychoactives with respect and awareness" @erowidcenterClarifyingErowidsVision2003. Erowid's vaults have featured extensively in the literature on psychedelics and their therapeutic as well as recreational use @valsecchiSubstantiatedSpacesInvisible2023 @moosederGlowingExperienceBad2022 @garcia-romeuCessationReductionAlcohol2019 @friedmanTrajectoriesSentiment118162024 @sanzExperienceElicitedHallucinogens2018. As of October 2024, the vaults collectively comprised more than 39 000 curated experience reports across more than 700 psychoactive substances. 

#figure(
  image("assets/data_selection.png", width: 60%),
  caption: [Flowchart describing the data selection process from preliminary Erowid query to the final corpus.],
  placement: top,
)<data_selection>

 A subset of reports from Erowid's Experience Vaults were compiled from an initial query for five compounds deemed suitable to addressing the questions posed. These included three of the "classic" serotonergic hallucinogens, DMT (N,N-dimethyltryptamine), LSD (lysergic acid diethylamide) and Psilocybin (4-phosphoryloxy-N,N-dimethyltryptamine), as well as the dissociative anaesthetic, Ketamine (2-(2-chlorophenyl)- 2-(methylamino)-cyclohexanone), and the empathogen/entactogen, MDMA (3,4-Methyl​enedioxy​methamphetamine). The latter two do not strictly belong to the pharmacological class of psychedelics but have been shown to have similar phenomenological properties and therapeutic applications @gigliucciKetamineElicitsSustained2013 @smithMDMAAssistedPsychotherapyTreatment2022. While Psilocybin, Ketamine and MDMA were included by virtue of guaranteeing a concrete reference for comparison in #cite(label("studerusPsychometricEvaluationAltered2010"), form: "prose"), LSD and DMT were included in order to generate testable hypotheses across an even wider range of compounds.   
 The five compounds are henceforth collectively referred to as _the psychedelic compounds_, although a more formally precise umbrella term when including MDMA and Ketamine would be _psychoplastogens_ @olsonPsychoplastogensPromisingClass2018 @benkoNaturalPsychoplastogensAntidepressant2020.  
This initial collection of experience reports was then filtered according to predetermined inclusion criteria. Reports pertaining to ingestion of more than one compound were discarded to avoid or at least limit the confounding effects of potential pharmacological interactions. Also, experience reports shorter than 100 words were discarded. Substance labels were recoded to represent the constituent molecule producing the psychotropic effects (e.g., "Mushrooms" was recoded to Psilocybin). 

From this emerges a rich corpus of 3817 experience reports across five compounds. These date from the year 2000 until 2024 and comprise more than 4 million words of visceral textual resource from which we may unearth insights into the comparative phenomenology of experiences elicited by a range of psychedelic compounds. Descriptive statistics for the corpus are listed in @corpus_overview. 

Text paragraphs representing each of three OAV dimensions (see @OAV_dimension_descriptions) were procured from the "Supporting Information" section of #cite(label("studerusPsychometricEvaluationAltered2010"), form: "prose"). 

  #figure(
  table(
    columns: (1fr, 2fr, 2fr, 2fr, 2fr, 2fr),
    align: (left, right, right, right, right, right),
    stroke: (x, y) => (
	  top: if y == 0  { white } else { 0.2pt + gray },
	  bottom: if y > 4 { white } else { 0.2pt + gray },
	 ),
    table.header([], [*Amount Reports*], [*Unique Authors\**], [*Sex Ratio*], [*Mean Age (range)*], [*Text Mass (median)*]),
	[MDMA], [571], [545], [37% female], [23.3 (16-58)], [479 564 words (641)],
	[Ketamine], [343], [332], [14% female], [25.1 (15-65)], [309 830 words (739)],
	[LSD], [1172], [1091], [20% female], [22.9 (14-65)], [1 657 821 words (1055)],
	[Psilocybin], [1102], [1032], [23% female], [25.0 (12-59)], [1 365 210 words (968)],
	[DMT], [629], [591],[12% female], [24.5 (15-54)], [654 127 words (818)],
	[*Combined*], [*3817*], [*3407*], [*22% female*], [*24.0 (12-65)*], [*4 466 552 words (895)*],
  ),
  caption: [Descriptive statistics for the compiled Erowid corpus. \*Not counting cases of author anonymity (58 instances in total).],
  scope: "parent", placement: top,
)<corpus_overview>

  #figure(
  block(width: 105%)[#table(
    columns: (2fr, 9fr),
    align: (left, left),
    stroke: (x, y) => (
	  top: if y > 0 { 0.2pt + gray } else { white },
	 ),
    table.header([*Dimension*], [*Textual Representation*]),
    ..csv("assets/OAV_dimension_descriptions.csv", delimiter: "|").flatten(),
  )],
  caption: [Textual representations of the three OAV scale dimensions: OBN (Oceanic Boundlessness), AED (Anxious Ego-Dissolution) and VIR (Visual Restructuralization). Derived from #cite(label("studerusPsychometricEvaluationAltered2010"), form: "prose", supplement: "Supplementary Table S6").],
  placement: top,
)<OAV_dimension_descriptions>

=== Data Processing & Analysis

Seeing as experience reports generally take the form of flowing prosaic text, apart from the removal of non-alphanumeric and non-punctuation characters no comprehensive text cleaning or other preprocessing was carried out. Text bodies of experience reports were passed to a transformer embedding model which computed a semantic embedding vector for each report. Similarly, text paragraphs characterizing each of the three OAV dimensions were fed to the same embedding model, yielding embedding vectors for each of the three dimensions in the same latent space as the experience reports. Then, for each dimension of phenomenology, cosine similarity against the embedding of each experience report was computed, yielding a measure of how semantically aligned each experience report is to that dimension. See @conceptual_flowchart for a schematic overview of the conceptual steps involved. 

The final step of the analysis involved fitting a multivariate multilevel generalized linear model @burknerAdvancedBayesianMultilevel2018 to distributions of cosine similarity with each phenomenological dimension across compounds. The statistical model posed cosine similarity for each dimension as Gaussian distributions centered around a mean resulting from a linear combination of terms. Terms of this linear combination included the main effect, which was the particular compound which elicited the experience, as well as predictors to control for age at the time of the experience (in years, if provided) and the stated (binary) sex (if provided). 
In mathematical notation, this would correspond to $#raw("CosineSimilarity") ~ #math.cal("N") (#raw("Compound + Age + Sex"))$. The model also incorporated varying intercepts across authors to enable proper discounted weighting of data points which stemmed from multi-report authors and were thus not independent. Global intercept terms were not fitted, facilitating intuitive interpretation of the absolute cosine similarity values associated with each respective compound. Prior distributions were set permissively, serving only the purpose of constraining parameter estimates to valid domains. 

=== Software

Semantic embeddings were generated using NVIDIA's flagship generalist embedding model available to consumers, `NV-Embed-v2` @lee2024nv, which, as of December 2024, had been the world-leading model on the MTEB (Massive Text Embedding Benchmark) task @muennighoff2022mteb for four months running. Based on the Mistral-7B-v0.1 architecture, the model features a latent-attention pooling layer and yields high-resolution embeddings in 4096-dimensional latent semantic space. Unlike generative AI models, this model is not equipped to output text in the form of natural language. Instead, it emits only document-level vectorized embeddings and is optimized exclusively for the task of semantic feature extraction. 

Text embedding and cosine similarity calculations were facilitated by the `sentence-transformers` library for interfacing with transformer embedding models @reimers-2019-sentence-bert. `pandas` @reback2020pandas @mckinneyDataStructuresStatistical2010 was used for data structures, `matplotlib` @hunterMatplotlib2DGraphics2007 for data visualization, `SciPy` @virtanenSciPy10Fundamental2020 for statistical models, and `Scikit-learn` @scikit-learn for machine learning algorithms. 
Bayesian model-fitting was achieved through the `brms` interface @burknerBrmsPackageBayesian2017 using `cmdstanr` @gabryCmdstanrInterfaceCmdStan2024 as the link to the probabilistic programming language, `stan` @carpenterStanProbabilisticProgramming2017.

/*  
, the prodrug that is eventually metabolized to the active metabolite, Psilocin
— as opposed to emoji-rich, chat-like text stubs characteristic of data derived from social media platforms —

The literature being rife with idiosyncratic taxonomies for the label "psychedelic" @kelmendiPsychedelics2022, this article will adopt a somewhat eclectic definition

A secondary reference will be the DMT and Esketamine (the S-enantiomer of ketamine) contrast (see @gouzoulis_OAV) by #cite(label("gouzoulis-mayfrankPsychologicalEffectsSKetamine2005"), form: "prose"). 
#figure(
  image("assets/Gouzoulis_OAV_focused.jpg", width: 80%),
  caption: [OAV contrast of DMT and Esketamine. Adapted from #cite(label("gouzoulis-mayfrankPsychologicalEffectsSKetamine2005"), form: "prose", supplement: "Fig. 1").],
)<gouzoulis_OAV>

a window into minds under the influence of these substances

`SpaCy` @Honnibal_spaCy_Industrial-strength_Natural_2020 served as the NLP pipeline framework, `TextDescriptives` @hansenTextDescriptivesPythonPackage2023 for computing descriptive linguistic metrics, `empath` @fastEmpathUnderstandingTopic2016 for lexical categorization, `pandas` @reback2020pandas @mckinneyDataStructuresStatistical2010 for data wrangling, `matplotlib` @hunterMatplotlib2DGraphics2007 for data visualization, `SciPy` @virtanenSciPyFundamentalAlgorithms2020 for statistical tools, and `Scikit-learn` @scikit-learn for machine learning algorithms. 
Semantic embeddings were obtained using `SpaCy`s English transformer pipeline which, under the hood, relies on the `RoBERTa` transformer architecture @liuRoBERTaRobustlyOptimized2019 developed by Meta AI (formerly known as Facebook AI). The model was configured with the default 12 hidden layers of size 768 and using byte-pair encoding for tokenization. 

overcoming rule-based limitations while preserving and facilitating interpretability

for the present exposition/this study
principal
of interest in approaching the questions 
facilitate
insights from vector-embedding psychedelic trip reports
Ancillary to this, a dataset resulting from a survey on challenging/adverse experiences with psychdelics is obtained from another study. 

nudging in a particular direction
inherent

There are multiple legitimate objections to these underlying assumptions, of which more will be said in the Discussion section. These notwithstanding, this approach still seems an avenue worth exploring due to its potential for dissecting the phenomenology of psychedelics from readily available textual data. 

generating semantic embeddings in order to explore the phenomenological psychedelic experiences, charting a map of phenomenologies. This approach takes advantage of the aptness of the human visual system in intuitively grasping landscapes or topographies. Each substance can then be represented as an island on a map indicating that extent to which that substance is associated with certain phenomenological property/attribute. 
*/

