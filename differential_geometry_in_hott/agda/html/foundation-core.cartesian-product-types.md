# Cartesian product types

<pre class="Agda"><a id="36" class="Keyword">module</a> <a id="43" href="foundation-core.cartesian-product-types.html" class="Module">foundation-core.cartesian-product-types</a> <a id="83" class="Keyword">where</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="139" class="Keyword">open</a> <a id="144" class="Keyword">import</a> <a id="151" href="foundation.dependent-pair-types.html" class="Module">foundation.dependent-pair-types</a>
<a id="183" class="Keyword">open</a> <a id="188" class="Keyword">import</a> <a id="195" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>
</pre>
</details>

## Definition

Cartesian products of types are defined as dependent pair types, using a
constant type family.

<pre class="Agda"><a id="prod"></a><a id="358" href="foundation-core.cartesian-product-types.html#358" class="Function">prod</a> <a id="363" class="Symbol">:</a> <a id="365" class="Symbol">{</a><a id="366" href="foundation-core.cartesian-product-types.html#366" class="Bound">l1</a> <a id="369" href="foundation-core.cartesian-product-types.html#369" class="Bound">l2</a> <a id="372" class="Symbol">:</a> <a id="374" href="Agda.Primitive.html#591" class="Postulate">Level</a><a id="379" class="Symbol">}</a> <a id="381" class="Symbol">(</a><a id="382" href="foundation-core.cartesian-product-types.html#382" class="Bound">A</a> <a id="384" class="Symbol">:</a> <a id="386" href="Agda.Primitive.html#320" class="Primitive">UU</a> <a id="389" href="foundation-core.cartesian-product-types.html#366" class="Bound">l1</a><a id="391" class="Symbol">)</a> <a id="393" class="Symbol">(</a><a id="394" href="foundation-core.cartesian-product-types.html#394" class="Bound">B</a> <a id="396" class="Symbol">:</a> <a id="398" href="Agda.Primitive.html#320" class="Primitive">UU</a> <a id="401" href="foundation-core.cartesian-product-types.html#369" class="Bound">l2</a><a id="403" class="Symbol">)</a> <a id="405" class="Symbol">→</a> <a id="407" href="Agda.Primitive.html#320" class="Primitive">UU</a> <a id="410" class="Symbol">(</a><a id="411" href="foundation-core.cartesian-product-types.html#366" class="Bound">l1</a> <a id="414" href="Agda.Primitive.html#804" class="Primitive Operator">⊔</a> <a id="416" href="foundation-core.cartesian-product-types.html#369" class="Bound">l2</a><a id="418" class="Symbol">)</a>
<a id="420" href="foundation-core.cartesian-product-types.html#358" class="Function">prod</a> <a id="425" href="foundation-core.cartesian-product-types.html#425" class="Bound">A</a> <a id="427" href="foundation-core.cartesian-product-types.html#427" class="Bound">B</a> <a id="429" class="Symbol">=</a> <a id="431" href="foundation.dependent-pair-types.html#505" class="Record">Σ</a> <a id="433" href="foundation-core.cartesian-product-types.html#425" class="Bound">A</a> <a id="435" class="Symbol">(λ</a> <a id="438" href="foundation-core.cartesian-product-types.html#438" class="Bound">a</a> <a id="440" class="Symbol">→</a> <a id="442" href="foundation-core.cartesian-product-types.html#427" class="Bound">B</a><a id="443" class="Symbol">)</a>

