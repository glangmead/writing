# Negation

<pre class="Agda"><a id="21" class="Keyword">module</a> <a id="28" href="foundation-core.negation.html" class="Module">foundation-core.negation</a> <a id="53" class="Keyword">where</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="109" class="Keyword">open</a> <a id="114" class="Keyword">import</a> <a id="121" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>

<a id="149" class="Keyword">open</a> <a id="154" class="Keyword">import</a> <a id="161" href="foundation-core.empty-types.html" class="Module">foundation-core.empty-types</a>
</pre>
</details>

## Idea

The Curry-Howard interpretation of negation in type theory is the interpretation
of the proposition `P ⇒ ⊥` using propositions as types. Thus, the negation of a
type `A` is the type `A → empty`.

## Definition

<pre class="Agda"><a id="¬"></a><a id="434" href="foundation-core.negation.html#434" class="Function">¬</a> <a id="436" class="Symbol">:</a> <a id="438" class="Symbol">{</a><a id="439" href="foundation-core.negation.html#439" class="Bound">l</a> <a id="441" class="Symbol">:</a> <a id="443" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="448" class="Symbol">}</a> <a id="450" class="Symbol">→</a> <a id="452" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="455" href="foundation-core.negation.html#439" class="Bound">l</a> <a id="457" class="Symbol">→</a> <a id="459" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="462" href="foundation-core.negation.html#439" class="Bound">l</a>
<a id="464" href="foundation-core.negation.html#434" class="Function">¬</a> <a id="466" href="foundation-core.negation.html#466" class="Bound">A</a> <a id="468" class="Symbol">=</a> <a id="470" href="foundation-core.negation.html#466" class="Bound">A</a> <a id="472" class="Symbol">→</a> <a id="474" href="foundation-core.empty-types.html#801" class="Datatype">empty</a>

<a id="map-neg"></a><a id="481" href="foundation-core.negation.html#481" class="Function">map-neg</a> <a id="489" class="Symbol">:</a>
  <a id="493" class="Symbol">{</a><a id="494" href="foundation-core.negation.html#494" class="Bound">l1</a> <a id="497" href="foundation-core.negation.html#497" class="Bound">l2</a> <a id="500" class="Symbol">:</a> <a id="502" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="507" class="Symbol">}</a> <a id="509" class="Symbol">{</a><a id="510" href="foundation-core.negation.html#510" class="Bound">P</a> <a id="512" class="Symbol">:</a> <a id="514" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="517" href="foundation-core.negation.html#494" class="Bound">l1</a><a id="519" class="Symbol">}</a> <a id="521" class="Symbol">{</a><a id="522" href="foundation-core.negation.html#522" class="Bound">Q</a> <a id="524" class="Symbol">:</a> <a id="526" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="529" href="foundation-core.negation.html#497" class="Bound">l2</a><a id="531" class="Symbol">}</a> <a id="533" class="Symbol">→</a>
  <a id="537" class="Symbol">(</a><a id="538" href="foundation-core.negation.html#510" class="Bound">P</a> <a id="540" class="Symbol">→</a> <a id="542" href="foundation-core.negation.html#522" class="Bound">Q</a><a id="543" class="Symbol">)</a> <a id="545" class="Symbol">→</a> <a id="547" class="Symbol">(</a><a id="548" href="foundation-core.negation.html#434" class="Function">¬</a> <a id="550" href="foundation-core.negation.html#522" class="Bound">Q</a> <a id="552" class="Symbol">→</a> <a id="554" href="foundation-core.negation.html#434" class="Function">¬</a> <a id="556" href="foundation-core.negation.html#510" class="Bound">P</a><a id="557" class="Symbol">)</a>
<a id="559" href="foundation-core.negation.html#481" class="Function">map-neg</a> <a id="567" href="foundation-core.negation.html#567" class="Bound">f</a> <a id="569" href="foundation-core.negation.html#569" class="Bound">nq</a> <a id="572" href="foundation-core.negation.html#572" class="Bound">p</a> <a id="574" class="Symbol">=</a> <a id="576" href="foundation-core.negation.html#569" class="Bound">nq</a> <a id="579" class="Symbol">(</a><a id="580" href="foundation-core.negation.html#567" class="Bound">f</a> <a id="582" href="foundation-core.negation.html#572" class="Bound">p</a><a id="583" class="Symbol">)</a>
</pre>