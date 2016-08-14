Computational science happens when algorithms, software, data management
practices, and advanced research computing are put in interaction with the
explicit goal of solving "complex" problems. Typically, problems are considered
*complex* when they cannot be solved appropriately with modelling or
data-collection only. Computational science is one of the ways to practice
computational thinking [@pape96esm], *i.e.* the feedback loop of abstracting a
problem to its core mechanisms, expressing a solution in a way that can be
automated, and using interactions between simulations and data to refine the
original problem or suggest new knowledge. Computational approaches are common
place in most area of biology, to the point where one would almost be confident
that they represent a viable career path [@bour11tsr]. Data usually collected in
ecological studies have a high variability, are time-consuming, costly, and
demanding to collect. In parallel, many problems lack appropriate formal
mathematical formulations. For these reasons, computational approaches hold
great possibilities, notably to further ecological synthesis and help
decision-making [@petr12cee].

@levi12mtd suggested that ecology (and evolutionary biology) should continue
their move towards a *marriage of theory and data*. In addition to the
aforementioned problem of the lack of adequately expressed models, this effort
is hampered by the fact that data and models are often developed in independent
ways, and reconciling both can be difficult. This has been suggested as one of
the reasons for which theoretical papers (defined as *papers with at least one
equation in the main text*) experience a sharp decrease in citation
[@fawc12hei]; this is the tragic sign that empirical scientists do not see the
value of theoretical work, which of course can be blamed on both parties. One of
the leading textbooks for the mathematical models in ecology and evolution
[@otto07bgm] is more focused with algebra and calculus, and not with the
integration of models with data. Other manuals that cover the integration of
models and data tend to lean more towards statistical models [@soet08pge;
@bolk08emd]. This paints a picture of ecology as a field in which dynamical
models and empirical data do not interact much, and instead the literature
develops in silos.

Ecology as a whole (and community ecology in particular) circumvented the
problem of model and data mismatch by investing in the development and
refinement of statistical models [see @wart14mtc for an excellent overview] and
"numerical" approaches [@lege98ne] based on multivariate statistics. These
models, however, are able to *explain* data, but very rarely do they give new
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
research. The first axis is based on the ability to *document* natural processes
and their underlying mechanisms (through direct or indirect observation of
natural systems) rather than *suggest* (through focus on a reduced number of
mechanisms and their interactions). The second axis is based on the degree of
integration between data and models, ranging from disconnected (for purely
data-based or model-based) to highly integrated. A classification this coarse is
bound to be caricatural, but it serves as an illustration of where computational
ecology exists in the overall research methodology. Because it relies on the
integration of data (if possible *raw* data from observational and manipulative
experiments) and models (either statistical or phenomenological), it can
*suggest* general trends through an abstraction of the idiosyncracies of a
particular system.

!{quadrats}

The specific example of predator-prey interactions should be a familiar
illustration of how the same problem can be addressed in different ways. The
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
Lotka-Volterra-like oscillations in time). Although dynamical models and
empirical data interact in this example, they do not do so directly ; that is,
the analysis of empirical data is done within the context of a broad family of
model, but not coupled to *e.g.* additional simulations.

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

In *Life on the Mississippi*, Mark Twain wrote that "There is something
fascinating about science. One gets such wholesale returns of conjecture out of
such a trifling investment of fact.". Because there was no such thing as
computational science in 1883, this is surely not what he had in mind -- but
amusingly, herein lies computational ecology mission statement: in a
data-limited context, merging phenomenological models with pre-existing datasets
is a way to efficiently develop conjectures, or more appropriately, build on our
knowledge of models and data to put forward testable, quantified hypotheses.
@pasc05cec outlines that computational ecology has a unique ability to go from
the complex (natural systems) to the simple (representations and conceptual
models), and back (testable predictions). Although the natural world is
immensely complex, it is paradoxically the high degree of abstraction of models
that computational approaches favor that give them generality.

This I illustrate in \autoref{costbenefit} (from which I excluded
meta-analyses). The three types of approaches are ranked in (again, approximate
and arbitrary) order of cost and effort. Ecological models make, by definition,
high accuracy predictions, but they tend to be difficult to test [@ryki96tem].
At the other hand of the spectrum, observations (field sampling) or manipulative
approaches (micro/meso/macro-cosms, field experiments) are highly accurate (but
have also immense human and monetary costs that limit the scale at which they
can be applied). There is simply too much Nature around for us to observe,
monitor, and manipulate it all.

Computational ecology ought to fall in the middle of this spectrum -- although
the reliance on advanced research computing incurs greater costs (either paid
for by the researcher of by a computing center or consortium; these costs
include operations of computing power, but also training of qualified students),
it can generates predictions that are highly testable. Specifically, although
the accuracy of these predictions is currently unknown (and will vary on a
model/study/question basis), any additional empirical effort to *validate*
predictions will improve the predictions quality [@pois15sdc].

