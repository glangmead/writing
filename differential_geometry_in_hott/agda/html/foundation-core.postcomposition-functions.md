# Postcomposition of functions

<pre class="Agda"><a id="41" class="Keyword">module</a> <a id="48" href="foundation-core.postcomposition-functions.html" class="Module">foundation-core.postcomposition-functions</a> <a id="90" class="Keyword">where</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="146" class="Keyword">open</a> <a id="151" class="Keyword">import</a> <a id="158" href="foundation.postcomposition-dependent-functions.html" class="Module">foundation.postcomposition-dependent-functions</a>
<a id="205" class="Keyword">open</a> <a id="210" class="Keyword">import</a> <a id="217" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>

<a id="245" class="Keyword">open</a> <a id="250" class="Keyword">import</a> <a id="257" href="foundation-core.function-types.html" class="Module">foundation-core.function-types</a>
</pre>
</details>

## Idea

Given a map `f : X → Y` and a type `A`, the
{{#concept "postcomposition function" Agda=postcomp}}

```text
  f ∘ - : (A → X) → (A → Y)
```

is defined by `λ h x → f (h x)`.

## Definitions

<pre class="Agda"><a id="512" class="Keyword">module</a> <a id="519" href="foundation-core.postcomposition-functions.html#519" class="Module">_</a>
  <a id="523" class="Symbol">{</a><a id="524" href="foundation-core.postcomposition-functions.html#524" class="Bound">l1</a> <a id="527" href="foundation-core.postcomposition-functions.html#527" class="Bound">l2</a> <a id="530" href="foundation-core.postcomposition-functions.html#530" class="Bound">l3</a> <a id="533" class="Symbol">:</a> <a id="535" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="540" class="Symbol">}</a> <a id="542" class="Symbol">(</a><a id="543" href="foundation-core.postcomposition-functions.html#543" class="Bound">A</a> <a id="545" class="Symbol">:</a> <a id="547" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="550" href="foundation-core.postcomposition-functions.html#524" class="Bound">l1</a><a id="552" class="Symbol">)</a> <a id="554" class="Symbol">{</a><a id="555" href="foundation-core.postcomposition-functions.html#555" class="Bound">X</a> <a id="557" class="Symbol">:</a> <a id="559" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="562" href="foundation-core.postcomposition-functions.html#527" class="Bound">l2</a><a id="564" class="Symbol">}</a> <a id="566" class="Symbol">{</a><a id="567" href="foundation-core.postcomposition-functions.html#567" class="Bound">Y</a> <a id="569" class="Symbol">:</a> <a id="571" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="574" href="foundation-core.postcomposition-functions.html#530" class="Bound">l3</a><a id="576" class="Symbol">}</a>
  <a id="580" class="Keyword">where</a>

  <a id="589" href="foundation-core.postcomposition-functions.html#589" class="Function">postcomp</a> <a id="598" class="Symbol">:</a> <a id="600" class="Symbol">(</a><a id="601" href="foundation-core.postcomposition-functions.html#555" class="Bound">X</a> <a id="603" class="Symbol">→</a> <a id="605" href="foundation-core.postcomposition-functions.html#567" class="Bound">Y</a><a id="606" class="Symbol">)</a> <a id="608" class="Symbol">→</a> <a id="610" class="Symbol">(</a><a id="611" href="foundation-core.postcomposition-functions.html#543" class="Bound">A</a> <a id="613" class="Symbol">→</a> <a id="615" href="foundation-core.postcomposition-functions.html#555" class="Bound">X</a><a id="616" class="Symbol">)</a> <a id="618" class="Symbol">→</a> <a id="620" class="Symbol">(</a><a id="621" href="foundation-core.postcomposition-functions.html#543" class="Bound">A</a> <a id="623" class="Symbol">→</a> <a id="625" href="foundation-core.postcomposition-functions.html#567" class="Bound">Y</a><a id="626" class="Symbol">)</a>
  <a id="630" href="foundation-core.postcomposition-functions.html#589" class="Function">postcomp</a> <a id="639" href="foundation-core.postcomposition-functions.html#639" class="Bound">f</a> <a id="641" class="Symbol">=</a> <a id="643" href="foundation.postcomposition-dependent-functions.html#1038" class="Function">postcomp-Π</a> <a id="654" href="foundation-core.postcomposition-functions.html#543" class="Bound">A</a> <a id="656" href="foundation-core.postcomposition-functions.html#639" class="Bound">f</a>
</pre>