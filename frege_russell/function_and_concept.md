# Function and Concept (1891)

Here Frege wants to elaborate on the two terms in the title, both of which are used in the Begriffsschrift, which he cites.

In the late 19th century mathematics was still in the process of defining functions, as part of the project to formalize the field of analysis. Frege mentions this project, and wants to offer his own more general framework.

Straw man 1: A function is an expression involving a free variable, usually _x_, for example 

    2x^3 + x

However:

> This answer cannot satisfy us, for here no distinction is made between form and content, sign and thing signified

Frege wants us to look at the above expression as a typographical arrangement of symbols only (the form), and not the semantic object being referred to (the content). Another example is 

    2 + 5 = 3 + 4

He posits that some people feel the equation holds, but that 2 + 5 and 3 + 4 are "not the same". The difference takes place at the level of symbols only. The sign vs the signified.

He touches on his project to define numbers, which is relevant here because the symbol "3" must also be a sign for something that is being signified, which would therefore need to be some sort of object that is a number.

> There is at present a very widespread tendency not to recognize as an object anything that cannot be perceived by means of the senses; this leads here to numerals being taken to be numbers...

> One could imagine the introduction some day of quite new numerals.

As a final piece of evidence that we need a dichotomy between sign and signified, he offers

> the equation x^2 = 4 would not just have the roots 2 and -2 but also the root (1 + 1) and countless others.

## Functions

A function is not an expression then, it is an object. But it differs from numbers which are also objects. It is "unsaturated" because it needs its arguments to be supplied. It has "slots" to plug objects.

> a function by itself must be called incomplete, in need of supplementation, or unsaturated. And in this respect functions differ fundamentally from numbers.

He compares (not so usefully, I think) the saturated/unsaturated dichotomy with the closed/open endpoint at 0 of nonnegative reals versus positive reals.

He distinguishes the constant function 2 + 0x from the constant 2, which is not a function. We gloss over this these days, but we can grant him this distinction in this context.

He defines "value-range" as the totality of input-output pairs of the function. He mentioned the graph, which is a geometric representation of teh value-range. He needs this idea to make another distinction. In the equation

    x^2 - 4x = x(x - 4)

we are not equating the functions, but rather the value-ranges. In that way it is an equality between two real numbers, not two functions.

I don't understand this sentence:

> The possibility of regarding the equality holding generally between values of functions as a [particular] equality, viz. an equality between value-ranges is, I think, indemonstrable; it must be taken to be a fundamental law of logic.

He introduces a notation for taking the value-range of an expression, such as this one for x^2 - 4x:

    ἀ(⍺^2 - 4⍺)

where we replace _x_ with a Greek letter, and then operate on the whole Greek expression with the hard-breathing or whatever it's called version of that letter. In this way ἀf(⍺) would be a very general expression for the value-range of an unspecified function.

Referring to the expansion of the domain of mathematical definitions (such as addition) into real numbers then complex numbers, he wants to expand even further, into truth values. For example:

    (2^2 = 4) = (2 > 1)

can be formed because both sides are truth values. The overall value is True because the equality holds.

This is making contact with one of Frege's big narratives which is that the signified object of assertions is its truth value. So "a > b" takes values in truth values, i.e. these signs signify a truth value.

Here's his punch line. This definition of function gives us a way to define a _concept_.

> Indeed, we may say at once: a concept is a function whose value is always a truth-value.

We can expand the class of functions to include linguistic forms as well, e.g.

    'Caesar conquered Gaul'

The "conquered Gaul" part becomes a function because it is unsaturated. So this is a concept, the concept of an entity that conquered Gaul! Or 

    'the capital of the German Empire'

where 'the capital of' is unsaturated. So

    'the capital of x'

is the expression of a function.

Functions take objects as arguments, and take values in objects (of which truth values are an example). He tries to define an object but sort of fails:

> Here I can only say briefly: an object is anything that is not a function.

He defines the _extension_ of a concept in the case of numerical functions. In fact it's just the value-range:

> We gave the name 'value-range' also to ἐ(ε^2 = 1), but we could also have termed it the extension of the concept: square root of 1. Extensions of concepts likewise are objects, although concepts themselves are not.

Wait, why are concepts not objects? It's because concepts are functions and functions are not objects.

Frege revisits his "Julius Caesar" problem here. Why are we not entitled to form the expression

    ☉ + 1

i.e. "the Sun plus 1", by plugging the Sun into the function signified by "x + 1"? We must fully specify for each concept what objects are admissable:

> This involves the requirement as regards concepts, that, for any argument, they shall have a truth-value as their value; that it shall be determinate, for any object, whether it falls under the concept or not. In other words: as regards concepts we have a requirement of sharp delimitation...

and

> The requirement of the sharp delimitation of concepts thus carries along with it this requirement for functions in general that they must have a value for every argument.

Every argument! Every object in every imaginary universe can be tested against each concept and we have to have a set of admissable such objects. These days we can say that functions are typed, and the input must be of a given type. We don't worry about the decision procedure for testing if some untyped object is in the type or not.

Frege's Begriffsschrift notation for judgments and pre-judgments can take over the job of expressing functions whose inputs are themselves truth values, such as 

    ---x

which will take the value True if x is True, else False (including in cases where x is not a truth value at all, such as ---4).

To assert that x is True we can use the judgment form that had the vertical stroke:

    |---x

He explains the "not" notation with the downward tick mark

    |-⫟-x

and the universal quantification notation

    |-𝄑-f(•)

(which is not a great facsimile of his typography but I'm limiting myself to unicode characters). 

For example we have

    |-𝄑-•=•

He also shows his existential quantifier which is formed by combining not and forall:

    |-⫟-𝄑-⫟-f(•) : there exists a value x such that f(x)

He then points out that the last expression above could be thought of as a function that takes f as an argument: a function of functions.

> Now just as functions are fundamentally different from objects, so also functions whose arguments are and must be functions are fundamentally different from functions whose arguments are objects and cannot be anything else. _I call the latter first-level, the former second-level, functions._

(emphasis mine). This is easy enough for us to understand, including the word salad that we can summarize using types. 
