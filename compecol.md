Computational science happens when algorithms, software, data management
practices, and advanced research computing are put in interaction with the
explicit goal of solving "complex" problems. Typically, problems are considered
complex when they cannot be solved appropriately with mathematical modelling
(*i.e.* the application of mathematical models that are not explicitely grounded
into empirical data) or data-collection only. Computational science is {==the
application to research questions of computational thinking==} [@Pap96], *i.e.*
the feedback loop of abstracting a problem to its core mechanisms, expressing a
solution in a way that can be automated, and using interactions between
simulations and data to refine the original problem or suggest new knowledge.
Computational approaches are commonplace in most areas of biology, to the point
where one would almost be confident that they represent a viable career path
[@Bou11]. Data usually collected in ecological studies have high variability,
and are time-consuming, costly, and demanding to collect. In parallel, many
problems lack appropriate formal mathematical formulations, which we need in
order to construct strong, testable hypotheses. For these reasons, computational
approaches hold great possibilities, notably to further ecological synthesis and
help decision-making [@PetPet12].

@Lev12 suggested that ecology (and evolutionary biology) should continue their
move towards a *marriage of theory and data*. In addition to the lack of
adequately expressed models, this effort is hampered by the fact that data and
models are often developed by different groups of scientists, and reconciling
both can be difficult. This has been suggested as one of the reasons for which
theoretical papers (defined as *papers with at least one equation in the main
text*) experience a sharp deficit in numbers of citations [@FawHig12]; this is
the tragic sign that empirical scientists do not see the value of theoretical
work, which of course can be blamed on both parties. One of the leading
textbooks for the mathematical models in ecology and evolution [@OttDay07] is
more focused with algebra and calculus, and not with the integration of models
with data. Other manuals that cover the integration of models and data tend to
lean more towards statistical models [@SoeHer08; @Bol08]. This paints a picture
of ecology as a field in which dynamical models and empirical data do not
interact much, and instead the literature develops in silos.

What is computational ecology? It is the application of computational thinking
to ecological problems. This defines three core characteristics of computational
ecology. First, it recognizes ecological systems as complex and adaptive; this
places a great emphasis on mathematical tools that can handle, or even require,
a certain degree of stochasticity [@Zha12; @Zha10]. Second, it understands that
data are the final arbiter of any simulation or model [@PetPet12]; this favours
the use of data-driven approaches and analyses [@Bea10]. On this point,
computational approaches differ greatly from modelling, that can often function
on their own. Finally, it accepts that some ecological systems are too complex
to be formulated in mathematical or programmatic terms [@Pas05]; the use of
conceptual, or "toy" models, as long as they can be confronted to empirical
data, is preferable to "abusing" mathematics by describing the wrong mechanism
well [@May04]. By contrast, modelling approaches are by construction limited to
problems that can be expressed in mathematical terms.

Ecology as a whole (and community ecology in particular) circumvented the
problem of model and data mismatch by investing in the development and
refinement of statistical models [see @WarFos14 for an excellent overview] and
"numerical" approaches [@LegLeg98] based on multivariate statistics. These
models are able to *explain* data, but very rarely do they give rise to new
predictions -- despite it being a very clear priority even if we "simply" seek
to further our understanding [@HouMcK17]. Computational ecology can fill this
niche; at the cost of a higher degree of abstraction, its integration of data
and generative models (*i.e.* models that, given rules, will generate new data)
can be helpful to initiate the investigation of questions that have not received
(or perhaps cannot receive) extensive empirical treatment, or for which usual
statistical approaches fall short. {++In particular, we argue that computational
approaches can serve a dual purpose. First, they can deliver a more predictive
science, because they work close to the data. Second, they can guide the
attention of researchers onto mechanisms of interests; in a context were time
and resources are finite, and the urgency to understand ecological systems is
high, this may be the main selling point of computational techniques.++}.

