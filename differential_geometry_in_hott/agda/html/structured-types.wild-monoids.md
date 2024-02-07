# Wild monoids

<pre class="Agda"><a id="25" class="Keyword">module</a> <a id="32" href="structured-types.wild-monoids.html" class="Module">structured-types.wild-monoids</a> <a id="62" class="Keyword">where</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="118" class="Keyword">open</a> <a id="123" class="Keyword">import</a> <a id="130" href="foundation.action-on-identifications-functions.html" class="Module">foundation.action-on-identifications-functions</a>
<a id="177" class="Keyword">open</a> <a id="182" class="Keyword">import</a> <a id="189" href="foundation.dependent-pair-types.html" class="Module">foundation.dependent-pair-types</a>
<a id="221" class="Keyword">open</a> <a id="226" class="Keyword">import</a> <a id="233" href="foundation.identity-types.html" class="Module">foundation.identity-types</a>
<a id="259" class="Keyword">open</a> <a id="264" class="Keyword">import</a> <a id="271" href="foundation.unit-type.html" class="Module">foundation.unit-type</a>
<a id="292" class="Keyword">open</a> <a id="297" class="Keyword">import</a> <a id="304" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>

<a id="332" class="Keyword">open</a> <a id="337" class="Keyword">import</a> <a id="344" href="structured-types.h-spaces.html" class="Module">structured-types.h-spaces</a>
<a id="370" class="Keyword">open</a> <a id="375" class="Keyword">import</a> <a id="382" href="structured-types.pointed-types.html" class="Module">structured-types.pointed-types</a>
</pre>
</details>

## Idea

A **wild monoid** is a first–order approximation to an ∞-monoid, i.e. a
∞-monoid-like structure whose laws hold at least up to the first homotopy level,
but may fail at higher levels.

A wild monoid consists of

- an underlying type `A`
- a unit, say `e : A`
- a binary operation on `A`, say `_*_`
- left and right unit laws `e * x ＝ x` and `x * e ＝ x`
- a coherence between the left and right unit laws at the unit
- an associator `(x y z : A) → (x * y) * z ＝ x * (y * z)`
- coherences between the associator and the left and right unit laws

We call such an associator **unital**. It may be described as a coherence of the
following diagram

```text
          map-associative-prod
     (A × A) × A ----> A × (A × A)
             |           |
  (_*_ , id) |           | (id, _*_)
             v           v
           A × A       A × A
               \       /
          (_*_) \     / (_*_)
                 v   v
                   A
```

such that the three diagrams below cohere

```text
            associator
  (e * x) * y ===== e * (x * y)
          \\         //
     left  \\       //  left
   unit law \\     // unit law
              y * z,
```

```text
            associator
  (x * e) * y ===== x * (e * y)
          \\         //
    right  \\       //  left
   unit law \\     // unit law
              x * y,
```

and

```text
            associator
  (x * y) * e ===== x * (y * e)
          \\         //
    right  \\       //  right
   unit law \\     // unit law
              x * y
```

for all `x y : A`.

Concretely, we define wild monoids to be
[H-spaces](structured-types.h-spaces.md) equipped with a unital associator.

## Definition

### Unital associators on H-spaces

