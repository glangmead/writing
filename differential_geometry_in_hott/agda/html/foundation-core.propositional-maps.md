# Propositional maps

<pre class="Agda"><a id="31" class="Keyword">module</a> <a id="38" href="foundation-core.propositional-maps.html" class="Module">foundation-core.propositional-maps</a> <a id="73" class="Keyword">where</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="129" class="Keyword">open</a> <a id="134" class="Keyword">import</a> <a id="141" href="foundation.action-on-identifications-functions.html" class="Module">foundation.action-on-identifications-functions</a>
<a id="188" class="Keyword">open</a> <a id="193" class="Keyword">import</a> <a id="200" href="foundation.dependent-pair-types.html" class="Module">foundation.dependent-pair-types</a>
<a id="232" class="Keyword">open</a> <a id="237" class="Keyword">import</a> <a id="244" href="foundation.fundamental-theorem-of-identity-types.html" class="Module">foundation.fundamental-theorem-of-identity-types</a>
<a id="293" class="Keyword">open</a> <a id="298" class="Keyword">import</a> <a id="305" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>

<a id="333" class="Keyword">open</a> <a id="338" class="Keyword">import</a> <a id="345" href="foundation-core.contractible-types.html" class="Module">foundation-core.contractible-types</a>
<a id="380" class="Keyword">open</a> <a id="385" class="Keyword">import</a> <a id="392" href="foundation-core.embeddings.html" class="Module">foundation-core.embeddings</a>
<a id="419" class="Keyword">open</a> <a id="424" class="Keyword">import</a> <a id="431" href="foundation-core.fibers-of-maps.html" class="Module">foundation-core.fibers-of-maps</a>
<a id="462" class="Keyword">open</a> <a id="467" class="Keyword">import</a> <a id="474" href="foundation-core.identity-types.html" class="Module">foundation-core.identity-types</a>
<a id="505" class="Keyword">open</a> <a id="510" class="Keyword">import</a> <a id="517" href="foundation-core.propositions.html" class="Module">foundation-core.propositions</a>
</pre>
</details>

## Idea

A map is said to be **propositional** if its
[fibers](foundation-core.fibers-of-maps.md) are
[propositions](foundation-core.propositions.md). This condition is the same as
the condition of being a
[`-1`-truncated map](foundation-core.truncated-maps.md), and it is
[equivalent](foundation-core.equivalences.md) to being an
[embedding](foundation-core.embeddings.md).

**Note:** Of the three equivalent conditions mentioned above, propositional
maps, `-1`-truncated maps, and embeddings, the central notion of in the
agda-unimath library is that of embedding. This means that most infrastructure
is available for embeddings, and that it is easy to convert from any of the
other two notions to the notion of embedding.

## Definitions

### The predicate of being a propositional map