In a thought-provoking essay, @Mar17 suggests that *all biology is computational
biology* -- the rationale behind this bold statement being that integrating
computational advances, novel mathematical tools, and the usual data from one
field, has a high potential to deliver synthesis. A more reasonable statement
would be that *all ecology can benefit from computational ecology*, as long as
we can understand how it interacts with other approaches; in this paper, we
attempt to situate the practice of computational ecology within the broader
landscape of ecological research. {++The recent years have given us an explosion
of new tools, training opportunities, and mechanisms for data access. One can
assume that computational approaches will become more tempting, and more broadly
adopted. This requires to address the questions of the usefulness and promises
of this line of research, as well as the caveats associated with it.++} In
particular, we highlight the ways in which computational ecology differs from,
and complements, ecological modelling. We finally move on to the currency of
collaborations between different sub-disciplines of ecologists, and discuss the
need to add more quantitative skills in ecological training.

# A success story: Species Distribution Models

The practice known as "species distributions modelling" (and the species
distribution models, henceforth SDMs, it generates) is a good example of
computational practices generating novel ecological insights. At their core,
SDMs seek to model the presence or absence of a species based on previous
observations of its presence or absences, and knowledge of the environment in
which the observation was made. More formally, SDMs can be interpreted as having
the form $\text{P}(S | E)$ (or $\text{P}(S=1 | E)$ for presence-only models),
where $S$ denotes the presence of a species, and $E$ is an array of variables
representing the local state of the environment at the point where the
prediction is made (the location is represented, not by its spatial positions,
but by a suite of environmental variables).

As @Fra10 highlights, SDMs emerged at a time where access to computers *and* the
ability to effectively program them became easier. Although ecological insights,
statistical methods, and data already existed, the ability to turn these
ingredients into something predictive required what is now called "computational
literacy" -- the ability to abstract, and automate, a system in order to
generate predictions through computer simulations and their validation. One of
the strengths of SDMs is that they can be used either for predictions or
explanations of where a given species occur [@EliLea09] and can be corroborated
with empirical data. To calculate $\text{P}(S | E)$ is to make a prediction
(what are the chances of observing species $S$ at a given location), that can be
refined, validated, or rejected based on cross-validation [@Hij12] or *de novo*
field samplig [@WesKum16]. To understand $E$, *i.e.* the environmental aspects
that determine species presence, is to form an explanation of a distribution
that relates to the natural history of a species.

SDMs originated as statistical and correlative models, and are now incorporating
more ecological theory [@Aus02] -- being able to integrate (abstract) ideas and
knowledge with (formal) statistical and numerical tools is a key feature of
computational thinking. In fact, one of the most recent and most stimulating
developments in the field of SDMs is to refine their predictions not through the
addition of more data, but through the addition of more processes [@Fra10a].
These SDMs rely on the usual statistical models, but also on dynamical models
(for example simulations; *e.g.* @WisPot12 or @PelRoh13 for biotic interactions,
and @MilHol15 for movement and dispersal). What they lack in mathematical
expressiveness (*i.e.* having a closed-form solution [@BorCra13], which is often
ruled out by the use of stochastic models or agent-based simulations), they
assume to gain in predictive ability through the explicit consideration of more
realistic ecological mechanisms [@StaSiv17; @DAMat17]. SDMs have been a success,
but there are many other areas of ecology that could be improved by a marriage
of computational ecology and empirical data.

# Computational ecology in its broader landscape

## The four quadrants of ecological research

We propose that ecological approaches can be divided in four quadrants, based on
how connected they are with empirical data, and how much they can *document* or
*predict* natural mechanisms -- this view is later summarized in
{@tbl:costbenefit}, but we will first illustrate it.

