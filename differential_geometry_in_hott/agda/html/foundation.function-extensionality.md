# Function extensionality

<pre class="Agda"><a id="36" class="Keyword">module</a> <a id="43" href="foundation.function-extensionality.html" class="Module">foundation.function-extensionality</a> <a id="78" class="Keyword">where</a>

<a id="85" class="Keyword">open</a> <a id="90" class="Keyword">import</a> <a id="97" href="foundation-core.function-extensionality.html" class="Module">foundation-core.function-extensionality</a> <a id="137" class="Keyword">public</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="194" class="Keyword">open</a> <a id="199" class="Keyword">import</a> <a id="206" href="foundation.action-on-identifications-functions.html" class="Module">foundation.action-on-identifications-functions</a>
<a id="253" class="Keyword">open</a> <a id="258" class="Keyword">import</a> <a id="265" href="foundation.commuting-squares-of-maps.html" class="Module">foundation.commuting-squares-of-maps</a>
<a id="302" class="Keyword">open</a> <a id="307" class="Keyword">import</a> <a id="314" href="foundation.postcomposition-dependent-functions.html" class="Module">foundation.postcomposition-dependent-functions</a>
<a id="361" class="Keyword">open</a> <a id="366" class="Keyword">import</a> <a id="373" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>

<a id="401" class="Keyword">open</a> <a id="406" class="Keyword">import</a> <a id="413" href="foundation-core.function-types.html" class="Module">foundation-core.function-types</a>
<a id="444" class="Keyword">open</a> <a id="449" class="Keyword">import</a> <a id="456" href="foundation-core.homotopies.html" class="Module">foundation-core.homotopies</a>
<a id="483" class="Keyword">open</a> <a id="488" class="Keyword">import</a> <a id="495" href="foundation-core.identity-types.html" class="Module">foundation-core.identity-types</a>
<a id="526" class="Keyword">open</a> <a id="531" class="Keyword">import</a> <a id="538" href="foundation-core.postcomposition-functions.html" class="Module">foundation-core.postcomposition-functions</a>
<a id="580" class="Keyword">open</a> <a id="585" class="Keyword">import</a> <a id="592" href="foundation-core.precomposition-dependent-functions.html" class="Module">foundation-core.precomposition-dependent-functions</a>
<a id="643" class="Keyword">open</a> <a id="648" class="Keyword">import</a> <a id="655" href="foundation-core.precomposition-functions.html" class="Module">foundation-core.precomposition-functions</a>
<a id="696" class="Keyword">open</a> <a id="701" class="Keyword">import</a> <a id="708" href="foundation-core.whiskering-homotopies.html" class="Module">foundation-core.whiskering-homotopies</a>
</pre>
</details>

## Idea

