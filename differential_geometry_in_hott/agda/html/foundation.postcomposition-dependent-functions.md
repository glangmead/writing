# Postcomposition of dependent functions

<pre class="Agda"><a id="51" class="Keyword">module</a> <a id="58" href="foundation.postcomposition-dependent-functions.html" class="Module">foundation.postcomposition-dependent-functions</a> <a id="105" class="Keyword">where</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="161" class="Keyword">open</a> <a id="166" class="Keyword">import</a> <a id="173" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>

<a id="201" class="Keyword">open</a> <a id="206" class="Keyword">import</a> <a id="213" href="foundation-core.function-types.html" class="Module">foundation-core.function-types</a>
</pre>
</details>

## Idea

Given a type `A` and a dependent map `f : {a : A} → X a → Y a`, the
{{#concept "dependent
postcomposition function" Agda=postcomp-Π}}

```text
  f ∘ - : ((a : A) → X a) → ((a : A) → Y a)
```

is defined by `λ h x → f (h x)`.

Note that, as opposed to
[precomposition of dependent functions](foundation-core.precomposition-dependent-functions.md),
the use-case for postcomposition of dependent functions is very limited, since
the definition of `f` depends on the particular choice of `A`. Once we allow `A`
to vary while keeping `f` fixed, we reduce to the case of
[postcomposition of (nondependent) functions](foundation-core.postcomposition-functions.md).

## Definitions

<pre class="Agda"><a id="953" class="Keyword">module</a> <a id="960" href="foundation.postcomposition-dependent-functions.html#960" class="Module">_</a>
  <a id="964" class="Symbol">{</a><a id="965" href="foundation.postcomposition-dependent-functions.html#965" class="Bound">l1</a> <a id="968" href="foundation.postcomposition-dependent-functions.html#968" class="Bound">l2</a> <a id="971" href="foundation.postcomposition-dependent-functions.html#971" class="Bound">l3</a> <a id="974" class="Symbol">:</a> <a id="976" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="981" class="Symbol">}</a> <a id="983" class="Symbol">(</a><a id="984" href="foundation.postcomposition-dependent-functions.html#984" class="Bound">A</a> <a id="986" class="Symbol">:</a> <a id="988" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="991" href="foundation.postcomposition-dependent-functions.html#965" class="Bound">l1</a><a id="993" class="Symbol">)</a> <a id="995" class="Symbol">{</a><a id="996" href="foundation.postcomposition-dependent-functions.html#996" class="Bound">X</a> <a id="998" class="Symbol">:</a> <a id="1000" href="foundation.postcomposition-dependent-functions.html#984" class="Bound">A</a> <a id="1002" class="Symbol">→</a> <a id="1004" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1007" href="foundation.postcomposition-dependent-functions.html#968" class="Bound">l2</a><a id="1009" class="Symbol">}</a> <a id="1011" class="Symbol">{</a><a id="1012" href="foundation.postcomposition-dependent-functions.html#1012" class="Bound">Y</a> <a id="1014" class="Symbol">:</a> <a id="1016" href="foundation.postcomposition-dependent-functions.html#984" class="Bound">A</a> <a id="1018" class="Symbol">→</a> <a id="1020" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1023" href="foundation.postcomposition-dependent-functions.html#971" class="Bound">l3</a><a id="1025" class="Symbol">}</a>
  <a id="1029" class="Keyword">where</a>

  <a id="1038" href="foundation.postcomposition-dependent-functions.html#1038" class="Function">postcomp-Π</a> <a id="1049" class="Symbol">:</a> <a id="1051" class="Symbol">({</a><a id="1053" href="foundation.postcomposition-dependent-functions.html#1053" class="Bound">a</a> <a id="1055" class="Symbol">:</a> <a id="1057" href="foundation.postcomposition-dependent-functions.html#984" class="Bound">A</a><a id="1058" class="Symbol">}</a> <a id="1060" class="Symbol">→</a> <a id="1062" href="foundation.postcomposition-dependent-functions.html#996" class="Bound">X</a> <a id="1064" href="foundation.postcomposition-dependent-functions.html#1053" class="Bound">a</a> <a id="1066" class="Symbol">→</a> <a id="1068" href="foundation.postcomposition-dependent-functions.html#1012" class="Bound">Y</a> <a id="1070" href="foundation.postcomposition-dependent-functions.html#1053" class="Bound">a</a><a id="1071" class="Symbol">)</a> <a id="1073" class="Symbol">→</a> <a id="1075" class="Symbol">((</a><a id="1077" href="foundation.postcomposition-dependent-functions.html#1077" class="Bound">a</a> <a id="1079" class="Symbol">:</a> <a id="1081" href="foundation.postcomposition-dependent-functions.html#984" class="Bound">A</a><a id="1082" class="Symbol">)</a> <a id="1084" class="Symbol">→</a> <a id="1086" href="foundation.postcomposition-dependent-functions.html#996" class="Bound">X</a> <a id="1088" href="foundation.postcomposition-dependent-functions.html#1077" class="Bound">a</a><a id="1089" class="Symbol">)</a> <a id="1091" class="Symbol">→</a> <a id="1093" class="Symbol">((</a><a id="1095" href="foundation.postcomposition-dependent-functions.html#1095" class="Bound">a</a> <a id="1097" class="Symbol">:</a> <a id="1099" href="foundation.postcomposition-dependent-functions.html#984" class="Bound">A</a><a id="1100" class="Symbol">)</a> <a id="1102" class="Symbol">→</a> <a id="1104" href="foundation.postcomposition-dependent-functions.html#1012" class="Bound">Y</a> <a id="1106" href="foundation.postcomposition-dependent-functions.html#1095" class="Bound">a</a><a id="1107" class="Symbol">)</a>
  <a id="1111" href="foundation.postcomposition-dependent-functions.html#1038" class="Function">postcomp-Π</a> <a id="1122" href="foundation.postcomposition-dependent-functions.html#1122" class="Bound">f</a> <a id="1124" class="Symbol">=</a> <a id="1126" href="foundation.postcomposition-dependent-functions.html#1122" class="Bound">f</a> <a id="1128" href="foundation-core.function-types.html#455" class="Function Operator">∘_</a>
</pre>