The specific example of predator-prey interactions should be a familiar
illustration of how the same problem can be addressed in different ways. The
classical prey--predator equations of Lotka & Volterra are an instance of a
"modelling" based perspective, wherein mathematical analysis reveals how
selected parameters (rates of interactions and growth) affect an ecologically
relevant quantity (population stability and coexistence). These models, although
they have been formulated to explain data generated through empirical
observations, are disconnected from the data themselves. In fact, this family of
model lies at the basis of a branch of ecological modelling that now exists
entirely outside of data [@GylYan06; @AckGal04; @CovFre13]. These purely
mathematical models are often used to describe trends in time series. But not
all of them hold up to scrutiny when explicitely compared to empirical data.
@Gil73 famously reports that based on the predictions of the Lotka-Volterra
model, hares in the Hudson bay are feeding on Lynx.

By contrast @SalKam11 study the same issue (sustained persistence and
fluctuations of predator--prey couples through time) using a paleo-ecological
timeseries, and interpret their data in the context of predictions from the
Lotka-Volterra family of models (namely, they find support for
Lotka-Volterra-like oscillations in time). Although dynamical models and
empirical data interact in this example, they do not do so directly ; that is,
the analysis of empirical data is done within the context of a broad family of
model, but not coupled to *e.g.* additional simulations. A number of other
models have been shown to generate predictions that quantitatively match
empirical data [@NicBai35; @BevHol57] -- this represents, in our opinion, the
sole test of whether a mathematical model is adapted to a particular problem and
system. While models are undeniably useful to make mechanisms interact in a
low-complexity setting, it is in our opinion a grave mistake to assume they
will, in and of themselves, be relevant to empirical systems.

Meta-analyses, such as the one by @BolPre05, are instead interested in
collecting the outcome of observational and manipulative studies, and
synthetizing the *effects* they report. These are often purely *statistical*, in
that they aggregate significance, effect size, to measure how robust a result is
across different systems. Meta-analyses most often require a *critical mass* of
pre-existing papers [@LorSte13]. Although they are irreplaceable as a tool to
measure the strength of results, they are limited by their need for primary
literature with experimental designs that are similar enough.

In {@fig:concept}, we propose an illustration of a variety of computational
approaches in the context of predator-prey interactions. @ColCla15 show how an
agent-based model can guide the interpretation of the same system represented as
ordinary differential equations.

@StoPoi17 -- predictions but no understanding, yet provide guidance for sampling

@DesLai17 prediction and improved understanding

@CheAng16 symbolic regression, coupled with modeling 


 rough outline of four quadrants for ecological
research. The horizontal axis is based on the degree of integration between data
and models, ranging from disconnected (for purely data-based or model-based) to
highly integrated. The vertical axis is based on the ability to *document*
natural processes and their underlying mechanisms (through direct or indirect
observation of natural systems) rather than *suggest* (through focus on a
reduced number of mechanisms and their interactions). A classification this
coarse is bound to be caricatural, but it serves as an illustration of where
computational ecology exists in the overall research methodology. Because
computational ecology relies on the integration of data (if possible *raw* data
from observational and manipulative experiments) and models (either statistical
or phenomenological), it can *suggest* general trends through an abstraction of
the idiosyncracies of a particular system.

