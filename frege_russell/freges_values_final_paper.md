# Frege's Values
In the 1890s Gottlob Frege expanded the power and scope of logic. His stated narrative was to show that the natural numbers could be created inside logic. But why was he doing this? What benefits did he think this would have and what value statements did he provide? I will show that what Frege valued, as well as his methods for furthering those values, are consistent with some major streams of mathematical activity today. In particular we must continue to enhance logic and foundational theory while maintaining the perspective that this work must also serve the flourishing of other mathematical activity. These ideas provide a framework for tackling the new crisis faced by mathematics. Ironically, this is not another instance of the crises of the 19th and 20th centuries, where mathematics required a renewed commitment to rigor in order to avoid confusion, paradoxes, or errors. There are indeed vocal elements today who claim that we are in just such a crisis! But this time we have all the tools we need to achieve the desired standards. Unfortunately, the proponents of those very tools have themselves brought about a crisis of values, by inviting agents from the nihilistic wing of the artificial intelligence community to harmfully launder their commercial clout into the genuine intellectual clout of mathematics. What we need now is a new commitment to Frege's even bigger vision: that rigor is a tool of mathematics, not a value unto itself.

## Frege's values
### Logic in service of mainstream mathematics
* he is focused on scientific truth
* scientific truth is positivist
* math is a science
* logic is a tool for doing math
* he may extend it to other sciences

Frege contextualizes his work by using the phrase "scientific truth."[^1] 

> The firmest proof is obviously the purely logical, which, prescinding from the particularity of things, is based solely on the laws on which all knowledge rests.

A complete logical proof has no "gaps":

> So that nothing intuitive could intrude here unnoticed, everything had to depend on the chain of inference being free of gaps.

One cause of gaps is "the inadequacy of language". So Frege invented the concept script as a notation language for gap-free logical proof. His comparison of the concept script to a microscope is very fruitful. First of all, it is a tool which we use for the purpose of examining the true subject matter at hand, namely scientific truth. But it is "useless for all others" (purposes, that is). It is a scientific instrument and like all scientific instruments it has two natures. First, it is itself a product of science and worthy of study and refinement by scientists and engineers. But secondly it empowers scientists to use it to make more powerful observations and extend the domain of science.

> Everything that is necessary for a valid inference is fully expressed; but what is not necessary is mostly not even indicated; _nothing is left to guessing_.

Frege is proud that his definition of _function_ is more powerful than the popular mathematical definition of his day:

> One sees here particularly concept of function in Analysis, which in general I have followed, is far more restricted than that developed here.

Frege uses the word "science" but in fact he is focused entirely on mathematical applications of his logical foundations. He views mathematics as a particular science, as evidenced by remarks such as this one about the natural numbers:

> Yet is it not shameful that a science should be so unclear about its most prominent object, which is apparently so simple?

## Frege's project
### The _Begriffsschrift_ and the analyticity of numbers
The microscope that Frege invented is a fragment of logic with a primitive notion of types. By way of types he defines objects at the lowest level, then functions all of whose arguments are objects at level 1, then higher functions at the higher levels (e.g. a function of two arguments that takes a second-level function and an object would be a third-order function). His logical rules of inference are these nine (in modern notation):

    |- a -> (b -> a)
    |- (c -> (b -> a)) -> (c -> b) -> (c -> a)
    |- (d -> (b -> a)) -> b -> (d -> a)
    |- (b -> a) -> (¬a -> ¬b)
    |- ¬¬a -> a
    |- a -> ¬¬a
    |- (c ≣ d) -> f(c) -> f(d)
    |- c ≣ c
    |- ∀a.f(a) -> f(c)

His introduction of the universal quantifier (∀ in modern notation) was original. He also distinguished two kinds of equality to accompany his two levels of meaning, known as _sense_ and _reference_. The sense of an expression is the exact meaning of the syntactic encoding, and the reference is a semantic object to which the sense eventually refers, possibly after doing a lot of work to unpack the syntax. His famous linguistic example is how "the morning star" has the same reference as "the evening star" since both are the planet Venus. But they differ at the level of sense, and they pick out the planet via different methods.

How did Frege characterize the act of proving statements with this logical system? In a nutshell he felt it was often laborious, off-putting, but necessary to be free of gaps. He worried it was causing his work to be ignored, which would have the additional disadvantage that the core ideas may also not propagate among his peers.

(TODO: Quotes to back these up)





