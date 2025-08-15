= Introduction <introduction>

_Psychedelics_, a subclass of hallucinogenic drugs, have recently seen a comeback from a blotted past @luPsychedelicsRenaissanceNew2021 @hadarPsychedelicRenaissanceClinical2023. They have asserted themselves as a promising therapeutic avenue for a swathe of mental disorders and afflictions, both clinical and subclinical @goodwinSingleDosePsilocybinTreatmentResistant2022 @griffithsPsilocybinCanOccasion2006 @erritzoeEffectPsilocybinEscitalopram2024 @reiffPsychedelicsPsychedelicAssistedPsychotherapy2020 @marksPsychedelicTherapyRoadmap2021 @lyPsychedelicsPromoteStructural2018. 
Psychedelic compounds are noteworthy not least because of the curious psychomimetic effects attending consumption and metabolism: the principal subjective effects in the acute phase are characterized by the occasioning of "non-ordinary" mental states — so-called altered states of consciousness — marked by profound alterations in affect, sensory perception, patterns of thought and sense of self @vollenweiderPsychedelicDrugsNeurobiology2020 @brouwerPivotalMentalStates2021. Such episodes are referred to colloquially as _trips_ or, more formally, _psychedelic experiences_. 

=== Pharmacology & Phenomenology

The psychoactive effects of psychedelic compounds are thought to be mediated by selectively binding to certain receptor types (often the serotonin $"5-HT"_"2A"$ subtype), altering the functional and structural connectivity of the brain @aghajanianSerotoninHallucinogens1999 @lyPsychedelicsPromoteStructural2018 @nicholsChemistryStructureActivity2018 @vargasPsychedelicsPromoteNeuroplasticity2023. Downstream, this allows for the emergence of cortical states that were previously highly improbable, resulting in novel, often strange, experiences. Borrowing an analogy from the field of statistical mechanics, one can think of a topological landscape representing the relative likelihoods of all theoretically realizable cortical states (see @landscape_attraction) being _warped_ (see @rebus_model), such that certain regions of this landscape go from being practically unreachable to being readily accessible @gallimoreDMTTopologyReality2014 @carhart-harrisREBUSAnarchicBrain2019 @singletonLSDPsilocybinFlatten2022. Between psychedelic compounds, the manner in which such a landscape is contorted varies with the particular chemical composition and resultant receptor affinities, giving rise to distinct phenomenological expressions @gallimoreRealitySwitchTechnologies2022. This differentiation in experiential character may account for how certain compounds appear especially well-suited for treating psychophysiological trauma @smithMDMAAssistedPsychotherapyTreatment2022 while others appeal more to existential issues @qiuRecreationalPsychedelicUsers2021.

While much work has been done to establish a relatively firm understanding of the neurobiology and psychopharmacology @vollenweiderClassicPsychedelicDrugs2022, research is comparatively lacking when it comes to one more elusive aspects of psychedelics: their _phenomenology_. That is, the manner in which consciousness is experienced from the first-person perspective. 
Attempts at establishing an empirical taxonomy of ASCs (altered states of consciousness) using standardized psychometric scales to measure phenomenological dimensions of psychedelic experiences date back to before the turn of the century, where #cite(label("dittrichStandardizedPsychometricAssessment1998"), form: "prose") proposed the APZ scale ("Aussergewöhnliche Psychische Zustande", German for "Extraordinary Psychological States") which has since morphed, due to #cite(label("studerusPsychometricEvaluationAltered2010"), form: "prose"), into the 11D-ASC (11-Dimensions Altered States of Consciousness Rating Scale). 
Hitherto, these psychometric scales have been administered in the form of bespoke questionnaires with quasi-continuous visual analogue scale ratings of identification with a sequence of statements. These constitute a narrowly targeted and arguably somewhat inflexible approach of measuring these kinds of constructs, and, almost by definition, do not capture any other information than they were designed for. 

=== Novel Opportunities

This study takes a computational cognitive linguistics approach to studying the phenomenology of psychedelics, aiming to explore and evaluate the feasibility of identifying such phenomenological dimensions from semantic features in retrospective written reports chronicling first-hand psychedelic experiences. The prospect of extracting phenomenological profiles directly from unconstrained written narratives presents an opportunity for exploring and understanding, at scale, the phenomenological world of these fascinating compounds. To do this, a state-of-the-art neural-network transformer model is employed to operationalize and quantify the semantic contents of experience reports, with the aim of recovering phenomenological dimensions from latent semantic features. At a high level, the aim is to measure the same mental constructs as validated, questionnaire-based scales of phenomenology, but doing so by using sophisticated tools to extract this information from a much more flexible medium, i.e., unstructured narrative text reports.     

=== Computational Cognitive Linguistics

