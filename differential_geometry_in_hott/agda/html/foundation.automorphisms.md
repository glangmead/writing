# Automorphisms

<pre class="Agda"><a id="26" class="Keyword">module</a> <a id="33" href="foundation.automorphisms.html" class="Module">foundation.automorphisms</a> <a id="58" class="Keyword">where</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="114" class="Keyword">open</a> <a id="119" class="Keyword">import</a> <a id="126" href="foundation.dependent-pair-types.html" class="Module">foundation.dependent-pair-types</a>
<a id="158" class="Keyword">open</a> <a id="163" class="Keyword">import</a> <a id="170" href="foundation.sets.html" class="Module">foundation.sets</a>
<a id="186" class="Keyword">open</a> <a id="191" class="Keyword">import</a> <a id="198" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>

<a id="226" class="Keyword">open</a> <a id="231" class="Keyword">import</a> <a id="238" href="foundation-core.equivalences.html" class="Module">foundation-core.equivalences</a>

<a id="268" class="Keyword">open</a> <a id="273" class="Keyword">import</a> <a id="280" href="structured-types.pointed-types.html" class="Module">structured-types.pointed-types</a>
</pre>
</details>

## Idea

An automorphism on a type `A` is an equivalence `A ≃ A`. We will just reuse the
infrastructure of equivalences for automorphisms.

## Definitions

### The type of automorphisms on a type

<pre class="Agda"><a id="Aut"></a><a id="533" href="foundation.automorphisms.html#533" class="Function">Aut</a> <a id="537" class="Symbol">:</a> <a id="539" class="Symbol">{</a><a id="540" href="foundation.automorphisms.html#540" class="Bound">l</a> <a id="542" class="Symbol">:</a> <a id="544" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="549" class="Symbol">}</a> <a id="551" class="Symbol">→</a> <a id="553" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="556" href="foundation.automorphisms.html#540" class="Bound">l</a> <a id="558" class="Symbol">→</a> <a id="560" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="563" href="foundation.automorphisms.html#540" class="Bound">l</a>
<a id="565" href="foundation.automorphisms.html#533" class="Function">Aut</a> <a id="569" href="foundation.automorphisms.html#569" class="Bound">Y</a> <a id="571" class="Symbol">=</a> <a id="573" href="foundation.automorphisms.html#569" class="Bound">Y</a> <a id="575" href="foundation-core.equivalences.html#2669" class="Function Operator">≃</a> <a id="577" href="foundation.automorphisms.html#569" class="Bound">Y</a>

<a id="is-set-Aut"></a><a id="580" href="foundation.automorphisms.html#580" class="Function">is-set-Aut</a> <a id="591" class="Symbol">:</a> <a id="593" class="Symbol">{</a><a id="594" href="foundation.automorphisms.html#594" class="Bound">l</a> <a id="596" class="Symbol">:</a> <a id="598" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="603" class="Symbol">}</a> <a id="605" class="Symbol">{</a><a id="606" href="foundation.automorphisms.html#606" class="Bound">A</a> <a id="608" class="Symbol">:</a> <a id="610" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="613" href="foundation.automorphisms.html#594" class="Bound">l</a><a id="614" class="Symbol">}</a> <a id="616" class="Symbol">→</a> <a id="618" href="foundation-core.sets.html#614" class="Function">is-set</a> <a id="625" href="foundation.automorphisms.html#606" class="Bound">A</a> <a id="627" class="Symbol">→</a> <a id="629" href="foundation-core.sets.html#614" class="Function">is-set</a> <a id="636" class="Symbol">(</a><a id="637" href="foundation.automorphisms.html#533" class="Function">Aut</a> <a id="641" href="foundation.automorphisms.html#606" class="Bound">A</a><a id="642" class="Symbol">)</a>
<a id="644" href="foundation.automorphisms.html#580" class="Function">is-set-Aut</a> <a id="655" href="foundation.automorphisms.html#655" class="Bound">H</a> <a id="657" class="Symbol">=</a> <a id="659" href="foundation.sets.html#4578" class="Function">is-set-equiv-is-set</a> <a id="679" href="foundation.automorphisms.html#655" class="Bound">H</a> <a id="681" href="foundation.automorphisms.html#655" class="Bound">H</a>

