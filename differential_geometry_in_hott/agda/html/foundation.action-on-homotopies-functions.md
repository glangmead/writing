# The action on homotopies of functions

<pre class="Agda"><a id="50" class="Keyword">module</a> <a id="57" href="foundation.action-on-homotopies-functions.html" class="Module">foundation.action-on-homotopies-functions</a> <a id="99" class="Keyword">where</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="155" class="Keyword">open</a> <a id="160" class="Keyword">import</a> <a id="167" href="foundation.action-on-identifications-functions.html" class="Module">foundation.action-on-identifications-functions</a>
<a id="214" class="Keyword">open</a> <a id="219" class="Keyword">import</a> <a id="226" href="foundation.dependent-pair-types.html" class="Module">foundation.dependent-pair-types</a>
<a id="258" class="Keyword">open</a> <a id="263" class="Keyword">import</a> <a id="270" href="foundation.function-extensionality.html" class="Module">foundation.function-extensionality</a>
<a id="305" class="Keyword">open</a> <a id="310" class="Keyword">import</a> <a id="317" href="foundation.homotopies.html" class="Module">foundation.homotopies</a>
<a id="339" class="Keyword">open</a> <a id="344" class="Keyword">import</a> <a id="351" href="foundation.homotopy-induction.html" class="Module">foundation.homotopy-induction</a>
<a id="381" class="Keyword">open</a> <a id="386" class="Keyword">import</a> <a id="393" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>

<a id="421" class="Keyword">open</a> <a id="426" class="Keyword">import</a> <a id="433" href="foundation-core.constant-maps.html" class="Module">foundation-core.constant-maps</a>
<a id="463" class="Keyword">open</a> <a id="468" class="Keyword">import</a> <a id="475" href="foundation-core.contractible-types.html" class="Module">foundation-core.contractible-types</a>
<a id="510" class="Keyword">open</a> <a id="515" class="Keyword">import</a> <a id="522" href="foundation-core.function-types.html" class="Module">foundation-core.function-types</a>
<a id="553" class="Keyword">open</a> <a id="558" class="Keyword">import</a> <a id="565" href="foundation-core.identity-types.html" class="Module">foundation-core.identity-types</a>
</pre>
</details>

## Idea

