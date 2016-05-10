---
title: "Question-driven, data-based: the research agenda of computational ecology"
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
    caption: This is a figure. Its caption should be long enough to demonstrate the effects of using the caption package.
    short: Example figure.
    file: quadrats.pdf
  - id: costbenefit
    caption: This is a figure. Its caption should be long enough to demonstrate the effects of using the caption package.
    short: Example figure.
    file: costbenefit.pdf
date: \today
abstract: Writing manuscripts doesn't have to be awful. This template *tries* to provide good defaults for both the draft and preprint modes. Most of the information is contained in the YAML file. The preprint mode is particularly good looking.
---

Computational approaches are common place in most area of biology, to the point
where one would almost be confident that they represent a viable career path
[@bourne_tsr]. Ecology is a particular field for which, because field data have
a natural variability, are difficult to find and expensive to collect, and many
problems lack an adequate formal mathematical formulation, computational
approaches hold great promises [@petrovskii_cee].

@levin_tmt suggested that ecology (and evolutionary biology) should continue
their move towards a *marriage of theory and data*.

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
efficiently

None of these approaches to ecological research have any intrinsic superiority --
in the end, direct observation and experimentation trumps all, and serve as the
validation, rejection, or refinement of predictions derived in other ways.

!{costbenefit}

# Challenges for computational ecology

# The roadmap towards synthesis

## Integration of computational research into the broader research landscape

## Establishing the currencies of collaboration

## Training and advising computational ecologists

# References