![An overview of how computational approaches can complement other research approaches. ](figures/concept.pdf){#fig:concept}

## Computational ecology in context

In *Life on the Mississippi*, Mark Twain wrote that "There is something
fascinating about science. One gets such wholesale returns of conjecture out of
such a trifling investment of fact". This is a good description of the purpose
of computational ecology: in a data-limited context, merging phenomenological
models with pre-existing datasets is a way to efficiently develop conjectures,
or more appropriately, build on our knowledge of models and data to put forward
testable, quantified hypotheses. @Pas05 outlines that computational ecology has
a unique ability to go from the complex (natural systems) to the simple
(representations and conceptual models), and back (testable predictions).
Although the natural world is immensely complex, it is paradoxically the high
degree of model abstraction in computational approaches that gives them
generality. Because (with the exception of a still narrow family of problems
that can be addressed by remote-sensing) there has been no regime shift in the
rate at which ecological data are collected -- observations from citizen science
accumulate, but are highly biased by societal preferences rather than
conservation priority [@DonBur16; @TroGra17], by proximity to urban centers and
infrastructure [@GelHei16], *as well as* by the interaction between these
factors @TiaCei17. On the other hand, our needs for testable and actionable
predictions increased dramatically. Refining the models and further integrating
them with data is necessary.

In {@tbl:costbenefit}, the quadrants of ecological approaches are ranked in
(again, approximate and arbitrary) order of cost and effort. Ecological models
make, by definition, high accuracy predictions, but they tend to be difficult to
test [@Ryk96] -- models relying on precise mathematical expressions can be
difficult to calibrate or parameterize. Observations (field sampling) or
manipulative approaches (micro/meso/macro-cosms, field experiments) are highly
accurate (but have also immense human and monetary costs that limit the scale at
which they can be applied). There is simply too much nature around for us to
observe, monitor, and manipulate it all. {++In this perspective, computational
approaches able to generalize some rules from the data++} [@DesLai17; @DesPoi17]
{++may help guide the attention of researchers onto mechanisms that are worthy
of a deeper investigation++}.

|                      | accuracy | testability | suitability for prediction |
|:---------------------|:---------|:------------|:---------------------------|
| Observation          | yes      |             |                            |
| Computational models | unknown  | yes         | directly                   |
| Mathematical models  | yes      | variable    | indirectly                 |
| Meta-analysis        | yes      | no          | no                         |
Table: Overview of the properties of the quadrants delineated in the previous section. Empirical observations are the most effort-intensive way of doing ecology. Computational approaches are ranked immediately below because the need to maintain a computational infrastructure is incurring immense (though often invisible) costs. Models are accurate in the limit of their definition, and meta-analysis are accurate in the limit of the empirical studies on which they are based. {#tbl:costbenefit}

# En route towards synthesis

The field of ecology as a whole needs to improve the ways in which it can
improve synthesis in order to become policy-relevant. Most of the global policy
challenges have an ecological or environmental component, and outside of the
socio-ecological, socio-economical, socio-cultural, aspects, ecologists can
contribute to the mitigation or resolution of these challenges by i) assessing
our knowledge of natural systems, ii) developing methods to produce scenarios
using state-of-the-art models and tools, and iii) communicating the output of
these scenarios to impact policy-making. @WhiSut15 propose that this falls under
the umbrella of *action ecology*, *i.e.* using fundamental knowledge and
ecological theory to address pressing, real-world questions.

@RagNar16 suggest that this approach can also accommodate stakeholder knowledge
and engagement. By building models that rely on ecological concepts, empirical
data, and stakeholder feedback, they propose a *computational agroecology*
program, to use computational tools in the optimization of sustainable
agricultural practices. This example suggests that not only can computational
approaches yield fundamental research results in a short time frame, they can
also be leveraged as a tool for applied research and knowledge transfer now. The
definition of "a short time" is highly sensitive to the context -- some
predictions can be generated using routine tools (in a matter of weeks), whereas
some require to develop novel methodologies, and may require years. Accelerating
the time to prediction will, in large part, require the development of software
that can be deployed and run more rapidly. Overall, computational ecology is
nevertheless nimble enough that it can be used to iterate rapidly over a range
of scenarios, to inform interactions with policy makers or stakeholders in near
real time.

## Mapping the domains of collaboration

Understanding how computational ecology will fit within the broader research
landscape requires us to answer three questions: what can computational ecology
bring to the table, what are the needs of computational ecologists, and what are
the current limitations of computational approaches that could limit their
immediate applicability. It seems, at this point, important to minimize neither
the importance nor the efficiency of sampling and collection of additional data.
Sampling is important because ecological questions, no matter how fundamental,
ought to be grounded in phenomena happening in nature, and these are revealed by
observation or manipulation of natural systems. Sampling is efficient because it
is the final arbiter: how good any prediction is at explaining aspects of a
particular empirical system is determined by observations of this system,
compared to the predictions.

