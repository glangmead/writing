# Disjunction of propositions

<pre class="Agda"><a id="40" class="Keyword">module</a> <a id="47" href="foundation.disjunction.html" class="Module">foundation.disjunction</a> <a id="70" class="Keyword">where</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="126" class="Keyword">open</a> <a id="131" class="Keyword">import</a> <a id="138" href="foundation.conjunction.html" class="Module">foundation.conjunction</a>
<a id="161" class="Keyword">open</a> <a id="166" class="Keyword">import</a> <a id="173" href="foundation.decidable-types.html" class="Module">foundation.decidable-types</a>
<a id="200" class="Keyword">open</a> <a id="205" class="Keyword">import</a> <a id="212" href="foundation.dependent-pair-types.html" class="Module">foundation.dependent-pair-types</a>
<a id="244" class="Keyword">open</a> <a id="249" class="Keyword">import</a> <a id="256" href="foundation.propositional-truncations.html" class="Module">foundation.propositional-truncations</a>
<a id="293" class="Keyword">open</a> <a id="298" class="Keyword">import</a> <a id="305" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>

<a id="333" class="Keyword">open</a> <a id="338" class="Keyword">import</a> <a id="345" href="foundation-core.coproduct-types.html" class="Module">foundation-core.coproduct-types</a>
<a id="377" class="Keyword">open</a> <a id="382" class="Keyword">import</a> <a id="389" href="foundation-core.decidable-propositions.html" class="Module">foundation-core.decidable-propositions</a>
<a id="428" class="Keyword">open</a> <a id="433" class="Keyword">import</a> <a id="440" href="foundation-core.empty-types.html" class="Module">foundation-core.empty-types</a>
<a id="468" class="Keyword">open</a> <a id="473" class="Keyword">import</a> <a id="480" href="foundation-core.equivalences.html" class="Module">foundation-core.equivalences</a>
<a id="509" class="Keyword">open</a> <a id="514" class="Keyword">import</a> <a id="521" href="foundation-core.function-types.html" class="Module">foundation-core.function-types</a>
<a id="552" class="Keyword">open</a> <a id="557" class="Keyword">import</a> <a id="564" href="foundation-core.propositions.html" class="Module">foundation-core.propositions</a>
</pre>
</details>

## Idea

The disjunction of two propositions `P` and `Q` is the proposition that `P`
holds or `Q` holds.

## Definition

<pre class="Agda"><a id="disjunction-Prop"></a><a id="739" href="foundation.disjunction.html#739" class="Function">disjunction-Prop</a> <a id="756" class="Symbol">:</a> <a id="758" class="Symbol">{</a><a id="759" href="foundation.disjunction.html#759" class="Bound">l1</a> <a id="762" href="foundation.disjunction.html#762" class="Bound">l2</a> <a id="765" class="Symbol">:</a> <a id="767" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="772" class="Symbol">}</a> <a id="774" class="Symbol">→</a> <a id="776" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="781" href="foundation.disjunction.html#759" class="Bound">l1</a> <a id="784" class="Symbol">→</a> <a id="786" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="791" href="foundation.disjunction.html#762" class="Bound">l2</a> <a id="794" class="Symbol">→</a> <a id="796" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="801" class="Symbol">(</a><a id="802" href="foundation.disjunction.html#759" class="Bound">l1</a> <a id="805" href="Agda.Primitive.html#961" class="Primitive Operator">⊔</a> <a id="807" href="foundation.disjunction.html#762" class="Bound">l2</a><a id="809" class="Symbol">)</a>
<a id="811" href="foundation.disjunction.html#739" class="Function">disjunction-Prop</a> <a id="828" href="foundation.disjunction.html#828" class="Bound">P</a> <a id="830" href="foundation.disjunction.html#830" class="Bound">Q</a> <a id="832" class="Symbol">=</a> <a id="834" href="foundation.propositional-truncations.html#1885" class="Function">trunc-Prop</a> <a id="845" class="Symbol">(</a><a id="846" href="foundation-core.propositions.html#1045" class="Function">type-Prop</a> <a id="856" href="foundation.disjunction.html#828" class="Bound">P</a> <a id="858" href="foundation-core.coproduct-types.html#348" class="Datatype Operator">+</a> <a id="860" href="foundation-core.propositions.html#1045" class="Function">type-Prop</a> <a id="870" href="foundation.disjunction.html#830" class="Bound">Q</a><a id="871" class="Symbol">)</a>

