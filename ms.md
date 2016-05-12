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

Computational science happens when algortihms and software, data management
practices, and advanced research computing are put in interaction with the
explicit goal of solving "complex" problems. Typically, problems are considered
*complex* when they cannot be solved appropriately with modelling or
data-collection only. Computational science is one of the ways to practice
computational thinking [@papert_esm], *i.e.* the feedback loop of abstracting a
problem to its core mechanisms, expressing a solution in a way that can be
automated, and using an interactions between simulations and data to refine the
original problem or suggest new knowledge. Computational approaches are common
place in most area of biology, to the point where one would almost be confident
that they represent a viable career path [@bourne_tsr]. Ecology is a particular
field for which, because field data have a natural variability, are difficult to
find and expensive to collect, and many problems lack an adequate formal
mathematical formulation, computational approaches hold great promises
[@petrovskii_cee].

@levin_tmt suggested that ecology (and evolutionary biology) should continue
their move towards a *marriage of theory and data*. In addition to the
aforementionned problem of the lack of adequately expressed models, this effort
is hampered by the fact that data and models are often developped in independant
ways, and reconciling both can be difficult. This has been suggested as one of
the reasons for which theoretical papers (defined as *papers with at least one
equation in the main text*) experience a sharp decrease in citation
[@fawcett_hue]. One of the leading textbooks for the mathematical models in
ecology and evolution [@otto_bgm] is more focused with algebra and calculus, and
not with the integration of models with data [though other texts, like
@soetaert_pge and @bolker_emd, cover the integration of data and models well].

Ecology as a whole (and community ecology in particular) circumvented the
problem of model and data mismatch problem by investing in the development and
refinment of statistical models [see @warton_mtf for an excellent overview] and
"numerical" approaches [@legendre_ne] based on multivariate statistics. These
models, hovewer, are able to *explain* data, but very rarely can they give new
predictions. This is, essentially, the niche that computational ecology can
fill; at the cost of a higher degree of abstraction, its integration of data and
generative models (*i.e.* models that, given rules, will generate new data) can
be helpful to initiate the investigation of questions that have not received
extensive empirical treatment, or for which usual statistical approaches fall
short.

{== need one more paragraph on the paper goals ==}

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
entirely outside of data [@gyllenberg_lcf; @ackland_slg; @coville_cel].

By contrast @sallan_ppd study the same problematic (sustained persistence and
fluctuations of predator--prey couples through time) using a paleo-ecological
timeseries, and interpret their data in the context of predictions from the
Lotka-Volterra family of models (namely, they find support for
Lotka-Volterra-like oscillations in time).

Meta-analyses, such as the one by @bolnick_rcm, are instead interested in
collecting the outcome of observational and manipulative studies, and
synthetizing the *effects* they report. These are often purely *statistical*, in
that they aggregate significance, effect size, to measure how robust a result is
across different systems. Meta-analyses most often require a *critical mass* of
pre-existing papers [@lortie_pie]. Although they are irreplaceable as a tool to
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
efficiently. @pascual_cef outlines that computational ecology has a unique
ability to go from the complex (natural systems) to the simple (representations
and conceptual models), and back (testable predictions).

This I illustrate in \autoref{costbenefit} (in which I excluded meta-analyses).
The three types of approaches are ranked in (again, approximate and arbitrary)
order of cost and effort. Ecological models make, by definition, high accuracy
predictions, but they tend to be difficult to test [@rykiel_tem]. At the other
hand of the spectrum, observations (field sampling) or manipulative approaches
(micro/meso/macro-cosms, field experiments) are highly accurate (but have also
immense human and monetary costs).

Computational ecology ought to fall in the middle of this spectrum -- although
the reliance on advanced research computing incurs greater costs (either paid by
the researcher of by a computing center or consortium), it can generates
predictions that are highly testable. Specifically, although the accuracy of
these predictions is currently unknown (and will vary on a model/study/question
basis), any additional empirical effort to *validate* predictions will improve
the predictions quality [@poisot_sdc].

!{costbenefit}

None of these approaches to ecological research have any intrinsic superiority --
in the end, direct observation and experimentation trumps all, and serve as the
validation, rejection, or refinement of predictions derived in other ways.

# The success story of Species Distribution Models

The practice known as "species distributions modelling" (and the species
distribution models, henceforth SDMs, it generates) is a good example of
computational practices generating new ecological insights. At their core, SDMs
seek to model the presence (and sometimes absence) of a species based on
previous observations of its presence (absence) and knowledge of the environment
in which the observation was made. More formally, SDMs are of the form
$\text{P}(S | \epsilon)$, where $S$ denotes the presence of a species, and
$\epsilon$ is a set of variables representing the local environment at the point
where the prediction is made.

As @franklin_msd highlights, SDMs emerged at a time where access to computers
*and* the ability to effectively program them became easier. Although ecological
insights, statistical methods, and data were pre-existing, the ability to turn
these ingredients into a predictive whole required what is now called
"computational literacy" -- the ability to automate a system in order to
generate predictions through computer simulations and analysis. One of the
strengths of SDMs is that they can be used either for predictions or
explanations [@elith_sdm]. To calculate $\text{P}(S | \epsilon)$ is to make a
prediction (what are the chances of observing species $S$ at a given location),
that can be refined, validated, or rejected based on sampling; to understand
what goes into $\epsilon$, *i.e.* what aspects of the environments are involved
in determining the presence of a species is an explanation of its distribution.

@austin_sps makes the point that SDMs exist at the interface between ecological
theory and statistical models -- this is a key feature of computational
thinking, *i.e.* being able to integrate ideas and knowledge (abstract concepts)
with statistical and numerical tools.

@franklin_mbs -- add proceszes to existing models

@wisz_rbi @pellissier_cfw - dynamic models + theoretical predictors

@poisot_sdc - large-scale data mining

@gravel_tti - TIB + food web theory

@araujo_usc - co-occurence + graph theory

# The roadmap towards synthesis

{== need for synthesis and policy relevance ==} @white_nga

@raghavan_ca -- design sustainable socio-ecological systems through simulations + knowledge

+ list of challenges

## Integration of computational research into the broader research landscape

- {== a lot of large-scale databases ==}

- summary of @poisot_sdc
  + {>> lack of insights on error propagation <<}
  + {>> standards <<}

\autoref{flow} A

- computational -> other {>> models needs explanations + grounding <<}

## Establishing the currencies of collaboration

\autoref{flow} B

- ecological research is not going to get easier so requires to capitalize on strengths
  + {>> data management and software, computing <<}
  + {>> high quality data + taxonomic expertise <<}
  + {>> end-goal is the resolution of problems <<}

!{flow}

## Training and advising computational ecologists

@barraquand_lqt -- expressed lack of training

@hoffman_dam -- increase exposures across different classes

Emphasize that computational power and increased data availability will allow
more predictions but the time to test them is not compressible. Let theory +
what is feasible + dialogue with field ecologists determine where efforts should
be invested, also develop roadmap to understand the propagation of uncertainty
and errors.

**Acknowledgements:** Allison Barner, CESS students

# References