The {{#concept "function extensionality axiom"}} asserts that
[identifications](foundation-core.identity-types.md) of (dependent) functions
are [equivalently](foundation-core.equivalences.md) described as
[homotopies](foundation-core.homotopies.md) between them. In other words, a
function is completely determined by its values.

## Properties

### Naturality of `eq-htpy` with respect to functions

#### Naturality of `eq-htpy` with respect to precomposition of dependent functions

Consider a map `f : A → B` and two dependent functions `g h : (x : B) → C x`.
Then the square

```text
                     ap (precomp-Π f C)
       (g ＝ h) ---------------------------> (g ∘ f ＝ h ∘ f)
          ^                                         ^
  eq-htpy |                                         | eq-htpy
          |                                         |
       (g ~ h) ----------------------------> (g ∘ f ~ h ∘ f)
                precomp-Π f (eq-value g h)
```

[commutes](foundation-core.commuting-squares-of-maps.md).

<pre class="Agda"><a id="coherence-square-eq-htpy-ap-precomp-Π"></a><a id="1806" href="foundation.function-extensionality.html#1806" class="Function">coherence-square-eq-htpy-ap-precomp-Π</a> <a id="1844" class="Symbol">:</a>
  <a id="1848" class="Symbol">{</a><a id="1849" href="foundation.function-extensionality.html#1849" class="Bound">l1</a> <a id="1852" href="foundation.function-extensionality.html#1852" class="Bound">l2</a> <a id="1855" href="foundation.function-extensionality.html#1855" class="Bound">l3</a> <a id="1858" class="Symbol">:</a> <a id="1860" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="1865" class="Symbol">}</a> <a id="1867" class="Symbol">{</a><a id="1868" href="foundation.function-extensionality.html#1868" class="Bound">A</a> <a id="1870" class="Symbol">:</a> <a id="1872" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1875" href="foundation.function-extensionality.html#1849" class="Bound">l1</a><a id="1877" class="Symbol">}</a> <a id="1879" class="Symbol">{</a><a id="1880" href="foundation.function-extensionality.html#1880" class="Bound">B</a> <a id="1882" class="Symbol">:</a> <a id="1884" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1887" href="foundation.function-extensionality.html#1852" class="Bound">l2</a><a id="1889" class="Symbol">}</a> <a id="1891" class="Symbol">(</a><a id="1892" href="foundation.function-extensionality.html#1892" class="Bound">f</a> <a id="1894" class="Symbol">:</a> <a id="1896" href="foundation.function-extensionality.html#1868" class="Bound">A</a> <a id="1898" class="Symbol">→</a> <a id="1900" href="foundation.function-extensionality.html#1880" class="Bound">B</a><a id="1901" class="Symbol">)</a> <a id="1903" class="Symbol">{</a><a id="1904" href="foundation.function-extensionality.html#1904" class="Bound">C</a> <a id="1906" class="Symbol">:</a> <a id="1908" href="foundation.function-extensionality.html#1880" class="Bound">B</a> <a id="1910" class="Symbol">→</a> <a id="1912" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1915" href="foundation.function-extensionality.html#1855" class="Bound">l3</a><a id="1917" class="Symbol">}</a>
  <a id="1921" class="Symbol">(</a><a id="1922" href="foundation.function-extensionality.html#1922" class="Bound">g</a> <a id="1924" href="foundation.function-extensionality.html#1924" class="Bound">h</a> <a id="1926" class="Symbol">:</a> <a id="1928" class="Symbol">(</a><a id="1929" href="foundation.function-extensionality.html#1929" class="Bound">b</a> <a id="1931" class="Symbol">:</a> <a id="1933" href="foundation.function-extensionality.html#1880" class="Bound">B</a><a id="1934" class="Symbol">)</a> <a id="1936" class="Symbol">→</a> <a id="1938" href="foundation.function-extensionality.html#1904" class="Bound">C</a> <a id="1940" href="foundation.function-extensionality.html#1929" class="Bound">b</a><a id="1941" class="Symbol">)</a> <a id="1943" class="Symbol">→</a>
  <a id="1947" href="foundation-core.commuting-squares-of-maps.html#862" class="Function">coherence-square-maps</a>
    <a id="1973" class="Symbol">(</a> <a id="1975" href="foundation-core.precomposition-dependent-functions.html#744" class="Function">precomp-Π</a> <a id="1985" href="foundation.function-extensionality.html#1892" class="Bound">f</a> <a id="1987" class="Symbol">(</a><a id="1988" href="foundation-core.homotopies.html#855" class="Function">eq-value</a> <a id="1997" href="foundation.function-extensionality.html#1922" class="Bound">g</a> <a id="1999" href="foundation.function-extensionality.html#1924" class="Bound">h</a><a id="2000" class="Symbol">))</a>
    <a id="2007" class="Symbol">(</a> <a id="2009" href="foundation-core.function-extensionality.html#3024" class="Function">eq-htpy</a><a id="2016" class="Symbol">)</a>
    <a id="2022" class="Symbol">(</a> <a id="2024" href="foundation-core.function-extensionality.html#3024" class="Function">eq-htpy</a><a id="2031" class="Symbol">)</a>
    <a id="2037" class="Symbol">(</a> <a id="2039" href="foundation.action-on-identifications-functions.html#730" class="Function">ap</a> <a id="2042" class="Symbol">(</a><a id="2043" href="foundation-core.precomposition-dependent-functions.html#744" class="Function">precomp-Π</a> <a id="2053" href="foundation.function-extensionality.html#1892" class="Bound">f</a> <a id="2055" href="foundation.function-extensionality.html#1904" class="Bound">C</a><a id="2056" class="Symbol">)</a> <a id="2058" class="Symbol">{</a><a id="2059" href="foundation.function-extensionality.html#1922" class="Bound">g</a><a id="2060" class="Symbol">}</a> <a id="2062" class="Symbol">{</a><a id="2063" href="foundation.function-extensionality.html#1924" class="Bound">h</a><a id="2064" class="Symbol">})</a>
<a id="2067" href="foundation.function-extensionality.html#1806" class="Function">coherence-square-eq-htpy-ap-precomp-Π</a> <a id="2105" href="foundation.function-extensionality.html#2105" class="Bound">f</a> <a id="2107" class="Symbol">{</a><a id="2108" class="Argument">C</a> <a id="2110" class="Symbol">=</a> <a id="2112" href="foundation.function-extensionality.html#2112" class="Bound">C</a><a id="2113" class="Symbol">}</a> <a id="2115" href="foundation.function-extensionality.html#2115" class="Bound">g</a> <a id="2117" href="foundation.function-extensionality.html#2117" class="Bound">h</a> <a id="2119" class="Symbol">=</a>
  <a id="2123" href="foundation.commuting-squares-of-maps.html#3878" class="Function">coherence-square-inv-vertical</a>
    <a id="2157" class="Symbol">(</a> <a id="2159" href="foundation.action-on-identifications-functions.html#730" class="Function">ap</a> <a id="2162" class="Symbol">(</a><a id="2163" href="foundation-core.precomposition-dependent-functions.html#744" class="Function">precomp-Π</a> <a id="2173" href="foundation.function-extensionality.html#2105" class="Bound">f</a> <a id="2175" href="foundation.function-extensionality.html#2112" class="Bound">C</a><a id="2176" class="Symbol">))</a>
    <a id="2183" class="Symbol">(</a> <a id="2185" href="foundation-core.function-extensionality.html#2891" class="Function">equiv-funext</a><a id="2197" class="Symbol">)</a>
    <a id="2203" class="Symbol">(</a> <a id="2205" href="foundation-core.function-extensionality.html#2891" class="Function">equiv-funext</a><a id="2217" class="Symbol">)</a>
    <a id="2223" class="Symbol">(</a> <a id="2225" href="foundation-core.precomposition-dependent-functions.html#744" class="Function">precomp-Π</a> <a id="2235" href="foundation.function-extensionality.html#2105" class="Bound">f</a> <a id="2237" class="Symbol">(</a><a id="2238" href="foundation-core.homotopies.html#855" class="Function">eq-value</a> <a id="2247" href="foundation.function-extensionality.html#2115" class="Bound">g</a> <a id="2249" href="foundation.function-extensionality.html#2117" class="Bound">h</a><a id="2250" class="Symbol">))</a>
    <a id="2257" class="Symbol">(</a> <a id="2259" href="foundation-core.function-extensionality.html#5335" class="Function">coherence-square-htpy-eq-ap-precomp-Π</a> <a id="2297" href="foundation.function-extensionality.html#2105" class="Bound">f</a> <a id="2299" href="foundation.function-extensionality.html#2115" class="Bound">g</a> <a id="2301" href="foundation.function-extensionality.html#2117" class="Bound">h</a><a id="2302" class="Symbol">)</a>
</pre>
#### Naturality of `eq-htpy` with respect to precomposition of ordinary functions

Consider a map `f : A → B` and two functions `g h : B → C`. Then the square

```text
                     ap (precomp f C)
       (g ＝ h) -------------------------> (g ∘ f ＝ h ∘ f)
          ^                                       ^
  eq-htpy |                                       | eq-htpy
          |                                       |
       (g ~ h) --------------------------> (g ∘ f ~ h ∘ f)
                precomp f (eq-value g h)
```

commutes.

<pre class="Agda"><a id="coherence-square-eq-htpy-ap-precomp"></a><a id="2861" href="foundation.function-extensionality.html#2861" class="Function">coherence-square-eq-htpy-ap-precomp</a> <a id="2897" class="Symbol">:</a>
  <a id="2901" class="Symbol">{</a><a id="2902" href="foundation.function-extensionality.html#2902" class="Bound">l1</a> <a id="2905" href="foundation.function-extensionality.html#2905" class="Bound">l2</a> <a id="2908" href="foundation.function-extensionality.html#2908" class="Bound">l3</a> <a id="2911" class="Symbol">:</a> <a id="2913" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="2918" class="Symbol">}</a> <a id="2920" class="Symbol">{</a><a id="2921" href="foundation.function-extensionality.html#2921" class="Bound">A</a> <a id="2923" class="Symbol">:</a> <a id="2925" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2928" href="foundation.function-extensionality.html#2902" class="Bound">l1</a><a id="2930" class="Symbol">}</a> <a id="2932" class="Symbol">{</a><a id="2933" href="foundation.function-extensionality.html#2933" class="Bound">B</a> <a id="2935" class="Symbol">:</a> <a id="2937" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2940" href="foundation.function-extensionality.html#2905" class="Bound">l2</a><a id="2942" class="Symbol">}</a> <a id="2944" class="Symbol">{</a><a id="2945" href="foundation.function-extensionality.html#2945" class="Bound">C</a> <a id="2947" class="Symbol">:</a> <a id="2949" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2952" href="foundation.function-extensionality.html#2908" class="Bound">l3</a><a id="2954" class="Symbol">}</a>
  <a id="2958" class="Symbol">(</a><a id="2959" href="foundation.function-extensionality.html#2959" class="Bound">f</a> <a id="2961" class="Symbol">:</a> <a id="2963" href="foundation.function-extensionality.html#2921" class="Bound">A</a> <a id="2965" class="Symbol">→</a> <a id="2967" href="foundation.function-extensionality.html#2933" class="Bound">B</a><a id="2968" class="Symbol">)</a> <a id="2970" class="Symbol">(</a><a id="2971" href="foundation.function-extensionality.html#2971" class="Bound">g</a> <a id="2973" href="foundation.function-extensionality.html#2973" class="Bound">h</a> <a id="2975" class="Symbol">:</a> <a id="2977" href="foundation.function-extensionality.html#2933" class="Bound">B</a> <a id="2979" class="Symbol">→</a> <a id="2981" href="foundation.function-extensionality.html#2945" class="Bound">C</a><a id="2982" class="Symbol">)</a> <a id="2984" class="Symbol">→</a>
  <a id="2988" href="foundation-core.commuting-squares-of-maps.html#862" class="Function">coherence-square-maps</a>
    <a id="3014" class="Symbol">(</a> <a id="3016" href="foundation-core.precomposition-dependent-functions.html#744" class="Function">precomp-Π</a> <a id="3026" href="foundation.function-extensionality.html#2959" class="Bound">f</a> <a id="3028" class="Symbol">(</a><a id="3029" href="foundation-core.homotopies.html#855" class="Function">eq-value</a> <a id="3038" href="foundation.function-extensionality.html#2971" class="Bound">g</a> <a id="3040" href="foundation.function-extensionality.html#2973" class="Bound">h</a><a id="3041" class="Symbol">))</a>
    <a id="3048" class="Symbol">(</a> <a id="3050" href="foundation-core.function-extensionality.html#3024" class="Function">eq-htpy</a><a id="3057" class="Symbol">)</a>
    <a id="3063" class="Symbol">(</a> <a id="3065" href="foundation-core.function-extensionality.html#3024" class="Function">eq-htpy</a><a id="3072" class="Symbol">)</a>
    <a id="3078" class="Symbol">(</a> <a id="3080" href="foundation.action-on-identifications-functions.html#730" class="Function">ap</a> <a id="3083" class="Symbol">(</a><a id="3084" href="foundation-core.precomposition-functions.html#582" class="Function">precomp</a> <a id="3092" href="foundation.function-extensionality.html#2959" class="Bound">f</a> <a id="3094" href="foundation.function-extensionality.html#2945" class="Bound">C</a><a id="3095" class="Symbol">))</a>
<a id="3098" href="foundation.function-extensionality.html#2861" class="Function">coherence-square-eq-htpy-ap-precomp</a> <a id="3134" class="Symbol">{</a><a id="3135" class="Argument">C</a> <a id="3137" class="Symbol">=</a> <a id="3139" href="foundation.function-extensionality.html#3139" class="Bound">C</a><a id="3140" class="Symbol">}</a> <a id="3142" href="foundation.function-extensionality.html#3142" class="Bound">f</a> <a id="3144" href="foundation.function-extensionality.html#3144" class="Bound">g</a> <a id="3146" href="foundation.function-extensionality.html#3146" class="Bound">h</a> <a id="3148" class="Symbol">=</a>
  <a id="3152" href="foundation.commuting-squares-of-maps.html#3878" class="Function">coherence-square-inv-vertical</a>
    <a id="3186" class="Symbol">(</a> <a id="3188" href="foundation.action-on-identifications-functions.html#730" class="Function">ap</a> <a id="3191" class="Symbol">(</a><a id="3192" href="foundation-core.precomposition-functions.html#582" class="Function">precomp</a> <a id="3200" href="foundation.function-extensionality.html#3142" class="Bound">f</a> <a id="3202" href="foundation.function-extensionality.html#3139" class="Bound">C</a><a id="3203" class="Symbol">))</a>
    <a id="3210" class="Symbol">(</a> <a id="3212" href="foundation-core.function-extensionality.html#2891" class="Function">equiv-funext</a><a id="3224" class="Symbol">)</a>
    <a id="3230" class="Symbol">(</a> <a id="3232" href="foundation-core.function-extensionality.html#2891" class="Function">equiv-funext</a><a id="3244" class="Symbol">)</a>
    <a id="3250" class="Symbol">(</a> <a id="3252" href="foundation-core.precomposition-dependent-functions.html#744" class="Function">precomp-Π</a> <a id="3262" href="foundation.function-extensionality.html#3142" class="Bound">f</a> <a id="3264" class="Symbol">(</a><a id="3265" href="foundation-core.homotopies.html#855" class="Function">eq-value</a> <a id="3274" href="foundation.function-extensionality.html#3144" class="Bound">g</a> <a id="3276" href="foundation.function-extensionality.html#3146" class="Bound">h</a><a id="3277" class="Symbol">))</a>
    <a id="3284" class="Symbol">(</a> <a id="3286" href="foundation-core.function-extensionality.html#6210" class="Function">coherence-square-htpy-eq-ap-precomp</a> <a id="3322" href="foundation.function-extensionality.html#3142" class="Bound">f</a> <a id="3324" href="foundation.function-extensionality.html#3144" class="Bound">g</a> <a id="3326" href="foundation.function-extensionality.html#3146" class="Bound">h</a><a id="3327" class="Symbol">)</a>
</pre>
#### Naturality of `eq-htpy` with respect to postcomposition of dependent functions

Consider a map `f : {x : A} → B x → C x` and two functions
`g h : (x : A) → B x`. Then the square

```text
                    ap (postcomp-Π A f)
       (g ＝ h) -------------------------> (g ∘ f ＝ h ∘ f)
          ^                                       ^
  eq-htpy |                                       | eq-htpy
          |                                       |
       (g ~ h) --------------------------> (g ∘ f ~ h ∘ f)
                          f ·l_
```

commutes.

<pre class="Agda"><a id="coherence-square-eq-htpy-ap-postcomp-Π"></a><a id="3903" href="foundation.function-extensionality.html#3903" class="Function">coherence-square-eq-htpy-ap-postcomp-Π</a> <a id="3942" class="Symbol">:</a>
  <a id="3946" class="Symbol">{</a><a id="3947" href="foundation.function-extensionality.html#3947" class="Bound">l1</a> <a id="3950" href="foundation.function-extensionality.html#3950" class="Bound">l2</a> <a id="3953" href="foundation.function-extensionality.html#3953" class="Bound">l3</a> <a id="3956" class="Symbol">:</a> <a id="3958" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="3963" class="Symbol">}</a> <a id="3965" class="Symbol">{</a><a id="3966" href="foundation.function-extensionality.html#3966" class="Bound">A</a> <a id="3968" class="Symbol">:</a> <a id="3970" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="3973" href="foundation.function-extensionality.html#3947" class="Bound">l1</a><a id="3975" class="Symbol">}</a> <a id="3977" class="Symbol">{</a><a id="3978" href="foundation.function-extensionality.html#3978" class="Bound">B</a> <a id="3980" class="Symbol">:</a> <a id="3982" href="foundation.function-extensionality.html#3966" class="Bound">A</a> <a id="3984" class="Symbol">→</a> <a id="3986" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="3989" href="foundation.function-extensionality.html#3950" class="Bound">l2</a><a id="3991" class="Symbol">}</a> <a id="3993" class="Symbol">{</a><a id="3994" href="foundation.function-extensionality.html#3994" class="Bound">C</a> <a id="3996" class="Symbol">:</a> <a id="3998" href="foundation.function-extensionality.html#3966" class="Bound">A</a> <a id="4000" class="Symbol">→</a> <a id="4002" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="4005" href="foundation.function-extensionality.html#3953" class="Bound">l3</a><a id="4007" class="Symbol">}</a>
  <a id="4011" class="Symbol">(</a><a id="4012" href="foundation.function-extensionality.html#4012" class="Bound">f</a> <a id="4014" class="Symbol">:</a> <a id="4016" class="Symbol">{</a><a id="4017" href="foundation.function-extensionality.html#4017" class="Bound">x</a> <a id="4019" class="Symbol">:</a> <a id="4021" href="foundation.function-extensionality.html#3966" class="Bound">A</a><a id="4022" class="Symbol">}</a> <a id="4024" class="Symbol">→</a> <a id="4026" href="foundation.function-extensionality.html#3978" class="Bound">B</a> <a id="4028" href="foundation.function-extensionality.html#4017" class="Bound">x</a> <a id="4030" class="Symbol">→</a> <a id="4032" href="foundation.function-extensionality.html#3994" class="Bound">C</a> <a id="4034" href="foundation.function-extensionality.html#4017" class="Bound">x</a><a id="4035" class="Symbol">)</a> <a id="4037" class="Symbol">(</a><a id="4038" href="foundation.function-extensionality.html#4038" class="Bound">g</a> <a id="4040" href="foundation.function-extensionality.html#4040" class="Bound">h</a> <a id="4042" class="Symbol">:</a> <a id="4044" class="Symbol">(</a><a id="4045" href="foundation.function-extensionality.html#4045" class="Bound">x</a> <a id="4047" class="Symbol">:</a> <a id="4049" href="foundation.function-extensionality.html#3966" class="Bound">A</a><a id="4050" class="Symbol">)</a> <a id="4052" class="Symbol">→</a> <a id="4054" href="foundation.function-extensionality.html#3978" class="Bound">B</a> <a id="4056" href="foundation.function-extensionality.html#4045" class="Bound">x</a><a id="4057" class="Symbol">)</a> <a id="4059" class="Symbol">→</a>
  <a id="4063" href="foundation-core.commuting-squares-of-maps.html#862" class="Function">coherence-square-maps</a>
    <a id="4089" class="Symbol">(</a> <a id="4091" href="foundation.function-extensionality.html#4012" class="Bound">f</a> <a id="4093" href="foundation-core.whiskering-homotopies.html#1637" class="Function Operator">·l_</a><a id="4096" class="Symbol">)</a>
    <a id="4102" class="Symbol">(</a> <a id="4104" href="foundation-core.function-extensionality.html#3024" class="Function">eq-htpy</a><a id="4111" class="Symbol">)</a>
    <a id="4117" class="Symbol">(</a> <a id="4119" href="foundation-core.function-extensionality.html#3024" class="Function">eq-htpy</a><a id="4126" class="Symbol">)</a>
    <a id="4132" class="Symbol">(</a> <a id="4134" href="foundation.action-on-identifications-functions.html#730" class="Function">ap</a> <a id="4137" class="Symbol">(</a><a id="4138" href="foundation.postcomposition-dependent-functions.html#1038" class="Function">postcomp-Π</a> <a id="4149" href="foundation.function-extensionality.html#3966" class="Bound">A</a> <a id="4151" href="foundation.function-extensionality.html#4012" class="Bound">f</a><a id="4152" class="Symbol">)</a> <a id="4154" class="Symbol">{</a><a id="4155" class="Argument">x</a> <a id="4157" class="Symbol">=</a> <a id="4159" href="foundation.function-extensionality.html#4038" class="Bound">g</a><a id="4160" class="Symbol">}</a> <a id="4162" class="Symbol">{</a><a id="4163" class="Argument">y</a> <a id="4165" class="Symbol">=</a> <a id="4167" href="foundation.function-extensionality.html#4040" class="Bound">h</a><a id="4168" class="Symbol">})</a>
<a id="4171" href="foundation.function-extensionality.html#3903" class="Function">coherence-square-eq-htpy-ap-postcomp-Π</a> <a id="4210" class="Symbol">{</a><a id="4211" class="Argument">A</a> <a id="4213" class="Symbol">=</a> <a id="4215" href="foundation.function-extensionality.html#4215" class="Bound">A</a><a id="4216" class="Symbol">}</a> <a id="4218" href="foundation.function-extensionality.html#4218" class="Bound">f</a> <a id="4220" href="foundation.function-extensionality.html#4220" class="Bound">g</a> <a id="4222" href="foundation.function-extensionality.html#4222" class="Bound">h</a> <a id="4224" class="Symbol">=</a>
    <a id="4230" href="foundation.commuting-squares-of-maps.html#3878" class="Function">coherence-square-inv-vertical</a>
    <a id="4264" class="Symbol">(</a> <a id="4266" href="foundation.action-on-identifications-functions.html#730" class="Function">ap</a> <a id="4269" class="Symbol">(</a><a id="4270" href="foundation.postcomposition-dependent-functions.html#1038" class="Function">postcomp-Π</a> <a id="4281" href="foundation.function-extensionality.html#4215" class="Bound">A</a> <a id="4283" href="foundation.function-extensionality.html#4218" class="Bound">f</a><a id="4284" class="Symbol">)</a> <a id="4286" class="Symbol">{</a><a id="4287" class="Argument">x</a> <a id="4289" class="Symbol">=</a> <a id="4291" href="foundation.function-extensionality.html#4220" class="Bound">g</a><a id="4292" class="Symbol">}</a> <a id="4294" class="Symbol">{</a><a id="4295" class="Argument">y</a> <a id="4297" class="Symbol">=</a> <a id="4299" href="foundation.function-extensionality.html#4222" class="Bound">h</a><a id="4300" class="Symbol">})</a>
    <a id="4307" class="Symbol">(</a> <a id="4309" href="foundation-core.function-extensionality.html#2891" class="Function">equiv-funext</a><a id="4321" class="Symbol">)</a>
    <a id="4327" class="Symbol">(</a> <a id="4329" href="foundation-core.function-extensionality.html#2891" class="Function">equiv-funext</a><a id="4341" class="Symbol">)</a>
    <a id="4347" class="Symbol">(</a> <a id="4349" href="foundation.function-extensionality.html#4218" class="Bound">f</a> <a id="4351" href="foundation-core.whiskering-homotopies.html#1637" class="Function Operator">·l_</a><a id="4354" class="Symbol">)</a>
    <a id="4360" class="Symbol">(</a> <a id="4362" href="foundation-core.function-extensionality.html#7102" class="Function">coherence-square-htpy-eq-ap-postcomp-Π</a> <a id="4401" href="foundation.function-extensionality.html#4218" class="Bound">f</a> <a id="4403" href="foundation.function-extensionality.html#4220" class="Bound">g</a> <a id="4405" href="foundation.function-extensionality.html#4222" class="Bound">h</a><a id="4406" class="Symbol">)</a>
</pre>
#### Naturality of `eq-htpy` with respect to postcomposition of ordinary functions

Consider a map `f : B → C` and two functions `g h : A → B`. Then the square

```text
                     ap (postcomp A f)
       (g ＝ h) -------------------------> (g ∘ f ＝ h ∘ f)
          ^                                       ^
  eq-htpy |                                       | eq-htpy
          |                                       |
       (g ~ h) --------------------------> (g ∘ f ~ h ∘ f)
                          f ·l_
```

<pre class="Agda"><a id="coherence-square-eq-htpy-ap-postcomp"></a><a id="4947" href="foundation.function-extensionality.html#4947" class="Function">coherence-square-eq-htpy-ap-postcomp</a> <a id="4984" class="Symbol">:</a>
  <a id="4988" class="Symbol">{</a><a id="4989" href="foundation.function-extensionality.html#4989" class="Bound">l1</a> <a id="4992" href="foundation.function-extensionality.html#4992" class="Bound">l2</a> <a id="4995" href="foundation.function-extensionality.html#4995" class="Bound">l3</a> <a id="4998" class="Symbol">:</a> <a id="5000" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="5005" class="Symbol">}</a> <a id="5007" class="Symbol">{</a><a id="5008" href="foundation.function-extensionality.html#5008" class="Bound">A</a> <a id="5010" class="Symbol">:</a> <a id="5012" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="5015" href="foundation.function-extensionality.html#4989" class="Bound">l1</a><a id="5017" class="Symbol">}</a> <a id="5019" class="Symbol">{</a><a id="5020" href="foundation.function-extensionality.html#5020" class="Bound">B</a> <a id="5022" class="Symbol">:</a> <a id="5024" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="5027" href="foundation.function-extensionality.html#4992" class="Bound">l2</a><a id="5029" class="Symbol">}</a> <a id="5031" class="Symbol">{</a><a id="5032" href="foundation.function-extensionality.html#5032" class="Bound">C</a> <a id="5034" class="Symbol">:</a> <a id="5036" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="5039" href="foundation.function-extensionality.html#4995" class="Bound">l3</a><a id="5041" class="Symbol">}</a> <a id="5043" class="Symbol">(</a><a id="5044" href="foundation.function-extensionality.html#5044" class="Bound">f</a> <a id="5046" class="Symbol">:</a> <a id="5048" href="foundation.function-extensionality.html#5020" class="Bound">B</a> <a id="5050" class="Symbol">→</a> <a id="5052" href="foundation.function-extensionality.html#5032" class="Bound">C</a><a id="5053" class="Symbol">)</a> <a id="5055" class="Symbol">→</a>
  <a id="5059" class="Symbol">(</a><a id="5060" href="foundation.function-extensionality.html#5060" class="Bound">g</a> <a id="5062" href="foundation.function-extensionality.html#5062" class="Bound">h</a> <a id="5064" class="Symbol">:</a> <a id="5066" href="foundation.function-extensionality.html#5008" class="Bound">A</a> <a id="5068" class="Symbol">→</a> <a id="5070" href="foundation.function-extensionality.html#5020" class="Bound">B</a><a id="5071" class="Symbol">)</a> <a id="5073" class="Symbol">→</a>
  <a id="5077" href="foundation-core.commuting-squares-of-maps.html#862" class="Function">coherence-square-maps</a>
    <a id="5103" class="Symbol">(</a> <a id="5105" href="foundation.function-extensionality.html#5044" class="Bound">f</a> <a id="5107" href="foundation-core.whiskering-homotopies.html#1637" class="Function Operator">·l_</a><a id="5110" class="Symbol">)</a>
    <a id="5116" class="Symbol">(</a> <a id="5118" href="foundation-core.function-extensionality.html#3024" class="Function">eq-htpy</a><a id="5125" class="Symbol">)</a>
    <a id="5131" class="Symbol">(</a> <a id="5133" href="foundation-core.function-extensionality.html#3024" class="Function">eq-htpy</a><a id="5140" class="Symbol">)</a>
    <a id="5146" class="Symbol">(</a> <a id="5148" href="foundation.action-on-identifications-functions.html#730" class="Function">ap</a> <a id="5151" class="Symbol">(</a><a id="5152" href="foundation-core.postcomposition-functions.html#589" class="Function">postcomp</a> <a id="5161" href="foundation.function-extensionality.html#5008" class="Bound">A</a> <a id="5163" href="foundation.function-extensionality.html#5044" class="Bound">f</a><a id="5164" class="Symbol">)</a> <a id="5166" class="Symbol">{</a><a id="5167" class="Argument">x</a> <a id="5169" class="Symbol">=</a> <a id="5171" href="foundation.function-extensionality.html#5060" class="Bound">g</a><a id="5172" class="Symbol">}</a> <a id="5174" class="Symbol">{</a><a id="5175" class="Argument">y</a> <a id="5177" class="Symbol">=</a> <a id="5179" href="foundation.function-extensionality.html#5062" class="Bound">h</a><a id="5180" class="Symbol">})</a>
<a id="5183" href="foundation.function-extensionality.html#4947" class="Function">coherence-square-eq-htpy-ap-postcomp</a> <a id="5220" href="foundation.function-extensionality.html#5220" class="Bound">f</a> <a id="5222" class="Symbol">=</a>
  <a id="5226" href="foundation.function-extensionality.html#3903" class="Function">coherence-square-eq-htpy-ap-postcomp-Π</a> <a id="5265" href="foundation.function-extensionality.html#5220" class="Bound">f</a>
</pre>
### `eq-htpy` preserves inverses

In other words, we have a commutative diagram

```text
                  inv
       (f ＝ g) --------> (g ＝ f)
          ^                  ^
  eq-htpy |                  | eq-htpy
          |                  |
       (f ~ g) ---------> (g ~ f).
                inv-htpy
```

<pre class="Agda"><a id="5590" class="Keyword">module</a> <a id="5597" href="foundation.function-extensionality.html#5597" class="Module">_</a>
  <a id="5601" class="Symbol">{</a><a id="5602" href="foundation.function-extensionality.html#5602" class="Bound">l1</a> <a id="5605" href="foundation.function-extensionality.html#5605" class="Bound">l2</a> <a id="5608" class="Symbol">:</a> <a id="5610" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="5615" class="Symbol">}</a> <a id="5617" class="Symbol">{</a><a id="5618" href="foundation.function-extensionality.html#5618" class="Bound">A</a> <a id="5620" class="Symbol">:</a> <a id="5622" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="5625" href="foundation.function-extensionality.html#5602" class="Bound">l1</a><a id="5627" class="Symbol">}</a> <a id="5629" class="Symbol">{</a><a id="5630" href="foundation.function-extensionality.html#5630" class="Bound">B</a> <a id="5632" class="Symbol">:</a> <a id="5634" href="foundation.function-extensionality.html#5618" class="Bound">A</a> <a id="5636" class="Symbol">→</a> <a id="5638" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="5641" href="foundation.function-extensionality.html#5605" class="Bound">l2</a><a id="5643" class="Symbol">}</a> <a id="5645" class="Symbol">{</a><a id="5646" href="foundation.function-extensionality.html#5646" class="Bound">f</a> <a id="5648" href="foundation.function-extensionality.html#5648" class="Bound">g</a> <a id="5650" class="Symbol">:</a> <a id="5652" class="Symbol">(</a><a id="5653" href="foundation.function-extensionality.html#5653" class="Bound">x</a> <a id="5655" class="Symbol">:</a> <a id="5657" href="foundation.function-extensionality.html#5618" class="Bound">A</a><a id="5658" class="Symbol">)</a> <a id="5660" class="Symbol">→</a> <a id="5662" href="foundation.function-extensionality.html#5630" class="Bound">B</a> <a id="5664" href="foundation.function-extensionality.html#5653" class="Bound">x</a><a id="5665" class="Symbol">}</a>
  <a id="5669" class="Keyword">where</a>

  <a id="5678" href="foundation.function-extensionality.html#5678" class="Function">compute-eq-htpy-inv-htpy</a> <a id="5703" class="Symbol">:</a>
    <a id="5709" href="foundation-core.identity-types.html#3206" class="Function">inv</a> <a id="5713" href="foundation-core.function-types.html#455" class="Function Operator">∘</a> <a id="5715" href="foundation-core.function-extensionality.html#3024" class="Function">eq-htpy</a> <a id="5723" href="foundation-core.homotopies.html#2717" class="Function Operator">~</a> <a id="5725" href="foundation-core.function-extensionality.html#3024" class="Function">eq-htpy</a> <a id="5733" href="foundation-core.function-types.html#455" class="Function Operator">∘</a> <a id="5735" href="foundation-core.homotopies.html#3079" class="Function">inv-htpy</a> <a id="5744" class="Symbol">{</a><a id="5745" class="Argument">f</a> <a id="5747" class="Symbol">=</a> <a id="5749" href="foundation.function-extensionality.html#5646" class="Bound">f</a><a id="5750" class="Symbol">}</a> <a id="5752" class="Symbol">{</a><a id="5753" href="foundation.function-extensionality.html#5648" class="Bound">g</a><a id="5754" class="Symbol">}</a>
  <a id="5758" href="foundation.function-extensionality.html#5678" class="Function">compute-eq-htpy-inv-htpy</a> <a id="5783" class="Symbol">=</a>
    <a id="5789" href="foundation.commuting-squares-of-maps.html#3878" class="Function">coherence-square-inv-vertical</a>
      <a id="5825" class="Symbol">(</a> <a id="5827" href="foundation-core.identity-types.html#3206" class="Function">inv</a><a id="5830" class="Symbol">)</a>
      <a id="5838" class="Symbol">(</a> <a id="5840" href="foundation-core.function-extensionality.html#2891" class="Function">equiv-funext</a><a id="5852" class="Symbol">)</a>
      <a id="5860" class="Symbol">(</a> <a id="5862" href="foundation-core.function-extensionality.html#2891" class="Function">equiv-funext</a><a id="5874" class="Symbol">)</a>
      <a id="5882" class="Symbol">(</a> <a id="5884" href="foundation-core.homotopies.html#3079" class="Function">inv-htpy</a><a id="5892" class="Symbol">)</a>
      <a id="5900" class="Symbol">(</a> <a id="5902" href="foundation-core.function-extensionality.html#8646" class="Function">compute-htpy-eq-inv</a><a id="5921" class="Symbol">)</a>

  <a id="5926" href="foundation.function-extensionality.html#5926" class="Function">compute-inv-eq-htpy</a> <a id="5946" class="Symbol">:</a>
    <a id="5952" href="foundation-core.function-extensionality.html#3024" class="Function">eq-htpy</a> <a id="5960" href="foundation-core.function-types.html#455" class="Function Operator">∘</a> <a id="5962" href="foundation-core.homotopies.html#3079" class="Function">inv-htpy</a> <a id="5971" class="Symbol">{</a><a id="5972" class="Argument">f</a> <a id="5974" class="Symbol">=</a> <a id="5976" href="foundation.function-extensionality.html#5646" class="Bound">f</a><a id="5977" class="Symbol">}</a> <a id="5979" class="Symbol">{</a><a id="5980" href="foundation.function-extensionality.html#5648" class="Bound">g</a><a id="5981" class="Symbol">}</a> <a id="5983" href="foundation-core.homotopies.html#2717" class="Function Operator">~</a> <a id="5985" href="foundation-core.identity-types.html#3206" class="Function">inv</a> <a id="5989" href="foundation-core.function-types.html#455" class="Function Operator">∘</a> <a id="5991" href="foundation-core.function-extensionality.html#3024" class="Function">eq-htpy</a>
  <a id="6001" href="foundation.function-extensionality.html#5926" class="Function">compute-inv-eq-htpy</a> <a id="6021" class="Symbol">=</a> <a id="6023" href="foundation-core.homotopies.html#3079" class="Function">inv-htpy</a> <a id="6032" href="foundation.function-extensionality.html#5678" class="Function">compute-eq-htpy-inv-htpy</a>
</pre>
## See also

- The fact that the univalence axiom implies function extensionality is proven
  in
  [`foundation.univalence-implies-function-extensionality`](foundation.univalence-implies-function-extensionality.md).
- Weak function extensionality is defined in
  [`foundation.weak-function-extensionality`](foundation.weak-function-extensionality.md).
- Transporting along homotopies is defined in
  [`foundation.transport-along-homotopies`](foundation.transport-along-homotopies.md).
