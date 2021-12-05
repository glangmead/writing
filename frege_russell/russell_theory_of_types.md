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



