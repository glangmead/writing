# Commuting triangles of maps

<pre class="Agda"><a id="40" class="Keyword">module</a> <a id="47" href="foundation.commuting-triangles-of-maps.html" class="Module">foundation.commuting-triangles-of-maps</a> <a id="86" class="Keyword">where</a>

<a id="93" class="Keyword">open</a> <a id="98" class="Keyword">import</a> <a id="105" href="foundation-core.commuting-triangles-of-maps.html" class="Module">foundation-core.commuting-triangles-of-maps</a> <a id="149" class="Keyword">public</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="206" class="Keyword">open</a> <a id="211" class="Keyword">import</a> <a id="218" href="foundation.action-on-identifications-functions.html" class="Module">foundation.action-on-identifications-functions</a>
<a id="265" class="Keyword">open</a> <a id="270" class="Keyword">import</a> <a id="277" href="foundation.functoriality-dependent-function-types.html" class="Module">foundation.functoriality-dependent-function-types</a>
<a id="327" class="Keyword">open</a> <a id="332" class="Keyword">import</a> <a id="339" href="foundation.homotopies.html" class="Module">foundation.homotopies</a>
<a id="361" class="Keyword">open</a> <a id="366" class="Keyword">import</a> <a id="373" href="foundation.identity-types.html" class="Module">foundation.identity-types</a>
<a id="399" class="Keyword">open</a> <a id="404" class="Keyword">import</a> <a id="411" href="foundation.postcomposition-functions.html" class="Module">foundation.postcomposition-functions</a>
<a id="448" class="Keyword">open</a> <a id="453" class="Keyword">import</a> <a id="460" href="foundation.precomposition-functions.html" class="Module">foundation.precomposition-functions</a>
<a id="496" class="Keyword">open</a> <a id="501" class="Keyword">import</a> <a id="508" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>

<a id="536" class="Keyword">open</a> <a id="541" class="Keyword">import</a> <a id="548" href="foundation-core.equivalences.html" class="Module">foundation-core.equivalences</a>
<a id="577" class="Keyword">open</a> <a id="582" class="Keyword">import</a> <a id="589" href="foundation-core.function-types.html" class="Module">foundation-core.function-types</a>
</pre>
</details>

## Idea

A triangle of maps

```text
 A ----> B
  \     /
   \   /
    V V
     X
```

is said to **commute** if there is a [homotopy](foundation-core.homotopies.md)
between the map on the left and the composite map.

## Properties

### Top map is an equivalence

If the top map is an [equivalence](foundation-core.equivalences.md), then there
is an equivalence between the coherence triangle with the map of the equivalence
as with the inverse map of the equivalence.