Relying heavily on external information implies that computational research is
dependant on standards for data representation. The Ecological Metadata Language
[@FegAnd05] is an attempt at standardizing the way meta-data are represented for
ecological data; adherence to this standard, although it has been shown to
improve the ease of assembling large datasets from single studies [@GilVan11],
is done on a voluntary basis (and is therefore abysmal). An alternative approach
is to rely on community efforts to pre-curate and pre-catalog ecological data,
such as with the flagship effort *EcoDataRetriever* [@MorWhi13]. Yet even this
approach is ultimately limited, because of the human factor involved --- when
the upstream data change, they have to be re-worked into the software. A
community consensus on data representation, although unlikely, would actually
solve several problems at once. First, it would make the integration of multiple
data sources trivial. Second, it would provide clear guidelines about the input
and storage of data, thus maybe improving their currently limited longevity
[@VinAlb14]. Finally, it would facilitate the integration of data and models
with minimum efforts and risk of mis-communication, since the format would be
the same for all. To this extent, a recent proposal by @OvaTik17 is particularly
interesting: rather than deciding on formats based on knowledge of
eco-informatics or data management best practices, why not start from the
ecological concepts, and translate them in digital representation? This task
requires a strong collaboration between ecologists with topic expertise,
ecologists with field expertise, and those of us leaning closest to the
computational part of the field.

With or without a common data format, the problem remains that we have very
limited insights into how error in predictions made on synthetic datasets will
propagate from an analysis to the other [@PoiGra16]; in a succesion of
predictive steps, do errors at each step amplify, or cancel one another? Biases
exist in the underlying data, in the models used to generate the predictions,
and this can turn out in three possible ways. First, predictions from these
datasets accumulate bias and cannot be used. Second, because the scale at which
these predictions are expressed is large, errors are (quantitatively) small
enough to be over-ridden by the magnitude of actual variation. Finally, in the
best-case but low-realism scenario, errors end up cancelling each other out. The
best possible way to understand how errors propagate is to validate predictions
*de novo*. Model-validation methods can be used, as they are with SDMs [@Hij12],
but *de novo* sampling carries the additional weight of being an independent
attempt at testing the prediction. Improved collaborations on this aspect will
provide estimates of the robustness of the predictions, in addition to
highlighting the steps of the process in which uncertainty is high --- these
steps are natural candidates for additional methodological development.

Finally, there is a need to assess how the predictions made by purely
computational approaches will be fed back into other types of research. This is
notably true when presenting these approaches to stakeholders. One possible way
to make this knowledge transfer process easier is to be transparent about the
way predictions were derived: which data were used (with citations for credits
and unique identifiers for reproductibility), which software was used (with
versions numbers and code), and what the model / simulations do [@WhiBal13]. In
short, the onus is on practitioners of computational research to make sure we
provide all the information needed to communicate how predictions came to be.

## Establishing the currencies of collaboration

An important question to further the integration of computational approaches to
the workflow of ecological research is to establish *currencies* for
collaborations. Both at the scale of individuals researchers, research group,
and larger research communities, it is important to understand what each can
contribute to the research effort. As ecological research is expected to be
increasingly predictive and policy-relevant, and as fundamental research tends
to tackle increasingly refined and complex questions, it is expected that
research problems will become more difficult to resolve. This is an incentive
for collaborations that build on the skills that are specific to different
approaches.

In an editorial to the *New England Journal of Medicine*, @LonDra16
characterized scientists using previously published data as "research parasites"
(backlash by a large part of the scientific community caused one of the authors
to later retract the statement -- @Dra16). Although community ecologists would
have, anyways, realized that the presence of parasites indicates a healthy
ecosystem [@Mar05; @HudDob06], this feeling on unfair benefit for ecological
data re-analysis [@MilTep15] has to be addressed. It has no empirical support:
@Eva16 shows that the rate of data re-use in ecology is low and has a large
delay -- he found no instances of re-analysing the same data for the same (or
similar) purpose. There is a necessary delay between the moment data are
available, and the moment where they are aggregated and re-purposed (especially
considering that data are, at the earliest, published at the same time as the
paper). This delay is introduced by the need to understand the data, see how
they can be combined, develop a research hypothesis, etc..

