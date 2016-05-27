---
title: "Question-driven, data-based, policy-relevant? A research agenda for computational ecology"
short: Computational ecology
bibliography: default.json
csl: plmt/plab.csl
author:
  - family: Poisot
    given: Timothée
    affiliation: 1, 2
    email: tim@poisotlab.io
    id: tp
    orcid: 0000-0002-0735-5184
affiliation:
  - id: 1
    text: Université de Montréal, Département de Sciences Biologiques
  - id: 2
    text: Québec Centre for Biodiversity Sciences
keyword:
  - k: ecological synthesis
  - k: open science
  - k: meta-analysis
figure:
  - id: quadrats
    caption: Methods of ecological research can be (roughly) classified in four quadrats, based on whether they suggest or document mechanisms and relationships, and whether they integrate or dissociate models and raw data. Although crude, this classification helps understanding what computational approaches can bring to the global research effort.
    short: Four quadrats of ecological research.
    file: quadrats.pdf
  - id: costbenefit
    caption: Research methodologies differ on the basis of their costs, and on the type of predictions they make. Computational ecology is justified only in the context of an interaction with observational or manipulative approaches; specifically, only observations can validate predictions.
    short: Costs and benefits.
    file: costbenefit.pdf
  - id: flow
    caption: A) The domains of computational ecology (grey box) in the general research process. (THIS FIGURE IS BAD BECAUSE IT IMPLIES ONLY COMP APPROACHES CAN GENERATE HYPOTHESES WHICH IS WRONG). B) Mapping the currencies of collaborations across methodologies (IN NEED OF A LEGEND).
    short: Flow and currencies.
    file: flow.pdf
date: \today
abstract: What do we say to abstracts? Not today.
---

Computational science happens when algorithms and software, data management
practices, and advanced research computing are put in interaction with the
explicit goal of solving "complex" problems. Typically, problems are considered
*complex* when they cannot be solved appropriately with modelling or
data-collection only. Computational science is one of the ways to practice
computational thinking [@pape96esm], *i.e.* the feedback loop of abstracting a
problem to its core mechanisms, expressing a solution in a way that can be
automated, and using an interactions between simulations and data to refine the
original problem or suggest new knowledge. Computational approaches are common
place in most area of biology, to the point where one would almost be confident
that they represent a viable career path [@bour11tsr]. Ecology is a particular
field for which, because field data have a natural variability, are difficult to
find and expensive to collect, and many problems lack an adequate formal
mathematical formulation, computational approaches hold great promises
[@petr12cee].

@levi12mtd suggested that ecology (and evolutionary biology) should continue
their move towards a *marriage of theory and data*. In addition to the
aforementionned problem of the lack of adequately expressed models, this effort
is hampered by the fact that data and models are often developped in independant
ways, and reconciling both can be difficult. This has been suggested as one of
the reasons for which theoretical papers (defined as *papers with at least one
equation in the main text*) experience a sharp decrease in citation
[@fawc12hei]. One of the leading textbooks for the mathematical models in
ecology and evolution [@otto07bgm] is more focused with algebra and calculus,
and not with the integration of models with data [though other texts, like
@soet08pge and @bolk08emd, cover the integration of data and models well].

Ecology as a whole (and community ecology in particular) circumvented the
problem of model and data mismatch problem by investing in the development and
refinment of statistical models [see @wart14mtc for an excellent overview] and
"numerical" approaches [@lege98ne] based on multivariate statistics. These
models, hovewer, are able to *explain* data, but very rarely can they give new
predictions. This is, essentially, the niche that computational ecology can
fill; at the cost of a higher degree of abstraction, its integration of data and
generative models (*i.e.* models that, given rules, will generate new data) can
be helpful to initiate the investigation of questions that have not received
extensive empirical treatment, or for which usual statistical approaches fall
short.

In this paper, I attempt to situate the practice of computational ecology within
the broader landscape of ecological research. In particular, I highlight the
ways in which computational ecology differs from, and complements, ecological
modelling. I finally move on to the currency of collaborations between different
groups of ecologists, and discuss the need to add more quantitative skills in
ecological training.

# Computational ecology in its broader landscape

## The four quadrats of ecological research