<pre class="Agda"><a id="1115" class="Keyword">module</a> <a id="1122" href="foundation.commuting-triangles-of-maps.html#1122" class="Module">_</a>
  <a id="1126" class="Symbol">{</a><a id="1127" href="foundation.commuting-triangles-of-maps.html#1127" class="Bound">l1</a> <a id="1130" href="foundation.commuting-triangles-of-maps.html#1130" class="Bound">l2</a> <a id="1133" href="foundation.commuting-triangles-of-maps.html#1133" class="Bound">l3</a> <a id="1136" class="Symbol">:</a> <a id="1138" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="1143" class="Symbol">}</a> <a id="1145" class="Symbol">{</a><a id="1146" href="foundation.commuting-triangles-of-maps.html#1146" class="Bound">X</a> <a id="1148" class="Symbol">:</a> <a id="1150" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1153" href="foundation.commuting-triangles-of-maps.html#1127" class="Bound">l1</a><a id="1155" class="Symbol">}</a> <a id="1157" class="Symbol">{</a><a id="1158" href="foundation.commuting-triangles-of-maps.html#1158" class="Bound">A</a> <a id="1160" class="Symbol">:</a> <a id="1162" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1165" href="foundation.commuting-triangles-of-maps.html#1130" class="Bound">l2</a><a id="1167" class="Symbol">}</a> <a id="1169" class="Symbol">{</a><a id="1170" href="foundation.commuting-triangles-of-maps.html#1170" class="Bound">B</a> <a id="1172" class="Symbol">:</a> <a id="1174" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1177" href="foundation.commuting-triangles-of-maps.html#1133" class="Bound">l3</a><a id="1179" class="Symbol">}</a>
  <a id="1183" class="Symbol">(</a><a id="1184" href="foundation.commuting-triangles-of-maps.html#1184" class="Bound">left</a> <a id="1189" class="Symbol">:</a> <a id="1191" href="foundation.commuting-triangles-of-maps.html#1158" class="Bound">A</a> <a id="1193" class="Symbol">→</a> <a id="1195" href="foundation.commuting-triangles-of-maps.html#1146" class="Bound">X</a><a id="1196" class="Symbol">)</a> <a id="1198" class="Symbol">(</a><a id="1199" href="foundation.commuting-triangles-of-maps.html#1199" class="Bound">right</a> <a id="1205" class="Symbol">:</a> <a id="1207" href="foundation.commuting-triangles-of-maps.html#1170" class="Bound">B</a> <a id="1209" class="Symbol">→</a> <a id="1211" href="foundation.commuting-triangles-of-maps.html#1146" class="Bound">X</a><a id="1212" class="Symbol">)</a> <a id="1214" class="Symbol">(</a><a id="1215" href="foundation.commuting-triangles-of-maps.html#1215" class="Bound">e</a> <a id="1217" class="Symbol">:</a> <a id="1219" href="foundation.commuting-triangles-of-maps.html#1158" class="Bound">A</a> <a id="1221" href="foundation-core.equivalences.html#2669" class="Function Operator">≃</a> <a id="1223" href="foundation.commuting-triangles-of-maps.html#1170" class="Bound">B</a><a id="1224" class="Symbol">)</a>
  <a id="1228" class="Keyword">where</a>

  <a id="1237" href="foundation.commuting-triangles-of-maps.html#1237" class="Function">equiv-coherence-triangle-maps-inv-top</a> <a id="1275" class="Symbol">:</a>
    <a id="1281" href="foundation-core.commuting-triangles-of-maps.html#860" class="Function">coherence-triangle-maps</a> <a id="1305" href="foundation.commuting-triangles-of-maps.html#1184" class="Bound">left</a> <a id="1310" href="foundation.commuting-triangles-of-maps.html#1199" class="Bound">right</a> <a id="1316" class="Symbol">(</a><a id="1317" href="foundation-core.equivalences.html#2869" class="Function">map-equiv</a> <a id="1327" href="foundation.commuting-triangles-of-maps.html#1215" class="Bound">e</a><a id="1328" class="Symbol">)</a> <a id="1330" href="foundation-core.equivalences.html#2669" class="Function Operator">≃</a>
    <a id="1336" href="foundation-core.commuting-triangles-of-maps.html#860" class="Function">coherence-triangle-maps</a> <a id="1360" href="foundation.commuting-triangles-of-maps.html#1199" class="Bound">right</a> <a id="1366" href="foundation.commuting-triangles-of-maps.html#1184" class="Bound">left</a> <a id="1371" class="Symbol">(</a><a id="1372" href="foundation-core.equivalences.html#7679" class="Function">map-inv-equiv</a> <a id="1386" href="foundation.commuting-triangles-of-maps.html#1215" class="Bound">e</a><a id="1387" class="Symbol">)</a>
  <a id="1391" href="foundation.commuting-triangles-of-maps.html#1237" class="Function">equiv-coherence-triangle-maps-inv-top</a> <a id="1429" class="Symbol">=</a>
    <a id="1435" class="Symbol">(</a> <a id="1437" href="foundation.homotopies.html#1614" class="Function">equiv-inv-htpy</a>
      <a id="1458" class="Symbol">(</a> <a id="1460" href="foundation.commuting-triangles-of-maps.html#1184" class="Bound">left</a> <a id="1465" href="foundation-core.function-types.html#455" class="Function Operator">∘</a> <a id="1467" class="Symbol">(</a><a id="1468" href="foundation-core.equivalences.html#7679" class="Function">map-inv-equiv</a> <a id="1482" href="foundation.commuting-triangles-of-maps.html#1215" class="Bound">e</a><a id="1483" class="Symbol">))</a>
      <a id="1492" class="Symbol">(</a> <a id="1494" href="foundation.commuting-triangles-of-maps.html#1199" class="Bound">right</a><a id="1499" class="Symbol">))</a> <a id="1502" href="foundation-core.equivalences.html#12664" class="Function Operator">∘e</a>
    <a id="1509" class="Symbol">(</a> <a id="1511" href="foundation.functoriality-dependent-function-types.html#3011" class="Function">equiv-Π</a>
      <a id="1525" class="Symbol">(</a> <a id="1527" class="Symbol">λ</a> <a id="1529" href="foundation.commuting-triangles-of-maps.html#1529" class="Bound">b</a> <a id="1531" class="Symbol">→</a> <a id="1533" href="foundation.commuting-triangles-of-maps.html#1184" class="Bound">left</a> <a id="1538" class="Symbol">(</a><a id="1539" href="foundation-core.equivalences.html#7679" class="Function">map-inv-equiv</a> <a id="1553" href="foundation.commuting-triangles-of-maps.html#1215" class="Bound">e</a> <a id="1555" href="foundation.commuting-triangles-of-maps.html#1529" class="Bound">b</a><a id="1556" class="Symbol">)</a> <a id="1558" href="foundation-core.identity-types.html#1953" class="Function Operator">＝</a> <a id="1560" href="foundation.commuting-triangles-of-maps.html#1199" class="Bound">right</a> <a id="1566" href="foundation.commuting-triangles-of-maps.html#1529" class="Bound">b</a><a id="1567" class="Symbol">)</a>
      <a id="1575" class="Symbol">(</a> <a id="1577" href="foundation.commuting-triangles-of-maps.html#1215" class="Bound">e</a><a id="1578" class="Symbol">)</a>
      <a id="1586" class="Symbol">(</a> <a id="1588" class="Symbol">λ</a> <a id="1590" href="foundation.commuting-triangles-of-maps.html#1590" class="Bound">a</a> <a id="1592" class="Symbol">→</a>
        <a id="1602" href="foundation.identity-types.html#2724" class="Function">equiv-concat</a>
          <a id="1625" class="Symbol">(</a> <a id="1627" href="foundation.action-on-identifications-functions.html#730" class="Function">ap</a> <a id="1630" href="foundation.commuting-triangles-of-maps.html#1184" class="Bound">left</a> <a id="1635" class="Symbol">(</a><a id="1636" href="foundation-core.equivalences.html#7911" class="Function">is-retraction-map-inv-equiv</a> <a id="1664" href="foundation.commuting-triangles-of-maps.html#1215" class="Bound">e</a> <a id="1666" href="foundation.commuting-triangles-of-maps.html#1590" class="Bound">a</a><a id="1667" class="Symbol">))</a>
          <a id="1680" class="Symbol">(</a> <a id="1682" href="foundation.commuting-triangles-of-maps.html#1199" class="Bound">right</a> <a id="1688" class="Symbol">(</a><a id="1689" href="foundation-core.equivalences.html#2869" class="Function">map-equiv</a> <a id="1699" href="foundation.commuting-triangles-of-maps.html#1215" class="Bound">e</a> <a id="1701" href="foundation.commuting-triangles-of-maps.html#1590" class="Bound">a</a><a id="1702" class="Symbol">))))</a>

  <a id="1710" href="foundation.commuting-triangles-of-maps.html#1710" class="Function">coherence-triangle-maps-inv-top</a> <a id="1742" class="Symbol">:</a>
    <a id="1748" href="foundation-core.commuting-triangles-of-maps.html#860" class="Function">coherence-triangle-maps</a> <a id="1772" href="foundation.commuting-triangles-of-maps.html#1184" class="Bound">left</a> <a id="1777" href="foundation.commuting-triangles-of-maps.html#1199" class="Bound">right</a> <a id="1783" class="Symbol">(</a><a id="1784" href="foundation-core.equivalences.html#2869" class="Function">map-equiv</a> <a id="1794" href="foundation.commuting-triangles-of-maps.html#1215" class="Bound">e</a><a id="1795" class="Symbol">)</a> <a id="1797" class="Symbol">→</a>
    <a id="1803" href="foundation-core.commuting-triangles-of-maps.html#860" class="Function">coherence-triangle-maps</a> <a id="1827" href="foundation.commuting-triangles-of-maps.html#1199" class="Bound">right</a> <a id="1833" href="foundation.commuting-triangles-of-maps.html#1184" class="Bound">left</a> <a id="1838" class="Symbol">(</a><a id="1839" href="foundation-core.equivalences.html#7679" class="Function">map-inv-equiv</a> <a id="1853" href="foundation.commuting-triangles-of-maps.html#1215" class="Bound">e</a><a id="1854" class="Symbol">)</a>
  <a id="1858" href="foundation.commuting-triangles-of-maps.html#1710" class="Function">coherence-triangle-maps-inv-top</a> <a id="1890" class="Symbol">=</a>
    <a id="1896" href="foundation-core.equivalences.html#2869" class="Function">map-equiv</a> <a id="1906" href="foundation.commuting-triangles-of-maps.html#1237" class="Function">equiv-coherence-triangle-maps-inv-top</a>
</pre>
### Commuting triangles of maps induce commuting triangles of precomposition maps

Given a commuting triangle of maps

```text
       f
   A ----> B
    \  ⇗  /
   h \   / g
      V V
       X
```

there is an induced commuting triangle of
[precomposition maps](foundation-core.precomposition-functions.md)

```text
         (- ∘ g)
  (X → S) ----> (B → S)
        \   ⇗  /
  (- ∘ h) \   / (- ∘ f)
           V V
         (A → S).
```

Note the change of order of `f` and `g`.

<pre class="Agda"><a id="2435" class="Keyword">module</a> <a id="2442" href="foundation.commuting-triangles-of-maps.html#2442" class="Module">_</a>
  <a id="2446" class="Symbol">{</a> <a id="2448" href="foundation.commuting-triangles-of-maps.html#2448" class="Bound">l1</a> <a id="2451" href="foundation.commuting-triangles-of-maps.html#2451" class="Bound">l2</a> <a id="2454" href="foundation.commuting-triangles-of-maps.html#2454" class="Bound">l3</a> <a id="2457" href="foundation.commuting-triangles-of-maps.html#2457" class="Bound">l4</a> <a id="2460" class="Symbol">:</a> <a id="2462" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="2467" class="Symbol">}</a> <a id="2469" class="Symbol">{</a><a id="2470" href="foundation.commuting-triangles-of-maps.html#2470" class="Bound">X</a> <a id="2472" class="Symbol">:</a> <a id="2474" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2477" href="foundation.commuting-triangles-of-maps.html#2448" class="Bound">l1</a><a id="2479" class="Symbol">}</a> <a id="2481" class="Symbol">{</a><a id="2482" href="foundation.commuting-triangles-of-maps.html#2482" class="Bound">A</a> <a id="2484" class="Symbol">:</a> <a id="2486" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2489" href="foundation.commuting-triangles-of-maps.html#2451" class="Bound">l2</a><a id="2491" class="Symbol">}</a> <a id="2493" class="Symbol">{</a><a id="2494" href="foundation.commuting-triangles-of-maps.html#2494" class="Bound">B</a> <a id="2496" class="Symbol">:</a> <a id="2498" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2501" href="foundation.commuting-triangles-of-maps.html#2454" class="Bound">l3</a><a id="2503" class="Symbol">}</a>
  <a id="2507" class="Symbol">(</a> <a id="2509" href="foundation.commuting-triangles-of-maps.html#2509" class="Bound">left</a> <a id="2514" class="Symbol">:</a> <a id="2516" href="foundation.commuting-triangles-of-maps.html#2482" class="Bound">A</a> <a id="2518" class="Symbol">→</a> <a id="2520" href="foundation.commuting-triangles-of-maps.html#2470" class="Bound">X</a><a id="2521" class="Symbol">)</a> <a id="2523" class="Symbol">(</a><a id="2524" href="foundation.commuting-triangles-of-maps.html#2524" class="Bound">right</a> <a id="2530" class="Symbol">:</a> <a id="2532" href="foundation.commuting-triangles-of-maps.html#2494" class="Bound">B</a> <a id="2534" class="Symbol">→</a> <a id="2536" href="foundation.commuting-triangles-of-maps.html#2470" class="Bound">X</a><a id="2537" class="Symbol">)</a> <a id="2539" class="Symbol">(</a><a id="2540" href="foundation.commuting-triangles-of-maps.html#2540" class="Bound">top</a> <a id="2544" class="Symbol">:</a> <a id="2546" href="foundation.commuting-triangles-of-maps.html#2482" class="Bound">A</a> <a id="2548" class="Symbol">→</a> <a id="2550" href="foundation.commuting-triangles-of-maps.html#2494" class="Bound">B</a><a id="2551" class="Symbol">)</a>
  <a id="2555" class="Keyword">where</a>

  <a id="2564" href="foundation.commuting-triangles-of-maps.html#2564" class="Function">precomp-coherence-triangle-maps</a> <a id="2596" class="Symbol">:</a>
    <a id="2602" href="foundation-core.commuting-triangles-of-maps.html#860" class="Function">coherence-triangle-maps</a> <a id="2626" href="foundation.commuting-triangles-of-maps.html#2509" class="Bound">left</a> <a id="2631" href="foundation.commuting-triangles-of-maps.html#2524" class="Bound">right</a> <a id="2637" href="foundation.commuting-triangles-of-maps.html#2540" class="Bound">top</a> <a id="2641" class="Symbol">→</a>
    <a id="2647" class="Symbol">(</a><a id="2648" href="foundation.commuting-triangles-of-maps.html#2648" class="Bound">S</a> <a id="2650" class="Symbol">:</a> <a id="2652" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2655" href="foundation.commuting-triangles-of-maps.html#2457" class="Bound">l4</a><a id="2657" class="Symbol">)</a> <a id="2659" class="Symbol">→</a>
    <a id="2665" href="foundation-core.commuting-triangles-of-maps.html#860" class="Function">coherence-triangle-maps</a>
      <a id="2695" class="Symbol">(</a> <a id="2697" href="foundation-core.precomposition-functions.html#582" class="Function">precomp</a> <a id="2705" href="foundation.commuting-triangles-of-maps.html#2509" class="Bound">left</a> <a id="2710" href="foundation.commuting-triangles-of-maps.html#2648" class="Bound">S</a><a id="2711" class="Symbol">)</a>
      <a id="2719" class="Symbol">(</a> <a id="2721" href="foundation-core.precomposition-functions.html#582" class="Function">precomp</a> <a id="2729" href="foundation.commuting-triangles-of-maps.html#2540" class="Bound">top</a> <a id="2733" href="foundation.commuting-triangles-of-maps.html#2648" class="Bound">S</a><a id="2734" class="Symbol">)</a>
      <a id="2742" class="Symbol">(</a> <a id="2744" href="foundation-core.precomposition-functions.html#582" class="Function">precomp</a> <a id="2752" href="foundation.commuting-triangles-of-maps.html#2524" class="Bound">right</a> <a id="2758" href="foundation.commuting-triangles-of-maps.html#2648" class="Bound">S</a><a id="2759" class="Symbol">)</a>
  <a id="2763" href="foundation.commuting-triangles-of-maps.html#2564" class="Function">precomp-coherence-triangle-maps</a> <a id="2795" class="Symbol">=</a> <a id="2797" href="foundation.precomposition-functions.html#1488" class="Function">htpy-precomp</a>

  <a id="2813" href="foundation.commuting-triangles-of-maps.html#2813" class="Function">precomp-coherence-triangle-maps&#39;</a> <a id="2846" class="Symbol">:</a>
    <a id="2852" href="foundation-core.commuting-triangles-of-maps.html#1015" class="Function">coherence-triangle-maps&#39;</a> <a id="2877" href="foundation.commuting-triangles-of-maps.html#2509" class="Bound">left</a> <a id="2882" href="foundation.commuting-triangles-of-maps.html#2524" class="Bound">right</a> <a id="2888" href="foundation.commuting-triangles-of-maps.html#2540" class="Bound">top</a> <a id="2892" class="Symbol">→</a>
    <a id="2898" class="Symbol">(</a><a id="2899" href="foundation.commuting-triangles-of-maps.html#2899" class="Bound">S</a> <a id="2901" class="Symbol">:</a> <a id="2903" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2906" href="foundation.commuting-triangles-of-maps.html#2457" class="Bound">l4</a><a id="2908" class="Symbol">)</a> <a id="2910" class="Symbol">→</a>
    <a id="2916" href="foundation-core.commuting-triangles-of-maps.html#1015" class="Function">coherence-triangle-maps&#39;</a>
      <a id="2947" class="Symbol">(</a> <a id="2949" href="foundation-core.precomposition-functions.html#582" class="Function">precomp</a> <a id="2957" href="foundation.commuting-triangles-of-maps.html#2509" class="Bound">left</a> <a id="2962" href="foundation.commuting-triangles-of-maps.html#2899" class="Bound">S</a><a id="2963" class="Symbol">)</a>
      <a id="2971" class="Symbol">(</a> <a id="2973" href="foundation-core.precomposition-functions.html#582" class="Function">precomp</a> <a id="2981" href="foundation.commuting-triangles-of-maps.html#2540" class="Bound">top</a> <a id="2985" href="foundation.commuting-triangles-of-maps.html#2899" class="Bound">S</a><a id="2986" class="Symbol">)</a>
      <a id="2994" class="Symbol">(</a> <a id="2996" href="foundation-core.precomposition-functions.html#582" class="Function">precomp</a> <a id="3004" href="foundation.commuting-triangles-of-maps.html#2524" class="Bound">right</a> <a id="3010" href="foundation.commuting-triangles-of-maps.html#2899" class="Bound">S</a><a id="3011" class="Symbol">)</a>
  <a id="3015" href="foundation.commuting-triangles-of-maps.html#2813" class="Function">precomp-coherence-triangle-maps&#39;</a> <a id="3048" class="Symbol">=</a> <a id="3050" href="foundation.precomposition-functions.html#1488" class="Function">htpy-precomp</a>
</pre>
### Commuting triangles of maps induce commuting triangles of postcomposition maps

Given a commuting triangle of maps

```text
       f
   A ----> B
    \  ⇗  /
   h \   / g
      V V
       X
```

there is an induced commuting triangle of
[postcomposition maps](foundation-core.postcomposition-functions.md)

```text
         (f ∘ -)
  (S → A) ----> (S → B)
        \   ⇗  /
  (h ∘ -) \   / (g ∘ -)
           V V
         (S → X).
```

<pre class="Agda"><a id="3515" class="Keyword">module</a> <a id="3522" href="foundation.commuting-triangles-of-maps.html#3522" class="Module">_</a>
  <a id="3526" class="Symbol">{</a> <a id="3528" href="foundation.commuting-triangles-of-maps.html#3528" class="Bound">l1</a> <a id="3531" href="foundation.commuting-triangles-of-maps.html#3531" class="Bound">l2</a> <a id="3534" href="foundation.commuting-triangles-of-maps.html#3534" class="Bound">l3</a> <a id="3537" href="foundation.commuting-triangles-of-maps.html#3537" class="Bound">l4</a> <a id="3540" class="Symbol">:</a> <a id="3542" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="3547" class="Symbol">}</a> <a id="3549" class="Symbol">{</a><a id="3550" href="foundation.commuting-triangles-of-maps.html#3550" class="Bound">X</a> <a id="3552" class="Symbol">:</a> <a id="3554" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="3557" href="foundation.commuting-triangles-of-maps.html#3528" class="Bound">l1</a><a id="3559" class="Symbol">}</a> <a id="3561" class="Symbol">{</a><a id="3562" href="foundation.commuting-triangles-of-maps.html#3562" class="Bound">A</a> <a id="3564" class="Symbol">:</a> <a id="3566" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="3569" href="foundation.commuting-triangles-of-maps.html#3531" class="Bound">l2</a><a id="3571" class="Symbol">}</a> <a id="3573" class="Symbol">{</a><a id="3574" href="foundation.commuting-triangles-of-maps.html#3574" class="Bound">B</a> <a id="3576" class="Symbol">:</a> <a id="3578" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="3581" href="foundation.commuting-triangles-of-maps.html#3534" class="Bound">l3</a><a id="3583" class="Symbol">}</a>
  <a id="3587" class="Symbol">(</a> <a id="3589" href="foundation.commuting-triangles-of-maps.html#3589" class="Bound">left</a> <a id="3594" class="Symbol">:</a> <a id="3596" href="foundation.commuting-triangles-of-maps.html#3562" class="Bound">A</a> <a id="3598" class="Symbol">→</a> <a id="3600" href="foundation.commuting-triangles-of-maps.html#3550" class="Bound">X</a><a id="3601" class="Symbol">)</a> <a id="3603" class="Symbol">(</a><a id="3604" href="foundation.commuting-triangles-of-maps.html#3604" class="Bound">right</a> <a id="3610" class="Symbol">:</a> <a id="3612" href="foundation.commuting-triangles-of-maps.html#3574" class="Bound">B</a> <a id="3614" class="Symbol">→</a> <a id="3616" href="foundation.commuting-triangles-of-maps.html#3550" class="Bound">X</a><a id="3617" class="Symbol">)</a> <a id="3619" class="Symbol">(</a><a id="3620" href="foundation.commuting-triangles-of-maps.html#3620" class="Bound">top</a> <a id="3624" class="Symbol">:</a> <a id="3626" href="foundation.commuting-triangles-of-maps.html#3562" class="Bound">A</a> <a id="3628" class="Symbol">→</a> <a id="3630" href="foundation.commuting-triangles-of-maps.html#3574" class="Bound">B</a><a id="3631" class="Symbol">)</a>
  <a id="3635" class="Keyword">where</a>

  <a id="3644" href="foundation.commuting-triangles-of-maps.html#3644" class="Function">postcomp-coherence-triangle-maps</a> <a id="3677" class="Symbol">:</a>
    <a id="3683" class="Symbol">(</a><a id="3684" href="foundation.commuting-triangles-of-maps.html#3684" class="Bound">S</a> <a id="3686" class="Symbol">:</a> <a id="3688" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="3691" href="foundation.commuting-triangles-of-maps.html#3537" class="Bound">l4</a><a id="3693" class="Symbol">)</a> <a id="3695" class="Symbol">→</a>
    <a id="3701" href="foundation-core.commuting-triangles-of-maps.html#860" class="Function">coherence-triangle-maps</a> <a id="3725" href="foundation.commuting-triangles-of-maps.html#3589" class="Bound">left</a> <a id="3730" href="foundation.commuting-triangles-of-maps.html#3604" class="Bound">right</a> <a id="3736" href="foundation.commuting-triangles-of-maps.html#3620" class="Bound">top</a> <a id="3740" class="Symbol">→</a>
    <a id="3746" href="foundation-core.commuting-triangles-of-maps.html#860" class="Function">coherence-triangle-maps</a>
      <a id="3776" class="Symbol">(</a> <a id="3778" href="foundation-core.postcomposition-functions.html#589" class="Function">postcomp</a> <a id="3787" href="foundation.commuting-triangles-of-maps.html#3684" class="Bound">S</a> <a id="3789" href="foundation.commuting-triangles-of-maps.html#3589" class="Bound">left</a><a id="3793" class="Symbol">)</a>
      <a id="3801" class="Symbol">(</a> <a id="3803" href="foundation-core.postcomposition-functions.html#589" class="Function">postcomp</a> <a id="3812" href="foundation.commuting-triangles-of-maps.html#3684" class="Bound">S</a> <a id="3814" href="foundation.commuting-triangles-of-maps.html#3604" class="Bound">right</a><a id="3819" class="Symbol">)</a>
      <a id="3827" class="Symbol">(</a> <a id="3829" href="foundation-core.postcomposition-functions.html#589" class="Function">postcomp</a> <a id="3838" href="foundation.commuting-triangles-of-maps.html#3684" class="Bound">S</a> <a id="3840" href="foundation.commuting-triangles-of-maps.html#3620" class="Bound">top</a><a id="3843" class="Symbol">)</a>
  <a id="3847" href="foundation.commuting-triangles-of-maps.html#3644" class="Function">postcomp-coherence-triangle-maps</a> <a id="3880" href="foundation.commuting-triangles-of-maps.html#3880" class="Bound">S</a> <a id="3882" class="Symbol">=</a> <a id="3884" href="foundation.postcomposition-functions.html#1304" class="Function">htpy-postcomp</a> <a id="3898" href="foundation.commuting-triangles-of-maps.html#3880" class="Bound">S</a>

  <a id="3903" href="foundation.commuting-triangles-of-maps.html#3903" class="Function">postcomp-coherence-triangle-maps&#39;</a> <a id="3937" class="Symbol">:</a>
    <a id="3943" class="Symbol">(</a><a id="3944" href="foundation.commuting-triangles-of-maps.html#3944" class="Bound">S</a> <a id="3946" class="Symbol">:</a> <a id="3948" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="3951" href="foundation.commuting-triangles-of-maps.html#3537" class="Bound">l4</a><a id="3953" class="Symbol">)</a> <a id="3955" class="Symbol">→</a>
    <a id="3961" href="foundation-core.commuting-triangles-of-maps.html#1015" class="Function">coherence-triangle-maps&#39;</a> <a id="3986" href="foundation.commuting-triangles-of-maps.html#3589" class="Bound">left</a> <a id="3991" href="foundation.commuting-triangles-of-maps.html#3604" class="Bound">right</a> <a id="3997" href="foundation.commuting-triangles-of-maps.html#3620" class="Bound">top</a> <a id="4001" class="Symbol">→</a>
    <a id="4007" href="foundation-core.commuting-triangles-of-maps.html#1015" class="Function">coherence-triangle-maps&#39;</a>
      <a id="4038" class="Symbol">(</a> <a id="4040" href="foundation-core.postcomposition-functions.html#589" class="Function">postcomp</a> <a id="4049" href="foundation.commuting-triangles-of-maps.html#3944" class="Bound">S</a> <a id="4051" href="foundation.commuting-triangles-of-maps.html#3589" class="Bound">left</a><a id="4055" class="Symbol">)</a>
      <a id="4063" class="Symbol">(</a> <a id="4065" href="foundation-core.postcomposition-functions.html#589" class="Function">postcomp</a> <a id="4074" href="foundation.commuting-triangles-of-maps.html#3944" class="Bound">S</a> <a id="4076" href="foundation.commuting-triangles-of-maps.html#3604" class="Bound">right</a><a id="4081" class="Symbol">)</a>
      <a id="4089" class="Symbol">(</a> <a id="4091" href="foundation-core.postcomposition-functions.html#589" class="Function">postcomp</a> <a id="4100" href="foundation.commuting-triangles-of-maps.html#3944" class="Bound">S</a> <a id="4102" href="foundation.commuting-triangles-of-maps.html#3620" class="Bound">top</a><a id="4105" class="Symbol">)</a>
  <a id="4109" href="foundation.commuting-triangles-of-maps.html#3903" class="Function">postcomp-coherence-triangle-maps&#39;</a> <a id="4143" href="foundation.commuting-triangles-of-maps.html#4143" class="Bound">S</a> <a id="4145" class="Symbol">=</a> <a id="4147" href="foundation.postcomposition-functions.html#1304" class="Function">htpy-postcomp</a> <a id="4161" href="foundation.commuting-triangles-of-maps.html#4143" class="Bound">S</a>
</pre>