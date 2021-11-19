# Grundgesetze der Arithmetik, Volume 1 (1893)

Beaney is pretty brutal with the Grundgesetze Vol. 1, leaving very large chunks of it out. What remains is partially review.

## Preface

He starts off with a mission statement: 

> The ideal of a strictly scientific method in mathematics

> we can demand that all propositions used without proof be expressly declared as such

> We must then strive to reduce the Number of these primitive laws

> I demand that all modes of inference used be specified in advance.

Then the flex:

> This ideal I believe I have now essentially achieved.

As I write this, a growing community of mathematicians are using Coq, Lean, and Agda to formalize the existing corpus of mathematics. The verb is "formalize", and I think this is what Frege is describing. It is a _more laborious_ version of reasoning that helps you not make mistakes or leave gaps. But the purpose of the activity is still to "do math" in the usual sense.

He calls out two small cheats that he allows himself:

> I have allowed myself to make tacit use of the interchangeability of subcomponents (conditions) and of the possibility of amalgamating identical subcomponents.

> each hypothesis... is brought to light

He foreshadows the trouble with value-ranges:

> A dispute can break out here, so far as I can see, only with regard to my fundamental law concerning value-ranges (V).

He begs patience:

> The requirements on the rigour of proofs inevitably result in greater length.

He calls out Dedekind for skipping too many steps in his own proofs. His extensive complaints about how sloppy mathematicians can be has been echoed in modern times.

Now some reiterations:

> A statement of number contains an assertion about a concept.

Sign vs reference (bedeutung):

> in the equation '2^2 = 2 + 2' the left-hand sign is different from the right-hand sign; but both designate or refer to the same number

Value-ranges:

> The introduction of value-ranges of functions is an essential advance, to which a far greater flexibility is owed.

> I even define Number itself as an extension of a concept, and extensions of concepts count for me as value-ranges. So we simply could not manage without them.

He uses the word "algorithm".

On "judgeable content", where he reiterates the dichotomy of sense and reference, joining "sign" as a three-way distinction.

> I have now split this up into what I call thought and truth-value. This is the result of the distinction between the sense and _Bedeutung_ of a sign. In this case the sense of the sentence is the thought and its Bedeutung the truth-value.

He complains that the intricacy of his project makes it hard for people to take, so he is not very influential.

He reiterates the distinction between concept and object. Recall that a concept is a function with truth values.

He discusses a straw man about the word "law", that it can be used to decribe accepted wisdom as opposed to what is in fact true.

> For me truth is something objective and independent of those who judge.

What work is the "for me" doing in that sentence?

One point that occurred to me here is that he is obviously railing against relativism when it comes to mathematical truth. But in a way his project is to relativize mathematics to his set of logical laws. In modern times, at least in some circles, there is a flourishing diversity of foundational systems, and rather than choose one, the project is to see what is obtainable in each one, and weigh them against each other as equally valid starting points. Results are then scoped to the foundations in the front of our mind. That's relativism, inspired by Frege!

There must still be an intuitive leap at the bottom of the cathedral:

> Now the question why and with what right we recognize a logical law as true, logic can only answer by reducing it to another logical law. Where that is not possible, logic can give no answer.

He reiterates another of his straw men: that numbers are psychological and subjective, private to each person. Is this positivism?

## Introduction

Much recaptulation of the Preface.

## I Explanation of the _Begriffsschrift_ 

### I.1 The Primitive Signs

A function is unsaturated. The sign 'x' is a place-holder, called the _argument_. We can have functions of two arguments, and we can have arguments that take functions, giving a second-level function.

Functions can have values in truth-values, such as 

    x^2 = 4

We have names, sense, and references (bedeutung).

There is no typing within objects:

> The domain of admissible arguments must also be extended to include all objects whatever.

> I count as _objects_ everything that is not a function

Value range:

> I use the words 'the function Phi(xi) has the same _value-range_ as the function Psi(xi)' throughout as [co-sense and co-reference] with the words 'the functions Phi(xi) and Psi(xi) always have the same value for the same argument'.