On the other hand, there are multiple instances of combining multiple datasets
collected at different scales, to address an entirely different question [see
@GBI16 for an excellent showcase] -- it is more likely than data re-use is done
with the intent of exploring different questions. It is also worth remembering
that ecology as a whole, and macroecology and biogeography in particular,
already benefit immensely from data re-use. For example, data collected by
citizen scientists are used to generate estimates of biodiversity distribution,
but also set and refine conservation target [@DevWhi10]; an overwhelming
majority of our knowledge of bird richness and distribution comes from the
*eBird* project [@SulAyc14; @SulWoo09], which is essentially fed by the unpaid
work of citizen scientists.

With this is mind, there is no tip-toeing around the fact that computational
ecologists will be *data consumers*, and this data will have to come from
ecologists with active field programs (in addition to government, industry, and
citizens). Recognizing that computational ecology *needs* this data as a
condition for its continued existence and relevance should motivate the
establishment of a way to credit and recognize the role of *data producers*
[which is discussed in @PoiGra16, in particular in the context of massive
dataset aggregation]. Data re-users must be extremely pro-active in the
establishment of crediting mechanisms for data producers; as the availability of
these data is crucial to computational approaches, and as we do not share any of
the cost of collecting these data, it behooves us to make sure that our research
practices do not accrue a cost for our colleagues with field or lab programs.
Encouraging conversations between data producers and data consumers about what
data will be shared, when, and how databases will be maintained will improve
both collaborations and research quality. In parallel, data producers can
benefit from the new analytical avenues opened by advances in computational
ecology. Research funders should develop financial incentives to these
collaborations, specifically by dedicating a part of the money to developing and
implementing sound data archival and re-use strategies, and by encouraging
researchers to re-use existing data when they exist.

## Training data-minded ecologists

The fact that data re-use is not instantaneously convenient reveals another
piece of information about computational ecology: it relies on different skills,
and different tools than those typically used by field ecologists. One of the
most fruitful avenue for collaboration lies in recognizing the strengths of
different domains: the skills required to assemble a dataset (taxonomic
expertise, natural history knowledge, field know-how) and the skills required to
develop robust computational studies (programming, applied mathematics) are
different. Because these skills are so transversal to any form of ecological
research, we are confident that they can be incorporated in any curriculum. If
anything, this calls for increased collaboration, where these approaches are put
to work in complementarity.

@BarEza14 highlighted the fact that professional ecologists received *less*
quantitative and computational thinking that they think should be necessary.
Increasing the amount of such training does not necessarily imply that natural
history or field practice will be sacrificed on the altar of mathematics:
rather, ecology would benefit from introducing more quantitative skills and
reasoning across all courses, and introductory ones in particular [@HofLeu16].
Instead of dividing the field further between empirically and theoretically
minded scientists, this would showcase quantitative skills as being transversal
to all questions that ecology can address. What to teach, and how to integrate
it to the existing curriculum, does of course requires discussion and consensus
building by the community.

A related problem is that most practising ecologists are terrible role models
when it comes to showcasing good practices of data management (because there are
no incentives to do this); and data management is a crucial step towards easier
computational approaches. Even in the minority of cases where ecologists do
share their data on public platforms, there are so few metadata that not being
able to reproduce the original study is the rule [@RocLan14; @RocKru15]. This is
a worrying trend, because data management affects how easily research is done,
regardless of whether the data are ultimately archived. Because the volume and
variety of data we can collect tends to increase over time, and because we
expect higher standard of analysis (therefore requiring more programmatic
approaches), data management has already became a core skill for ecologists to
acquire.