!{costbenefit}

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

# En route towards synthesis

The field of ecology as a whole needs to improve the ways in which it can
improve synthesis in order to become policy-relevant. Most of the global
challenges have an ecological or environmental component, and outside of the
socio-$\star$ (ecological, economical, cultural, ...) aspects, ecologists can
contribute to the mitigation or resolution of these challenges by i) assessing
our knowledge of natural systems, ii) developing methods to produce scenarios
using state-of-the-art models and tools, and iii) communicate the output of
these scenarios to impact policy-making. @whit15gae propose that this falls
under the umbrella of *action ecology*, *i.e.* using fundamental knowledge and
ecological theory to address pressing, real-world questions.

@ragh16ca suggest that this approach can also accommodate stakeholder knowledge
and engagement. By building models that rely on ecological concepts, empirical
data, and stakeholder feedback, they are able to implement a *computational
agroecology* program, to use computational tools in the optimization of
sustainable agricultural practices. This example suggests that not only can
computational approaches yield fundamental research results in a short time
frame, they can also be leveraged as a tool for applied research and knowledge
transfer now. In the next sections, I will outline the key challenges that exist
for the integration of computational ecology to other approaches to ecological
research.

It seems, at this point, important to minimize neither the importance nor the
efficiency of sampling and collection of additional data. Sampling is important
because ecological questions, no matter how fundamental, ought to be grounded in
phenomena happening in nature, and these are revealed by observation or
manipulation of natural systems. Sampling is efficient because it is the final
arbiter: how good any prediction is at explaining aspects of a particular
empirical system is determined by observations of this system, compared to the
predictions. Yet any endeavor to collect additional data has its scope limited
by financial, human, and temporal constraints --- or in other words, we need to
chose what to sample, because we can't afford to sample it all. Computational
approaches, because they can work through large amounts of data, and integrate
them with models that can generate predictions, might allow answering an all
important question: what do we sample, and where? Some rely on their ecological
intuition to answer; being a computational ecologist, and therefore being
deprived of such intuitions, I would suggest that data, coupled with model, can
be used to provide this answer.

## Mapping the domains of collaboration

Understanding how computational ecology will fit within the broader research
landscape requires to answer three questions: what can computational ecology
bring, what are the needs of computational ecologists, and what are the current
limitations of computational approaches that could limit their immediate
applicability. Relying heavily on external information implies that
computational research is dependant on standard for data representation. The
Ecological Metadata Language [@fegr05med] is an attempt at standardizing the way
meta-data are represented for ecological data; adherence to this standard,
although it has been shown to improve the ease of assembling large datasets from
single studies [@gil11eed], is done on a voluntary basis (and is therefore
abysmal). An alternative approach is to rely on community efforts to pre-curate
and pre-catalog ecological data, such as with the flagship effort
*EcoDataRetriever* [@morr13eri]. Yet even this approach is ultimately limited,
because of the human factor involved --- when the upstream data change, they
have to be re-worked into the software. A community consensus on data
representation, although unlikely, would actually solve several problems at
once. First, it would make the integration of multiple data sources trivial.
Second, it will provide clear guidelines about the input and storage of data,
thus maybe improving their currently limited longevity [@vine14ard]. Finally, it
would facilitate the integration of data and models with minimum efforts and
risk of mis-communication, since the format would be the same for all.

With or without a common data format, the problem remains that we have very
limited insights into error propagation of predictions made on synthetic
datasets [@pois15sdc]. There are biases in the underlying data, biases in the
models used to generate the predictions, and this can turn out in three possible
ways. First, predictions from these datasets accumulate bias and cannot be used.
Second, because the scale at which these predictions are expressed is large,
errors are (quantitatively) small enough to be over-ridden by the magnitude of
actual variation. Finally, in the best-case but low-realism scenario, errors end
up cancelling each other out. The best possible way to understand how errors
propagate is to validate predictions *de novo*. Model-validation methods can be
used, as they are with SDMS [@hijm12csd], but *de novo* sampling carries the
additional weight of being an independent attempt at testing the prediction.
Improved collaborations on this aspect will provide estimates of the robustness
of the predictions, in addition to highlighting the steps of the process in
which uncertainty is high --- these steps are natural candidates for additional
methodological development.

Finally, there is a need to assess how the predictions made by purely
computational approaches will be fed back into other types of research. This is
notably true when presenting these approaches to stakeholders. One possible way
to make this knowledge transfer process easier is to be transparent about the
way predictions where derived: which data were used (with citations and unique
identifiers), which software was used (with versions numbers and code), and what
the model / simulations do. In short, the onus is on practitioners of
computational research to make sure we provide all the information needed to
communicate how predictions came to be.

