# Universal property of suspensions

<pre class="Agda"><a id="46" class="Keyword">module</a> <a id="53" href="synthetic-homotopy-theory.universal-property-suspensions.html" class="Module">synthetic-homotopy-theory.universal-property-suspensions</a> <a id="110" class="Keyword">where</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="166" class="Keyword">open</a> <a id="171" class="Keyword">import</a> <a id="178" href="foundation.constant-maps.html" class="Module">foundation.constant-maps</a>
<a id="203" class="Keyword">open</a> <a id="208" class="Keyword">import</a> <a id="215" href="foundation.dependent-pair-types.html" class="Module">foundation.dependent-pair-types</a>
<a id="247" class="Keyword">open</a> <a id="252" class="Keyword">import</a> <a id="259" href="foundation.equivalences.html" class="Module">foundation.equivalences</a>
<a id="283" class="Keyword">open</a> <a id="288" class="Keyword">import</a> <a id="295" href="foundation.function-types.html" class="Module">foundation.function-types</a>
<a id="321" class="Keyword">open</a> <a id="326" class="Keyword">import</a> <a id="333" href="foundation.homotopies.html" class="Module">foundation.homotopies</a>
<a id="355" class="Keyword">open</a> <a id="360" class="Keyword">import</a> <a id="367" href="foundation.identity-types.html" class="Module">foundation.identity-types</a>
<a id="393" class="Keyword">open</a> <a id="398" class="Keyword">import</a> <a id="405" href="foundation.unit-type.html" class="Module">foundation.unit-type</a>
<a id="426" class="Keyword">open</a> <a id="431" class="Keyword">import</a> <a id="438" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>
<a id="465" class="Keyword">open</a> <a id="470" class="Keyword">import</a> <a id="477" href="foundation.whiskering-homotopies.html" class="Module">foundation.whiskering-homotopies</a>

<a id="511" class="Keyword">open</a> <a id="516" class="Keyword">import</a> <a id="523" href="synthetic-homotopy-theory.cocones-under-spans.html" class="Module">synthetic-homotopy-theory.cocones-under-spans</a>
<a id="569" class="Keyword">open</a> <a id="574" class="Keyword">import</a> <a id="581" href="synthetic-homotopy-theory.suspension-structures.html" class="Module">synthetic-homotopy-theory.suspension-structures</a>
<a id="629" class="Keyword">open</a> <a id="634" class="Keyword">import</a> <a id="641" href="synthetic-homotopy-theory.universal-property-pushouts.html" class="Module">synthetic-homotopy-theory.universal-property-pushouts</a>
</pre>
</details>

## Idea

Since suspensions are just [pushouts](synthetic-homotopy-theory.pushouts.md),
they retain the expected
[universal property](synthetic-homotopy-theory.universal-property-pushouts.md),
which states that the map `cocone-map` is a equivalence. We denote this
universal property by `universal-property-pushout-suspension`. But, due to the
special nature of the span being pushed out, the suspension of a type enjoys an
equivalent universal property, here denoted by `universal-property-suspension`.
This universal property states that the map `ev-suspension` is an equivalence.

## Definitions

### The universal property of the suspension