_Cognitive linguistics_ deal with how latent patterns in linguistic expression can offer glances at mental construal, exposing the inner workings of cognition. Such patterns may serve as "[...] a lens on the mind" @evansCognitiveLinguistics2012. Using computational Natural Language Processing (NLP) tools, large quantities of human-generated text can be leveraged to identify latent semantic patterns. Such techniques have proven fruitful in a variety of cognitive science domains, e.g., computational psychiatry @hansenSpeechTextbasedClassification2023 @nourTrajectoriesSemanticSpaces2023 @kruseInferringDepressionIts2024 @al-mosaiwiAbsoluteStateElevated2018, epidemiological- and crowd psychology @aielloHowEpidemicPsychology2021 @horneImpactCrowdsNews2017 and political ideology @zmigrodPartisanMindExtreme2020 @zmigrodRoleCognitiveRigidity2020. 

The idea of applying NLP and computational linguistic approaches to psychedelics is not, in itself, novel. See for example #cite(label("zamberlanVarietiesPsychedelicExperience2018"), form: "prose") which explores the relationship between psychedelic molecules' neuropharmacological binding profiles to their subjective effects, #cite(label("sanzExperienceElicitedHallucinogens2018"), form: "prose") investigating the likeness of hallucinogenic experiences and dreams, #cite(label("friedmanTrajectoriesSentiment118162024"), form: "prose") surveying the unfolding of psychedelic experiences in terms of temporal dynamics over the duration of the experience as well as #cite(label("qiuRecreationalPsychedelicUsers2021"), form: "prose") exploring the connection between encounters with mystical entities and ensuing impact on subjective well-being. 

#figure(
  grid(
    align: center,
    columns: (1fr, 1fr),
    image("assets/gallimore_landscape.png", height: 8em),
    image("assets/gallimore_state_transition.png"),
  ),
  caption: [Topological landscape representation of relative likelihoods for realizable cortical states @gallimoreRealitySwitchTechnologies2022.],
  placement: top,
)<landscape_attraction>

#figure(
  image("assets/rebus_model.jpg"),
  caption: [REBUS (relaxed beliefs under psychedelics) conceptualization. @carhart-harrisREBUSAnarchicBrain2019.],
  placement: top,
)<rebus_model>

=== Semantic Embeddings

The core tenet, in the context of this study, is that textual semantics are, as a proxy, indicative of underlying cognitive/neurological states. In this vein, the areas of semantic space predominantly frequented under the influence of a psychedelic compound may point toward the distinct states of mind fostered and favored by that particular compound. 
The cognitive linguistic aspect is operationalized through semantic vector-embedding, which refers to using pre-trained transformer models (large language models) to map a text to a vector that then numerically represents the semantics of its contents @vaswaniAttentionAllYou2017 @jurafskyVectorSemanticsEmbeddings2024. This can be thought of as a kind of compression — in the sense that texts of any length are reduced to and represented by an object of the same size — aiming to capture all the information in the text that pertains to its linguistic meaning while discarding anything extrasemantic. Semantic embeddings are an attempt at leveraging the concept of statistical semantics: "[that] statistical patterns of human word usage can be used to figure out what people mean" @UniversityMichiganSI2010 @turneyFrequencyMeaningVector2010. The endeavor of statistical semantics, in turn, hinges on the distributional hypothesis of semantics @sahlgrenDistributionalHypothesis2006 which proposes that "[...] a word is characterized by the company it keeps" @firthjrStudiesLinguisticAnalysis1962. Essentially that words (or other lexical units) that frequently occur either together or in the same kinds of contexts, carry similar meanings and may be considered semantically alike @lenciDistributionalSemanticsLinguistic2008 @mcdonaldTestingDistributionalHypothesis2001. 

The distributional hypothesis can be generalized to the sentence-, and even document-level, using so-called _sentence transformers_ that modify pre-trained transformer models using Siamese- and triplet network structures to yield an aggregate embedding for whole text documents @reimers-2019-sentence-bert. 
By default, transformer models compute embeddings at the _token_ level, which tokens can take the form of words, subwords, n-grams or something more exotic depending on the tokenization algorithm employed @yangRethinkingTokenizationCrafting2024. The models are also inherently limited in the amount of tokens they can take into consideration concurrently, the so-called context-window. Both of these issues are handled by sentence transformers to produce embeddings at the document level such that we can represent the semantic content of whole experience reports in a latent semantic space.  

A useful feature of such embedding representations is the fact that they may be compared using similarity measures which aim to quantify their likeness. The canonical measure is that of cosine similarity, which denotes the degree to which two vectors _extend into the same general direction_ of the embedding space. When dealing with semantic embeddings, cosine similarity can offer a useful measure of similarity between two documents in terms of their subject matter, even when the documents are of different length @mcdonaldTestingDistributionalHypothesis2001 @singhalModernInformationRetrieval2001. Conceptually, adjacency in latent semantic space translates into how semantically related two texts are @grandSemanticProjectionRecovers2022. 

In the context of this study, the allure of semantic embeddings is the promise of placing first-hand reports of psychedelic experiences somewhere in a high-dimensional latent semantic space, then compare these embeddings to the embeddings for established phenomenological dimensions. If embeddings capture semantic variation pertaining to phenomenological concepts, we may be able to derive phenomenological profiles for a range of psychedelic compounds from free-form text reports by quantifying their likeness with certain established phenomenological dimensions. 