## Disagreement with Hilbert
### Frege doesn't notice the synergy
In 1899 Hilbert published _Foundations of Geometry_, which we recognize now as a major development. He proposed splitting mathematical theories, such as Euclidean geometry, into two parts. One part contains the axioms of the theory, including any conceptual objects which the theory will talk about and operate on. For geometry the objects are _points_, _lines_, _line segments_, _circles_, _angles_, and so on. The axioms would include Euclid's postulates, namely (from Wolfram MathWorld[^wolfram]):

1. A straight line segment can be drawn joining any two points.
2. Any straight line segment can be extended indefinitely in a straight line.
3. Given any straight line segment, a circle can be drawn having the segment as radius and one endpoint as center.
4. All right angles are congruent.
5. Given any straight line and a point not on it, there exists one and only one straight line which passes" through that point and never intersects the first line, no matter how far they are extended.

The second part of the theory is to take the axioms and _interpret_ them in some specific mathematical setting. We could interpret all the objects in the usual Euclidean way in the plane, for example. But we could also work on a two-dimensional sphere and interpret "point" to mean "pair of antipodal points on the sphere" and "line" to mean "great circle". We then get a second consistent theory except for postulate 5, which fails to hold because instead of there existing one such line, there are none!

There are at least three things going on here! First of all, it neatly packages a story about geometry and the status of the fifth postulate that took our ancestors hundreds of years to figure out. Secondly it empowers us to split our arguments into two parts as well. One part can focus on all the deductions we can make simply based on the axioms, without referring to the interpretation. Some results, such as the content of postulate 5, will not be provable that way. We have to pass to the interpretation that lives on the flat plane before we can prove it, and so it's more contingent, or even _synthetic_ to use Kant's term. The results that stem strictly from the axioms would then count as _analytic_. I like to think of these analytic theorems as supplying answers to "why" questions. Why do the interior angles of a triangle add up to two right angles? Because _anything_ that obeys postulates 1-4 also obeys this rule.

But Hilbert's method also gives us one more capability. We can use it to study the axiom systems themselves and ask questions about the consistency of the axioms, including whether some of the axioms are independent. Since there are two interpretations of 1-4 one of which obeys postulate 5 and one of which does not, we can conclude that postulate 5 does not follow from 1-4. That's the result that took 2,000 years to discover.

When I learned that Frege responded strongly _against_ this idea of Hilbert's, I was truly surprised. What were his objections?

> No man can serve two masters. One cannot serve both truth and untruth. If Euclidean geometry is true, then non-Euclidean geometry is false, and if non-Euclidean geometry is true, then Euclidean geometry is false.

> If one is content to have only phantoms hovering around one, there is no need to take the matter so seriously; but in science we are subject to the necessity of seeking after truth.

The "phantoms" would presumably be the bare axiom system, devoid of interpretation.

It seems clear Frege is misunderstanding Hilbert, but I think we can learn some important lessons from that. The misunderstanding is that Frege is unable to, or unaware that he should, _postpone_ the interpretation of the axioms. The phantoms are temporary, and the process definitely has two steps. Frege insists in the first quote that the axioms must be _true_ which entails that they also be _fully interpreted_. He and many other thinkers believed they were being invited to live only in axiom-space, proving empty results with no meaning. This was likened (pejoratively) to a game, and is given the name "formalism". Hilbert retorted in 1919:

> We are not speaking here of arbitrariness in any sense. Mathematics is not like a game whose tasks are determined by arbitrarily stipulated rules. Rather, it is a conceptual system possessing internal necessity that can only be so and by no means otherwise.[^hilbert]

I would argue that Frege is doing more than simply misunderstanding the proposal. He is defending mathematics from being drained of meaning. A geometrical point is a mathematical object and claims about it can be true or false, and such claims have value. An axiom is just a phantom, and has no value at all. This is very clarifying for us. If we consider Hilbert's procedure a piece of new technology, Frege is a luddite, worrying whether it will damage the field of mathematics.

Frege must have believed this so fully that he did not take advantage of the synergy with his life's work. The combination of axioms with logic allows an even larger portion of mathematical proofs to remain analytic, rigorous, and general. The original theorems in planar geometry are fully recovered after performing interpretation, so nothing is lost but many new theorems are gained simultaneously, across all known and future interpretations.

In hindsight, Frege was trying to base his theory of natural numbers directly in Platonic philosophical bedrock. He spent many pages arguing philosophically about concepts, functions, and extensions of functions, to lend credence that numbers are real objects. This is the postivist part of his philosophy, but it's actually not dependent on, or coupled to, the logical tools. We can preserve the logic and the value system, the quest for mathematical truth, and plug these into Hilbert's axiomatic approach instead of in positivism. In fact we can even preserve the positivism if we want to bless certain interpretations of the axioms as "real" and others as "fictitious", but I don't have much to say about that.

## Type theory
### Synthesis of Frege and Hilbert