<a id="Aut-Set"></a><a id="684" href="foundation.automorphisms.html#684" class="Function">Aut-Set</a> <a id="692" class="Symbol">:</a> <a id="694" class="Symbol">{</a><a id="695" href="foundation.automorphisms.html#695" class="Bound">l</a> <a id="697" class="Symbol">:</a> <a id="699" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="704" class="Symbol">}</a> <a id="706" class="Symbol">→</a> <a id="708" href="foundation-core.sets.html#689" class="Function">Set</a> <a id="712" href="foundation.automorphisms.html#695" class="Bound">l</a> <a id="714" class="Symbol">→</a> <a id="716" href="foundation-core.sets.html#689" class="Function">Set</a> <a id="720" href="foundation.automorphisms.html#695" class="Bound">l</a>
<a id="722" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="726" class="Symbol">(</a><a id="727" href="foundation.automorphisms.html#684" class="Function">Aut-Set</a> <a id="735" href="foundation.automorphisms.html#735" class="Bound">A</a><a id="736" class="Symbol">)</a> <a id="738" class="Symbol">=</a> <a id="740" href="foundation.automorphisms.html#533" class="Function">Aut</a> <a id="744" class="Symbol">(</a><a id="745" href="foundation-core.sets.html#792" class="Function">type-Set</a> <a id="754" href="foundation.automorphisms.html#735" class="Bound">A</a><a id="755" class="Symbol">)</a>
<a id="757" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="761" class="Symbol">(</a><a id="762" href="foundation.automorphisms.html#684" class="Function">Aut-Set</a> <a id="770" href="foundation.automorphisms.html#770" class="Bound">A</a><a id="771" class="Symbol">)</a> <a id="773" class="Symbol">=</a> <a id="775" href="foundation.automorphisms.html#580" class="Function">is-set-Aut</a> <a id="786" class="Symbol">(</a><a id="787" href="foundation-core.sets.html#843" class="Function">is-set-type-Set</a> <a id="803" href="foundation.automorphisms.html#770" class="Bound">A</a><a id="804" class="Symbol">)</a>

<a id="Aut-Pointed-Type"></a><a id="807" href="foundation.automorphisms.html#807" class="Function">Aut-Pointed-Type</a> <a id="824" class="Symbol">:</a> <a id="826" class="Symbol">{</a><a id="827" href="foundation.automorphisms.html#827" class="Bound">l</a> <a id="829" class="Symbol">:</a> <a id="831" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="836" class="Symbol">}</a> <a id="838" class="Symbol">→</a> <a id="840" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="843" href="foundation.automorphisms.html#827" class="Bound">l</a> <a id="845" class="Symbol">→</a> <a id="847" href="structured-types.pointed-types.html#355" class="Function">Pointed-Type</a> <a id="860" href="foundation.automorphisms.html#827" class="Bound">l</a>
<a id="862" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="866" class="Symbol">(</a><a id="867" href="foundation.automorphisms.html#807" class="Function">Aut-Pointed-Type</a> <a id="884" href="foundation.automorphisms.html#884" class="Bound">A</a><a id="885" class="Symbol">)</a> <a id="887" class="Symbol">=</a> <a id="889" href="foundation.automorphisms.html#533" class="Function">Aut</a> <a id="893" href="foundation.automorphisms.html#884" class="Bound">A</a>
<a id="895" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="899" class="Symbol">(</a><a id="900" href="foundation.automorphisms.html#807" class="Function">Aut-Pointed-Type</a> <a id="917" href="foundation.automorphisms.html#917" class="Bound">A</a><a id="918" class="Symbol">)</a> <a id="920" class="Symbol">=</a> <a id="922" href="foundation-core.equivalences.html#4037" class="Function">id-equiv</a>
</pre>