<pre class="Agda"><a id="2145" class="Keyword">module</a> <a id="2152" href="structured-types.wild-monoids.html#2152" class="Module">_</a>
  <a id="2156" class="Symbol">{</a><a id="2157" href="structured-types.wild-monoids.html#2157" class="Bound">l</a> <a id="2159" class="Symbol">:</a> <a id="2161" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="2166" class="Symbol">}</a> <a id="2168" class="Symbol">(</a><a id="2169" href="structured-types.wild-monoids.html#2169" class="Bound">M</a> <a id="2171" class="Symbol">:</a> <a id="2173" href="structured-types.h-spaces.html#1714" class="Function">H-Space</a> <a id="2181" href="structured-types.wild-monoids.html#2157" class="Bound">l</a><a id="2182" class="Symbol">)</a>
  <a id="2186" class="Keyword">where</a>

  <a id="2195" href="structured-types.wild-monoids.html#2195" class="Function">associator-H-Space</a> <a id="2214" class="Symbol">:</a> <a id="2216" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2219" href="structured-types.wild-monoids.html#2157" class="Bound">l</a>
  <a id="2223" href="structured-types.wild-monoids.html#2195" class="Function">associator-H-Space</a> <a id="2242" class="Symbol">=</a>
    <a id="2248" class="Symbol">(</a><a id="2249" href="structured-types.wild-monoids.html#2249" class="Bound">x</a> <a id="2251" href="structured-types.wild-monoids.html#2251" class="Bound">y</a> <a id="2253" href="structured-types.wild-monoids.html#2253" class="Bound">z</a> <a id="2255" class="Symbol">:</a> <a id="2257" href="structured-types.h-spaces.html#1940" class="Function">type-H-Space</a> <a id="2270" href="structured-types.wild-monoids.html#2169" class="Bound">M</a><a id="2271" class="Symbol">)</a> <a id="2273" class="Symbol">→</a>
    <a id="2279" href="foundation-core.identity-types.html#1881" class="Datatype">Id</a>
      <a id="2288" class="Symbol">(</a> <a id="2290" href="structured-types.h-spaces.html#2236" class="Function">mul-H-Space</a> <a id="2302" href="structured-types.wild-monoids.html#2169" class="Bound">M</a> <a id="2304" class="Symbol">(</a><a id="2305" href="structured-types.h-spaces.html#2236" class="Function">mul-H-Space</a> <a id="2317" href="structured-types.wild-monoids.html#2169" class="Bound">M</a> <a id="2319" href="structured-types.wild-monoids.html#2249" class="Bound">x</a> <a id="2321" href="structured-types.wild-monoids.html#2251" class="Bound">y</a><a id="2322" class="Symbol">)</a> <a id="2324" href="structured-types.wild-monoids.html#2253" class="Bound">z</a><a id="2325" class="Symbol">)</a>
      <a id="2333" class="Symbol">(</a> <a id="2335" href="structured-types.h-spaces.html#2236" class="Function">mul-H-Space</a> <a id="2347" href="structured-types.wild-monoids.html#2169" class="Bound">M</a> <a id="2349" href="structured-types.wild-monoids.html#2249" class="Bound">x</a> <a id="2351" class="Symbol">(</a><a id="2352" href="structured-types.h-spaces.html#2236" class="Function">mul-H-Space</a> <a id="2364" href="structured-types.wild-monoids.html#2169" class="Bound">M</a> <a id="2366" href="structured-types.wild-monoids.html#2251" class="Bound">y</a> <a id="2368" href="structured-types.wild-monoids.html#2253" class="Bound">z</a><a id="2369" class="Symbol">))</a>

  <a id="2375" href="structured-types.wild-monoids.html#2375" class="Function">is-unital-associator</a> <a id="2396" class="Symbol">:</a> <a id="2398" class="Symbol">(</a><a id="2399" href="structured-types.wild-monoids.html#2399" class="Bound">α</a> <a id="2401" class="Symbol">:</a> <a id="2403" href="structured-types.wild-monoids.html#2195" class="Function">associator-H-Space</a><a id="2421" class="Symbol">)</a> <a id="2423" class="Symbol">→</a> <a id="2425" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2428" href="structured-types.wild-monoids.html#2157" class="Bound">l</a>
  <a id="2432" href="structured-types.wild-monoids.html#2375" class="Function">is-unital-associator</a> <a id="2453" href="structured-types.wild-monoids.html#2453" class="Bound">α111</a> <a id="2458" class="Symbol">=</a>
    <a id="2464" href="foundation.dependent-pair-types.html#505" class="Record">Σ</a> <a id="2466" class="Symbol">(</a> <a id="2468" class="Symbol">(</a><a id="2469" href="structured-types.wild-monoids.html#2469" class="Bound">y</a> <a id="2471" href="structured-types.wild-monoids.html#2471" class="Bound">z</a> <a id="2473" class="Symbol">:</a> <a id="2475" href="structured-types.h-spaces.html#1940" class="Function">type-H-Space</a> <a id="2488" href="structured-types.wild-monoids.html#2169" class="Bound">M</a><a id="2489" class="Symbol">)</a> <a id="2491" class="Symbol">→</a>
        <a id="2501" href="foundation-core.identity-types.html#1881" class="Datatype">Id</a>
          <a id="2514" class="Symbol">(</a> <a id="2516" class="Symbol">(</a> <a id="2518" href="structured-types.wild-monoids.html#2453" class="Bound">α111</a> <a id="2523" class="Symbol">(</a><a id="2524" href="structured-types.h-spaces.html#2019" class="Function">unit-H-Space</a> <a id="2537" href="structured-types.wild-monoids.html#2169" class="Bound">M</a><a id="2538" class="Symbol">)</a> <a id="2540" href="structured-types.wild-monoids.html#2469" class="Bound">y</a> <a id="2542" href="structured-types.wild-monoids.html#2471" class="Bound">z</a><a id="2543" class="Symbol">)</a> <a id="2545" href="foundation-core.identity-types.html#2902" class="Function Operator">∙</a>
            <a id="2559" class="Symbol">(</a> <a id="2561" href="structured-types.h-spaces.html#2862" class="Function">left-unit-law-mul-H-Space</a> <a id="2587" href="structured-types.wild-monoids.html#2169" class="Bound">M</a>
              <a id="2603" class="Symbol">(</a> <a id="2605" href="structured-types.h-spaces.html#2236" class="Function">mul-H-Space</a> <a id="2617" href="structured-types.wild-monoids.html#2169" class="Bound">M</a> <a id="2619" href="structured-types.wild-monoids.html#2469" class="Bound">y</a> <a id="2621" href="structured-types.wild-monoids.html#2471" class="Bound">z</a><a id="2622" class="Symbol">)))</a>
            <a id="2638" class="Symbol">(</a> <a id="2640" href="foundation.action-on-identifications-functions.html#730" class="Function">ap</a>
              <a id="2657" class="Symbol">(</a> <a id="2659" href="structured-types.h-spaces.html#2348" class="Function">mul-H-Space&#39;</a> <a id="2672" href="structured-types.wild-monoids.html#2169" class="Bound">M</a> <a id="2674" href="structured-types.wild-monoids.html#2471" class="Bound">z</a><a id="2675" class="Symbol">)</a>
              <a id="2691" class="Symbol">(</a> <a id="2693" href="structured-types.h-spaces.html#2862" class="Function">left-unit-law-mul-H-Space</a> <a id="2719" href="structured-types.wild-monoids.html#2169" class="Bound">M</a> <a id="2721" href="structured-types.wild-monoids.html#2469" class="Bound">y</a><a id="2722" class="Symbol">)))</a>
      <a id="2732" class="Symbol">(</a> <a id="2734" class="Symbol">λ</a> <a id="2736" href="structured-types.wild-monoids.html#2736" class="Bound">α011</a> <a id="2741" class="Symbol">→</a>
        <a id="2751" href="foundation.dependent-pair-types.html#505" class="Record">Σ</a> <a id="2753" class="Symbol">(</a> <a id="2755" class="Symbol">(</a><a id="2756" href="structured-types.wild-monoids.html#2756" class="Bound">x</a> <a id="2758" href="structured-types.wild-monoids.html#2758" class="Bound">z</a> <a id="2760" class="Symbol">:</a> <a id="2762" href="structured-types.h-spaces.html#1940" class="Function">type-H-Space</a> <a id="2775" href="structured-types.wild-monoids.html#2169" class="Bound">M</a><a id="2776" class="Symbol">)</a> <a id="2778" class="Symbol">→</a>
            <a id="2792" href="foundation-core.identity-types.html#1881" class="Datatype">Id</a>
              <a id="2809" class="Symbol">(</a> <a id="2811" class="Symbol">(</a> <a id="2813" href="structured-types.wild-monoids.html#2453" class="Bound">α111</a> <a id="2818" href="structured-types.wild-monoids.html#2756" class="Bound">x</a> <a id="2820" class="Symbol">(</a><a id="2821" href="structured-types.h-spaces.html#2019" class="Function">unit-H-Space</a> <a id="2834" href="structured-types.wild-monoids.html#2169" class="Bound">M</a><a id="2835" class="Symbol">)</a> <a id="2837" href="structured-types.wild-monoids.html#2758" class="Bound">z</a><a id="2838" class="Symbol">)</a> <a id="2840" href="foundation-core.identity-types.html#2902" class="Function Operator">∙</a>
                <a id="2858" class="Symbol">(</a> <a id="2860" href="foundation.action-on-identifications-functions.html#730" class="Function">ap</a>
                  <a id="2881" class="Symbol">(</a> <a id="2883" href="structured-types.h-spaces.html#2236" class="Function">mul-H-Space</a> <a id="2895" href="structured-types.wild-monoids.html#2169" class="Bound">M</a> <a id="2897" href="structured-types.wild-monoids.html#2756" class="Bound">x</a><a id="2898" class="Symbol">)</a>
                  <a id="2918" class="Symbol">(</a> <a id="2920" href="structured-types.h-spaces.html#2862" class="Function">left-unit-law-mul-H-Space</a> <a id="2946" href="structured-types.wild-monoids.html#2169" class="Bound">M</a> <a id="2948" href="structured-types.wild-monoids.html#2758" class="Bound">z</a><a id="2949" class="Symbol">)))</a>
              <a id="2967" class="Symbol">(</a> <a id="2969" href="foundation.action-on-identifications-functions.html#730" class="Function">ap</a>
                <a id="2988" class="Symbol">(</a> <a id="2990" href="structured-types.h-spaces.html#2348" class="Function">mul-H-Space&#39;</a> <a id="3003" href="structured-types.wild-monoids.html#2169" class="Bound">M</a> <a id="3005" href="structured-types.wild-monoids.html#2758" class="Bound">z</a><a id="3006" class="Symbol">)</a>
                <a id="3024" class="Symbol">(</a> <a id="3026" href="structured-types.h-spaces.html#3025" class="Function">right-unit-law-mul-H-Space</a> <a id="3053" href="structured-types.wild-monoids.html#2169" class="Bound">M</a> <a id="3055" href="structured-types.wild-monoids.html#2756" class="Bound">x</a><a id="3056" class="Symbol">)))</a>
          <a id="3070" class="Symbol">(</a> <a id="3072" class="Symbol">λ</a> <a id="3074" href="structured-types.wild-monoids.html#3074" class="Bound">α101</a> <a id="3079" class="Symbol">→</a>
            <a id="3093" href="foundation.dependent-pair-types.html#505" class="Record">Σ</a> <a id="3095" class="Symbol">(</a> <a id="3097" class="Symbol">(</a><a id="3098" href="structured-types.wild-monoids.html#3098" class="Bound">x</a> <a id="3100" href="structured-types.wild-monoids.html#3100" class="Bound">y</a> <a id="3102" class="Symbol">:</a> <a id="3104" href="structured-types.h-spaces.html#1940" class="Function">type-H-Space</a> <a id="3117" href="structured-types.wild-monoids.html#2169" class="Bound">M</a><a id="3118" class="Symbol">)</a> <a id="3120" class="Symbol">→</a>
                <a id="3138" href="foundation-core.identity-types.html#1881" class="Datatype">Id</a>
                  <a id="3159" class="Symbol">(</a> <a id="3161" class="Symbol">(</a> <a id="3163" href="structured-types.wild-monoids.html#2453" class="Bound">α111</a> <a id="3168" href="structured-types.wild-monoids.html#3098" class="Bound">x</a> <a id="3170" href="structured-types.wild-monoids.html#3100" class="Bound">y</a> <a id="3172" class="Symbol">(</a><a id="3173" href="structured-types.h-spaces.html#2019" class="Function">unit-H-Space</a> <a id="3186" href="structured-types.wild-monoids.html#2169" class="Bound">M</a><a id="3187" class="Symbol">))</a> <a id="3190" href="foundation-core.identity-types.html#2902" class="Function Operator">∙</a>
                    <a id="3212" class="Symbol">(</a> <a id="3214" href="foundation.action-on-identifications-functions.html#730" class="Function">ap</a>
                      <a id="3239" class="Symbol">(</a> <a id="3241" href="structured-types.h-spaces.html#2236" class="Function">mul-H-Space</a> <a id="3253" href="structured-types.wild-monoids.html#2169" class="Bound">M</a> <a id="3255" href="structured-types.wild-monoids.html#3098" class="Bound">x</a><a id="3256" class="Symbol">)</a>
                      <a id="3280" class="Symbol">(</a> <a id="3282" href="structured-types.h-spaces.html#3025" class="Function">right-unit-law-mul-H-Space</a> <a id="3309" href="structured-types.wild-monoids.html#2169" class="Bound">M</a> <a id="3311" href="structured-types.wild-monoids.html#3100" class="Bound">y</a><a id="3312" class="Symbol">)))</a>
                  <a id="3334" class="Symbol">(</a> <a id="3336" href="structured-types.h-spaces.html#3025" class="Function">right-unit-law-mul-H-Space</a> <a id="3363" href="structured-types.wild-monoids.html#2169" class="Bound">M</a>
                    <a id="3385" class="Symbol">(</a> <a id="3387" href="structured-types.h-spaces.html#2236" class="Function">mul-H-Space</a> <a id="3399" href="structured-types.wild-monoids.html#2169" class="Bound">M</a> <a id="3401" href="structured-types.wild-monoids.html#3098" class="Bound">x</a> <a id="3403" href="structured-types.wild-monoids.html#3100" class="Bound">y</a><a id="3404" class="Symbol">)))</a>
              <a id="3422" class="Symbol">(</a> <a id="3424" class="Symbol">λ</a> <a id="3426" href="structured-types.wild-monoids.html#3426" class="Bound">α110</a> <a id="3431" class="Symbol">→</a> <a id="3433" href="foundation.unit-type.html#766" class="Record">unit</a><a id="3437" class="Symbol">)))</a>

  <a id="3444" href="structured-types.wild-monoids.html#3444" class="Function">unital-associator</a> <a id="3462" class="Symbol">:</a> <a id="3464" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="3467" href="structured-types.wild-monoids.html#2157" class="Bound">l</a>
  <a id="3471" href="structured-types.wild-monoids.html#3444" class="Function">unital-associator</a> <a id="3489" class="Symbol">=</a> <a id="3491" href="foundation.dependent-pair-types.html#505" class="Record">Σ</a> <a id="3493" class="Symbol">(</a><a id="3494" href="structured-types.wild-monoids.html#2195" class="Function">associator-H-Space</a><a id="3512" class="Symbol">)</a> <a id="3514" class="Symbol">(</a><a id="3515" href="structured-types.wild-monoids.html#2375" class="Function">is-unital-associator</a><a id="3535" class="Symbol">)</a>
</pre>
### Wild monoids

<pre class="Agda"><a id="Wild-Monoid"></a><a id="3568" href="structured-types.wild-monoids.html#3568" class="Function">Wild-Monoid</a> <a id="3580" class="Symbol">:</a> <a id="3582" class="Symbol">(</a><a id="3583" href="structured-types.wild-monoids.html#3583" class="Bound">l</a> <a id="3585" class="Symbol">:</a> <a id="3587" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="3592" class="Symbol">)</a> <a id="3594" class="Symbol">→</a> <a id="3596" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="3599" class="Symbol">(</a><a id="3600" href="Agda.Primitive.html#931" class="Primitive">lsuc</a> <a id="3605" href="structured-types.wild-monoids.html#3583" class="Bound">l</a><a id="3606" class="Symbol">)</a>
<a id="3608" href="structured-types.wild-monoids.html#3568" class="Function">Wild-Monoid</a> <a id="3620" href="structured-types.wild-monoids.html#3620" class="Bound">l</a> <a id="3622" class="Symbol">=</a>
  <a id="3626" href="foundation.dependent-pair-types.html#505" class="Record">Σ</a> <a id="3628" class="Symbol">(</a><a id="3629" href="structured-types.h-spaces.html#1714" class="Function">H-Space</a> <a id="3637" href="structured-types.wild-monoids.html#3620" class="Bound">l</a><a id="3638" class="Symbol">)</a> <a id="3640" href="structured-types.wild-monoids.html#3444" class="Function">unital-associator</a>

<a id="3659" class="Keyword">module</a> <a id="3666" href="structured-types.wild-monoids.html#3666" class="Module">_</a>
  <a id="3670" class="Symbol">{</a><a id="3671" href="structured-types.wild-monoids.html#3671" class="Bound">l</a> <a id="3673" class="Symbol">:</a> <a id="3675" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="3680" class="Symbol">}</a> <a id="3682" class="Symbol">(</a><a id="3683" href="structured-types.wild-monoids.html#3683" class="Bound">M</a> <a id="3685" class="Symbol">:</a> <a id="3687" href="structured-types.wild-monoids.html#3568" class="Function">Wild-Monoid</a> <a id="3699" href="structured-types.wild-monoids.html#3671" class="Bound">l</a><a id="3700" class="Symbol">)</a>
  <a id="3704" class="Keyword">where</a>

  <a id="3713" href="structured-types.wild-monoids.html#3713" class="Function">h-space-Wild-Monoid</a> <a id="3733" class="Symbol">:</a> <a id="3735" href="structured-types.h-spaces.html#1714" class="Function">H-Space</a> <a id="3743" href="structured-types.wild-monoids.html#3671" class="Bound">l</a>
  <a id="3747" href="structured-types.wild-monoids.html#3713" class="Function">h-space-Wild-Monoid</a> <a id="3767" class="Symbol">=</a> <a id="3769" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="3773" href="structured-types.wild-monoids.html#3683" class="Bound">M</a>

  <a id="3778" href="structured-types.wild-monoids.html#3778" class="Function">type-Wild-Monoid</a> <a id="3795" class="Symbol">:</a> <a id="3797" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="3800" href="structured-types.wild-monoids.html#3671" class="Bound">l</a>
  <a id="3804" href="structured-types.wild-monoids.html#3778" class="Function">type-Wild-Monoid</a> <a id="3821" class="Symbol">=</a> <a id="3823" href="structured-types.h-spaces.html#1940" class="Function">type-H-Space</a> <a id="3836" href="structured-types.wild-monoids.html#3713" class="Function">h-space-Wild-Monoid</a>

  <a id="3859" href="structured-types.wild-monoids.html#3859" class="Function">unit-Wild-Monoid</a> <a id="3876" class="Symbol">:</a> <a id="3878" href="structured-types.wild-monoids.html#3778" class="Function">type-Wild-Monoid</a>
  <a id="3897" href="structured-types.wild-monoids.html#3859" class="Function">unit-Wild-Monoid</a> <a id="3914" class="Symbol">=</a> <a id="3916" href="structured-types.h-spaces.html#2019" class="Function">unit-H-Space</a> <a id="3929" href="structured-types.wild-monoids.html#3713" class="Function">h-space-Wild-Monoid</a>

  <a id="3952" href="structured-types.wild-monoids.html#3952" class="Function">pointed-type-Wild-Monoid</a> <a id="3977" class="Symbol">:</a> <a id="3979" href="structured-types.pointed-types.html#355" class="Function">Pointed-Type</a> <a id="3992" href="structured-types.wild-monoids.html#3671" class="Bound">l</a>
  <a id="3996" href="structured-types.wild-monoids.html#3952" class="Function">pointed-type-Wild-Monoid</a> <a id="4021" class="Symbol">=</a>
    <a id="4027" href="structured-types.h-spaces.html#1868" class="Function">pointed-type-H-Space</a> <a id="4048" href="structured-types.wild-monoids.html#3713" class="Function">h-space-Wild-Monoid</a>

  <a id="4071" href="structured-types.wild-monoids.html#4071" class="Function">coherent-unital-mul-Wild-Monoid</a> <a id="4103" class="Symbol">:</a>
    <a id="4109" href="structured-types.h-spaces.html#1461" class="Function">coherent-unital-mul-Pointed-Type</a> <a id="4142" href="structured-types.wild-monoids.html#3952" class="Function">pointed-type-Wild-Monoid</a>
  <a id="4169" href="structured-types.wild-monoids.html#4071" class="Function">coherent-unital-mul-Wild-Monoid</a> <a id="4201" class="Symbol">=</a>
    <a id="4207" href="structured-types.h-spaces.html#2107" class="Function">coherent-unital-mul-H-Space</a> <a id="4235" href="structured-types.wild-monoids.html#3713" class="Function">h-space-Wild-Monoid</a>

  <a id="4258" href="structured-types.wild-monoids.html#4258" class="Function">mul-Wild-Monoid</a> <a id="4274" class="Symbol">:</a> <a id="4276" href="structured-types.wild-monoids.html#3778" class="Function">type-Wild-Monoid</a> <a id="4293" class="Symbol">→</a> <a id="4295" href="structured-types.wild-monoids.html#3778" class="Function">type-Wild-Monoid</a> <a id="4312" class="Symbol">→</a> <a id="4314" href="structured-types.wild-monoids.html#3778" class="Function">type-Wild-Monoid</a>
  <a id="4333" href="structured-types.wild-monoids.html#4258" class="Function">mul-Wild-Monoid</a> <a id="4349" class="Symbol">=</a> <a id="4351" href="structured-types.h-spaces.html#2236" class="Function">mul-H-Space</a> <a id="4363" href="structured-types.wild-monoids.html#3713" class="Function">h-space-Wild-Monoid</a>

  <a id="4386" href="structured-types.wild-monoids.html#4386" class="Function">mul-Wild-Monoid&#39;</a> <a id="4403" class="Symbol">:</a> <a id="4405" href="structured-types.wild-monoids.html#3778" class="Function">type-Wild-Monoid</a> <a id="4422" class="Symbol">→</a> <a id="4424" href="structured-types.wild-monoids.html#3778" class="Function">type-Wild-Monoid</a> <a id="4441" class="Symbol">→</a> <a id="4443" href="structured-types.wild-monoids.html#3778" class="Function">type-Wild-Monoid</a>
  <a id="4462" href="structured-types.wild-monoids.html#4386" class="Function">mul-Wild-Monoid&#39;</a> <a id="4479" class="Symbol">=</a> <a id="4481" href="structured-types.h-spaces.html#2348" class="Function">mul-H-Space&#39;</a> <a id="4494" href="structured-types.wild-monoids.html#3713" class="Function">h-space-Wild-Monoid</a>

  <a id="4517" href="structured-types.wild-monoids.html#4517" class="Function">ap-mul-Wild-Monoid</a> <a id="4536" class="Symbol">:</a>
    <a id="4542" class="Symbol">{</a><a id="4543" href="structured-types.wild-monoids.html#4543" class="Bound">a</a> <a id="4545" href="structured-types.wild-monoids.html#4545" class="Bound">b</a> <a id="4547" href="structured-types.wild-monoids.html#4547" class="Bound">c</a> <a id="4549" href="structured-types.wild-monoids.html#4549" class="Bound">d</a> <a id="4551" class="Symbol">:</a> <a id="4553" href="structured-types.wild-monoids.html#3778" class="Function">type-Wild-Monoid</a><a id="4569" class="Symbol">}</a> <a id="4571" class="Symbol">→</a>
    <a id="4577" href="structured-types.wild-monoids.html#4543" class="Bound">a</a> <a id="4579" href="foundation-core.identity-types.html#1953" class="Function Operator">＝</a> <a id="4581" href="structured-types.wild-monoids.html#4545" class="Bound">b</a> <a id="4583" class="Symbol">→</a> <a id="4585" href="structured-types.wild-monoids.html#4547" class="Bound">c</a> <a id="4587" href="foundation-core.identity-types.html#1953" class="Function Operator">＝</a> <a id="4589" href="structured-types.wild-monoids.html#4549" class="Bound">d</a> <a id="4591" class="Symbol">→</a> <a id="4593" href="structured-types.wild-monoids.html#4258" class="Function">mul-Wild-Monoid</a> <a id="4609" href="structured-types.wild-monoids.html#4543" class="Bound">a</a> <a id="4611" href="structured-types.wild-monoids.html#4547" class="Bound">c</a> <a id="4613" href="foundation-core.identity-types.html#1953" class="Function Operator">＝</a> <a id="4615" href="structured-types.wild-monoids.html#4258" class="Function">mul-Wild-Monoid</a> <a id="4631" href="structured-types.wild-monoids.html#4545" class="Bound">b</a> <a id="4633" href="structured-types.wild-monoids.html#4549" class="Bound">d</a>
  <a id="4637" href="structured-types.wild-monoids.html#4517" class="Function">ap-mul-Wild-Monoid</a> <a id="4656" class="Symbol">=</a> <a id="4658" href="structured-types.h-spaces.html#2450" class="Function">ap-mul-H-Space</a> <a id="4673" href="structured-types.wild-monoids.html#3713" class="Function">h-space-Wild-Monoid</a>

  <a id="4696" href="structured-types.wild-monoids.html#4696" class="Function">left-unit-law-mul-Wild-Monoid</a> <a id="4726" class="Symbol">:</a>
    <a id="4732" class="Symbol">(</a><a id="4733" href="structured-types.wild-monoids.html#4733" class="Bound">x</a> <a id="4735" class="Symbol">:</a> <a id="4737" href="structured-types.wild-monoids.html#3778" class="Function">type-Wild-Monoid</a><a id="4753" class="Symbol">)</a> <a id="4755" class="Symbol">→</a> <a id="4757" href="structured-types.wild-monoids.html#4258" class="Function">mul-Wild-Monoid</a> <a id="4773" href="structured-types.wild-monoids.html#3859" class="Function">unit-Wild-Monoid</a> <a id="4790" href="structured-types.wild-monoids.html#4733" class="Bound">x</a> <a id="4792" href="foundation-core.identity-types.html#1953" class="Function Operator">＝</a> <a id="4794" href="structured-types.wild-monoids.html#4733" class="Bound">x</a>
  <a id="4798" href="structured-types.wild-monoids.html#4696" class="Function">left-unit-law-mul-Wild-Monoid</a> <a id="4828" class="Symbol">=</a>
    <a id="4834" href="structured-types.h-spaces.html#2862" class="Function">left-unit-law-mul-H-Space</a> <a id="4860" href="structured-types.wild-monoids.html#3713" class="Function">h-space-Wild-Monoid</a>

  <a id="4883" href="structured-types.wild-monoids.html#4883" class="Function">right-unit-law-mul-Wild-Monoid</a> <a id="4914" class="Symbol">:</a>
    <a id="4920" class="Symbol">(</a><a id="4921" href="structured-types.wild-monoids.html#4921" class="Bound">x</a> <a id="4923" class="Symbol">:</a> <a id="4925" href="structured-types.wild-monoids.html#3778" class="Function">type-Wild-Monoid</a><a id="4941" class="Symbol">)</a> <a id="4943" class="Symbol">→</a> <a id="4945" href="structured-types.wild-monoids.html#4258" class="Function">mul-Wild-Monoid</a> <a id="4961" href="structured-types.wild-monoids.html#4921" class="Bound">x</a> <a id="4963" href="structured-types.wild-monoids.html#3859" class="Function">unit-Wild-Monoid</a> <a id="4980" href="foundation-core.identity-types.html#1953" class="Function Operator">＝</a> <a id="4982" href="structured-types.wild-monoids.html#4921" class="Bound">x</a>
  <a id="4986" href="structured-types.wild-monoids.html#4883" class="Function">right-unit-law-mul-Wild-Monoid</a> <a id="5017" class="Symbol">=</a>
    <a id="5023" href="structured-types.h-spaces.html#3025" class="Function">right-unit-law-mul-H-Space</a> <a id="5050" href="structured-types.wild-monoids.html#3713" class="Function">h-space-Wild-Monoid</a>

  <a id="5073" href="structured-types.wild-monoids.html#5073" class="Function">coh-unit-laws-mul-Wild-Monoid</a> <a id="5103" class="Symbol">:</a>
    <a id="5109" class="Symbol">(</a> <a id="5111" href="structured-types.wild-monoids.html#4696" class="Function">left-unit-law-mul-Wild-Monoid</a> <a id="5141" href="structured-types.wild-monoids.html#3859" class="Function">unit-Wild-Monoid</a><a id="5157" class="Symbol">)</a> <a id="5159" href="foundation-core.identity-types.html#1953" class="Function Operator">＝</a>
    <a id="5165" class="Symbol">(</a> <a id="5167" href="structured-types.wild-monoids.html#4883" class="Function">right-unit-law-mul-Wild-Monoid</a> <a id="5198" href="structured-types.wild-monoids.html#3859" class="Function">unit-Wild-Monoid</a><a id="5214" class="Symbol">)</a>
  <a id="5218" href="structured-types.wild-monoids.html#5073" class="Function">coh-unit-laws-mul-Wild-Monoid</a> <a id="5248" class="Symbol">=</a>
    <a id="5254" href="structured-types.h-spaces.html#3196" class="Function">coh-unit-laws-mul-H-Space</a> <a id="5280" href="structured-types.wild-monoids.html#3713" class="Function">h-space-Wild-Monoid</a>

  <a id="5303" href="structured-types.wild-monoids.html#5303" class="Function">unital-associator-Wild-Monoid</a> <a id="5333" class="Symbol">:</a>
    <a id="5339" href="structured-types.wild-monoids.html#3444" class="Function">unital-associator</a> <a id="5357" href="structured-types.wild-monoids.html#3713" class="Function">h-space-Wild-Monoid</a>
  <a id="5379" href="structured-types.wild-monoids.html#5303" class="Function">unital-associator-Wild-Monoid</a> <a id="5409" class="Symbol">=</a> <a id="5411" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="5415" href="structured-types.wild-monoids.html#3683" class="Bound">M</a>

  <a id="5420" href="structured-types.wild-monoids.html#5420" class="Function">associator-Wild-Monoid</a> <a id="5443" class="Symbol">:</a>
    <a id="5449" href="structured-types.wild-monoids.html#2195" class="Function">associator-H-Space</a> <a id="5468" href="structured-types.wild-monoids.html#3713" class="Function">h-space-Wild-Monoid</a>
  <a id="5490" href="structured-types.wild-monoids.html#5420" class="Function">associator-Wild-Monoid</a> <a id="5513" class="Symbol">=</a> <a id="5515" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="5519" href="structured-types.wild-monoids.html#5303" class="Function">unital-associator-Wild-Monoid</a>

  <a id="5552" href="structured-types.wild-monoids.html#5552" class="Function">associative-mul-Wild-Monoid</a> <a id="5580" class="Symbol">:</a>
    <a id="5586" class="Symbol">(</a><a id="5587" href="structured-types.wild-monoids.html#5587" class="Bound">x</a> <a id="5589" href="structured-types.wild-monoids.html#5589" class="Bound">y</a> <a id="5591" href="structured-types.wild-monoids.html#5591" class="Bound">z</a> <a id="5593" class="Symbol">:</a> <a id="5595" href="structured-types.wild-monoids.html#3778" class="Function">type-Wild-Monoid</a><a id="5611" class="Symbol">)</a> <a id="5613" class="Symbol">→</a>
    <a id="5619" class="Symbol">(</a> <a id="5621" href="structured-types.wild-monoids.html#4258" class="Function">mul-Wild-Monoid</a> <a id="5637" class="Symbol">(</a><a id="5638" href="structured-types.wild-monoids.html#4258" class="Function">mul-Wild-Monoid</a> <a id="5654" href="structured-types.wild-monoids.html#5587" class="Bound">x</a> <a id="5656" href="structured-types.wild-monoids.html#5589" class="Bound">y</a><a id="5657" class="Symbol">)</a> <a id="5659" href="structured-types.wild-monoids.html#5591" class="Bound">z</a><a id="5660" class="Symbol">)</a> <a id="5662" href="foundation-core.identity-types.html#1953" class="Function Operator">＝</a>
    <a id="5668" class="Symbol">(</a> <a id="5670" href="structured-types.wild-monoids.html#4258" class="Function">mul-Wild-Monoid</a> <a id="5686" href="structured-types.wild-monoids.html#5587" class="Bound">x</a> <a id="5688" class="Symbol">(</a><a id="5689" href="structured-types.wild-monoids.html#4258" class="Function">mul-Wild-Monoid</a> <a id="5705" href="structured-types.wild-monoids.html#5589" class="Bound">y</a> <a id="5707" href="structured-types.wild-monoids.html#5591" class="Bound">z</a><a id="5708" class="Symbol">))</a>
  <a id="5713" href="structured-types.wild-monoids.html#5552" class="Function">associative-mul-Wild-Monoid</a> <a id="5741" class="Symbol">=</a> <a id="5743" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="5747" href="structured-types.wild-monoids.html#5303" class="Function">unital-associator-Wild-Monoid</a>

  <a id="5780" href="structured-types.wild-monoids.html#5780" class="Function">unit-law-110-associative-Wild-Monoid</a> <a id="5817" class="Symbol">:</a>
    <a id="5823" class="Symbol">(</a><a id="5824" href="structured-types.wild-monoids.html#5824" class="Bound">x</a> <a id="5826" href="structured-types.wild-monoids.html#5826" class="Bound">y</a> <a id="5828" class="Symbol">:</a> <a id="5830" href="structured-types.wild-monoids.html#3778" class="Function">type-Wild-Monoid</a><a id="5846" class="Symbol">)</a> <a id="5848" class="Symbol">→</a>
    <a id="5854" href="foundation-core.identity-types.html#1881" class="Datatype">Id</a>
      <a id="5863" class="Symbol">(</a> <a id="5865" class="Symbol">(</a> <a id="5867" href="structured-types.wild-monoids.html#5552" class="Function">associative-mul-Wild-Monoid</a> <a id="5895" href="structured-types.wild-monoids.html#5824" class="Bound">x</a> <a id="5897" href="structured-types.wild-monoids.html#5826" class="Bound">y</a> <a id="5899" href="structured-types.wild-monoids.html#3859" class="Function">unit-Wild-Monoid</a><a id="5915" class="Symbol">)</a> <a id="5917" href="foundation-core.identity-types.html#2902" class="Function Operator">∙</a>
        <a id="5927" class="Symbol">(</a> <a id="5929" href="foundation.action-on-identifications-functions.html#730" class="Function">ap</a> <a id="5932" class="Symbol">(</a><a id="5933" href="structured-types.wild-monoids.html#4258" class="Function">mul-Wild-Monoid</a> <a id="5949" href="structured-types.wild-monoids.html#5824" class="Bound">x</a><a id="5950" class="Symbol">)</a> <a id="5952" class="Symbol">(</a><a id="5953" href="structured-types.wild-monoids.html#4883" class="Function">right-unit-law-mul-Wild-Monoid</a> <a id="5984" href="structured-types.wild-monoids.html#5826" class="Bound">y</a><a id="5985" class="Symbol">)))</a>
      <a id="5995" class="Symbol">(</a> <a id="5997" href="structured-types.wild-monoids.html#4883" class="Function">right-unit-law-mul-Wild-Monoid</a> <a id="6028" class="Symbol">(</a><a id="6029" href="structured-types.wild-monoids.html#4258" class="Function">mul-Wild-Monoid</a> <a id="6045" href="structured-types.wild-monoids.html#5824" class="Bound">x</a> <a id="6047" href="structured-types.wild-monoids.html#5826" class="Bound">y</a><a id="6048" class="Symbol">))</a>
  <a id="6053" href="structured-types.wild-monoids.html#5780" class="Function">unit-law-110-associative-Wild-Monoid</a> <a id="6090" class="Symbol">=</a> <a id="6092" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="6096" class="Symbol">(</a><a id="6097" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="6101" class="Symbol">(</a><a id="6102" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="6106" class="Symbol">(</a><a id="6107" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="6111" class="Symbol">(</a><a id="6112" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="6116" href="structured-types.wild-monoids.html#3683" class="Bound">M</a><a id="6117" class="Symbol">))))</a>
</pre>