<a id="type-disjunction-Prop"></a><a id="874" href="foundation.disjunction.html#874" class="Function">type-disjunction-Prop</a> <a id="896" class="Symbol">:</a> <a id="898" class="Symbol">{</a><a id="899" href="foundation.disjunction.html#899" class="Bound">l1</a> <a id="902" href="foundation.disjunction.html#902" class="Bound">l2</a> <a id="905" class="Symbol">:</a> <a id="907" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="912" class="Symbol">}</a> <a id="914" class="Symbol">→</a> <a id="916" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="921" href="foundation.disjunction.html#899" class="Bound">l1</a> <a id="924" class="Symbol">→</a> <a id="926" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="931" href="foundation.disjunction.html#902" class="Bound">l2</a> <a id="934" class="Symbol">→</a> <a id="936" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="939" class="Symbol">(</a><a id="940" href="foundation.disjunction.html#899" class="Bound">l1</a> <a id="943" href="Agda.Primitive.html#961" class="Primitive Operator">⊔</a> <a id="945" href="foundation.disjunction.html#902" class="Bound">l2</a><a id="947" class="Symbol">)</a>
<a id="949" href="foundation.disjunction.html#874" class="Function">type-disjunction-Prop</a> <a id="971" href="foundation.disjunction.html#971" class="Bound">P</a> <a id="973" href="foundation.disjunction.html#973" class="Bound">Q</a> <a id="975" class="Symbol">=</a> <a id="977" href="foundation-core.propositions.html#1045" class="Function">type-Prop</a> <a id="987" class="Symbol">(</a><a id="988" href="foundation.disjunction.html#739" class="Function">disjunction-Prop</a> <a id="1005" href="foundation.disjunction.html#971" class="Bound">P</a> <a id="1007" href="foundation.disjunction.html#973" class="Bound">Q</a><a id="1008" class="Symbol">)</a>

<a id="1011" class="Keyword">abstract</a>
  <a id="is-prop-type-disjunction-Prop"></a><a id="1022" href="foundation.disjunction.html#1022" class="Function">is-prop-type-disjunction-Prop</a> <a id="1052" class="Symbol">:</a>
    <a id="1058" class="Symbol">{</a><a id="1059" href="foundation.disjunction.html#1059" class="Bound">l1</a> <a id="1062" href="foundation.disjunction.html#1062" class="Bound">l2</a> <a id="1065" class="Symbol">:</a> <a id="1067" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="1072" class="Symbol">}</a> <a id="1074" class="Symbol">(</a><a id="1075" href="foundation.disjunction.html#1075" class="Bound">P</a> <a id="1077" class="Symbol">:</a> <a id="1079" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="1084" href="foundation.disjunction.html#1059" class="Bound">l1</a><a id="1086" class="Symbol">)</a> <a id="1088" class="Symbol">(</a><a id="1089" href="foundation.disjunction.html#1089" class="Bound">Q</a> <a id="1091" class="Symbol">:</a> <a id="1093" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="1098" href="foundation.disjunction.html#1062" class="Bound">l2</a><a id="1100" class="Symbol">)</a> <a id="1102" class="Symbol">→</a>
    <a id="1108" href="foundation-core.propositions.html#867" class="Function">is-prop</a> <a id="1116" class="Symbol">(</a><a id="1117" href="foundation.disjunction.html#874" class="Function">type-disjunction-Prop</a> <a id="1139" href="foundation.disjunction.html#1075" class="Bound">P</a> <a id="1141" href="foundation.disjunction.html#1089" class="Bound">Q</a><a id="1142" class="Symbol">)</a>
  <a id="1146" href="foundation.disjunction.html#1022" class="Function">is-prop-type-disjunction-Prop</a> <a id="1176" href="foundation.disjunction.html#1176" class="Bound">P</a> <a id="1178" href="foundation.disjunction.html#1178" class="Bound">Q</a> <a id="1180" class="Symbol">=</a> <a id="1182" href="foundation-core.propositions.html#1109" class="Function">is-prop-type-Prop</a> <a id="1200" class="Symbol">(</a><a id="1201" href="foundation.disjunction.html#739" class="Function">disjunction-Prop</a> <a id="1218" href="foundation.disjunction.html#1176" class="Bound">P</a> <a id="1220" href="foundation.disjunction.html#1178" class="Bound">Q</a><a id="1221" class="Symbol">)</a>