<pre class="Agda"><a id="1365" class="Keyword">module</a> <a id="1372" href="synthetic-homotopy-theory.universal-property-suspensions.html#1372" class="Module">_</a>
  <a id="1376" class="Symbol">{</a><a id="1377" href="synthetic-homotopy-theory.universal-property-suspensions.html#1377" class="Bound">l1</a> <a id="1380" href="synthetic-homotopy-theory.universal-property-suspensions.html#1380" class="Bound">l2</a> <a id="1383" class="Symbol">:</a> <a id="1385" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="1390" class="Symbol">}</a> <a id="1392" class="Symbol">{</a><a id="1393" href="synthetic-homotopy-theory.universal-property-suspensions.html#1393" class="Bound">X</a> <a id="1395" class="Symbol">:</a> <a id="1397" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1400" href="synthetic-homotopy-theory.universal-property-suspensions.html#1377" class="Bound">l1</a><a id="1402" class="Symbol">}</a> <a id="1404" class="Symbol">{</a><a id="1405" href="synthetic-homotopy-theory.universal-property-suspensions.html#1405" class="Bound">Y</a> <a id="1407" class="Symbol">:</a> <a id="1409" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1412" href="synthetic-homotopy-theory.universal-property-suspensions.html#1380" class="Bound">l2</a><a id="1414" class="Symbol">}</a>
  <a id="1418" class="Symbol">(</a><a id="1419" href="synthetic-homotopy-theory.universal-property-suspensions.html#1419" class="Bound">s</a> <a id="1421" class="Symbol">:</a> <a id="1423" href="synthetic-homotopy-theory.suspension-structures.html#2110" class="Function">suspension-structure</a> <a id="1444" href="synthetic-homotopy-theory.universal-property-suspensions.html#1393" class="Bound">X</a> <a id="1446" href="synthetic-homotopy-theory.universal-property-suspensions.html#1405" class="Bound">Y</a><a id="1447" class="Symbol">)</a>
  <a id="1451" class="Keyword">where</a>

  <a id="1460" href="synthetic-homotopy-theory.universal-property-suspensions.html#1460" class="Function">ev-suspension</a> <a id="1474" class="Symbol">:</a>
    <a id="1480" class="Symbol">{</a><a id="1481" href="synthetic-homotopy-theory.universal-property-suspensions.html#1481" class="Bound">l3</a> <a id="1484" class="Symbol">:</a> <a id="1486" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="1491" class="Symbol">}</a> <a id="1493" class="Symbol">(</a><a id="1494" href="synthetic-homotopy-theory.universal-property-suspensions.html#1494" class="Bound">Z</a> <a id="1496" class="Symbol">:</a> <a id="1498" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1501" href="synthetic-homotopy-theory.universal-property-suspensions.html#1481" class="Bound">l3</a><a id="1503" class="Symbol">)</a> <a id="1505" class="Symbol">→</a> <a id="1507" class="Symbol">(</a><a id="1508" href="synthetic-homotopy-theory.universal-property-suspensions.html#1405" class="Bound">Y</a> <a id="1510" class="Symbol">→</a> <a id="1512" href="synthetic-homotopy-theory.universal-property-suspensions.html#1494" class="Bound">Z</a><a id="1513" class="Symbol">)</a> <a id="1515" class="Symbol">→</a> <a id="1517" href="synthetic-homotopy-theory.suspension-structures.html#2110" class="Function">suspension-structure</a> <a id="1538" href="synthetic-homotopy-theory.universal-property-suspensions.html#1393" class="Bound">X</a> <a id="1540" href="synthetic-homotopy-theory.universal-property-suspensions.html#1494" class="Bound">Z</a>
  <a id="1544" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="1548" class="Symbol">(</a><a id="1549" href="synthetic-homotopy-theory.universal-property-suspensions.html#1460" class="Function">ev-suspension</a> <a id="1563" href="synthetic-homotopy-theory.universal-property-suspensions.html#1563" class="Bound">Z</a> <a id="1565" href="synthetic-homotopy-theory.universal-property-suspensions.html#1565" class="Bound">h</a><a id="1566" class="Symbol">)</a> <a id="1568" class="Symbol">=</a> <a id="1570" href="synthetic-homotopy-theory.universal-property-suspensions.html#1565" class="Bound">h</a> <a id="1572" class="Symbol">(</a><a id="1573" href="synthetic-homotopy-theory.suspension-structures.html#2274" class="Function">north-suspension-structure</a> <a id="1600" href="synthetic-homotopy-theory.universal-property-suspensions.html#1419" class="Bound">s</a><a id="1601" class="Symbol">)</a>
  <a id="1605" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="1609" class="Symbol">(</a><a id="1610" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="1614" class="Symbol">(</a><a id="1615" href="synthetic-homotopy-theory.universal-property-suspensions.html#1460" class="Function">ev-suspension</a> <a id="1629" href="synthetic-homotopy-theory.universal-property-suspensions.html#1629" class="Bound">Z</a> <a id="1631" href="synthetic-homotopy-theory.universal-property-suspensions.html#1631" class="Bound">h</a><a id="1632" class="Symbol">))</a> <a id="1635" class="Symbol">=</a> <a id="1637" href="synthetic-homotopy-theory.universal-property-suspensions.html#1631" class="Bound">h</a> <a id="1639" class="Symbol">(</a><a id="1640" href="synthetic-homotopy-theory.suspension-structures.html#2374" class="Function">south-suspension-structure</a> <a id="1667" href="synthetic-homotopy-theory.universal-property-suspensions.html#1419" class="Bound">s</a><a id="1668" class="Symbol">)</a>
  <a id="1672" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="1676" class="Symbol">(</a><a id="1677" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="1681" class="Symbol">(</a><a id="1682" href="synthetic-homotopy-theory.universal-property-suspensions.html#1460" class="Function">ev-suspension</a> <a id="1696" href="synthetic-homotopy-theory.universal-property-suspensions.html#1696" class="Bound">Z</a> <a id="1698" href="synthetic-homotopy-theory.universal-property-suspensions.html#1698" class="Bound">h</a><a id="1699" class="Symbol">))</a> <a id="1702" class="Symbol">=</a> <a id="1704" href="synthetic-homotopy-theory.universal-property-suspensions.html#1698" class="Bound">h</a> <a id="1706" href="foundation-core.whiskering-homotopies.html#1637" class="Function Operator">·l</a> <a id="1709" href="synthetic-homotopy-theory.suspension-structures.html#2482" class="Function">meridian-suspension-structure</a> <a id="1739" href="synthetic-homotopy-theory.universal-property-suspensions.html#1419" class="Bound">s</a>

  <a id="1744" href="synthetic-homotopy-theory.universal-property-suspensions.html#1744" class="Function">universal-property-suspension</a> <a id="1774" class="Symbol">:</a> <a id="1776" href="Agda.Primitive.html#512" class="Primitive">UUω</a>
  <a id="1782" href="synthetic-homotopy-theory.universal-property-suspensions.html#1744" class="Function">universal-property-suspension</a> <a id="1812" class="Symbol">=</a>
    <a id="1818" class="Symbol">{</a><a id="1819" href="synthetic-homotopy-theory.universal-property-suspensions.html#1819" class="Bound">l</a> <a id="1821" class="Symbol">:</a> <a id="1823" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="1828" class="Symbol">}</a> <a id="1830" class="Symbol">(</a><a id="1831" href="synthetic-homotopy-theory.universal-property-suspensions.html#1831" class="Bound">Z</a> <a id="1833" class="Symbol">:</a> <a id="1835" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1838" href="synthetic-homotopy-theory.universal-property-suspensions.html#1819" class="Bound">l</a><a id="1839" class="Symbol">)</a> <a id="1841" class="Symbol">→</a> <a id="1843" href="foundation-core.equivalences.html#1647" class="Function">is-equiv</a> <a id="1852" class="Symbol">(</a><a id="1853" href="synthetic-homotopy-theory.universal-property-suspensions.html#1460" class="Function">ev-suspension</a> <a id="1867" href="synthetic-homotopy-theory.universal-property-suspensions.html#1831" class="Bound">Z</a><a id="1868" class="Symbol">)</a>
</pre>
### The universal property of the suspension as a pushout

<pre class="Agda"><a id="universal-property-pushout-suspension"></a><a id="1942" href="synthetic-homotopy-theory.universal-property-suspensions.html#1942" class="Function">universal-property-pushout-suspension</a> <a id="1980" class="Symbol">:</a>
  <a id="1984" class="Symbol">(</a><a id="1985" href="synthetic-homotopy-theory.universal-property-suspensions.html#1985" class="Bound">l</a> <a id="1987" class="Symbol">:</a> <a id="1989" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="1994" class="Symbol">)</a> <a id="1996" class="Symbol">{</a><a id="1997" href="synthetic-homotopy-theory.universal-property-suspensions.html#1997" class="Bound">l1</a> <a id="2000" href="synthetic-homotopy-theory.universal-property-suspensions.html#2000" class="Bound">l2</a> <a id="2003" class="Symbol">:</a> <a id="2005" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="2010" class="Symbol">}</a> <a id="2012" class="Symbol">(</a><a id="2013" href="synthetic-homotopy-theory.universal-property-suspensions.html#2013" class="Bound">X</a> <a id="2015" class="Symbol">:</a> <a id="2017" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2020" href="synthetic-homotopy-theory.universal-property-suspensions.html#1997" class="Bound">l1</a><a id="2022" class="Symbol">)</a> <a id="2024" class="Symbol">(</a><a id="2025" href="synthetic-homotopy-theory.universal-property-suspensions.html#2025" class="Bound">Y</a> <a id="2027" class="Symbol">:</a> <a id="2029" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2032" href="synthetic-homotopy-theory.universal-property-suspensions.html#2000" class="Bound">l2</a><a id="2034" class="Symbol">)</a>
  <a id="2038" class="Symbol">(</a><a id="2039" href="synthetic-homotopy-theory.universal-property-suspensions.html#2039" class="Bound">s</a> <a id="2041" class="Symbol">:</a> <a id="2043" href="synthetic-homotopy-theory.suspension-structures.html#2110" class="Function">suspension-structure</a> <a id="2064" href="synthetic-homotopy-theory.universal-property-suspensions.html#2013" class="Bound">X</a> <a id="2066" href="synthetic-homotopy-theory.universal-property-suspensions.html#2025" class="Bound">Y</a><a id="2067" class="Symbol">)</a> <a id="2069" class="Symbol">→</a> <a id="2071" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2074" class="Symbol">(</a><a id="2075" href="Agda.Primitive.html#931" class="Primitive">lsuc</a> <a id="2080" href="synthetic-homotopy-theory.universal-property-suspensions.html#1985" class="Bound">l</a> <a id="2082" href="Agda.Primitive.html#961" class="Primitive Operator">⊔</a> <a id="2084" href="synthetic-homotopy-theory.universal-property-suspensions.html#1997" class="Bound">l1</a> <a id="2087" href="Agda.Primitive.html#961" class="Primitive Operator">⊔</a> <a id="2089" href="synthetic-homotopy-theory.universal-property-suspensions.html#2000" class="Bound">l2</a><a id="2091" class="Symbol">)</a>
<a id="2093" href="synthetic-homotopy-theory.universal-property-suspensions.html#1942" class="Function">universal-property-pushout-suspension</a> <a id="2131" href="synthetic-homotopy-theory.universal-property-suspensions.html#2131" class="Bound">l</a> <a id="2133" href="synthetic-homotopy-theory.universal-property-suspensions.html#2133" class="Bound">X</a> <a id="2135" href="synthetic-homotopy-theory.universal-property-suspensions.html#2135" class="Bound">Y</a> <a id="2137" href="synthetic-homotopy-theory.universal-property-suspensions.html#2137" class="Bound">s</a> <a id="2139" class="Symbol">=</a>
  <a id="2143" href="synthetic-homotopy-theory.universal-property-pushouts.html#2873" class="Function">universal-property-pushout</a> <a id="2170" href="synthetic-homotopy-theory.universal-property-suspensions.html#2131" class="Bound">l</a>
    <a id="2176" class="Symbol">(</a> <a id="2178" href="foundation.unit-type.html#1085" class="Function">terminal-map</a> <a id="2191" href="synthetic-homotopy-theory.universal-property-suspensions.html#2133" class="Bound">X</a><a id="2192" class="Symbol">)</a>
    <a id="2198" class="Symbol">(</a> <a id="2200" href="foundation.unit-type.html#1085" class="Function">terminal-map</a> <a id="2213" href="synthetic-homotopy-theory.universal-property-suspensions.html#2133" class="Bound">X</a><a id="2214" class="Symbol">)</a>
    <a id="2220" class="Symbol">(</a> <a id="2222" href="synthetic-homotopy-theory.suspension-structures.html#2829" class="Function">suspension-cocone-suspension-structure</a> <a id="2261" href="synthetic-homotopy-theory.universal-property-suspensions.html#2137" class="Bound">s</a><a id="2262" class="Symbol">)</a>
</pre>
## Properties

<pre class="Agda"><a id="triangle-ev-suspension"></a><a id="2292" href="synthetic-homotopy-theory.universal-property-suspensions.html#2292" class="Function">triangle-ev-suspension</a> <a id="2315" class="Symbol">:</a>
  <a id="2319" class="Symbol">{</a><a id="2320" href="synthetic-homotopy-theory.universal-property-suspensions.html#2320" class="Bound">l1</a> <a id="2323" href="synthetic-homotopy-theory.universal-property-suspensions.html#2323" class="Bound">l2</a> <a id="2326" href="synthetic-homotopy-theory.universal-property-suspensions.html#2326" class="Bound">l3</a> <a id="2329" class="Symbol">:</a> <a id="2331" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="2336" class="Symbol">}</a> <a id="2338" class="Symbol">{</a><a id="2339" href="synthetic-homotopy-theory.universal-property-suspensions.html#2339" class="Bound">X</a> <a id="2341" class="Symbol">:</a> <a id="2343" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2346" href="synthetic-homotopy-theory.universal-property-suspensions.html#2320" class="Bound">l1</a><a id="2348" class="Symbol">}</a> <a id="2350" class="Symbol">{</a><a id="2351" href="synthetic-homotopy-theory.universal-property-suspensions.html#2351" class="Bound">Y</a> <a id="2353" class="Symbol">:</a> <a id="2355" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2358" href="synthetic-homotopy-theory.universal-property-suspensions.html#2323" class="Bound">l2</a><a id="2360" class="Symbol">}</a> <a id="2362" class="Symbol">→</a>
  <a id="2366" class="Symbol">(</a><a id="2367" href="synthetic-homotopy-theory.universal-property-suspensions.html#2367" class="Bound">s</a> <a id="2369" class="Symbol">:</a> <a id="2371" href="synthetic-homotopy-theory.suspension-structures.html#2110" class="Function">suspension-structure</a> <a id="2392" href="synthetic-homotopy-theory.universal-property-suspensions.html#2339" class="Bound">X</a> <a id="2394" href="synthetic-homotopy-theory.universal-property-suspensions.html#2351" class="Bound">Y</a><a id="2395" class="Symbol">)</a> <a id="2397" class="Symbol">→</a>
  <a id="2401" class="Symbol">(</a><a id="2402" href="synthetic-homotopy-theory.universal-property-suspensions.html#2402" class="Bound">Z</a> <a id="2404" class="Symbol">:</a> <a id="2406" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2409" href="synthetic-homotopy-theory.universal-property-suspensions.html#2326" class="Bound">l3</a><a id="2411" class="Symbol">)</a> <a id="2413" class="Symbol">→</a>
  <a id="2417" class="Symbol">(</a> <a id="2419" class="Symbol">(</a> <a id="2421" href="synthetic-homotopy-theory.suspension-structures.html#3155" class="Function">suspension-structure-suspension-cocone</a><a id="2459" class="Symbol">)</a> <a id="2461" href="foundation-core.function-types.html#455" class="Function Operator">∘</a>
    <a id="2467" class="Symbol">(</a> <a id="2469" href="synthetic-homotopy-theory.cocones-under-spans.html#5140" class="Function">cocone-map</a>
      <a id="2486" class="Symbol">(</a> <a id="2488" href="foundation.unit-type.html#1085" class="Function">terminal-map</a> <a id="2501" href="synthetic-homotopy-theory.universal-property-suspensions.html#2339" class="Bound">X</a><a id="2502" class="Symbol">)</a>
      <a id="2510" class="Symbol">(</a> <a id="2512" href="foundation.unit-type.html#1085" class="Function">terminal-map</a> <a id="2525" href="synthetic-homotopy-theory.universal-property-suspensions.html#2339" class="Bound">X</a><a id="2526" class="Symbol">)</a>
      <a id="2534" class="Symbol">(</a> <a id="2536" href="synthetic-homotopy-theory.suspension-structures.html#2829" class="Function">suspension-cocone-suspension-structure</a> <a id="2575" href="synthetic-homotopy-theory.universal-property-suspensions.html#2367" class="Bound">s</a><a id="2576" class="Symbol">)))</a> <a id="2580" href="foundation-core.homotopies.html#2717" class="Function Operator">~</a>
  <a id="2584" class="Symbol">(</a> <a id="2586" href="synthetic-homotopy-theory.universal-property-suspensions.html#1460" class="Function">ev-suspension</a> <a id="2600" href="synthetic-homotopy-theory.universal-property-suspensions.html#2367" class="Bound">s</a> <a id="2602" href="synthetic-homotopy-theory.universal-property-suspensions.html#2402" class="Bound">Z</a><a id="2603" class="Symbol">)</a>
<a id="2605" href="synthetic-homotopy-theory.universal-property-suspensions.html#2292" class="Function">triangle-ev-suspension</a> <a id="2628" class="Symbol">(</a><a id="2629" href="synthetic-homotopy-theory.universal-property-suspensions.html#2629" class="Bound">N</a> <a id="2631" href="foundation.dependent-pair-types.html#689" class="InductiveConstructor Operator">,</a> <a id="2633" href="synthetic-homotopy-theory.universal-property-suspensions.html#2633" class="Bound">S</a> <a id="2635" href="foundation.dependent-pair-types.html#689" class="InductiveConstructor Operator">,</a> <a id="2637" href="synthetic-homotopy-theory.universal-property-suspensions.html#2637" class="Bound">merid</a><a id="2642" class="Symbol">)</a> <a id="2644" href="synthetic-homotopy-theory.universal-property-suspensions.html#2644" class="Bound">Z</a> <a id="2646" href="synthetic-homotopy-theory.universal-property-suspensions.html#2646" class="Bound">h</a> <a id="2648" class="Symbol">=</a> <a id="2650" href="foundation-core.identity-types.html#1922" class="InductiveConstructor">refl</a>

<a id="is-equiv-ev-suspension"></a><a id="2656" href="synthetic-homotopy-theory.universal-property-suspensions.html#2656" class="Function">is-equiv-ev-suspension</a> <a id="2679" class="Symbol">:</a>
  <a id="2683" class="Symbol">{</a> <a id="2685" href="synthetic-homotopy-theory.universal-property-suspensions.html#2685" class="Bound">l1</a> <a id="2688" href="synthetic-homotopy-theory.universal-property-suspensions.html#2688" class="Bound">l2</a> <a id="2691" href="synthetic-homotopy-theory.universal-property-suspensions.html#2691" class="Bound">l3</a> <a id="2694" class="Symbol">:</a> <a id="2696" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="2701" class="Symbol">}</a> <a id="2703" class="Symbol">{</a><a id="2704" href="synthetic-homotopy-theory.universal-property-suspensions.html#2704" class="Bound">X</a> <a id="2706" class="Symbol">:</a> <a id="2708" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2711" href="synthetic-homotopy-theory.universal-property-suspensions.html#2685" class="Bound">l1</a><a id="2713" class="Symbol">}</a> <a id="2715" class="Symbol">{</a><a id="2716" href="synthetic-homotopy-theory.universal-property-suspensions.html#2716" class="Bound">Y</a> <a id="2718" class="Symbol">:</a> <a id="2720" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2723" href="synthetic-homotopy-theory.universal-property-suspensions.html#2688" class="Bound">l2</a><a id="2725" class="Symbol">}</a> <a id="2727" class="Symbol">→</a>
  <a id="2731" class="Symbol">(</a> <a id="2733" href="synthetic-homotopy-theory.universal-property-suspensions.html#2733" class="Bound">s</a> <a id="2735" class="Symbol">:</a> <a id="2737" href="synthetic-homotopy-theory.suspension-structures.html#2110" class="Function">suspension-structure</a> <a id="2758" href="synthetic-homotopy-theory.universal-property-suspensions.html#2704" class="Bound">X</a> <a id="2760" href="synthetic-homotopy-theory.universal-property-suspensions.html#2716" class="Bound">Y</a><a id="2761" class="Symbol">)</a> <a id="2763" class="Symbol">→</a>
  <a id="2767" class="Symbol">(</a> <a id="2769" href="synthetic-homotopy-theory.universal-property-suspensions.html#2769" class="Bound">up-Y</a> <a id="2774" class="Symbol">:</a> <a id="2776" href="synthetic-homotopy-theory.universal-property-suspensions.html#1942" class="Function">universal-property-pushout-suspension</a> <a id="2814" href="synthetic-homotopy-theory.universal-property-suspensions.html#2691" class="Bound">l3</a> <a id="2817" href="synthetic-homotopy-theory.universal-property-suspensions.html#2704" class="Bound">X</a> <a id="2819" href="synthetic-homotopy-theory.universal-property-suspensions.html#2716" class="Bound">Y</a> <a id="2821" href="synthetic-homotopy-theory.universal-property-suspensions.html#2733" class="Bound">s</a><a id="2822" class="Symbol">)</a> <a id="2824" class="Symbol">→</a>
  <a id="2828" class="Symbol">(</a> <a id="2830" href="synthetic-homotopy-theory.universal-property-suspensions.html#2830" class="Bound">Z</a> <a id="2832" class="Symbol">:</a> <a id="2834" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2837" href="synthetic-homotopy-theory.universal-property-suspensions.html#2691" class="Bound">l3</a><a id="2839" class="Symbol">)</a> <a id="2841" class="Symbol">→</a> <a id="2843" href="foundation-core.equivalences.html#1647" class="Function">is-equiv</a> <a id="2852" class="Symbol">(</a><a id="2853" href="synthetic-homotopy-theory.universal-property-suspensions.html#1460" class="Function">ev-suspension</a> <a id="2867" href="synthetic-homotopy-theory.universal-property-suspensions.html#2733" class="Bound">s</a> <a id="2869" href="synthetic-homotopy-theory.universal-property-suspensions.html#2830" class="Bound">Z</a><a id="2870" class="Symbol">)</a>
<a id="2872" href="synthetic-homotopy-theory.universal-property-suspensions.html#2656" class="Function">is-equiv-ev-suspension</a> <a id="2895" class="Symbol">{</a><a id="2896" class="Argument">X</a> <a id="2898" class="Symbol">=</a> <a id="2900" href="synthetic-homotopy-theory.universal-property-suspensions.html#2900" class="Bound">X</a><a id="2901" class="Symbol">}</a> <a id="2903" href="synthetic-homotopy-theory.universal-property-suspensions.html#2903" class="Bound">s</a> <a id="2905" href="synthetic-homotopy-theory.universal-property-suspensions.html#2905" class="Bound">up-Y</a> <a id="2910" href="synthetic-homotopy-theory.universal-property-suspensions.html#2910" class="Bound">Z</a> <a id="2912" class="Symbol">=</a>
  <a id="2916" href="foundation-core.equivalences.html#9806" class="Function">is-equiv-left-map-triangle</a>
    <a id="2947" class="Symbol">(</a> <a id="2949" href="synthetic-homotopy-theory.universal-property-suspensions.html#1460" class="Function">ev-suspension</a> <a id="2963" href="synthetic-homotopy-theory.universal-property-suspensions.html#2903" class="Bound">s</a> <a id="2965" href="synthetic-homotopy-theory.universal-property-suspensions.html#2910" class="Bound">Z</a><a id="2966" class="Symbol">)</a>
    <a id="2972" class="Symbol">(</a> <a id="2974" href="synthetic-homotopy-theory.suspension-structures.html#3155" class="Function">suspension-structure-suspension-cocone</a><a id="3012" class="Symbol">)</a>
    <a id="3018" class="Symbol">(</a> <a id="3020" href="synthetic-homotopy-theory.cocones-under-spans.html#5140" class="Function">cocone-map</a>
      <a id="3037" class="Symbol">(</a> <a id="3039" href="foundation.unit-type.html#1085" class="Function">terminal-map</a> <a id="3052" href="synthetic-homotopy-theory.universal-property-suspensions.html#2900" class="Bound">X</a><a id="3053" class="Symbol">)</a>
      <a id="3061" class="Symbol">(</a> <a id="3063" href="foundation.unit-type.html#1085" class="Function">terminal-map</a> <a id="3076" href="synthetic-homotopy-theory.universal-property-suspensions.html#2900" class="Bound">X</a><a id="3077" class="Symbol">)</a>
      <a id="3085" class="Symbol">(</a> <a id="3087" href="synthetic-homotopy-theory.suspension-structures.html#2829" class="Function">suspension-cocone-suspension-structure</a> <a id="3126" href="synthetic-homotopy-theory.universal-property-suspensions.html#2903" class="Bound">s</a><a id="3127" class="Symbol">))</a>
    <a id="3134" class="Symbol">(</a> <a id="3136" href="foundation-core.homotopies.html#3079" class="Function">inv-htpy</a> <a id="3145" class="Symbol">(</a><a id="3146" href="synthetic-homotopy-theory.universal-property-suspensions.html#2292" class="Function">triangle-ev-suspension</a> <a id="3169" href="synthetic-homotopy-theory.universal-property-suspensions.html#2903" class="Bound">s</a> <a id="3171" href="synthetic-homotopy-theory.universal-property-suspensions.html#2910" class="Bound">Z</a><a id="3172" class="Symbol">))</a>
    <a id="3179" class="Symbol">(</a> <a id="3181" href="synthetic-homotopy-theory.universal-property-suspensions.html#2905" class="Bound">up-Y</a> <a id="3186" href="synthetic-homotopy-theory.universal-property-suspensions.html#2910" class="Bound">Z</a><a id="3187" class="Symbol">)</a>
    <a id="3193" class="Symbol">(</a> <a id="3195" href="synthetic-homotopy-theory.suspension-structures.html#3749" class="Function">is-equiv-suspension-structure-suspension-cocone</a><a id="3242" class="Symbol">)</a>
</pre>