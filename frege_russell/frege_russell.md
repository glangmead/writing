Frege's Begriffsschrift (concept-script).

Here, Frege introduces a notation for logical expressions, including what we now call universal and existential quantifiers.

The notation.

Function-argument analysis.

Universal quantification. The unification of "syllogistic logic" and "propositional logic". 

The domain of discourse is what Frege calls "scientific truth." In particular he wants to enhance our ability to discuss purely logical arguments without being confused or entangled with language. For example, "A killed B" and "B was killed by A" have different subjects and predicates linguistically, but contain the same logical content. Frege wants to develop a symbolic language for expressing this purely logical content.

Frege compares his symbolic language to a microscope, which is a _technology_ that offers an enhanced view compared to the human eye. But the view it offers is very narrow. He wants to offer this same tradeoff with logic.

Frege provides a roadmap for future enhancements to his script. This is very analogous to a software roadmap: the scope of the technology increases as more features are added. For Frege, arithmetic is within reach in this first version, but he wants to expand it to support reasoning about additional fields. He mentions calculus and physics.

"freeing thought from the taint of ordinary linguistic means of expression"

The script:

- A : the proposition that A
|- A : the judgment (assertion) that A holds

It is syntactically valid only to put propositions in the position of A. And these are to be distilled from ordinary language by representing only the "conceptual content", i.e. the content that does not depend on whether it is expressed in active or passive voice, or other linguistic choices.

|---A
  L_B : The judgment that B -> A

Note that Frege uses truth tables to define B -> A, so it doesn't have the modern fullnes of meaning that we place on the modern notation.

Frege assigns meaning to parts of these lines. The vertical at left is the "judgment". The vertical stroke connecting the two horizontal lines is the "conditional". The horizontal stroke between judgment and conditional is the "content stroke" for the proposition that B -> A. The horizontal stroke to the left of A is the "content stroke" for A, and similarly for B.

The horizontal lines form a hierarchical group around what lies to the right. Decorating these lines allows the decoration to have _scope_.

|-----A
   ∟--B
    ∟-C : (C -> B) -> A

We can build conclusions with a horizontal line, as in natural deduction:

|-----A
  ∟--B

  |-B
--------
   A

A notch along a horizontal line denotes the negation of that sub-proposition:

|-⫟-A

I see an echo of this in the modern "not" operator ¬.

It can be placed on any horizontal line, e.g.


|---⫟-A
  ∟---B

or

|-----A
 ∟-⫟-B

Frege spends some time deciding whether he wants "or" or "exclusive or" and decides on the former. The notation for "A or B" is the just-given judgment:

|-----A
 ∟-⫟-B

And so the notation so far can express "or".

He shows some more complex examples such as

----⫟-----A
 |     |
 |     ∟⫟-B
 ∟------⫟-A
     |
     ∟----B

Frege then discusses identity. I can best summarize this by attributing to him the distinction between definitional equality and judgmental equality. Judgmental equality is syntactic, for when we can tell "from the beginning" before a judgment is obtained that A and B are two names for the same content, a priori. The latter occurs as the result of a judgment. He gives an example of a moving chord of a circle, where the two endpoints of the chord are named A and B. As the chord becomes more vertical, B approaches A until they coincide. A theorem that A = B would then constitute the second kind of equality. 

He introduces this notation for expressing definitional equality:

|--(A ≡ B)

(with a triple equals sign). This judgment has the consequence that A and B can be substituted for each other in all expressions. His words for this are "A can always be replaced by B and vice versa".

Frege then describes the concept of turning a node in an expression into an argument, making it "indeterminate". This generates a function whose argument goes in that slot. This can be repeated, building a function with multiple arguments. Sometimes Frege mentions that if you make some nodes indeterminate, you must specify whether some of those slots need to be filled with the same argument when you provide arguments.

He notes that f(A, B) need not equal f(B, A). He also notes that f(A, B) may sometimes express a relation between A and B.

He further notes that the function itself may be treated as indeterminate, allowing you to substitute various functions.

Finally, Frege introduces a "for all" decoration for horizontal lines:

-𝄑-f(•)

meaning "for all values, f(•)". I'm using a musical fremata symbol with a dot inside, but Frege has a Gothic "a" in that place. He then indicates that he means the Gothic font to represent such quantified variables. Good idea!

He mentions that we can derive instances from these general propositions by substituting "something definite" for the dot:

|-𝄑-f(•)
--------
|---f(x)

Combining with negation we obtain the existential quantifier as well:

|-⫟-𝄑-⫟-f(•) : there exists a value x such that f(x)

The pattern "every X is a P" can be expressed

|-𝄑---P(•)
    ∟-X(•)

Frege works out various examples. My final comment here is that the "for all" is scoped to the items connected to the right of its line. This is apparently one of the major logical inventions of this work.