=== Objectives

This article will grapple chiefly with the following: 

#list(
  marker: [‣],
  [Is it feasible to quantify psychedelic compounds' respective dispositions toward phenomenological dimensions by means of semantically embedding narrative reports chronicling psychedelic experiences?],
  [Do phenomenological profiles obtained by relying on semantic embeddings replicate those observed in psychometric validation across psychedelic compounds?],
)

/*
#enum(
  numbering: n => super[#n],
  [Is it feasible to use semantic embeddings applied to free-from narrative text reports chronicling psychedelic experiences to quantify dispositions of various psychedelic compounds toward established phenomenological dimensions?],
  [Do phenomenological profiles recovered using this semantic embedding approach replicate those observed in psychometric validation across a range of psychedelic compounds?],
)


Most LLMs are built on transformers, a kind of deep learning architecture

Whereas one might think that psychedelic compounds are phenomenologically interchangeable, "cut from the same cloth" in the sense of varying only in potency, empirical results seem to back the idea that they have distinctive _phenomenological profiles_ @prellerPhenomenologyStructureDynamic2018@studerusPsychometricEvaluationAltered2010.

The idea seems to be that states of consciousness brought about by psychedelic compounds can be thought of as existing along certain invariant phenomenological axes or dimensions, and that each distinct psychedelic compound has an inherent phenomenological profile, understood as a combination of pheonomenological proclivities. 

phenomenological profiles may be derivable from the the semantic content of reports detailing the phenomenology of experiences engendered by these compounds. 


Embracing the topological landscape analogy, the aim of this investigation is to understand the phenomenological differentiation of the psychedelic compounds qualitatively by examining the semantic spaces they cover, i.e., in which _directions_ do they draw the mind, comparatively, and how this is different from the phenomenologies of other, non-psychedelic, yet psychoactive substances. 

#enum(
  numbering: n => super[#n],
  [How do the phenomenological profiles of individual psychedelic compounds diverge? Which (geometric) axes differentiate them from each other?],
  [Which features set the phenomonological experience of psychedelics apart from that of other recreational psychoactive substances, e.g., Cocaine or THC. Correspondingly, which features are shared by these ostensibly therapeutically viable compounds but not by other recreational psychoactive substances?],
  //[To what extent are phenomenological themes driven by culture? Are there indications that these themes vary diachronically indicating cultural effects as opposed to inherent psychotropic effects? When controlling for such cultural drift, what "essence" remains?],
)

It seems, still, that there is an untapped potential. Further insights to be gained from the available data. 

It not just a case of flattening or tilting this landscape to make certain regions more accesible, e.g., certain emotions. It seems also the case that the mechanics of transitioning between mental states are altered , such that the flow between thoughts may become either smooth and continuous or more abrupt and disjoined. 

This, incidentally, hints at why something like sentiment analysis would be insufficient and inappropriate for teasing apart subtle phenomenological properties of psychedelic experiences, which call for more proprietary constructs. 

Arguably for good reason, seeing as ineffability is one of the hallmarks of psychedelic experiences @qiuRecreationalPsychedelicUsers2021, making it notoriously difficult to probe. 

That is why this study represents an effort to synthesize available textual data and map out the distinct phenomenologies of psychedelic compounds while preserving and prioritizing interpretability. 

@timmermannPsychedelicsAlterMetaphysical2021

REBUS (relaxed beliefs under psychedelics) model describing a potential mechanism for explaining the down-stream psychological effects

#figure(
  image("assets/wormhole.png"),
  caption: [Geometrodynamics: Wormhole state transition suggested by #cite(label("ruffiniNeuralGeometrodynamicsComplexity2024"), form: "prose").],
)<geometrodynamics_model>

In spite of our best efforts, we don't seem to have a solid grasp on how the ostensibly therapeutic effects ensuing in the wake of experiences with certain psychdelic compounds. 

There have been suggestions that some psychedelic compounds can confer their benefits on mental well-being without the need for overt subjective effects by employing a so-called _microdosing_ regimen where the ingested dose is small enough for it not to be subjectively identifiable, but such practices have not (yet) been proved effecacious in randomised control studies @cavannaMicrodosingPsilocybinMushrooms2022. Conversely, it has also been proposed that the subjective of psychedelics are even necessary for conferring the prospective therapeutic effects @yadenSubjectiveEffectsPsychedelics2021.
@qiuRecreationalPsychedelicUsers2021

Have been used ritually in a number of cultures (SOURCE)

a challenge in the study of psychoactive compounds, particularly of the hallucinogenic kind highly salient kind that psychedelics represent

From latent patterns in linguistic expression
producing new discoveries improving our 
and inferences to be made  
made accessible by the advant technologies like the internet
infer
exposition
that borrows (principles) from statistical and mechanical physics 

deviate/diverge 
diversify

How would a "map of phenomenological expression" look and which latent phenomenological axes outline such a map? 

A number of unresolved questions remain in the subfield dealing with the phenomenology of psychedelics. 

hyper-plastic state
*/