Applying the
[action on identifications](foundation.action-on-identifications-functions.md)
to [identifications](foundation-core.identity-types.md) arising from the
[function extensionality axiom](foundation.function-extensionality.md) gives us
the
{{#concept "action on homotopies" Disambiguation="functions" Agda=action-htpy-function}}.
For arbitrary functions of type

```text
  F : ((x : A) → B x) → C.
```

We thus get an action of type

```text
  f ~ g → F f ＝ F g.
```

## Definition

### The unique functorial action of functions on homotopies

There is a unique action of functions on homotopies. Namely, by
[homotopy induction](foundation.homotopy-induction.md), function homotopies
satisfy
[the dependent universal property of being an identity system](foundation.universal-property-identity-systems.md)
on (dependent) function types. This means that for every type family

```text
  C : (g : (x : A) → B x) → f ~ g → 𝒰
```

the map `ev-refl-htpy C` is an equivalence
[equivalence](foundation-core.equivalences.md)

```text
  ev-refl-htpy C : ((g : (x : A) → B x) (H : f ~ g) → C g H) ≃ (C f refl-htpy).
```

In particular, applying this to type families of the form

```text
  g H ↦ F f ＝ F g
```

with the mapping

```text
  f refl-htpy ↦ refl
```

shows that our action on homotopies is
[unique](foundation-core.contractible-types.md).

<pre class="Agda"><a id="1981" class="Keyword">module</a> <a id="1988" href="foundation.action-on-homotopies-functions.html#1988" class="Module">_</a>
  <a id="1992" class="Symbol">{</a><a id="1993" href="foundation.action-on-homotopies-functions.html#1993" class="Bound">l1</a> <a id="1996" href="foundation.action-on-homotopies-functions.html#1996" class="Bound">l2</a> <a id="1999" href="foundation.action-on-homotopies-functions.html#1999" class="Bound">l3</a> <a id="2002" class="Symbol">:</a> <a id="2004" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="2009" class="Symbol">}</a>
  <a id="2013" class="Symbol">{</a><a id="2014" href="foundation.action-on-homotopies-functions.html#2014" class="Bound">A</a> <a id="2016" class="Symbol">:</a> <a id="2018" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2021" href="foundation.action-on-homotopies-functions.html#1993" class="Bound">l1</a><a id="2023" class="Symbol">}</a> <a id="2025" class="Symbol">{</a><a id="2026" href="foundation.action-on-homotopies-functions.html#2026" class="Bound">B</a> <a id="2028" class="Symbol">:</a> <a id="2030" href="foundation.action-on-homotopies-functions.html#2014" class="Bound">A</a> <a id="2032" class="Symbol">→</a> <a id="2034" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2037" href="foundation.action-on-homotopies-functions.html#1996" class="Bound">l2</a><a id="2039" class="Symbol">}</a> <a id="2041" class="Symbol">{</a><a id="2042" href="foundation.action-on-homotopies-functions.html#2042" class="Bound">C</a> <a id="2044" class="Symbol">:</a> <a id="2046" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2049" href="foundation.action-on-homotopies-functions.html#1999" class="Bound">l3</a><a id="2051" class="Symbol">}</a>
  <a id="2055" class="Symbol">(</a><a id="2056" href="foundation.action-on-homotopies-functions.html#2056" class="Bound">F</a> <a id="2058" class="Symbol">:</a> <a id="2060" class="Symbol">((</a><a id="2062" href="foundation.action-on-homotopies-functions.html#2062" class="Bound">x</a> <a id="2064" class="Symbol">:</a> <a id="2066" href="foundation.action-on-homotopies-functions.html#2014" class="Bound">A</a><a id="2067" class="Symbol">)</a> <a id="2069" class="Symbol">→</a> <a id="2071" href="foundation.action-on-homotopies-functions.html#2026" class="Bound">B</a> <a id="2073" href="foundation.action-on-homotopies-functions.html#2062" class="Bound">x</a><a id="2074" class="Symbol">)</a> <a id="2076" class="Symbol">→</a> <a id="2078" href="foundation.action-on-homotopies-functions.html#2042" class="Bound">C</a><a id="2079" class="Symbol">)</a>
  <a id="2083" class="Keyword">where</a>

  <a id="2092" class="Keyword">abstract</a>
    <a id="2105" href="foundation.action-on-homotopies-functions.html#2105" class="Function">unique-action-htpy-function</a> <a id="2133" class="Symbol">:</a>
      <a id="2141" class="Symbol">(</a><a id="2142" href="foundation.action-on-homotopies-functions.html#2142" class="Bound">f</a> <a id="2144" class="Symbol">:</a> <a id="2146" class="Symbol">(</a><a id="2147" href="foundation.action-on-homotopies-functions.html#2147" class="Bound">x</a> <a id="2149" class="Symbol">:</a> <a id="2151" href="foundation.action-on-homotopies-functions.html#2014" class="Bound">A</a><a id="2152" class="Symbol">)</a> <a id="2154" class="Symbol">→</a> <a id="2156" href="foundation.action-on-homotopies-functions.html#2026" class="Bound">B</a> <a id="2158" href="foundation.action-on-homotopies-functions.html#2147" class="Bound">x</a><a id="2159" class="Symbol">)</a> <a id="2161" class="Symbol">→</a>
      <a id="2169" href="foundation-core.contractible-types.html#855" class="Function">is-contr</a>
        <a id="2186" class="Symbol">(</a> <a id="2188" href="foundation.dependent-pair-types.html#505" class="Record">Σ</a> <a id="2190" class="Symbol">(</a> <a id="2192" class="Symbol">(</a><a id="2193" href="foundation.action-on-homotopies-functions.html#2193" class="Bound">g</a> <a id="2195" class="Symbol">:</a> <a id="2197" class="Symbol">(</a><a id="2198" href="foundation.action-on-homotopies-functions.html#2198" class="Bound">x</a> <a id="2200" class="Symbol">:</a> <a id="2202" href="foundation.action-on-homotopies-functions.html#2014" class="Bound">A</a><a id="2203" class="Symbol">)</a> <a id="2205" class="Symbol">→</a> <a id="2207" href="foundation.action-on-homotopies-functions.html#2026" class="Bound">B</a> <a id="2209" href="foundation.action-on-homotopies-functions.html#2198" class="Bound">x</a><a id="2210" class="Symbol">)</a> <a id="2212" class="Symbol">→</a> <a id="2214" href="foundation.action-on-homotopies-functions.html#2142" class="Bound">f</a> <a id="2216" href="foundation-core.homotopies.html#2717" class="Function Operator">~</a> <a id="2218" href="foundation.action-on-homotopies-functions.html#2193" class="Bound">g</a> <a id="2220" class="Symbol">→</a> <a id="2222" href="foundation.action-on-homotopies-functions.html#2056" class="Bound">F</a> <a id="2224" href="foundation.action-on-homotopies-functions.html#2142" class="Bound">f</a> <a id="2226" href="foundation-core.identity-types.html#1953" class="Function Operator">＝</a> <a id="2228" href="foundation.action-on-homotopies-functions.html#2056" class="Bound">F</a> <a id="2230" href="foundation.action-on-homotopies-functions.html#2193" class="Bound">g</a><a id="2231" class="Symbol">)</a>
            <a id="2245" class="Symbol">(</a> <a id="2247" class="Symbol">λ</a> <a id="2249" href="foundation.action-on-homotopies-functions.html#2249" class="Bound">α</a> <a id="2251" class="Symbol">→</a> <a id="2253" href="foundation.action-on-homotopies-functions.html#2249" class="Bound">α</a> <a id="2255" href="foundation.action-on-homotopies-functions.html#2142" class="Bound">f</a> <a id="2257" href="foundation-core.homotopies.html#2906" class="Function">refl-htpy</a> <a id="2267" href="foundation-core.identity-types.html#1953" class="Function Operator">＝</a> <a id="2269" href="foundation-core.identity-types.html#1922" class="InductiveConstructor">refl</a><a id="2273" class="Symbol">))</a>
    <a id="2280" href="foundation.action-on-homotopies-functions.html#2105" class="Function">unique-action-htpy-function</a> <a id="2308" href="foundation.action-on-homotopies-functions.html#2308" class="Bound">f</a> <a id="2310" class="Symbol">=</a>
      <a id="2318" href="foundation.homotopy-induction.html#5144" class="Function">is-contr-map-ev-refl-htpy</a> <a id="2344" class="Symbol">(λ</a> <a id="2347" href="foundation.action-on-homotopies-functions.html#2347" class="Bound">g</a> <a id="2349" href="foundation.action-on-homotopies-functions.html#2349" class="Bound">_</a> <a id="2351" class="Symbol">→</a> <a id="2353" href="foundation.action-on-homotopies-functions.html#2056" class="Bound">F</a> <a id="2355" href="foundation.action-on-homotopies-functions.html#2308" class="Bound">f</a> <a id="2357" href="foundation-core.identity-types.html#1953" class="Function Operator">＝</a> <a id="2359" href="foundation.action-on-homotopies-functions.html#2056" class="Bound">F</a> <a id="2361" href="foundation.action-on-homotopies-functions.html#2347" class="Bound">g</a><a id="2362" class="Symbol">)</a> <a id="2364" href="foundation-core.identity-types.html#1922" class="InductiveConstructor">refl</a>

  <a id="2372" href="foundation.action-on-homotopies-functions.html#2372" class="Function">action-htpy-function</a> <a id="2393" class="Symbol">:</a>
    <a id="2399" class="Symbol">{</a><a id="2400" href="foundation.action-on-homotopies-functions.html#2400" class="Bound">f</a> <a id="2402" href="foundation.action-on-homotopies-functions.html#2402" class="Bound">g</a> <a id="2404" class="Symbol">:</a> <a id="2406" class="Symbol">(</a><a id="2407" href="foundation.action-on-homotopies-functions.html#2407" class="Bound">x</a> <a id="2409" class="Symbol">:</a> <a id="2411" href="foundation.action-on-homotopies-functions.html#2014" class="Bound">A</a><a id="2412" class="Symbol">)</a> <a id="2414" class="Symbol">→</a> <a id="2416" href="foundation.action-on-homotopies-functions.html#2026" class="Bound">B</a> <a id="2418" href="foundation.action-on-homotopies-functions.html#2407" class="Bound">x</a><a id="2419" class="Symbol">}</a> <a id="2421" class="Symbol">→</a> <a id="2423" href="foundation.action-on-homotopies-functions.html#2400" class="Bound">f</a> <a id="2425" href="foundation-core.homotopies.html#2717" class="Function Operator">~</a> <a id="2427" href="foundation.action-on-homotopies-functions.html#2402" class="Bound">g</a> <a id="2429" class="Symbol">→</a> <a id="2431" href="foundation.action-on-homotopies-functions.html#2056" class="Bound">F</a> <a id="2433" href="foundation.action-on-homotopies-functions.html#2400" class="Bound">f</a> <a id="2435" href="foundation-core.identity-types.html#1953" class="Function Operator">＝</a> <a id="2437" href="foundation.action-on-homotopies-functions.html#2056" class="Bound">F</a> <a id="2439" href="foundation.action-on-homotopies-functions.html#2402" class="Bound">g</a>
  <a id="2443" href="foundation.action-on-homotopies-functions.html#2372" class="Function">action-htpy-function</a> <a id="2464" href="foundation.action-on-homotopies-functions.html#2464" class="Bound">H</a> <a id="2466" class="Symbol">=</a> <a id="2468" href="foundation.action-on-identifications-functions.html#730" class="Function">ap</a> <a id="2471" href="foundation.action-on-homotopies-functions.html#2056" class="Bound">F</a> <a id="2473" class="Symbol">(</a><a id="2474" href="foundation-core.function-extensionality.html#3024" class="Function">eq-htpy</a> <a id="2482" href="foundation.action-on-homotopies-functions.html#2464" class="Bound">H</a><a id="2483" class="Symbol">)</a>

  <a id="2488" href="foundation.action-on-homotopies-functions.html#2488" class="Function">compute-action-htpy-function-refl-htpy</a> <a id="2527" class="Symbol">:</a>
    <a id="2533" class="Symbol">(</a><a id="2534" href="foundation.action-on-homotopies-functions.html#2534" class="Bound">f</a> <a id="2536" class="Symbol">:</a> <a id="2538" class="Symbol">(</a><a id="2539" href="foundation.action-on-homotopies-functions.html#2539" class="Bound">x</a> <a id="2541" class="Symbol">:</a> <a id="2543" href="foundation.action-on-homotopies-functions.html#2014" class="Bound">A</a><a id="2544" class="Symbol">)</a> <a id="2546" class="Symbol">→</a> <a id="2548" href="foundation.action-on-homotopies-functions.html#2026" class="Bound">B</a> <a id="2550" href="foundation.action-on-homotopies-functions.html#2539" class="Bound">x</a><a id="2551" class="Symbol">)</a> <a id="2553" class="Symbol">→</a> <a id="2555" href="foundation.action-on-homotopies-functions.html#2372" class="Function">action-htpy-function</a> <a id="2576" href="foundation-core.homotopies.html#2906" class="Function">refl-htpy</a> <a id="2586" href="foundation-core.identity-types.html#1953" class="Function Operator">＝</a> <a id="2588" href="foundation-core.identity-types.html#1922" class="InductiveConstructor">refl</a>
  <a id="2595" href="foundation.action-on-homotopies-functions.html#2488" class="Function">compute-action-htpy-function-refl-htpy</a> <a id="2634" href="foundation.action-on-homotopies-functions.html#2634" class="Bound">f</a> <a id="2636" class="Symbol">=</a>
    <a id="2642" href="foundation.action-on-identifications-functions.html#730" class="Function">ap</a> <a id="2645" class="Symbol">(</a><a id="2646" href="foundation.action-on-identifications-functions.html#730" class="Function">ap</a> <a id="2649" href="foundation.action-on-homotopies-functions.html#2056" class="Bound">F</a><a id="2650" class="Symbol">)</a> <a id="2652" class="Symbol">(</a><a id="2653" href="foundation-core.function-extensionality.html#3630" class="Function">eq-htpy-refl-htpy</a> <a id="2671" href="foundation.action-on-homotopies-functions.html#2634" class="Bound">f</a><a id="2672" class="Symbol">)</a>
</pre>
## Properties

### The action on homotopies preserves concatenation

<pre class="Agda"><a id="2756" class="Keyword">module</a> <a id="2763" href="foundation.action-on-homotopies-functions.html#2763" class="Module">_</a>
  <a id="2767" class="Symbol">{</a><a id="2768" href="foundation.action-on-homotopies-functions.html#2768" class="Bound">l1</a> <a id="2771" href="foundation.action-on-homotopies-functions.html#2771" class="Bound">l2</a> <a id="2774" href="foundation.action-on-homotopies-functions.html#2774" class="Bound">l3</a> <a id="2777" class="Symbol">:</a> <a id="2779" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="2784" class="Symbol">}</a>
  <a id="2788" class="Symbol">{</a><a id="2789" href="foundation.action-on-homotopies-functions.html#2789" class="Bound">A</a> <a id="2791" class="Symbol">:</a> <a id="2793" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2796" href="foundation.action-on-homotopies-functions.html#2768" class="Bound">l1</a><a id="2798" class="Symbol">}</a> <a id="2800" class="Symbol">{</a><a id="2801" href="foundation.action-on-homotopies-functions.html#2801" class="Bound">B</a> <a id="2803" class="Symbol">:</a> <a id="2805" href="foundation.action-on-homotopies-functions.html#2789" class="Bound">A</a> <a id="2807" class="Symbol">→</a> <a id="2809" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2812" href="foundation.action-on-homotopies-functions.html#2771" class="Bound">l2</a><a id="2814" class="Symbol">}</a> <a id="2816" class="Symbol">{</a><a id="2817" href="foundation.action-on-homotopies-functions.html#2817" class="Bound">C</a> <a id="2819" class="Symbol">:</a> <a id="2821" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2824" href="foundation.action-on-homotopies-functions.html#2774" class="Bound">l3</a><a id="2826" class="Symbol">}</a>
  <a id="2830" class="Symbol">(</a><a id="2831" href="foundation.action-on-homotopies-functions.html#2831" class="Bound">F</a> <a id="2833" class="Symbol">:</a> <a id="2835" class="Symbol">((</a><a id="2837" href="foundation.action-on-homotopies-functions.html#2837" class="Bound">x</a> <a id="2839" class="Symbol">:</a> <a id="2841" href="foundation.action-on-homotopies-functions.html#2789" class="Bound">A</a><a id="2842" class="Symbol">)</a> <a id="2844" class="Symbol">→</a> <a id="2846" href="foundation.action-on-homotopies-functions.html#2801" class="Bound">B</a> <a id="2848" href="foundation.action-on-homotopies-functions.html#2837" class="Bound">x</a><a id="2849" class="Symbol">)</a> <a id="2851" class="Symbol">→</a> <a id="2853" href="foundation.action-on-homotopies-functions.html#2817" class="Bound">C</a><a id="2854" class="Symbol">)</a>
  <a id="2858" class="Symbol">{</a><a id="2859" href="foundation.action-on-homotopies-functions.html#2859" class="Bound">f</a> <a id="2861" href="foundation.action-on-homotopies-functions.html#2861" class="Bound">g</a> <a id="2863" href="foundation.action-on-homotopies-functions.html#2863" class="Bound">h</a> <a id="2865" class="Symbol">:</a> <a id="2867" class="Symbol">(</a><a id="2868" href="foundation.action-on-homotopies-functions.html#2868" class="Bound">x</a> <a id="2870" class="Symbol">:</a> <a id="2872" href="foundation.action-on-homotopies-functions.html#2789" class="Bound">A</a><a id="2873" class="Symbol">)</a> <a id="2875" class="Symbol">→</a> <a id="2877" href="foundation.action-on-homotopies-functions.html#2801" class="Bound">B</a> <a id="2879" href="foundation.action-on-homotopies-functions.html#2868" class="Bound">x</a><a id="2880" class="Symbol">}</a>
  <a id="2884" class="Keyword">where</a>

  <a id="2893" href="foundation.action-on-homotopies-functions.html#2893" class="Function">distributive-action-htpy-function-comp-htpy</a> <a id="2937" class="Symbol">:</a>
    <a id="2943" class="Symbol">(</a><a id="2944" href="foundation.action-on-homotopies-functions.html#2944" class="Bound">H</a> <a id="2946" class="Symbol">:</a> <a id="2948" href="foundation.action-on-homotopies-functions.html#2859" class="Bound">f</a> <a id="2950" href="foundation-core.homotopies.html#2717" class="Function Operator">~</a> <a id="2952" href="foundation.action-on-homotopies-functions.html#2861" class="Bound">g</a><a id="2953" class="Symbol">)</a> <a id="2955" class="Symbol">(</a><a id="2956" href="foundation.action-on-homotopies-functions.html#2956" class="Bound">H&#39;</a> <a id="2959" class="Symbol">:</a> <a id="2961" href="foundation.action-on-homotopies-functions.html#2861" class="Bound">g</a> <a id="2963" href="foundation-core.homotopies.html#2717" class="Function Operator">~</a> <a id="2965" href="foundation.action-on-homotopies-functions.html#2863" class="Bound">h</a><a id="2966" class="Symbol">)</a> <a id="2968" class="Symbol">→</a>
    <a id="2974" href="foundation.action-on-homotopies-functions.html#2372" class="Function">action-htpy-function</a> <a id="2995" href="foundation.action-on-homotopies-functions.html#2831" class="Bound">F</a> <a id="2997" class="Symbol">(</a><a id="2998" href="foundation.action-on-homotopies-functions.html#2944" class="Bound">H</a> <a id="3000" href="foundation-core.homotopies.html#3281" class="Function Operator">∙h</a> <a id="3003" href="foundation.action-on-homotopies-functions.html#2956" class="Bound">H&#39;</a><a id="3005" class="Symbol">)</a> <a id="3007" href="foundation-core.identity-types.html#1953" class="Function Operator">＝</a>
    <a id="3013" href="foundation.action-on-homotopies-functions.html#2372" class="Function">action-htpy-function</a> <a id="3034" href="foundation.action-on-homotopies-functions.html#2831" class="Bound">F</a> <a id="3036" href="foundation.action-on-homotopies-functions.html#2944" class="Bound">H</a> <a id="3038" href="foundation-core.identity-types.html#2902" class="Function Operator">∙</a> <a id="3040" href="foundation.action-on-homotopies-functions.html#2372" class="Function">action-htpy-function</a> <a id="3061" href="foundation.action-on-homotopies-functions.html#2831" class="Bound">F</a> <a id="3063" href="foundation.action-on-homotopies-functions.html#2956" class="Bound">H&#39;</a>
  <a id="3068" href="foundation.action-on-homotopies-functions.html#2893" class="Function">distributive-action-htpy-function-comp-htpy</a> <a id="3112" href="foundation.action-on-homotopies-functions.html#3112" class="Bound">H</a> <a id="3114" href="foundation.action-on-homotopies-functions.html#3114" class="Bound">H&#39;</a> <a id="3117" class="Symbol">=</a>
    <a id="3123" href="foundation.action-on-identifications-functions.html#730" class="Function">ap</a> <a id="3126" class="Symbol">(</a><a id="3127" href="foundation.action-on-identifications-functions.html#730" class="Function">ap</a> <a id="3130" href="foundation.action-on-homotopies-functions.html#2831" class="Bound">F</a><a id="3131" class="Symbol">)</a> <a id="3133" class="Symbol">(</a><a id="3134" href="foundation-core.function-extensionality.html#9325" class="Function">eq-htpy-concat-htpy</a> <a id="3154" href="foundation.action-on-homotopies-functions.html#3112" class="Bound">H</a> <a id="3156" href="foundation.action-on-homotopies-functions.html#3114" class="Bound">H&#39;</a><a id="3158" class="Symbol">)</a> <a id="3160" href="foundation-core.identity-types.html#2902" class="Function Operator">∙</a> <a id="3162" href="foundation.action-on-identifications-functions.html#1829" class="Function">ap-concat</a> <a id="3172" href="foundation.action-on-homotopies-functions.html#2831" class="Bound">F</a> <a id="3174" class="Symbol">(</a><a id="3175" href="foundation-core.function-extensionality.html#3024" class="Function">eq-htpy</a> <a id="3183" href="foundation.action-on-homotopies-functions.html#3112" class="Bound">H</a><a id="3184" class="Symbol">)</a> <a id="3186" class="Symbol">(</a><a id="3187" href="foundation-core.function-extensionality.html#3024" class="Function">eq-htpy</a> <a id="3195" href="foundation.action-on-homotopies-functions.html#3114" class="Bound">H&#39;</a><a id="3197" class="Symbol">)</a>
</pre>
### The action on homotopies preserves inverses

<pre class="Agda"><a id="3261" class="Keyword">module</a> <a id="3268" href="foundation.action-on-homotopies-functions.html#3268" class="Module">_</a>
  <a id="3272" class="Symbol">{</a><a id="3273" href="foundation.action-on-homotopies-functions.html#3273" class="Bound">l1</a> <a id="3276" href="foundation.action-on-homotopies-functions.html#3276" class="Bound">l2</a> <a id="3279" href="foundation.action-on-homotopies-functions.html#3279" class="Bound">l3</a> <a id="3282" class="Symbol">:</a> <a id="3284" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="3289" class="Symbol">}</a>
  <a id="3293" class="Symbol">{</a><a id="3294" href="foundation.action-on-homotopies-functions.html#3294" class="Bound">A</a> <a id="3296" class="Symbol">:</a> <a id="3298" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="3301" href="foundation.action-on-homotopies-functions.html#3273" class="Bound">l1</a><a id="3303" class="Symbol">}</a> <a id="3305" class="Symbol">{</a><a id="3306" href="foundation.action-on-homotopies-functions.html#3306" class="Bound">B</a> <a id="3308" class="Symbol">:</a> <a id="3310" href="foundation.action-on-homotopies-functions.html#3294" class="Bound">A</a> <a id="3312" class="Symbol">→</a> <a id="3314" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="3317" href="foundation.action-on-homotopies-functions.html#3276" class="Bound">l2</a><a id="3319" class="Symbol">}</a> <a id="3321" class="Symbol">{</a><a id="3322" href="foundation.action-on-homotopies-functions.html#3322" class="Bound">C</a> <a id="3324" class="Symbol">:</a> <a id="3326" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="3329" href="foundation.action-on-homotopies-functions.html#3279" class="Bound">l3</a><a id="3331" class="Symbol">}</a>
  <a id="3335" class="Symbol">(</a><a id="3336" href="foundation.action-on-homotopies-functions.html#3336" class="Bound">F</a> <a id="3338" class="Symbol">:</a> <a id="3340" class="Symbol">((</a><a id="3342" href="foundation.action-on-homotopies-functions.html#3342" class="Bound">x</a> <a id="3344" class="Symbol">:</a> <a id="3346" href="foundation.action-on-homotopies-functions.html#3294" class="Bound">A</a><a id="3347" class="Symbol">)</a> <a id="3349" class="Symbol">→</a> <a id="3351" href="foundation.action-on-homotopies-functions.html#3306" class="Bound">B</a> <a id="3353" href="foundation.action-on-homotopies-functions.html#3342" class="Bound">x</a><a id="3354" class="Symbol">)</a> <a id="3356" class="Symbol">→</a> <a id="3358" href="foundation.action-on-homotopies-functions.html#3322" class="Bound">C</a><a id="3359" class="Symbol">)</a>
  <a id="3363" class="Symbol">{</a><a id="3364" href="foundation.action-on-homotopies-functions.html#3364" class="Bound">f</a> <a id="3366" href="foundation.action-on-homotopies-functions.html#3366" class="Bound">g</a> <a id="3368" class="Symbol">:</a> <a id="3370" class="Symbol">(</a><a id="3371" href="foundation.action-on-homotopies-functions.html#3371" class="Bound">x</a> <a id="3373" class="Symbol">:</a> <a id="3375" href="foundation.action-on-homotopies-functions.html#3294" class="Bound">A</a><a id="3376" class="Symbol">)</a> <a id="3378" class="Symbol">→</a> <a id="3380" href="foundation.action-on-homotopies-functions.html#3306" class="Bound">B</a> <a id="3382" href="foundation.action-on-homotopies-functions.html#3371" class="Bound">x</a><a id="3383" class="Symbol">}</a>
  <a id="3387" class="Keyword">where</a>

  <a id="3396" href="foundation.action-on-homotopies-functions.html#3396" class="Function">compute-action-htpy-function-inv-htpy</a> <a id="3434" class="Symbol">:</a>
    <a id="3440" class="Symbol">(</a><a id="3441" href="foundation.action-on-homotopies-functions.html#3441" class="Bound">H</a> <a id="3443" class="Symbol">:</a> <a id="3445" href="foundation.action-on-homotopies-functions.html#3364" class="Bound">f</a> <a id="3447" href="foundation-core.homotopies.html#2717" class="Function Operator">~</a> <a id="3449" href="foundation.action-on-homotopies-functions.html#3366" class="Bound">g</a><a id="3450" class="Symbol">)</a> <a id="3452" class="Symbol">→</a>
    <a id="3458" href="foundation.action-on-homotopies-functions.html#2372" class="Function">action-htpy-function</a> <a id="3479" href="foundation.action-on-homotopies-functions.html#3336" class="Bound">F</a> <a id="3481" class="Symbol">(</a><a id="3482" href="foundation-core.homotopies.html#3079" class="Function">inv-htpy</a> <a id="3491" href="foundation.action-on-homotopies-functions.html#3441" class="Bound">H</a><a id="3492" class="Symbol">)</a> <a id="3494" href="foundation-core.identity-types.html#1953" class="Function Operator">＝</a> <a id="3496" href="foundation-core.identity-types.html#3206" class="Function">inv</a> <a id="3500" class="Symbol">(</a><a id="3501" href="foundation.action-on-homotopies-functions.html#2372" class="Function">action-htpy-function</a> <a id="3522" href="foundation.action-on-homotopies-functions.html#3336" class="Bound">F</a> <a id="3524" href="foundation.action-on-homotopies-functions.html#3441" class="Bound">H</a><a id="3525" class="Symbol">)</a>
  <a id="3529" href="foundation.action-on-homotopies-functions.html#3396" class="Function">compute-action-htpy-function-inv-htpy</a> <a id="3567" href="foundation.action-on-homotopies-functions.html#3567" class="Bound">H</a> <a id="3569" class="Symbol">=</a>
    <a id="3575" href="foundation.action-on-identifications-functions.html#730" class="Function">ap</a> <a id="3578" class="Symbol">(</a><a id="3579" href="foundation.action-on-identifications-functions.html#730" class="Function">ap</a> <a id="3582" href="foundation.action-on-homotopies-functions.html#3336" class="Bound">F</a><a id="3583" class="Symbol">)</a> <a id="3585" class="Symbol">(</a><a id="3586" href="foundation.function-extensionality.html#5926" class="Function">compute-inv-eq-htpy</a> <a id="3606" href="foundation.action-on-homotopies-functions.html#3567" class="Bound">H</a><a id="3607" class="Symbol">)</a> <a id="3609" href="foundation-core.identity-types.html#2902" class="Function Operator">∙</a> <a id="3611" href="foundation.action-on-identifications-functions.html#2304" class="Function">ap-inv</a> <a id="3618" href="foundation.action-on-homotopies-functions.html#3336" class="Bound">F</a> <a id="3620" class="Symbol">(</a><a id="3621" href="foundation-core.function-extensionality.html#3024" class="Function">eq-htpy</a> <a id="3629" href="foundation.action-on-homotopies-functions.html#3567" class="Bound">H</a><a id="3630" class="Symbol">)</a>
</pre>