<a id="1224" class="Keyword">infixr</a> <a id="1231" class="Number">10</a> <a id="1234" href="foundation.disjunction.html#1238" class="Function Operator">_∨_</a>
<a id="_∨_"></a><a id="1238" href="foundation.disjunction.html#1238" class="Function Operator">_∨_</a> <a id="1242" class="Symbol">=</a> <a id="1244" href="foundation.disjunction.html#874" class="Function">type-disjunction-Prop</a>
</pre>
**Note**: The symbol used for the disjunction `_∨_` is the
[logical or](https://codepoints.net/U+2228) `∨` (agda-input: `\vee` `\or`), and
not the [latin small letter v](https://codepoints.net/U+0076) `v`.

<pre class="Agda"><a id="disjunction-Decidable-Prop"></a><a id="1486" href="foundation.disjunction.html#1486" class="Function">disjunction-Decidable-Prop</a> <a id="1513" class="Symbol">:</a>
  <a id="1517" class="Symbol">{</a><a id="1518" href="foundation.disjunction.html#1518" class="Bound">l1</a> <a id="1521" href="foundation.disjunction.html#1521" class="Bound">l2</a> <a id="1524" class="Symbol">:</a> <a id="1526" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="1531" class="Symbol">}</a> <a id="1533" class="Symbol">→</a>
  <a id="1537" href="foundation-core.decidable-propositions.html#1883" class="Function">Decidable-Prop</a> <a id="1552" href="foundation.disjunction.html#1518" class="Bound">l1</a> <a id="1555" class="Symbol">→</a> <a id="1557" href="foundation-core.decidable-propositions.html#1883" class="Function">Decidable-Prop</a> <a id="1572" href="foundation.disjunction.html#1521" class="Bound">l2</a> <a id="1575" class="Symbol">→</a> <a id="1577" href="foundation-core.decidable-propositions.html#1883" class="Function">Decidable-Prop</a> <a id="1592" class="Symbol">(</a><a id="1593" href="foundation.disjunction.html#1518" class="Bound">l1</a> <a id="1596" href="Agda.Primitive.html#961" class="Primitive Operator">⊔</a> <a id="1598" href="foundation.disjunction.html#1521" class="Bound">l2</a><a id="1600" class="Symbol">)</a>
<a id="1602" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="1606" class="Symbol">(</a><a id="1607" href="foundation.disjunction.html#1486" class="Function">disjunction-Decidable-Prop</a> <a id="1634" href="foundation.disjunction.html#1634" class="Bound">P</a> <a id="1636" href="foundation.disjunction.html#1636" class="Bound">Q</a><a id="1637" class="Symbol">)</a> <a id="1639" class="Symbol">=</a>
  <a id="1643" href="foundation.disjunction.html#874" class="Function">type-disjunction-Prop</a> <a id="1665" class="Symbol">(</a><a id="1666" href="foundation-core.decidable-propositions.html#2041" class="Function">prop-Decidable-Prop</a> <a id="1686" href="foundation.disjunction.html#1634" class="Bound">P</a><a id="1687" class="Symbol">)</a> <a id="1689" class="Symbol">(</a><a id="1690" href="foundation-core.decidable-propositions.html#2041" class="Function">prop-Decidable-Prop</a> <a id="1710" href="foundation.disjunction.html#1636" class="Bound">Q</a><a id="1711" class="Symbol">)</a>
<a id="1713" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="1717" class="Symbol">(</a><a id="1718" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="1722" class="Symbol">(</a><a id="1723" href="foundation.disjunction.html#1486" class="Function">disjunction-Decidable-Prop</a> <a id="1750" href="foundation.disjunction.html#1750" class="Bound">P</a> <a id="1752" href="foundation.disjunction.html#1752" class="Bound">Q</a><a id="1753" class="Symbol">))</a> <a id="1756" class="Symbol">=</a>
  <a id="1760" href="foundation.disjunction.html#1022" class="Function">is-prop-type-disjunction-Prop</a> <a id="1790" class="Symbol">(</a><a id="1791" href="foundation-core.decidable-propositions.html#2041" class="Function">prop-Decidable-Prop</a> <a id="1811" href="foundation.disjunction.html#1750" class="Bound">P</a><a id="1812" class="Symbol">)</a> <a id="1814" class="Symbol">(</a><a id="1815" href="foundation-core.decidable-propositions.html#2041" class="Function">prop-Decidable-Prop</a> <a id="1835" href="foundation.disjunction.html#1752" class="Bound">Q</a><a id="1836" class="Symbol">)</a>
<a id="1838" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="1842" class="Symbol">(</a><a id="1843" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="1847" class="Symbol">(</a><a id="1848" href="foundation.disjunction.html#1486" class="Function">disjunction-Decidable-Prop</a> <a id="1875" href="foundation.disjunction.html#1875" class="Bound">P</a> <a id="1877" href="foundation.disjunction.html#1877" class="Bound">Q</a><a id="1878" class="Symbol">))</a> <a id="1881" class="Symbol">=</a>
  <a id="1885" href="foundation-core.decidable-propositions.html#3881" class="Function">is-decidable-trunc-Prop-is-merely-decidable</a>
    <a id="1933" class="Symbol">(</a> <a id="1935" href="foundation-core.decidable-propositions.html#2115" class="Function">type-Decidable-Prop</a> <a id="1955" href="foundation.disjunction.html#1875" class="Bound">P</a> <a id="1957" href="foundation-core.coproduct-types.html#348" class="Datatype Operator">+</a> <a id="1959" href="foundation-core.decidable-propositions.html#2115" class="Function">type-Decidable-Prop</a> <a id="1979" href="foundation.disjunction.html#1877" class="Bound">Q</a><a id="1980" class="Symbol">)</a>
    <a id="1986" class="Symbol">(</a> <a id="1988" href="foundation.propositional-truncations.html#1467" class="Function">unit-trunc-Prop</a>
      <a id="2010" class="Symbol">(</a> <a id="2012" href="foundation.decidable-types.html#2481" class="Function">is-decidable-coprod</a>
        <a id="2040" class="Symbol">(</a> <a id="2042" href="foundation-core.decidable-propositions.html#2345" class="Function">is-decidable-Decidable-Prop</a> <a id="2070" href="foundation.disjunction.html#1875" class="Bound">P</a><a id="2071" class="Symbol">)</a>
        <a id="2081" class="Symbol">(</a> <a id="2083" href="foundation-core.decidable-propositions.html#2345" class="Function">is-decidable-Decidable-Prop</a> <a id="2111" href="foundation.disjunction.html#1877" class="Bound">Q</a><a id="2112" class="Symbol">)))</a>
</pre>
## Properties

### The introduction rules for disjunction

<pre class="Agda"><a id="inl-disjunction-Prop"></a><a id="2188" href="foundation.disjunction.html#2188" class="Function">inl-disjunction-Prop</a> <a id="2209" class="Symbol">:</a>
  <a id="2213" class="Symbol">{</a><a id="2214" href="foundation.disjunction.html#2214" class="Bound">l1</a> <a id="2217" href="foundation.disjunction.html#2217" class="Bound">l2</a> <a id="2220" class="Symbol">:</a> <a id="2222" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="2227" class="Symbol">}</a> <a id="2229" class="Symbol">(</a><a id="2230" href="foundation.disjunction.html#2230" class="Bound">P</a> <a id="2232" class="Symbol">:</a> <a id="2234" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="2239" href="foundation.disjunction.html#2214" class="Bound">l1</a><a id="2241" class="Symbol">)</a> <a id="2243" class="Symbol">(</a><a id="2244" href="foundation.disjunction.html#2244" class="Bound">Q</a> <a id="2246" class="Symbol">:</a> <a id="2248" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="2253" href="foundation.disjunction.html#2217" class="Bound">l2</a><a id="2255" class="Symbol">)</a> <a id="2257" class="Symbol">→</a>
  <a id="2261" href="foundation-core.propositions.html#7777" class="Function">type-hom-Prop</a> <a id="2275" href="foundation.disjunction.html#2230" class="Bound">P</a> <a id="2277" class="Symbol">(</a><a id="2278" href="foundation.disjunction.html#739" class="Function">disjunction-Prop</a> <a id="2295" href="foundation.disjunction.html#2230" class="Bound">P</a> <a id="2297" href="foundation.disjunction.html#2244" class="Bound">Q</a><a id="2298" class="Symbol">)</a>
<a id="2300" href="foundation.disjunction.html#2188" class="Function">inl-disjunction-Prop</a> <a id="2321" href="foundation.disjunction.html#2321" class="Bound">P</a> <a id="2323" href="foundation.disjunction.html#2323" class="Bound">Q</a> <a id="2325" class="Symbol">=</a> <a id="2327" href="foundation.propositional-truncations.html#1467" class="Function">unit-trunc-Prop</a> <a id="2343" href="foundation-core.function-types.html#455" class="Function Operator">∘</a> <a id="2345" href="foundation-core.coproduct-types.html#417" class="InductiveConstructor">inl</a>

<a id="inr-disjunction-Prop"></a><a id="2350" href="foundation.disjunction.html#2350" class="Function">inr-disjunction-Prop</a> <a id="2371" class="Symbol">:</a>
  <a id="2375" class="Symbol">{</a><a id="2376" href="foundation.disjunction.html#2376" class="Bound">l1</a> <a id="2379" href="foundation.disjunction.html#2379" class="Bound">l2</a> <a id="2382" class="Symbol">:</a> <a id="2384" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="2389" class="Symbol">}</a> <a id="2391" class="Symbol">(</a><a id="2392" href="foundation.disjunction.html#2392" class="Bound">P</a> <a id="2394" class="Symbol">:</a> <a id="2396" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="2401" href="foundation.disjunction.html#2376" class="Bound">l1</a><a id="2403" class="Symbol">)</a> <a id="2405" class="Symbol">(</a><a id="2406" href="foundation.disjunction.html#2406" class="Bound">Q</a> <a id="2408" class="Symbol">:</a> <a id="2410" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="2415" href="foundation.disjunction.html#2379" class="Bound">l2</a><a id="2417" class="Symbol">)</a> <a id="2419" class="Symbol">→</a>
  <a id="2423" href="foundation-core.propositions.html#7777" class="Function">type-hom-Prop</a> <a id="2437" href="foundation.disjunction.html#2406" class="Bound">Q</a> <a id="2439" class="Symbol">(</a><a id="2440" href="foundation.disjunction.html#739" class="Function">disjunction-Prop</a> <a id="2457" href="foundation.disjunction.html#2392" class="Bound">P</a> <a id="2459" href="foundation.disjunction.html#2406" class="Bound">Q</a><a id="2460" class="Symbol">)</a>
<a id="2462" href="foundation.disjunction.html#2350" class="Function">inr-disjunction-Prop</a> <a id="2483" href="foundation.disjunction.html#2483" class="Bound">P</a> <a id="2485" href="foundation.disjunction.html#2485" class="Bound">Q</a> <a id="2487" class="Symbol">=</a> <a id="2489" href="foundation.propositional-truncations.html#1467" class="Function">unit-trunc-Prop</a> <a id="2505" href="foundation-core.function-types.html#455" class="Function Operator">∘</a> <a id="2507" href="foundation-core.coproduct-types.html#435" class="InductiveConstructor">inr</a>
</pre>
### The elimination rule and universal property of disjunction

<pre class="Agda"><a id="ev-disjunction-Prop"></a><a id="2588" href="foundation.disjunction.html#2588" class="Function">ev-disjunction-Prop</a> <a id="2608" class="Symbol">:</a>
  <a id="2612" class="Symbol">{</a><a id="2613" href="foundation.disjunction.html#2613" class="Bound">l1</a> <a id="2616" href="foundation.disjunction.html#2616" class="Bound">l2</a> <a id="2619" href="foundation.disjunction.html#2619" class="Bound">l3</a> <a id="2622" class="Symbol">:</a> <a id="2624" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="2629" class="Symbol">}</a> <a id="2631" class="Symbol">(</a><a id="2632" href="foundation.disjunction.html#2632" class="Bound">P</a> <a id="2634" class="Symbol">:</a> <a id="2636" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="2641" href="foundation.disjunction.html#2613" class="Bound">l1</a><a id="2643" class="Symbol">)</a> <a id="2645" class="Symbol">(</a><a id="2646" href="foundation.disjunction.html#2646" class="Bound">Q</a> <a id="2648" class="Symbol">:</a> <a id="2650" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="2655" href="foundation.disjunction.html#2616" class="Bound">l2</a><a id="2657" class="Symbol">)</a> <a id="2659" class="Symbol">(</a><a id="2660" href="foundation.disjunction.html#2660" class="Bound">R</a> <a id="2662" class="Symbol">:</a> <a id="2664" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="2669" href="foundation.disjunction.html#2619" class="Bound">l3</a><a id="2671" class="Symbol">)</a> <a id="2673" class="Symbol">→</a>
  <a id="2677" href="foundation-core.propositions.html#7777" class="Function">type-hom-Prop</a>
    <a id="2695" class="Symbol">(</a> <a id="2697" href="foundation-core.propositions.html#8076" class="Function">hom-Prop</a> <a id="2706" class="Symbol">(</a><a id="2707" href="foundation.disjunction.html#739" class="Function">disjunction-Prop</a> <a id="2724" href="foundation.disjunction.html#2632" class="Bound">P</a> <a id="2726" href="foundation.disjunction.html#2646" class="Bound">Q</a><a id="2727" class="Symbol">)</a> <a id="2729" href="foundation.disjunction.html#2660" class="Bound">R</a><a id="2730" class="Symbol">)</a>
    <a id="2736" class="Symbol">(</a> <a id="2738" href="foundation.conjunction.html#662" class="Function">conjunction-Prop</a> <a id="2755" class="Symbol">(</a><a id="2756" href="foundation-core.propositions.html#8076" class="Function">hom-Prop</a> <a id="2765" href="foundation.disjunction.html#2632" class="Bound">P</a> <a id="2767" href="foundation.disjunction.html#2660" class="Bound">R</a><a id="2768" class="Symbol">)</a> <a id="2770" class="Symbol">(</a><a id="2771" href="foundation-core.propositions.html#8076" class="Function">hom-Prop</a> <a id="2780" href="foundation.disjunction.html#2646" class="Bound">Q</a> <a id="2782" href="foundation.disjunction.html#2660" class="Bound">R</a><a id="2783" class="Symbol">))</a>
<a id="2786" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="2790" class="Symbol">(</a><a id="2791" href="foundation.disjunction.html#2588" class="Function">ev-disjunction-Prop</a> <a id="2811" href="foundation.disjunction.html#2811" class="Bound">P</a> <a id="2813" href="foundation.disjunction.html#2813" class="Bound">Q</a> <a id="2815" href="foundation.disjunction.html#2815" class="Bound">R</a> <a id="2817" href="foundation.disjunction.html#2817" class="Bound">h</a><a id="2818" class="Symbol">)</a> <a id="2820" class="Symbol">=</a> <a id="2822" href="foundation.disjunction.html#2817" class="Bound">h</a> <a id="2824" href="foundation-core.function-types.html#455" class="Function Operator">∘</a> <a id="2826" class="Symbol">(</a><a id="2827" href="foundation.disjunction.html#2188" class="Function">inl-disjunction-Prop</a> <a id="2848" href="foundation.disjunction.html#2811" class="Bound">P</a> <a id="2850" href="foundation.disjunction.html#2813" class="Bound">Q</a><a id="2851" class="Symbol">)</a>
<a id="2853" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="2857" class="Symbol">(</a><a id="2858" href="foundation.disjunction.html#2588" class="Function">ev-disjunction-Prop</a> <a id="2878" href="foundation.disjunction.html#2878" class="Bound">P</a> <a id="2880" href="foundation.disjunction.html#2880" class="Bound">Q</a> <a id="2882" href="foundation.disjunction.html#2882" class="Bound">R</a> <a id="2884" href="foundation.disjunction.html#2884" class="Bound">h</a><a id="2885" class="Symbol">)</a> <a id="2887" class="Symbol">=</a> <a id="2889" href="foundation.disjunction.html#2884" class="Bound">h</a> <a id="2891" href="foundation-core.function-types.html#455" class="Function Operator">∘</a> <a id="2893" class="Symbol">(</a><a id="2894" href="foundation.disjunction.html#2350" class="Function">inr-disjunction-Prop</a> <a id="2915" href="foundation.disjunction.html#2878" class="Bound">P</a> <a id="2917" href="foundation.disjunction.html#2880" class="Bound">Q</a><a id="2918" class="Symbol">)</a>

<a id="elim-disjunction-Prop"></a><a id="2921" href="foundation.disjunction.html#2921" class="Function">elim-disjunction-Prop</a> <a id="2943" class="Symbol">:</a>
  <a id="2947" class="Symbol">{</a><a id="2948" href="foundation.disjunction.html#2948" class="Bound">l1</a> <a id="2951" href="foundation.disjunction.html#2951" class="Bound">l2</a> <a id="2954" href="foundation.disjunction.html#2954" class="Bound">l3</a> <a id="2957" class="Symbol">:</a> <a id="2959" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="2964" class="Symbol">}</a> <a id="2966" class="Symbol">(</a><a id="2967" href="foundation.disjunction.html#2967" class="Bound">P</a> <a id="2969" class="Symbol">:</a> <a id="2971" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="2976" href="foundation.disjunction.html#2948" class="Bound">l1</a><a id="2978" class="Symbol">)</a> <a id="2980" class="Symbol">(</a><a id="2981" href="foundation.disjunction.html#2981" class="Bound">Q</a> <a id="2983" class="Symbol">:</a> <a id="2985" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="2990" href="foundation.disjunction.html#2951" class="Bound">l2</a><a id="2992" class="Symbol">)</a> <a id="2994" class="Symbol">(</a><a id="2995" href="foundation.disjunction.html#2995" class="Bound">R</a> <a id="2997" class="Symbol">:</a> <a id="2999" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="3004" href="foundation.disjunction.html#2954" class="Bound">l3</a><a id="3006" class="Symbol">)</a> <a id="3008" class="Symbol">→</a>
  <a id="3012" href="foundation-core.propositions.html#7777" class="Function">type-hom-Prop</a>
    <a id="3030" class="Symbol">(</a> <a id="3032" href="foundation.conjunction.html#662" class="Function">conjunction-Prop</a> <a id="3049" class="Symbol">(</a><a id="3050" href="foundation-core.propositions.html#8076" class="Function">hom-Prop</a> <a id="3059" href="foundation.disjunction.html#2967" class="Bound">P</a> <a id="3061" href="foundation.disjunction.html#2995" class="Bound">R</a><a id="3062" class="Symbol">)</a> <a id="3064" class="Symbol">(</a><a id="3065" href="foundation-core.propositions.html#8076" class="Function">hom-Prop</a> <a id="3074" href="foundation.disjunction.html#2981" class="Bound">Q</a> <a id="3076" href="foundation.disjunction.html#2995" class="Bound">R</a><a id="3077" class="Symbol">))</a>
    <a id="3084" class="Symbol">(</a> <a id="3086" href="foundation-core.propositions.html#8076" class="Function">hom-Prop</a> <a id="3095" class="Symbol">(</a><a id="3096" href="foundation.disjunction.html#739" class="Function">disjunction-Prop</a> <a id="3113" href="foundation.disjunction.html#2967" class="Bound">P</a> <a id="3115" href="foundation.disjunction.html#2981" class="Bound">Q</a><a id="3116" class="Symbol">)</a> <a id="3118" href="foundation.disjunction.html#2995" class="Bound">R</a><a id="3119" class="Symbol">)</a>
<a id="3121" href="foundation.disjunction.html#2921" class="Function">elim-disjunction-Prop</a> <a id="3143" href="foundation.disjunction.html#3143" class="Bound">P</a> <a id="3145" href="foundation.disjunction.html#3145" class="Bound">Q</a> <a id="3147" href="foundation.disjunction.html#3147" class="Bound">R</a> <a id="3149" class="Symbol">(</a><a id="3150" href="foundation.dependent-pair-types.html#586" class="InductiveConstructor">pair</a> <a id="3155" href="foundation.disjunction.html#3155" class="Bound">f</a> <a id="3157" href="foundation.disjunction.html#3157" class="Bound">g</a><a id="3158" class="Symbol">)</a> <a id="3160" class="Symbol">=</a>
  <a id="3164" href="foundation.propositional-truncations.html#4588" class="Function">map-universal-property-trunc-Prop</a> <a id="3198" href="foundation.disjunction.html#3147" class="Bound">R</a> <a id="3200" class="Symbol">(</a><a id="3201" href="foundation-core.coproduct-types.html#787" class="Function">rec-coprod</a> <a id="3212" href="foundation.disjunction.html#3155" class="Bound">f</a> <a id="3214" href="foundation.disjunction.html#3157" class="Bound">g</a><a id="3215" class="Symbol">)</a>

<a id="3218" class="Keyword">abstract</a>
  <a id="is-equiv-ev-disjunction-Prop"></a><a id="3229" href="foundation.disjunction.html#3229" class="Function">is-equiv-ev-disjunction-Prop</a> <a id="3258" class="Symbol">:</a>
    <a id="3264" class="Symbol">{</a><a id="3265" href="foundation.disjunction.html#3265" class="Bound">l1</a> <a id="3268" href="foundation.disjunction.html#3268" class="Bound">l2</a> <a id="3271" href="foundation.disjunction.html#3271" class="Bound">l3</a> <a id="3274" class="Symbol">:</a> <a id="3276" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="3281" class="Symbol">}</a> <a id="3283" class="Symbol">(</a><a id="3284" href="foundation.disjunction.html#3284" class="Bound">P</a> <a id="3286" class="Symbol">:</a> <a id="3288" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="3293" href="foundation.disjunction.html#3265" class="Bound">l1</a><a id="3295" class="Symbol">)</a> <a id="3297" class="Symbol">(</a><a id="3298" href="foundation.disjunction.html#3298" class="Bound">Q</a> <a id="3300" class="Symbol">:</a> <a id="3302" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="3307" href="foundation.disjunction.html#3268" class="Bound">l2</a><a id="3309" class="Symbol">)</a> <a id="3311" class="Symbol">(</a><a id="3312" href="foundation.disjunction.html#3312" class="Bound">R</a> <a id="3314" class="Symbol">:</a> <a id="3316" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="3321" href="foundation.disjunction.html#3271" class="Bound">l3</a><a id="3323" class="Symbol">)</a> <a id="3325" class="Symbol">→</a>
    <a id="3331" href="foundation-core.equivalences.html#1647" class="Function">is-equiv</a> <a id="3340" class="Symbol">(</a><a id="3341" href="foundation.disjunction.html#2588" class="Function">ev-disjunction-Prop</a> <a id="3361" href="foundation.disjunction.html#3284" class="Bound">P</a> <a id="3363" href="foundation.disjunction.html#3298" class="Bound">Q</a> <a id="3365" href="foundation.disjunction.html#3312" class="Bound">R</a><a id="3366" class="Symbol">)</a>
  <a id="3370" href="foundation.disjunction.html#3229" class="Function">is-equiv-ev-disjunction-Prop</a> <a id="3399" href="foundation.disjunction.html#3399" class="Bound">P</a> <a id="3401" href="foundation.disjunction.html#3401" class="Bound">Q</a> <a id="3403" href="foundation.disjunction.html#3403" class="Bound">R</a> <a id="3405" class="Symbol">=</a>
    <a id="3411" href="foundation-core.propositions.html#3233" class="Function">is-equiv-is-prop</a>
      <a id="3434" class="Symbol">(</a> <a id="3436" href="foundation-core.propositions.html#1109" class="Function">is-prop-type-Prop</a> <a id="3454" class="Symbol">(</a><a id="3455" href="foundation-core.propositions.html#8076" class="Function">hom-Prop</a> <a id="3464" class="Symbol">(</a><a id="3465" href="foundation.disjunction.html#739" class="Function">disjunction-Prop</a> <a id="3482" href="foundation.disjunction.html#3399" class="Bound">P</a> <a id="3484" href="foundation.disjunction.html#3401" class="Bound">Q</a><a id="3485" class="Symbol">)</a> <a id="3487" href="foundation.disjunction.html#3403" class="Bound">R</a><a id="3488" class="Symbol">))</a>
      <a id="3497" class="Symbol">(</a> <a id="3499" href="foundation-core.propositions.html#1109" class="Function">is-prop-type-Prop</a> <a id="3517" class="Symbol">(</a><a id="3518" href="foundation.conjunction.html#662" class="Function">conjunction-Prop</a> <a id="3535" class="Symbol">(</a><a id="3536" href="foundation-core.propositions.html#8076" class="Function">hom-Prop</a> <a id="3545" href="foundation.disjunction.html#3399" class="Bound">P</a> <a id="3547" href="foundation.disjunction.html#3403" class="Bound">R</a><a id="3548" class="Symbol">)</a> <a id="3550" class="Symbol">(</a><a id="3551" href="foundation-core.propositions.html#8076" class="Function">hom-Prop</a> <a id="3560" href="foundation.disjunction.html#3401" class="Bound">Q</a> <a id="3562" href="foundation.disjunction.html#3403" class="Bound">R</a><a id="3563" class="Symbol">)))</a>
      <a id="3573" class="Symbol">(</a> <a id="3575" href="foundation.disjunction.html#2921" class="Function">elim-disjunction-Prop</a> <a id="3597" href="foundation.disjunction.html#3399" class="Bound">P</a> <a id="3599" href="foundation.disjunction.html#3401" class="Bound">Q</a> <a id="3601" href="foundation.disjunction.html#3403" class="Bound">R</a><a id="3602" class="Symbol">)</a>
</pre>
### The unit laws for disjunction

<pre class="Agda"><a id="3652" class="Keyword">module</a> <a id="3659" href="foundation.disjunction.html#3659" class="Module">_</a>
  <a id="3663" class="Symbol">{</a><a id="3664" href="foundation.disjunction.html#3664" class="Bound">l1</a> <a id="3667" href="foundation.disjunction.html#3667" class="Bound">l2</a> <a id="3670" class="Symbol">:</a> <a id="3672" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="3677" class="Symbol">}</a> <a id="3679" class="Symbol">(</a><a id="3680" href="foundation.disjunction.html#3680" class="Bound">P</a> <a id="3682" class="Symbol">:</a> <a id="3684" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="3689" href="foundation.disjunction.html#3664" class="Bound">l1</a><a id="3691" class="Symbol">)</a> <a id="3693" class="Symbol">(</a><a id="3694" href="foundation.disjunction.html#3694" class="Bound">Q</a> <a id="3696" class="Symbol">:</a> <a id="3698" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="3703" href="foundation.disjunction.html#3667" class="Bound">l2</a><a id="3705" class="Symbol">)</a>
  <a id="3709" class="Keyword">where</a>

  <a id="3718" href="foundation.disjunction.html#3718" class="Function">map-left-unit-law-disjunction-is-empty-Prop</a> <a id="3762" class="Symbol">:</a>
    <a id="3768" href="foundation-core.empty-types.html#972" class="Function">is-empty</a> <a id="3777" class="Symbol">(</a><a id="3778" href="foundation-core.propositions.html#1045" class="Function">type-Prop</a> <a id="3788" href="foundation.disjunction.html#3680" class="Bound">P</a><a id="3789" class="Symbol">)</a> <a id="3791" class="Symbol">→</a> <a id="3793" href="foundation.disjunction.html#874" class="Function">type-disjunction-Prop</a> <a id="3815" href="foundation.disjunction.html#3680" class="Bound">P</a> <a id="3817" href="foundation.disjunction.html#3694" class="Bound">Q</a> <a id="3819" class="Symbol">→</a> <a id="3821" href="foundation-core.propositions.html#1045" class="Function">type-Prop</a> <a id="3831" href="foundation.disjunction.html#3694" class="Bound">Q</a>
  <a id="3835" href="foundation.disjunction.html#3718" class="Function">map-left-unit-law-disjunction-is-empty-Prop</a> <a id="3879" href="foundation.disjunction.html#3879" class="Bound">f</a> <a id="3881" class="Symbol">=</a>
    <a id="3887" href="foundation.disjunction.html#2921" class="Function">elim-disjunction-Prop</a> <a id="3909" href="foundation.disjunction.html#3680" class="Bound">P</a> <a id="3911" href="foundation.disjunction.html#3694" class="Bound">Q</a> <a id="3913" href="foundation.disjunction.html#3694" class="Bound">Q</a> <a id="3915" class="Symbol">(</a><a id="3916" href="foundation-core.empty-types.html#904" class="Function">ex-falso</a> <a id="3925" href="foundation-core.function-types.html#455" class="Function Operator">∘</a> <a id="3927" href="foundation.disjunction.html#3879" class="Bound">f</a> <a id="3929" href="foundation.dependent-pair-types.html#689" class="InductiveConstructor Operator">,</a> <a id="3931" href="foundation-core.function-types.html#307" class="Function">id</a><a id="3933" class="Symbol">)</a>

  <a id="3938" href="foundation.disjunction.html#3938" class="Function">map-right-unit-law-disjunction-is-empty-Prop</a> <a id="3983" class="Symbol">:</a>
    <a id="3989" href="foundation-core.empty-types.html#972" class="Function">is-empty</a> <a id="3998" class="Symbol">(</a><a id="3999" href="foundation-core.propositions.html#1045" class="Function">type-Prop</a> <a id="4009" href="foundation.disjunction.html#3694" class="Bound">Q</a><a id="4010" class="Symbol">)</a> <a id="4012" class="Symbol">→</a> <a id="4014" href="foundation.disjunction.html#874" class="Function">type-disjunction-Prop</a> <a id="4036" href="foundation.disjunction.html#3680" class="Bound">P</a> <a id="4038" href="foundation.disjunction.html#3694" class="Bound">Q</a> <a id="4040" class="Symbol">→</a> <a id="4042" href="foundation-core.propositions.html#1045" class="Function">type-Prop</a> <a id="4052" href="foundation.disjunction.html#3680" class="Bound">P</a>
  <a id="4056" href="foundation.disjunction.html#3938" class="Function">map-right-unit-law-disjunction-is-empty-Prop</a> <a id="4101" href="foundation.disjunction.html#4101" class="Bound">f</a> <a id="4103" class="Symbol">=</a>
    <a id="4109" href="foundation.disjunction.html#2921" class="Function">elim-disjunction-Prop</a> <a id="4131" href="foundation.disjunction.html#3680" class="Bound">P</a> <a id="4133" href="foundation.disjunction.html#3694" class="Bound">Q</a> <a id="4135" href="foundation.disjunction.html#3680" class="Bound">P</a> <a id="4137" class="Symbol">(</a><a id="4138" href="foundation-core.function-types.html#307" class="Function">id</a> <a id="4141" href="foundation.dependent-pair-types.html#689" class="InductiveConstructor Operator">,</a> <a id="4143" href="foundation-core.empty-types.html#904" class="Function">ex-falso</a> <a id="4152" href="foundation-core.function-types.html#455" class="Function Operator">∘</a> <a id="4154" href="foundation.disjunction.html#4101" class="Bound">f</a><a id="4155" class="Symbol">)</a>
</pre>