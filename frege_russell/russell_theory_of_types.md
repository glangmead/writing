# Mathematical Logic as based on the Theory of Types (1908)

## I. The Contradictions.

Russell is going to set about resolving some contradictions, by closely analyzing the universal quantifier ("all", as in "all men are mortal").

Examples of contradictions include:

1. I am lying (Epimenides)

2. His own paradox: the class of all classes that are not members of themselves.

3. A relation defined in terms of all relations R that do not have the relation R to S.

4. The least integer not nameable in fewer than nineteen syllables. (This sentence has 18 syllables.)

5. The least indefinable ordinal.

6. All decimals that can be described in a finite number of words. This is enumerable and yet performing a diagonal argument can be done in finitely many words.

7. Burali-Forti: The ordinal of the series of all ordinals, which is well-ordered.

Russell reasons through what's going wrong: self-reference.

> The remark of Epimenides must include itself in its own scope.

> In each contradiction something is said about _all_ cases of some kind, and from what is said a new case seems to be generated, which both is and is not of the same kind as the cases of which _all_ were concerned in what was said.

He then converts the paradoxes into this form, where something is asserted of all propositions:

1. It is not true for all propositions p that if I affirm p, p is true.

2. The class of all classes is already in this form.

3. Similarly for "all relations".

4. "Here we assume, in obtaining the contradiction, that a phrase containing "all names" is itself a name.

5. This one contains "all definitions".

6. Same as #5.

7. "All ordinals" is an illegitimate notion.

> This leads us to the rule: "Whatever involves _all_ of a collection must not be one of the collection;"

But this formulation is too negative, so he wants to find a home for these quantifications.

## II. All and Any.

Russell wants to leverage our ability to say "x = x" for an arbitrary x, without saying "for all x, x = x". He calls x in the first case a "real variable" and in the second case where we explicitly quantify over x, x is called an "apparent variable". 

If ϕ is a propositional formula with variable x, then the distinction becomes betwen "ϕx" and "(x).ϕx" (where the parentheses are the notation for "for all").

In practice this distinctionw as already useful because deduction can only proceed with real variables. For example, "Let x be an even number. Consider x^2...". This sort of argument cannot be applied directly to "(x).prime x" since x is not free. But we can pass from the apparent variable to a real one, derive some consequence, and return to universal quantification over x.

In modern terminology, Russell is using the introduction and elimination rules for the universal quantifier.

## III. The Meaning and Range of Generalized Propositions.

> Note that there cannot be a real variable in any proposition; for what contains a real variable is a propositional function, not a proposition.

I raised my eyebrow and felt honest suspense when Russell says:

> How are we to interpret the word _all_ in such propositions as "all men are mortal?"

The piece he wants to emphasize is that there's a variable being implicitly quantified over in this proposition. We can rephrase it as "(x).if x is a man, x is mortal". So what does x range over? He uses the term _range of significance_ to describe the possible inputs to a given propositional function. It can't be too large of a collection, because we want to avoid the paradoxes. He says of the range:

> [the range] falls short of all imaginable values of x, though it exceeds the values which are men

But the range of significance must also be _implicit_. If it was explicit, as in "(x).if x is an i, then if x is a man x is mortal", then what is the new range of significance of this proposition that includes the clause about "being an i"? This particular move on his part seems to really point towards types, with their atomic identity which is not carved from something larger.

> We thus reach the conclusion that "all men are mortal" means "if x is a man, x is mortal, always," where always means "for all values of the function 'if x is a man, x is mortal.'"

## IV. The Hierarchy of Types

> A type is defined as the range of significance of a propositional function, i.e., as the collection of arguments for which the said function has values.

We will solve the paradoxes by placing some of the objects under discussion into a higher type. What's the lowest type? He says we don't need to have our hands on that, we just need relative types. Perhaps we only need them mid-argument when the self-reference gets heated. He says:

> It is unnecessary, in practice, to know what objects belong to the lowest type, or even whether the lowest type of variable occurring in a given context is that of individuals or some other. For in practice only the relative types of variables are relevant; thus the lowest type occurring in a given context may be called that of individuals so far as that context is concerned.

So we can use "individuals" to describe the lowest level we have around mid-argument. 

Propositions that contain only individuals as apparent variables are called _first-order propositions_. 

The totality of first order propositions is a type. Propositions in which first-order propositions, but no higher order, occur as apparent variables are second-order propositions. These can be used in third-order propositions, etc.

Resolving the paradoxes takes differing amounts of work. But we can resolve the Epimenides paradox by restating it as

    E': all first-order propositions affirmed by me are false

which is a second-order proposition, and so can't be plugged back into E'.

So far we have a hierarchy of types of propositions. He also points out that we can convert propositions into functions by substituting a variable x whenever some constituent, say a, occurs. I suppose we'd call this lambda abstraction these days.