## Proof assistants
### And their communities
1. Wonderful working example of Frege's vision. Moving very rapidly. Symbiosis alive and well.
2. But they are a little too welcoming to Szegedy and DeepMind.

## Silicon Reckoner
### Grappling with what mathematical activity is, in a defensive posture wrought by recent capitalist history.

Formalizing mathematics with computers is clearly a direct descendent of the activity Frege was proposing. The computer helps streamline the application of thousands of logical rules, which solves the problem Frege noticed with the verbosity of the concept script. But the goal, the activity being undertaken, is standard mathematical activity. Lots of undergraduate mathematics, some graduate mathematics, and some research-level mathematics have been formalized. The database of formalized results follows the database of results published in standard journals to the extent it is aligned with the capabilities of the software and the staffing. It is a healthy activity, and a human one. It is used to teach and to learn, and it has corrected errors and discovered new ones. It really is providing long sought-after upgrades to mathematical rigor.

Besides proving and re-proving theorems, the activity of formalization has the side effect of digitizing mathematical results and their proofs. The structured files are tautologically machine-readable, and so can be mined for other purposes if posted on the public internet without restricted licenses. Whenever data is being moved from the context in which it was created into a new context, we need to be on the lookout for ethical lapses, both intended and accidental.

Digital mathematical repositories are under investigation by various teams with multiple applications in mind. Here is a survey of a few such projects:

[FAbstracts](https://formalabstracts.github.io). This project has a muddled vision statement, including the incompatible goals of "FAbstracts enables machine learning in math", and "tools for exploration such as a Google Earth for mathematics, providing an intuitive visual map of the entire world of mathematics".

[Mathfoldr](https://topos.site/blog/2021/07/introducing-the-mathfoldr-project/). This project has more humanistic goals: "MathFoldr will provide search and literature curation tools that will make mathematics more accessible, with the ultimate goal of transforming the way mathematics is created and navigated". 

Christian Szegedy. 
https://siliconreckoner.substack.com/p/intelligent-computer-mathematics
https://link.springer.com/chapter/10.1007/978-3-030-53518-6_1
https://www.quantamagazine.org/how-close-are-computers-to-automating-mathematical-reasoning-20200827/

DeepMind. 

TODO: document what the ML groups have done, notably train algorithms on corpora of human proofs.

## Conclusion
### Stick with Frege. Protect math.
Frege thought he saw phantoms when he was introduced to formalism. What would he make of the images emitted by deep learning networks that are tuned on millions of images and textual captions, then inverted to generate images from text? These networks are just logical systems that digest data and update themselves in a way that minimizes a calculated value. When we type "banana" and examine the resulting image, we face a test. One common response is to marvel that the computer can generate an image of a banana, and to compare the psychedelic patterns of noise to human art. These are the people who see phantoms but believe they are seeing people. The computer cannot generate new material, it is truly an analytic machine and can only permute the human input according to human-programmed rules. They project human intent and human creativity onto the machine, and it's hard to imagine a more confused and degrading response. This fearful situation is not some cherry-picked analogy. Literally the same engineers who built these tools are looking at mathematical theorems and proofs as another corpus to ingest. They plan to build machines that emit pictures of mathematical bananas, and hope that we keep projecting ourselves onto their work. We are the instruments who will launder their tautologies and call it mathematics.

Humans have always had a complex relationship with our tools. We use them for certain purposes, but we also improve them. Sometimes the tool is at the center, sometimes at the periphery. Tools that have had especially wide-ranging impacts include writing and its sequels: the printing press and the digital computer. In the 21st century the computer has proven especially effective at drawing our attention away from the problems it is solving and directing them inward, into the computer. The field of mathematics has its own parallel narrative of interactions with these technologies. Consider for example the growing turmoil around the mathematical publishing industry. It's not very unfair to stipulate that there are rapacious commercial entities who mine mathematical writing for profit and adopt exploitative practices entirely divorced from the goals of the community itself. Who see mathematics not as value-laden directly, but who see the value it holds for us and to leverage it, to trade it for money and power, rather than enhance it. I would further stipulate that this sort of antagonistic system is an outgrowth of even more general systems of culture and capital. The logical inference is that we should be constantly assessing our alignment with such entities, to try to preserve what we value. If we value the human activity of generating beautiful mathematical theories with high standards of rigor, as Frege did, then we have a simple test we can perform. We can ask whether the other entity shares that goal or not.

[^1]: _Begriffsschrift_, p. 1
[^wolfram]: https://mathworld.wolfram.com/ParallelPostulate.html

[^hilbert]: https://en.wikipedia.org/wiki/David_Hilbert#cite_note-44