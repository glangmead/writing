# Discrete types

<pre class="Agda"><a id="27" class="Keyword">module</a> <a id="34" href="foundation-core.discrete-types.html" class="Module">foundation-core.discrete-types</a> <a id="65" class="Keyword">where</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="121" class="Keyword">open</a> <a id="126" class="Keyword">import</a> <a id="133" href="foundation.decidable-equality.html" class="Module">foundation.decidable-equality</a>
<a id="163" class="Keyword">open</a> <a id="168" class="Keyword">import</a> <a id="175" href="foundation.dependent-pair-types.html" class="Module">foundation.dependent-pair-types</a>
<a id="207" class="Keyword">open</a> <a id="212" class="Keyword">import</a> <a id="219" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>

<a id="247" class="Keyword">open</a> <a id="252" class="Keyword">import</a> <a id="259" href="foundation-core.sets.html" class="Module">foundation-core.sets</a>
</pre>
</details>

## Idea

A discrete type is a type that has decidable equality.

## Definition

<pre class="Agda"><a id="Discrete-Type"></a><a id="385" href="foundation-core.discrete-types.html#385" class="Function">Discrete-Type</a> <a id="399" class="Symbol">:</a> <a id="401" class="Symbol">(</a><a id="402" href="foundation-core.discrete-types.html#402" class="Bound">l</a> <a id="404" class="Symbol">:</a> <a id="406" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="411" class="Symbol">)</a> <a id="413" class="Symbol">→</a> <a id="415" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="418" class="Symbol">(</a><a id="419" href="Agda.Primitive.html#931" class="Primitive">lsuc</a> <a id="424" href="foundation-core.discrete-types.html#402" class="Bound">l</a><a id="425" class="Symbol">)</a>
<a id="427" href="foundation-core.discrete-types.html#385" class="Function">Discrete-Type</a> <a id="441" href="foundation-core.discrete-types.html#441" class="Bound">l</a> <a id="443" class="Symbol">=</a> <a id="445" href="foundation.dependent-pair-types.html#505" class="Record">Σ</a> <a id="447" class="Symbol">(</a><a id="448" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="451" href="foundation-core.discrete-types.html#441" class="Bound">l</a><a id="452" class="Symbol">)</a> <a id="454" href="foundation.decidable-equality.html#1212" class="Function">has-decidable-equality</a>

<a id="478" class="Keyword">module</a> <a id="485" href="foundation-core.discrete-types.html#485" class="Module">_</a>
  <a id="489" class="Symbol">{</a><a id="490" href="foundation-core.discrete-types.html#490" class="Bound">l</a> <a id="492" class="Symbol">:</a> <a id="494" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="499" class="Symbol">}</a> <a id="501" class="Symbol">(</a><a id="502" href="foundation-core.discrete-types.html#502" class="Bound">X</a> <a id="504" class="Symbol">:</a> <a id="506" href="foundation-core.discrete-types.html#385" class="Function">Discrete-Type</a> <a id="520" href="foundation-core.discrete-types.html#490" class="Bound">l</a><a id="521" class="Symbol">)</a>
  <a id="525" class="Keyword">where</a>

  <a id="534" href="foundation-core.discrete-types.html#534" class="Function">type-Discrete-Type</a> <a id="553" class="Symbol">:</a> <a id="555" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="558" href="foundation-core.discrete-types.html#490" class="Bound">l</a>
  <a id="562" href="foundation-core.discrete-types.html#534" class="Function">type-Discrete-Type</a> <a id="581" class="Symbol">=</a> <a id="583" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="587" href="foundation-core.discrete-types.html#502" class="Bound">X</a>

  <a id="592" href="foundation-core.discrete-types.html#592" class="Function">has-decidable-equality-type-Discrete-Type</a> <a id="634" class="Symbol">:</a>
    <a id="640" href="foundation.decidable-equality.html#1212" class="Function">has-decidable-equality</a> <a id="663" href="foundation-core.discrete-types.html#534" class="Function">type-Discrete-Type</a>
  <a id="684" href="foundation-core.discrete-types.html#592" class="Function">has-decidable-equality-type-Discrete-Type</a> <a id="726" class="Symbol">=</a> <a id="728" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="732" href="foundation-core.discrete-types.html#502" class="Bound">X</a>

  <a id="737" href="foundation-core.discrete-types.html#737" class="Function">is-set-type-Discrete-Type</a> <a id="763" class="Symbol">:</a> <a id="765" href="foundation-core.sets.html#614" class="Function">is-set</a> <a id="772" href="foundation-core.discrete-types.html#534" class="Function">type-Discrete-Type</a>
  <a id="793" href="foundation-core.discrete-types.html#737" class="Function">is-set-type-Discrete-Type</a> <a id="819" class="Symbol">=</a>
    <a id="825" href="foundation.decidable-equality.html#6479" class="Function">is-set-has-decidable-equality</a> <a id="855" href="foundation-core.discrete-types.html#592" class="Function">has-decidable-equality-type-Discrete-Type</a>

  <a id="900" href="foundation-core.discrete-types.html#900" class="Function">set-Discrete-Type</a> <a id="918" class="Symbol">:</a> <a id="920" href="foundation-core.sets.html#689" class="Function">Set</a> <a id="924" href="foundation-core.discrete-types.html#490" class="Bound">l</a>
  <a id="928" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="932" href="foundation-core.discrete-types.html#900" class="Function">set-Discrete-Type</a> <a id="950" class="Symbol">=</a> <a id="952" href="foundation-core.discrete-types.html#534" class="Function">type-Discrete-Type</a>
  <a id="973" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="977" href="foundation-core.discrete-types.html#900" class="Function">set-Discrete-Type</a> <a id="995" class="Symbol">=</a> <a id="997" href="foundation-core.discrete-types.html#737" class="Function">is-set-type-Discrete-Type</a>
</pre>