<pre class="Agda"><a id="1361" class="Keyword">module</a> <a id="1368" href="foundation-core.propositional-maps.html#1368" class="Module">_</a>
  <a id="1372" class="Symbol">{</a><a id="1373" href="foundation-core.propositional-maps.html#1373" class="Bound">l1</a> <a id="1376" href="foundation-core.propositional-maps.html#1376" class="Bound">l2</a> <a id="1379" class="Symbol">:</a> <a id="1381" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="1386" class="Symbol">}</a> <a id="1388" class="Symbol">{</a><a id="1389" href="foundation-core.propositional-maps.html#1389" class="Bound">A</a> <a id="1391" class="Symbol">:</a> <a id="1393" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1396" href="foundation-core.propositional-maps.html#1373" class="Bound">l1</a><a id="1398" class="Symbol">}</a> <a id="1400" class="Symbol">{</a><a id="1401" href="foundation-core.propositional-maps.html#1401" class="Bound">B</a> <a id="1403" class="Symbol">:</a> <a id="1405" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1408" href="foundation-core.propositional-maps.html#1376" class="Bound">l2</a><a id="1410" class="Symbol">}</a>
  <a id="1414" class="Keyword">where</a>

  <a id="1423" href="foundation-core.propositional-maps.html#1423" class="Function">is-prop-map</a> <a id="1435" class="Symbol">:</a> <a id="1437" class="Symbol">(</a><a id="1438" href="foundation-core.propositional-maps.html#1389" class="Bound">A</a> <a id="1440" class="Symbol">→</a> <a id="1442" href="foundation-core.propositional-maps.html#1401" class="Bound">B</a><a id="1443" class="Symbol">)</a> <a id="1445" class="Symbol">→</a> <a id="1447" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1450" class="Symbol">(</a><a id="1451" href="foundation-core.propositional-maps.html#1373" class="Bound">l1</a> <a id="1454" href="Agda.Primitive.html#961" class="Primitive Operator">⊔</a> <a id="1456" href="foundation-core.propositional-maps.html#1376" class="Bound">l2</a><a id="1458" class="Symbol">)</a>
  <a id="1462" href="foundation-core.propositional-maps.html#1423" class="Function">is-prop-map</a> <a id="1474" href="foundation-core.propositional-maps.html#1474" class="Bound">f</a> <a id="1476" class="Symbol">=</a> <a id="1478" class="Symbol">(</a><a id="1479" href="foundation-core.propositional-maps.html#1479" class="Bound">b</a> <a id="1481" class="Symbol">:</a> <a id="1483" href="foundation-core.propositional-maps.html#1401" class="Bound">B</a><a id="1484" class="Symbol">)</a> <a id="1486" class="Symbol">→</a> <a id="1488" href="foundation-core.propositions.html#867" class="Function">is-prop</a> <a id="1496" class="Symbol">(</a><a id="1497" href="foundation-core.fibers-of-maps.html#938" class="Function">fiber</a> <a id="1503" href="foundation-core.propositional-maps.html#1474" class="Bound">f</a> <a id="1505" href="foundation-core.propositional-maps.html#1479" class="Bound">b</a><a id="1506" class="Symbol">)</a>
</pre>
### The type of propositional maps

<pre class="Agda"><a id="1557" class="Keyword">module</a> <a id="1564" href="foundation-core.propositional-maps.html#1564" class="Module">_</a>
  <a id="1568" class="Symbol">{</a><a id="1569" href="foundation-core.propositional-maps.html#1569" class="Bound">l1</a> <a id="1572" href="foundation-core.propositional-maps.html#1572" class="Bound">l2</a> <a id="1575" class="Symbol">:</a> <a id="1577" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="1582" class="Symbol">}</a>
  <a id="1586" class="Keyword">where</a>

  <a id="1595" href="foundation-core.propositional-maps.html#1595" class="Function">prop-map</a> <a id="1604" class="Symbol">:</a> <a id="1606" class="Symbol">(</a><a id="1607" href="foundation-core.propositional-maps.html#1607" class="Bound">A</a> <a id="1609" class="Symbol">:</a> <a id="1611" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1614" href="foundation-core.propositional-maps.html#1569" class="Bound">l1</a><a id="1616" class="Symbol">)</a> <a id="1618" class="Symbol">(</a><a id="1619" href="foundation-core.propositional-maps.html#1619" class="Bound">B</a> <a id="1621" class="Symbol">:</a> <a id="1623" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1626" href="foundation-core.propositional-maps.html#1572" class="Bound">l2</a><a id="1628" class="Symbol">)</a> <a id="1630" class="Symbol">→</a> <a id="1632" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1635" class="Symbol">(</a><a id="1636" href="foundation-core.propositional-maps.html#1569" class="Bound">l1</a> <a id="1639" href="Agda.Primitive.html#961" class="Primitive Operator">⊔</a> <a id="1641" href="foundation-core.propositional-maps.html#1572" class="Bound">l2</a><a id="1643" class="Symbol">)</a>
  <a id="1647" href="foundation-core.propositional-maps.html#1595" class="Function">prop-map</a> <a id="1656" href="foundation-core.propositional-maps.html#1656" class="Bound">A</a> <a id="1658" href="foundation-core.propositional-maps.html#1658" class="Bound">B</a> <a id="1660" class="Symbol">=</a> <a id="1662" href="foundation.dependent-pair-types.html#505" class="Record">Σ</a> <a id="1664" class="Symbol">(</a><a id="1665" href="foundation-core.propositional-maps.html#1656" class="Bound">A</a> <a id="1667" class="Symbol">→</a> <a id="1669" href="foundation-core.propositional-maps.html#1658" class="Bound">B</a><a id="1670" class="Symbol">)</a> <a id="1672" href="foundation-core.propositional-maps.html#1423" class="Function">is-prop-map</a>

  <a id="1687" class="Keyword">module</a> <a id="1694" href="foundation-core.propositional-maps.html#1694" class="Module">_</a>
    <a id="1700" class="Symbol">{</a><a id="1701" href="foundation-core.propositional-maps.html#1701" class="Bound">A</a> <a id="1703" class="Symbol">:</a> <a id="1705" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1708" href="foundation-core.propositional-maps.html#1569" class="Bound">l1</a><a id="1710" class="Symbol">}</a> <a id="1712" class="Symbol">{</a><a id="1713" href="foundation-core.propositional-maps.html#1713" class="Bound">B</a> <a id="1715" class="Symbol">:</a> <a id="1717" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1720" href="foundation-core.propositional-maps.html#1572" class="Bound">l2</a><a id="1722" class="Symbol">}</a> <a id="1724" class="Symbol">(</a><a id="1725" href="foundation-core.propositional-maps.html#1725" class="Bound">f</a> <a id="1727" class="Symbol">:</a> <a id="1729" href="foundation-core.propositional-maps.html#1595" class="Function">prop-map</a> <a id="1738" href="foundation-core.propositional-maps.html#1701" class="Bound">A</a> <a id="1740" href="foundation-core.propositional-maps.html#1713" class="Bound">B</a><a id="1741" class="Symbol">)</a>
    <a id="1747" class="Keyword">where</a>

    <a id="1758" href="foundation-core.propositional-maps.html#1758" class="Function">map-prop-map</a> <a id="1771" class="Symbol">:</a> <a id="1773" href="foundation-core.propositional-maps.html#1701" class="Bound">A</a> <a id="1775" class="Symbol">→</a> <a id="1777" href="foundation-core.propositional-maps.html#1713" class="Bound">B</a>
    <a id="1783" href="foundation-core.propositional-maps.html#1758" class="Function">map-prop-map</a> <a id="1796" class="Symbol">=</a> <a id="1798" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="1802" href="foundation-core.propositional-maps.html#1725" class="Bound">f</a>

    <a id="1809" href="foundation-core.propositional-maps.html#1809" class="Function">is-prop-map-prop-map</a> <a id="1830" class="Symbol">:</a> <a id="1832" href="foundation-core.propositional-maps.html#1423" class="Function">is-prop-map</a> <a id="1844" href="foundation-core.propositional-maps.html#1758" class="Function">map-prop-map</a>
    <a id="1861" href="foundation-core.propositional-maps.html#1809" class="Function">is-prop-map-prop-map</a> <a id="1882" class="Symbol">=</a> <a id="1884" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="1888" href="foundation-core.propositional-maps.html#1725" class="Bound">f</a>
</pre>
## Properties

### The fibers of a map are propositions if and only if it is an embedding

<pre class="Agda"><a id="1994" class="Keyword">module</a> <a id="2001" href="foundation-core.propositional-maps.html#2001" class="Module">_</a>
  <a id="2005" class="Symbol">{</a><a id="2006" href="foundation-core.propositional-maps.html#2006" class="Bound">l1</a> <a id="2009" href="foundation-core.propositional-maps.html#2009" class="Bound">l2</a> <a id="2012" class="Symbol">:</a> <a id="2014" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="2019" class="Symbol">}</a> <a id="2021" class="Symbol">{</a><a id="2022" href="foundation-core.propositional-maps.html#2022" class="Bound">A</a> <a id="2024" class="Symbol">:</a> <a id="2026" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2029" href="foundation-core.propositional-maps.html#2006" class="Bound">l1</a><a id="2031" class="Symbol">}</a> <a id="2033" class="Symbol">{</a><a id="2034" href="foundation-core.propositional-maps.html#2034" class="Bound">B</a> <a id="2036" class="Symbol">:</a> <a id="2038" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2041" href="foundation-core.propositional-maps.html#2009" class="Bound">l2</a><a id="2043" class="Symbol">}</a> <a id="2045" class="Symbol">{</a><a id="2046" href="foundation-core.propositional-maps.html#2046" class="Bound">f</a> <a id="2048" class="Symbol">:</a> <a id="2050" href="foundation-core.propositional-maps.html#2022" class="Bound">A</a> <a id="2052" class="Symbol">→</a> <a id="2054" href="foundation-core.propositional-maps.html#2034" class="Bound">B</a><a id="2055" class="Symbol">}</a>
  <a id="2059" class="Keyword">where</a>

  <a id="2068" class="Keyword">abstract</a>
    <a id="2081" href="foundation-core.propositional-maps.html#2081" class="Function">is-emb-is-prop-map</a> <a id="2100" class="Symbol">:</a> <a id="2102" href="foundation-core.propositional-maps.html#1423" class="Function">is-prop-map</a> <a id="2114" href="foundation-core.propositional-maps.html#2046" class="Bound">f</a> <a id="2116" class="Symbol">→</a> <a id="2118" href="foundation-core.embeddings.html#1086" class="Function">is-emb</a> <a id="2125" href="foundation-core.propositional-maps.html#2046" class="Bound">f</a>
    <a id="2131" href="foundation-core.propositional-maps.html#2081" class="Function">is-emb-is-prop-map</a> <a id="2150" href="foundation-core.propositional-maps.html#2150" class="Bound">is-prop-map-f</a> <a id="2164" href="foundation-core.propositional-maps.html#2164" class="Bound">x</a> <a id="2166" class="Symbol">=</a>
      <a id="2174" href="foundation.fundamental-theorem-of-identity-types.html#1950" class="Function">fundamental-theorem-id</a>
        <a id="2205" class="Symbol">(</a> <a id="2207" href="foundation-core.contractible-types.html#4125" class="Function">is-contr-equiv&#39;</a>
          <a id="2233" class="Symbol">(</a> <a id="2235" href="foundation-core.fibers-of-maps.html#938" class="Function">fiber</a> <a id="2241" href="foundation-core.propositional-maps.html#2046" class="Bound">f</a> <a id="2243" class="Symbol">(</a><a id="2244" href="foundation-core.propositional-maps.html#2046" class="Bound">f</a> <a id="2246" href="foundation-core.propositional-maps.html#2164" class="Bound">x</a><a id="2247" class="Symbol">))</a>
          <a id="2260" class="Symbol">(</a> <a id="2262" href="foundation-core.fibers-of-maps.html#6275" class="Function">equiv-fiber</a> <a id="2274" href="foundation-core.propositional-maps.html#2046" class="Bound">f</a> <a id="2276" class="Symbol">(</a><a id="2277" href="foundation-core.propositional-maps.html#2046" class="Bound">f</a> <a id="2279" href="foundation-core.propositional-maps.html#2164" class="Bound">x</a><a id="2280" class="Symbol">))</a>
          <a id="2293" class="Symbol">(</a> <a id="2295" href="foundation-core.propositions.html#2591" class="Function">is-proof-irrelevant-is-prop</a> <a id="2323" class="Symbol">(</a><a id="2324" href="foundation-core.propositional-maps.html#2150" class="Bound">is-prop-map-f</a> <a id="2338" class="Symbol">(</a><a id="2339" href="foundation-core.propositional-maps.html#2046" class="Bound">f</a> <a id="2341" href="foundation-core.propositional-maps.html#2164" class="Bound">x</a><a id="2342" class="Symbol">))</a> <a id="2345" class="Symbol">(</a><a id="2346" href="foundation-core.propositional-maps.html#2164" class="Bound">x</a> <a id="2348" href="foundation.dependent-pair-types.html#689" class="InductiveConstructor Operator">,</a> <a id="2350" href="foundation-core.identity-types.html#1922" class="InductiveConstructor">refl</a><a id="2354" class="Symbol">)))</a>
        <a id="2366" class="Symbol">(</a> <a id="2368" class="Symbol">λ</a> <a id="2370" href="foundation-core.propositional-maps.html#2370" class="Bound">_</a> <a id="2372" class="Symbol">→</a> <a id="2374" href="foundation.action-on-identifications-functions.html#730" class="Function">ap</a> <a id="2377" href="foundation-core.propositional-maps.html#2046" class="Bound">f</a><a id="2378" class="Symbol">)</a>

  <a id="2383" class="Keyword">abstract</a>
    <a id="2396" href="foundation-core.propositional-maps.html#2396" class="Function">is-prop-map-is-emb</a> <a id="2415" class="Symbol">:</a> <a id="2417" href="foundation-core.embeddings.html#1086" class="Function">is-emb</a> <a id="2424" href="foundation-core.propositional-maps.html#2046" class="Bound">f</a> <a id="2426" class="Symbol">→</a> <a id="2428" href="foundation-core.propositional-maps.html#1423" class="Function">is-prop-map</a> <a id="2440" href="foundation-core.propositional-maps.html#2046" class="Bound">f</a>
    <a id="2446" href="foundation-core.propositional-maps.html#2396" class="Function">is-prop-map-is-emb</a> <a id="2465" href="foundation-core.propositional-maps.html#2465" class="Bound">is-emb-f</a> <a id="2474" href="foundation-core.propositional-maps.html#2474" class="Bound">y</a> <a id="2476" class="Symbol">=</a>
      <a id="2484" href="foundation-core.propositions.html#2764" class="Function">is-prop-is-proof-irrelevant</a> <a id="2512" href="foundation-core.propositional-maps.html#2532" class="Function">α</a>
      <a id="2520" class="Keyword">where</a>
      <a id="2532" href="foundation-core.propositional-maps.html#2532" class="Function">α</a> <a id="2534" class="Symbol">:</a> <a id="2536" class="Symbol">(</a><a id="2537" href="foundation-core.propositional-maps.html#2537" class="Bound">t</a> <a id="2539" class="Symbol">:</a> <a id="2541" href="foundation-core.fibers-of-maps.html#938" class="Function">fiber</a> <a id="2547" href="foundation-core.propositional-maps.html#2046" class="Bound">f</a> <a id="2549" href="foundation-core.propositional-maps.html#2474" class="Bound">y</a><a id="2550" class="Symbol">)</a> <a id="2552" class="Symbol">→</a> <a id="2554" href="foundation-core.contractible-types.html#855" class="Function">is-contr</a> <a id="2563" class="Symbol">(</a><a id="2564" href="foundation-core.fibers-of-maps.html#938" class="Function">fiber</a> <a id="2570" href="foundation-core.propositional-maps.html#2046" class="Bound">f</a> <a id="2572" href="foundation-core.propositional-maps.html#2474" class="Bound">y</a><a id="2573" class="Symbol">)</a>
      <a id="2581" href="foundation-core.propositional-maps.html#2532" class="Function">α</a> <a id="2583" class="Symbol">(</a><a id="2584" href="foundation-core.propositional-maps.html#2584" class="Bound">x</a> <a id="2586" href="foundation.dependent-pair-types.html#689" class="InductiveConstructor Operator">,</a> <a id="2588" href="foundation-core.identity-types.html#1922" class="InductiveConstructor">refl</a><a id="2592" class="Symbol">)</a> <a id="2594" class="Symbol">=</a>
        <a id="2604" href="foundation-core.contractible-types.html#3616" class="Function">is-contr-equiv</a>
          <a id="2629" class="Symbol">(</a> <a id="2631" href="foundation-core.fibers-of-maps.html#992" class="Function">fiber&#39;</a> <a id="2638" href="foundation-core.propositional-maps.html#2046" class="Bound">f</a> <a id="2640" class="Symbol">(</a><a id="2641" href="foundation-core.propositional-maps.html#2046" class="Bound">f</a> <a id="2643" href="foundation-core.propositional-maps.html#2584" class="Bound">x</a><a id="2644" class="Symbol">))</a>
          <a id="2657" class="Symbol">(</a> <a id="2659" href="foundation-core.fibers-of-maps.html#6275" class="Function">equiv-fiber</a> <a id="2671" href="foundation-core.propositional-maps.html#2046" class="Bound">f</a> <a id="2673" class="Symbol">(</a><a id="2674" href="foundation-core.propositional-maps.html#2046" class="Bound">f</a> <a id="2676" href="foundation-core.propositional-maps.html#2584" class="Bound">x</a><a id="2677" class="Symbol">))</a>
          <a id="2690" class="Symbol">(</a> <a id="2692" href="foundation.fundamental-theorem-of-identity-types.html#2217" class="Function">fundamental-theorem-id&#39;</a> <a id="2716" class="Symbol">(λ</a> <a id="2719" href="foundation-core.propositional-maps.html#2719" class="Bound">_</a> <a id="2721" class="Symbol">→</a> <a id="2723" href="foundation.action-on-identifications-functions.html#730" class="Function">ap</a> <a id="2726" href="foundation-core.propositional-maps.html#2046" class="Bound">f</a><a id="2727" class="Symbol">)</a> <a id="2729" class="Symbol">(</a><a id="2730" href="foundation-core.propositional-maps.html#2465" class="Bound">is-emb-f</a> <a id="2739" href="foundation-core.propositional-maps.html#2584" class="Bound">x</a><a id="2740" class="Symbol">))</a>

<a id="2744" class="Keyword">module</a> <a id="2751" href="foundation-core.propositional-maps.html#2751" class="Module">_</a>
  <a id="2755" class="Symbol">{</a><a id="2756" href="foundation-core.propositional-maps.html#2756" class="Bound">l1</a> <a id="2759" href="foundation-core.propositional-maps.html#2759" class="Bound">l2</a> <a id="2762" class="Symbol">:</a> <a id="2764" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="2769" class="Symbol">}</a> <a id="2771" class="Symbol">{</a><a id="2772" href="foundation-core.propositional-maps.html#2772" class="Bound">A</a> <a id="2774" class="Symbol">:</a> <a id="2776" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2779" href="foundation-core.propositional-maps.html#2756" class="Bound">l1</a><a id="2781" class="Symbol">}</a> <a id="2783" class="Symbol">{</a><a id="2784" href="foundation-core.propositional-maps.html#2784" class="Bound">B</a> <a id="2786" class="Symbol">:</a> <a id="2788" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2791" href="foundation-core.propositional-maps.html#2759" class="Bound">l2</a><a id="2793" class="Symbol">}</a>
  <a id="2797" class="Keyword">where</a>

  <a id="2806" href="foundation-core.propositional-maps.html#2806" class="Function">emb-prop-map</a> <a id="2819" class="Symbol">:</a> <a id="2821" href="foundation-core.propositional-maps.html#1595" class="Function">prop-map</a> <a id="2830" href="foundation-core.propositional-maps.html#2772" class="Bound">A</a> <a id="2832" href="foundation-core.propositional-maps.html#2784" class="Bound">B</a> <a id="2834" class="Symbol">→</a> <a id="2836" href="foundation-core.propositional-maps.html#2772" class="Bound">A</a> <a id="2838" href="foundation-core.embeddings.html#1495" class="Function Operator">↪</a> <a id="2840" href="foundation-core.propositional-maps.html#2784" class="Bound">B</a>
  <a id="2844" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="2848" class="Symbol">(</a><a id="2849" href="foundation-core.propositional-maps.html#2806" class="Function">emb-prop-map</a> <a id="2862" class="Symbol">(</a><a id="2863" href="foundation-core.propositional-maps.html#2863" class="Bound">f</a> <a id="2865" href="foundation.dependent-pair-types.html#689" class="InductiveConstructor Operator">,</a> <a id="2867" href="foundation-core.propositional-maps.html#2867" class="Bound">p</a><a id="2868" class="Symbol">))</a> <a id="2871" class="Symbol">=</a> <a id="2873" href="foundation-core.propositional-maps.html#2863" class="Bound">f</a>
  <a id="2877" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="2881" class="Symbol">(</a><a id="2882" href="foundation-core.propositional-maps.html#2806" class="Function">emb-prop-map</a> <a id="2895" class="Symbol">(</a><a id="2896" href="foundation-core.propositional-maps.html#2896" class="Bound">f</a> <a id="2898" href="foundation.dependent-pair-types.html#689" class="InductiveConstructor Operator">,</a> <a id="2900" href="foundation-core.propositional-maps.html#2900" class="Bound">p</a><a id="2901" class="Symbol">))</a> <a id="2904" class="Symbol">=</a> <a id="2906" href="foundation-core.propositional-maps.html#2081" class="Function">is-emb-is-prop-map</a> <a id="2925" href="foundation-core.propositional-maps.html#2900" class="Bound">p</a>

  <a id="2930" href="foundation-core.propositional-maps.html#2930" class="Function">prop-map-emb</a> <a id="2943" class="Symbol">:</a> <a id="2945" href="foundation-core.propositional-maps.html#2772" class="Bound">A</a> <a id="2947" href="foundation-core.embeddings.html#1495" class="Function Operator">↪</a> <a id="2949" href="foundation-core.propositional-maps.html#2784" class="Bound">B</a> <a id="2951" class="Symbol">→</a> <a id="2953" href="foundation-core.propositional-maps.html#1595" class="Function">prop-map</a> <a id="2962" href="foundation-core.propositional-maps.html#2772" class="Bound">A</a> <a id="2964" href="foundation-core.propositional-maps.html#2784" class="Bound">B</a>
  <a id="2968" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="2972" class="Symbol">(</a><a id="2973" href="foundation-core.propositional-maps.html#2930" class="Function">prop-map-emb</a> <a id="2986" class="Symbol">(</a><a id="2987" href="foundation-core.propositional-maps.html#2987" class="Bound">f</a> <a id="2989" href="foundation.dependent-pair-types.html#689" class="InductiveConstructor Operator">,</a> <a id="2991" href="foundation-core.propositional-maps.html#2991" class="Bound">p</a><a id="2992" class="Symbol">))</a> <a id="2995" class="Symbol">=</a> <a id="2997" href="foundation-core.propositional-maps.html#2987" class="Bound">f</a>
  <a id="3001" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="3005" class="Symbol">(</a><a id="3006" href="foundation-core.propositional-maps.html#2930" class="Function">prop-map-emb</a> <a id="3019" class="Symbol">(</a><a id="3020" href="foundation-core.propositional-maps.html#3020" class="Bound">f</a> <a id="3022" href="foundation.dependent-pair-types.html#689" class="InductiveConstructor Operator">,</a> <a id="3024" href="foundation-core.propositional-maps.html#3024" class="Bound">p</a><a id="3025" class="Symbol">))</a> <a id="3028" class="Symbol">=</a> <a id="3030" href="foundation-core.propositional-maps.html#2396" class="Function">is-prop-map-is-emb</a> <a id="3049" href="foundation-core.propositional-maps.html#3024" class="Bound">p</a>

  <a id="3054" href="foundation-core.propositional-maps.html#3054" class="Function">is-prop-map-emb</a> <a id="3070" class="Symbol">:</a> <a id="3072" class="Symbol">(</a><a id="3073" href="foundation-core.propositional-maps.html#3073" class="Bound">f</a> <a id="3075" class="Symbol">:</a> <a id="3077" href="foundation-core.propositional-maps.html#2772" class="Bound">A</a> <a id="3079" href="foundation-core.embeddings.html#1495" class="Function Operator">↪</a> <a id="3081" href="foundation-core.propositional-maps.html#2784" class="Bound">B</a><a id="3082" class="Symbol">)</a> <a id="3084" class="Symbol">→</a> <a id="3086" href="foundation-core.propositional-maps.html#1423" class="Function">is-prop-map</a> <a id="3098" class="Symbol">(</a><a id="3099" href="foundation-core.embeddings.html#1638" class="Function">map-emb</a> <a id="3107" href="foundation-core.propositional-maps.html#3073" class="Bound">f</a><a id="3108" class="Symbol">)</a>
  <a id="3112" href="foundation-core.propositional-maps.html#3054" class="Function">is-prop-map-emb</a> <a id="3128" href="foundation-core.propositional-maps.html#3128" class="Bound">f</a> <a id="3130" class="Symbol">=</a> <a id="3132" href="foundation-core.propositional-maps.html#2396" class="Function">is-prop-map-is-emb</a> <a id="3151" class="Symbol">(</a><a id="3152" href="foundation-core.embeddings.html#1681" class="Function">is-emb-map-emb</a> <a id="3167" href="foundation-core.propositional-maps.html#3128" class="Bound">f</a><a id="3168" class="Symbol">)</a>

  <a id="3173" href="foundation-core.propositional-maps.html#3173" class="Function">is-prop-map-emb&#39;</a> <a id="3190" class="Symbol">:</a> <a id="3192" class="Symbol">(</a><a id="3193" href="foundation-core.propositional-maps.html#3193" class="Bound">f</a> <a id="3195" class="Symbol">:</a> <a id="3197" href="foundation-core.propositional-maps.html#2772" class="Bound">A</a> <a id="3199" href="foundation-core.embeddings.html#1495" class="Function Operator">↪</a> <a id="3201" href="foundation-core.propositional-maps.html#2784" class="Bound">B</a><a id="3202" class="Symbol">)</a> <a id="3204" class="Symbol">→</a> <a id="3206" class="Symbol">(</a><a id="3207" href="foundation-core.propositional-maps.html#3207" class="Bound">b</a> <a id="3209" class="Symbol">:</a> <a id="3211" href="foundation-core.propositional-maps.html#2784" class="Bound">B</a><a id="3212" class="Symbol">)</a> <a id="3214" class="Symbol">→</a> <a id="3216" href="foundation-core.propositions.html#867" class="Function">is-prop</a> <a id="3224" class="Symbol">(</a><a id="3225" href="foundation-core.fibers-of-maps.html#992" class="Function">fiber&#39;</a> <a id="3232" class="Symbol">(</a><a id="3233" href="foundation-core.embeddings.html#1638" class="Function">map-emb</a> <a id="3241" href="foundation-core.propositional-maps.html#3193" class="Bound">f</a><a id="3242" class="Symbol">)</a> <a id="3244" href="foundation-core.propositional-maps.html#3207" class="Bound">b</a><a id="3245" class="Symbol">)</a>
  <a id="3249" href="foundation-core.propositional-maps.html#3173" class="Function">is-prop-map-emb&#39;</a> <a id="3266" href="foundation-core.propositional-maps.html#3266" class="Bound">f</a> <a id="3268" href="foundation-core.propositional-maps.html#3268" class="Bound">y</a> <a id="3270" class="Symbol">=</a>
    <a id="3276" href="foundation-core.propositions.html#4423" class="Function">is-prop-equiv&#39;</a> <a id="3291" class="Symbol">(</a><a id="3292" href="foundation-core.fibers-of-maps.html#6275" class="Function">equiv-fiber</a> <a id="3304" class="Symbol">(</a><a id="3305" href="foundation-core.embeddings.html#1638" class="Function">map-emb</a> <a id="3313" href="foundation-core.propositional-maps.html#3266" class="Bound">f</a><a id="3314" class="Symbol">)</a> <a id="3316" href="foundation-core.propositional-maps.html#3268" class="Bound">y</a><a id="3317" class="Symbol">)</a> <a id="3319" class="Symbol">(</a><a id="3320" href="foundation-core.propositional-maps.html#3054" class="Function">is-prop-map-emb</a> <a id="3336" href="foundation-core.propositional-maps.html#3266" class="Bound">f</a> <a id="3338" href="foundation-core.propositional-maps.html#3268" class="Bound">y</a><a id="3339" class="Symbol">)</a>

  <a id="3344" href="foundation-core.propositional-maps.html#3344" class="Function">fiber-emb-Prop</a> <a id="3359" class="Symbol">:</a> <a id="3361" href="foundation-core.propositional-maps.html#2772" class="Bound">A</a> <a id="3363" href="foundation-core.embeddings.html#1495" class="Function Operator">↪</a> <a id="3365" href="foundation-core.propositional-maps.html#2784" class="Bound">B</a> <a id="3367" class="Symbol">→</a> <a id="3369" href="foundation-core.propositional-maps.html#2784" class="Bound">B</a> <a id="3371" class="Symbol">→</a> <a id="3373" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="3378" class="Symbol">(</a><a id="3379" href="foundation-core.propositional-maps.html#2756" class="Bound">l1</a> <a id="3382" href="Agda.Primitive.html#961" class="Primitive Operator">⊔</a> <a id="3384" href="foundation-core.propositional-maps.html#2759" class="Bound">l2</a><a id="3386" class="Symbol">)</a>
  <a id="3390" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="3394" class="Symbol">(</a><a id="3395" href="foundation-core.propositional-maps.html#3344" class="Function">fiber-emb-Prop</a> <a id="3410" href="foundation-core.propositional-maps.html#3410" class="Bound">f</a> <a id="3412" href="foundation-core.propositional-maps.html#3412" class="Bound">y</a><a id="3413" class="Symbol">)</a> <a id="3415" class="Symbol">=</a> <a id="3417" href="foundation-core.fibers-of-maps.html#938" class="Function">fiber</a> <a id="3423" class="Symbol">(</a><a id="3424" href="foundation-core.embeddings.html#1638" class="Function">map-emb</a> <a id="3432" href="foundation-core.propositional-maps.html#3410" class="Bound">f</a><a id="3433" class="Symbol">)</a> <a id="3435" href="foundation-core.propositional-maps.html#3412" class="Bound">y</a>
  <a id="3439" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="3443" class="Symbol">(</a><a id="3444" href="foundation-core.propositional-maps.html#3344" class="Function">fiber-emb-Prop</a> <a id="3459" href="foundation-core.propositional-maps.html#3459" class="Bound">f</a> <a id="3461" href="foundation-core.propositional-maps.html#3461" class="Bound">y</a><a id="3462" class="Symbol">)</a> <a id="3464" class="Symbol">=</a> <a id="3466" href="foundation-core.propositional-maps.html#3054" class="Function">is-prop-map-emb</a> <a id="3482" href="foundation-core.propositional-maps.html#3459" class="Bound">f</a> <a id="3484" href="foundation-core.propositional-maps.html#3461" class="Bound">y</a>

  <a id="3489" href="foundation-core.propositional-maps.html#3489" class="Function">fiber-emb-Prop&#39;</a> <a id="3505" class="Symbol">:</a> <a id="3507" href="foundation-core.propositional-maps.html#2772" class="Bound">A</a> <a id="3509" href="foundation-core.embeddings.html#1495" class="Function Operator">↪</a> <a id="3511" href="foundation-core.propositional-maps.html#2784" class="Bound">B</a> <a id="3513" class="Symbol">→</a> <a id="3515" href="foundation-core.propositional-maps.html#2784" class="Bound">B</a> <a id="3517" class="Symbol">→</a> <a id="3519" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="3524" class="Symbol">(</a><a id="3525" href="foundation-core.propositional-maps.html#2756" class="Bound">l1</a> <a id="3528" href="Agda.Primitive.html#961" class="Primitive Operator">⊔</a> <a id="3530" href="foundation-core.propositional-maps.html#2759" class="Bound">l2</a><a id="3532" class="Symbol">)</a>
  <a id="3536" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="3540" class="Symbol">(</a><a id="3541" href="foundation-core.propositional-maps.html#3489" class="Function">fiber-emb-Prop&#39;</a> <a id="3557" href="foundation-core.propositional-maps.html#3557" class="Bound">f</a> <a id="3559" href="foundation-core.propositional-maps.html#3559" class="Bound">y</a><a id="3560" class="Symbol">)</a> <a id="3562" class="Symbol">=</a> <a id="3564" href="foundation-core.fibers-of-maps.html#992" class="Function">fiber&#39;</a> <a id="3571" class="Symbol">(</a><a id="3572" href="foundation-core.embeddings.html#1638" class="Function">map-emb</a> <a id="3580" href="foundation-core.propositional-maps.html#3557" class="Bound">f</a><a id="3581" class="Symbol">)</a> <a id="3583" href="foundation-core.propositional-maps.html#3559" class="Bound">y</a>
  <a id="3587" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="3591" class="Symbol">(</a><a id="3592" href="foundation-core.propositional-maps.html#3489" class="Function">fiber-emb-Prop&#39;</a> <a id="3608" href="foundation-core.propositional-maps.html#3608" class="Bound">f</a> <a id="3610" href="foundation-core.propositional-maps.html#3610" class="Bound">y</a><a id="3611" class="Symbol">)</a> <a id="3613" class="Symbol">=</a> <a id="3615" href="foundation-core.propositional-maps.html#3173" class="Function">is-prop-map-emb&#39;</a> <a id="3632" href="foundation-core.propositional-maps.html#3608" class="Bound">f</a> <a id="3634" href="foundation-core.propositional-maps.html#3610" class="Bound">y</a>
</pre>