In \autoref{quadrats}, I propose a rough outline of four quadrats for ecological
research. The first axis is based on the ability to *document* (through direct
or indirect observation of natural systems) rather than *suggest* (through focus
on a reduced number of mechanisms and their interactions). The second axis is
based on the degree of integration between data and models, ranging from
disconnected (for purely data-based or model-based) to highly integrated. A
classification this coarse is bound to be caricatural, but it serves as an
illustration of where computational ecology exists in the overall research
methodology. Because it relies on the integration of data (if possible *raw*
data from observational and manipulative experiments) and models (either
statistical or phenomenological), it can *suggest* general trends through an
abstraction of the idiosyncracies of a particular system.

!{quadrats}

The specific example of predator-prey interactions should be a familiar
illustration of how the same problem can be adressed in different ways. The
classical prey--predator equations of Lotka & Volterra are an instance of a
"modelling" based perspective, wherein mathematical analysis reveals how
selected parameters (rates of interactions and growth) affect an ecologically
relevant quantity (population stability and coexistence). These models, although
they have been formulated to explain data generated through empirical
observations, are disconnected from the data themselves. In fact, this family of
model lies at the basis of a branch of ecological modelling that now exists
entirely outside of data [@gyll06lcc; @ackl04slg; @covi13cel].

By contrast @sall11ppd study the same problematic (sustained persistence and
fluctuations of predator--prey couples through time) using a paleo-ecological
timeseries, and interpret their data in the context of predictions from the
Lotka-Volterra family of models (namely, they find support for
Lotka-Volterra-like oscillations in time).

Meta-analyses, such as the one by @boln05rcm, are instead interested in
collecting the outcome of observational and manipulative studies, and
synthetizing the *effects* they report. These are often purely *statistical*, in
that they aggregate significance, effect size, to measure how robust a result is
across different systems. Meta-analyses most often require a *critical mass* of
pre-existing papers [@lort13pie]. Although they are irreplaceable as a tool to
measure the strength of results, they are limited by their need for primary
literature with experimental designs that are similar enough.

Where in this landscape does computational approaches fit?

## Computational ecology in context

In *Life on the Mississipi*, Mark Twain wrote that "There is something
fascinating about science. One gets such wholesale returns of conjecture out of
such a trifling investment of fact.". Because there was no such thing as
computational science in 1883, this is surely not what he had in mind -- but
amusingly, here lies computational ecology mission statement: in a data-limited
context, merging phenomenological models with pre-existing datasets is a way to
efficiently {>>what?<<}. @pasc05cec outlines that computational ecology has a
unique ability to go from the complex (natural systems) to the simple
(representations and conceptual models), and back (testable predictions).

This I illustrate in \autoref{costbenefit} (from which I excluded
meta-analyses). The three types of approaches are ranked in (again, approximate
and arbitrary) order of cost and effort. Ecological models make, by definition,
high accuracy predictions, but they tend to be difficult to test [@ryki96tem].
At the other hand of the spectrum, observations (field sampling) or manipulative
approaches (micro/meso/macro-cosms, field experiments) are highly accurate (but
have also immense human and monetary costs).

Computational ecology ought to fall in the middle of this spectrum -- although
the reliance on advanced research computing incurs greater costs (either paid by
the researcher of by a computing center or consortium), it can generates
predictions that are highly testable. Specifically, although the accuracy of
these predictions is currently unknown (and will vary on a model/study/question
basis), any additional empirical effort to *validate* predictions will improve
the predictions quality [@pois15sdc].

!{costbenefit}

{== missing a transition here ==}

None of these approaches to ecological research have any intrinsic superiority --
in the end, direct observation and experimentation trumps all, and serve as the
validation, rejection, or refinement of predictions derived in other ways.

## A success story: Species Distribution Models

The practice known as "species distributions modelling" (and the species
distribution models, henceforth SDMs, it generates) is a good example of
computational practices generating new ecological insights. At their core, SDMs
seek to model the presence (and sometimes absence) of a species based on
previous observations of its presence (absence) and knowledge of the environment
in which the observation was made. More formally, SDMs are of the form
$\text{P}(S | \epsilon)$, where $S$ denotes the presence of a species, and
$\epsilon$ is a set of variables representing the local environment at the point
where the prediction is made.

As @fran10msd highlights, SDMs emerged at a time where access to computers *and*
the ability to effectively program them became easier. Although ecological
insights, statistical methods, and data were pre-existing, the ability to turn
these ingredients into a predictive whole required what is now called
"computational literacy" -- the ability to automate a system in order to
generate predictions through computer simulations and analysis. One of the
strengths of SDMs is that they can be used either for predictions or
explanations [@elit09sdm]. To calculate $\text{P}(S | \epsilon)$ is to make a
prediction (what are the chances of observing species $S$ at a given location),
that can be refined, validated, or rejected based on sampling; to understand
what goes into $\epsilon$, *i.e.* what aspects of the environments are involved
in determining the presence of a species is an explanation of its distribution.