This view is echoed in recent proposals. @MisHee16 suggested that highlighting
the importance of code in most ecological studies would be a way to bring the
community to adopt higher standards, all the while de-mystifying the process of
producing code. As with increased mandatory data release along manuscript
publication required by funding agencies, mandatory code release would benefit a
more reproductible science and how data were transformed during the analysis.
This also requires teaching ecologists how to evaluate the quality of the
software they use [@Poi15]. Finally, @HamAnd15 proposed that the "Tao of Open
Science" would be particularly beneficial to the entire field of ecology; as
part of the important changes in attitude, they identified the solicitation and
integration of productive feedback throughout the research process. Regardless
of the technical solution, this emphasizes the need to foster, in ecologists in
training, a culture of discussion across disciplinary boundaries.

All of these points can be distilled into practical training recommendations for
different groups in the community of ecologists. Classes based around lab or
field experience should emphasize practical data management skills, and
introduce tools that would make the maintenance of data easier. Modelling
classes, especially when concerned about purely mathematical models, should add
modules on the way these models can be integrated with empirical data. Finally,
computational classes should emphasize communication skills: what do these new
tools do, and how can they be used by other fields in ecology; but also, how do
we properly track citations to data, and give credit to data producers? Building
this practices into training would ensure that the next generation of ecologists
will be able to engage in a meaningful dialogue across methodological
boundaries.

# Concluding remarks

None of these approaches to ecological research have any intrinsic superiority --
in the end, direct observation and experimentation trumps all, and serve as the
validation, rejection, or refinement of predictions derived in other ways, but
lacks the scaling power to be the only viable solution. The growing
computational power, growing amount of data, and increasing computational
literacy in ecology means that producing theory and predictions is becoming
cheaper and faster (regardless of the quality of these products). Yet the time
needed to test any prediction is not decreasing (or at least not as fast).
Computational science has resulted in the development of many tools and
approaches that can be useful to ecology, since they allow ecologists of all
kinds to wade through these predictions and data. Confronting theoretical
predictions to data is a requirement, if not the core, of ecological synthesis;
this is only possible under the conditions that ecologists engage in meaningful
dialogue across disciplines, and recognize the currencies of their
collaborations.

Discussing the place of computational ecology within the broader context of the
ecological sciences will highlight areas of collaborations with other areas of
science. @The16 makes the point that long-standing ecological problems would
benefit from being examined through a variety of machine learning techniques --
We fully concur, because these techniques usually make the most of existing data
[@HalNor09]. Reaching a point where these methods are routinely used by
ecologists will require a shift in our culture: quantitative training is
currently perceived as inadequate [@BarEza14], and most graduate programs do not
train ecology students in contemporary statistics [@TouMcC16].

Ultimately, any additional data collection has its scope limited by financial,
human, and temporal constraints --- or in other words, we need to chose what to
sample, because we can't afford to sample it all. Computational approaches,
because they can work through large amounts of data, and integrate them with
models that can generate predictions, might allow answering an all important
question: what do we sample, and where? Some rely on their ecological intuition
to answer; although computational ecologists may be deprived of such intuitions,
they have the know-how to couple data and models, and can meaningfully
contribute to this answer. Computational ecology is also remarkably
cost-effective. Although the reliance on advanced research computing incurs
immense costs (including hardware maintenance, electrical power, and training of
highly qualified personnel; these are often absorbed by local or national
consortia), it allows to generate predictions that are highly testable. Although
the accuracy of these predictions is currently unknown (and will vary on a
model/study/question basis), any additional empirical effort to *validate*
predictions will improve their quality, reinforcing the need for dialogue and
collaborations.

**Acknowledgements:**
TP thanks Dr. Allison Barner and Dr. Andrew McDonald for stimulating
discussions, and the Station de Biologie des Laurentides de l'Université de
Montréal for hosting him during part of the writing process. We thank the
volunteers of Software Carpentry and Data Carpentry, whose work contribute to
improving the skills of ecologists. Carabid picture by Maxime Dahirel (CC-BY
4.0), spider image by Sidney Frederic Harmer, Arthur Everett Shipley, digitized
by Maxime Dahirel (CC-BY 4.0).

# References