## Establishing the currencies of collaboration

An important question to further the integration of of computational approaches
to the workflow of ecological research is to establish *currencies* for
collaborations. Both at the scale of individuals researchers, research groups,
and larger research communities, it is important to understand what each can
contribute to the research effort. I attempt to represent this in
\autoref{flow}. As ecological research is expected to be increasingly predictive
and policy-relevant, and as fundamental research tends to tackle increasingly
refined and complex questions, it is expected that research problems will become
more difficult to resolve; this is, I think, an incentive for a collaboration
that builds on the skills that are specific to different approaches.

There is no tip-toeing around the fact that computational ecologists will be
*data consumers*, and this data will have to come from ecologists with active
field programs. Recognizing that computational ecology *needs* this data as a
condition for its continued existence and relevance should motivate the
establishment of a way to credit and recognize the role of *data producers*
[which is discussed in @pois15sdc, in particular in the context of massive
dataset aggregation]. Data users should be extremely pro-active in the
establishment of crediting mechanisms for data producers; as the availability of
these data is crucial to computational approaches, and as we do not share the
cost of collecting these data, it behooves us to make sure that our research
practices do not accrue a cost for our colleagues with field or lab programs.

This said, the fear of data parasites taking away data and publishing faster,
thereby scooping the people involved in data collection, has no empirical
support [@evan16gpc]; there is a necessary delay between the moment data are
available, and the moment where they are re-used (especially considering that
data are, at the earliest, published at the same time as the paper). This delay
is introduced by the need to understand the data, see how they can be combined,
develop a research hypothesis, etc.. The fact that data re-use is not
instantaneous conveniently reveals another piece of information about
computational ecology: it relies on different skills, and different tools. One
of the most fruitful avenue for collaboration lies in recognizing the strengths
of different domains: the skills required to assemble a dataset (taxonomic
expertise, natural history knowledge, field know-how) and the skills required to
develop robust computational studies (programming, applied mathematics) are
different. If anything, this calls for increased collaboration, where these
approaches are put to work in complementarity.

!{flow}

## Training and advising computational ecologists

@barr14lqt highlighted the fact that, professional ecologists received *less*
quantitative and computational thinking that they think should be necessary.
Increasing the amount of such training does not necessarily imply that natural
history or field practice will be sacrified on the altar of mathematics: rather,
ecology would benefit from introducing more quantitative skills and reasoning
across all courses, and introductory ones in particular [@hoff16dam]. Instead of
dividing the field further beteen empirically and theoretically minded
scientists, this would showcase quantitative skills are being transversal to all
questions that ecology can adress. What to teach, and how to integrate it to the
existing curriculum, does of course requires discussion and consensus building
by the community.

A related problem is that most practicing ecologists are terrible role models
when it comes to showcasing good practices of data management; and data
management is a crucial step towards easier computational approaches. Even in
the minority of cases where ecologists do share their data on public platforms,
there are so few metadata that not being able to reproduce the original study is
the rule [@roch15pda; @roch14tpd]. This is a worrying trend, because data
management affects how easily research is done, regardless of whether the data
are ultimately archived. Because the volume and variety of data we can collect
tends to increase over time, and because we expect higher standard of analysis
(therefore requiring more programmatic approaches), data management has already
became a core skill for ecologists.

# Concluding remarks

None of these approaches to ecological research have any intrinsic superiority --
in the end, direct observation and experimentation trumps all, and serve as the
validation, rejection, or refinement of predictions derived in other ways. The
growing computational power, growing amount of data, and increasing
computational litteracy means that producing theory and predictions is becoming
cheaper and faster (regardless of the quality of these products). Yet the time
needed to test any prediction is not decreasing, or not as fast. Computational
science has resulted in the development of many tools and approaches that can be
useful to ecology, since they allow to wade through these predictions and data.
Confronting theoretical predictions to data is a requirement, if not the core,
of ecological synthesis; this is only possible under the conditions that
ecologists engage in meaningful dialogue, and recognize the currencies of their
collaborations.

**Acknowledgements:** I thank Dr. Allison Barner and Dr. Andrew McDonald for
stimulating discussions, students of the Computational Ecology Summer School
2016 for asking "What is computational ecology?", and the Station de Biologie
des Laurentides de l'Université de Montréal for hosting me during part of the
writing process. Part of this manuscript was inspired by presentations I gave
during High Performance Computing Symposium 2015 in Montréal, for the
organization of which I thank Compute Québec and Compute Canada, and during the
2016 meeting of the Ecological Society of America. I thank the volunteers of
Software Carpentry and Data Carpentry, whose work contribute to improving the
skills of ecologists.

# References