<a id="pair&#39;"></a><a id="446" href="foundation-core.cartesian-product-types.html#446" class="Function">pair&#39;</a> <a id="452" class="Symbol">:</a>
  <a id="456" class="Symbol">{</a><a id="457" href="foundation-core.cartesian-product-types.html#457" class="Bound">l1</a> <a id="460" href="foundation-core.cartesian-product-types.html#460" class="Bound">l2</a> <a id="463" class="Symbol">:</a> <a id="465" href="Agda.Primitive.html#591" class="Postulate">Level</a><a id="470" class="Symbol">}</a> <a id="472" class="Symbol">{</a><a id="473" href="foundation-core.cartesian-product-types.html#473" class="Bound">A</a> <a id="475" class="Symbol">:</a> <a id="477" href="Agda.Primitive.html#320" class="Primitive">UU</a> <a id="480" href="foundation-core.cartesian-product-types.html#457" class="Bound">l1</a><a id="482" class="Symbol">}</a> <a id="484" class="Symbol">{</a><a id="485" href="foundation-core.cartesian-product-types.html#485" class="Bound">B</a> <a id="487" class="Symbol">:</a> <a id="489" href="Agda.Primitive.html#320" class="Primitive">UU</a> <a id="492" href="foundation-core.cartesian-product-types.html#460" class="Bound">l2</a><a id="494" class="Symbol">}</a> <a id="496" class="Symbol">→</a> <a id="498" href="foundation-core.cartesian-product-types.html#473" class="Bound">A</a> <a id="500" class="Symbol">→</a> <a id="502" href="foundation-core.cartesian-product-types.html#485" class="Bound">B</a> <a id="504" class="Symbol">→</a> <a id="506" href="foundation-core.cartesian-product-types.html#358" class="Function">prod</a> <a id="511" href="foundation-core.cartesian-product-types.html#473" class="Bound">A</a> <a id="513" href="foundation-core.cartesian-product-types.html#485" class="Bound">B</a>
<a id="515" href="foundation-core.cartesian-product-types.html#446" class="Function">pair&#39;</a> <a id="521" class="Symbol">=</a> <a id="523" href="foundation.dependent-pair-types.html#586" class="InductiveConstructor">pair</a>

<a id="_×_"></a><a id="529" href="foundation-core.cartesian-product-types.html#529" class="Function Operator">_×_</a> <a id="533" class="Symbol">:</a> <a id="535" class="Symbol">{</a><a id="536" href="foundation-core.cartesian-product-types.html#536" class="Bound">l1</a> <a id="539" href="foundation-core.cartesian-product-types.html#539" class="Bound">l2</a> <a id="542" class="Symbol">:</a> <a id="544" href="Agda.Primitive.html#591" class="Postulate">Level</a><a id="549" class="Symbol">}</a> <a id="551" class="Symbol">(</a><a id="552" href="foundation-core.cartesian-product-types.html#552" class="Bound">A</a> <a id="554" class="Symbol">:</a> <a id="556" href="Agda.Primitive.html#320" class="Primitive">UU</a> <a id="559" href="foundation-core.cartesian-product-types.html#536" class="Bound">l1</a><a id="561" class="Symbol">)</a> <a id="563" class="Symbol">(</a><a id="564" href="foundation-core.cartesian-product-types.html#564" class="Bound">B</a> <a id="566" class="Symbol">:</a> <a id="568" href="Agda.Primitive.html#320" class="Primitive">UU</a> <a id="571" href="foundation-core.cartesian-product-types.html#539" class="Bound">l2</a><a id="573" class="Symbol">)</a> <a id="575" class="Symbol">→</a> <a id="577" href="Agda.Primitive.html#320" class="Primitive">UU</a> <a id="580" class="Symbol">(</a><a id="581" href="foundation-core.cartesian-product-types.html#536" class="Bound">l1</a> <a id="584" href="Agda.Primitive.html#804" class="Primitive Operator">⊔</a> <a id="586" href="foundation-core.cartesian-product-types.html#539" class="Bound">l2</a><a id="588" class="Symbol">)</a>
<a id="590" href="foundation-core.cartesian-product-types.html#590" class="Bound">A</a> <a id="592" href="foundation-core.cartesian-product-types.html#529" class="Function Operator">×</a> <a id="594" href="foundation-core.cartesian-product-types.html#594" class="Bound">B</a> <a id="596" class="Symbol">=</a> <a id="598" href="foundation-core.cartesian-product-types.html#358" class="Function">prod</a> <a id="603" href="foundation-core.cartesian-product-types.html#590" class="Bound">A</a> <a id="605" href="foundation-core.cartesian-product-types.html#594" class="Bound">B</a>
</pre>