@aust02sps makes the point that SDMs exist at the interface between ecological
theory and statistical models -- this is a key feature of computational
thinking, *i.e.* being able to integrate ideas and knowledge (abstract concepts)
with statistical and numerical tools. In fact, one of the most recent and most
stimulating developments in the field of SDMs is to refine their predictions not
through the addition of more data, but through the addition of more processes
[@fran10mss]. These SDMs rely on the usual statistical models, but also on
dynamical models (*i.e.* simulations; see *e.g.* @wisz12rbi or @pell13cfw for
biotic interactions, and @mill15ims for movement and dispersal). What they lack
in mathematical expressiveness (which is most often ruled out by the use of
stochastic simulations), they assume to gain in predictive ability through the
explicit consideration of more realistic ecological mechanisms.

# The roadmap towards synthesis

The field of ecology as a whole needs to improve the ways in which it can
improve synthesis in order to become policy-relevant. Most of the global
challenges have an ecological or environmental component, and outside of the
socio-$\star$ (ecological, economical, cultural, ...) aspects, ecologists can
contribute to the mitigation or resolution of these challenges by i) assessing
our knowledge of natural systems, ii) developping methods to produce scenarios
using state-of-the-art models and tools, and iii) communicate the output of
these scenarios to impact policy-making. @whit15gae propose that this falls
under the umbrella of *action ecology*, *i.e.* using fundamental knowlede and
ecological theory to adress pressing, real-world questions.

{==a ¶ on the need to comp res instead of sampling bc time constraint==}

@ragh16ca suggest that this approach can also accomodate stakeholder knowledge
and engagement. By building models that rely on ecological concepts, empirical
data, and stakeholder feedback, they are able to implement a *computational
agroecology* program, to use computational tools in the optimization of
sustainable agricultural practices.

+ list of challenges

## Integration of computational research into the broader research landscape

- {== a lot of large-scale databases ==}

- summary of @pois15sdc
  + {>> lack of insights on error propagation <<}
  + {>> standards <<}

\autoref{flow} A

- computational -> other {>> models needs explanations + grounding <<}

## Establishing the currencies of collaboration

An important question to further the integration of of computational approaches
to the workflow of ecological research is to establish *currencies* for
collaborations. Both at the scale of individuals researchers, research groups,
and larger research communities, it is important to understand what each can
contribute to the research effort. I attempt to represent this in panel B of
\autoref{flow}. As ecological research is expected to be increasingly predictive
and policy-relevant, and as fundamental research tends to tackle increasingly
refined and complex questions, it is expected that research problems will become
more difficult to resolve; this is, I think, an incentive for a collaboration
that builds on the skills that are specific to different approaches.

There is no tip-toeing around the fact that computational ecologists will be
*data consumer*, and this data will have to come from ecologists with active
field programs. Recognizing that computational ecology *needs* this data as a
condition for its continued existence and relevance should motivate the
establishment of a way to credit and recognize the role of *data producers*
[which is discussed in @pois15sdc, in particular in the context of massive
dataset aggregation].

- research parasitisim
- @evan16gpc -- no cost


- ecological research is not going to get easier so requires to capitalize on strengths
  + {>> data management and software, computing <<}
  + {>> high quality data + taxonomic expertise <<}
  + {>> end-goal is the resolution of problems <<}

!{flow}

## Training and advising computational ecologists

@barr14lqt highlighted the fact that, professional ecologists received *less*
quantitative and computational thinking that they think should be necessary.
Increasing the amount of such training does not necessarily imply that natural
history or field practice will be sacrified on the altar of mathematics: rather,
ecology would benefit from introducing more quantitative skills and reasoning
across all courses, and introductiory ones in particular [@hoff16dam]. Instead
of dividing the field further beteen empirically and theoretically minded
scientists, this would showcase quantitative skills are being transversal to all
questions that ecology can adress.

- @roch15pda @roch14tpd -- low adherence to standards (emphasize at all time)

Emphasize that computational power and increased data availability will allow
more predictions but the time to test them is not compressible. Let theory +
what is feasible + dialogue with field ecologists determine where efforts should
be invested, also develop roadmap to understand the propagation of uncertainty
and errors.

**Acknowledgements:** Allison Barner, CESS students

# References
