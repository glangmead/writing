# Precomposition of functions into subuniverses

<pre class="Agda"><a id="58" class="Keyword">module</a> <a id="65" href="foundation.precomposition-functions-into-subuniverses.html" class="Module">foundation.precomposition-functions-into-subuniverses</a> <a id="119" class="Keyword">where</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="175" class="Keyword">open</a> <a id="180" class="Keyword">import</a> <a id="187" href="foundation.action-on-identifications-functions.html" class="Module">foundation.action-on-identifications-functions</a>
<a id="234" class="Keyword">open</a> <a id="239" class="Keyword">import</a> <a id="246" href="foundation.dependent-pair-types.html" class="Module">foundation.dependent-pair-types</a>
<a id="278" class="Keyword">open</a> <a id="283" class="Keyword">import</a> <a id="290" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>

<a id="318" class="Keyword">open</a> <a id="323" class="Keyword">import</a> <a id="330" href="foundation-core.contractible-maps.html" class="Module">foundation-core.contractible-maps</a>
<a id="364" class="Keyword">open</a> <a id="369" class="Keyword">import</a> <a id="376" href="foundation-core.contractible-types.html" class="Module">foundation-core.contractible-types</a>
<a id="411" class="Keyword">open</a> <a id="416" class="Keyword">import</a> <a id="423" href="foundation-core.equivalences.html" class="Module">foundation-core.equivalences</a>
<a id="452" class="Keyword">open</a> <a id="457" class="Keyword">import</a> <a id="464" href="foundation-core.function-extensionality.html" class="Module">foundation-core.function-extensionality</a>
<a id="504" class="Keyword">open</a> <a id="509" class="Keyword">import</a> <a id="516" href="foundation-core.function-types.html" class="Module">foundation-core.function-types</a>
<a id="547" class="Keyword">open</a> <a id="552" class="Keyword">import</a> <a id="559" href="foundation-core.identity-types.html" class="Module">foundation-core.identity-types</a>
<a id="590" class="Keyword">open</a> <a id="595" class="Keyword">import</a> <a id="602" href="foundation-core.precomposition-functions.html" class="Module">foundation-core.precomposition-functions</a>
<a id="643" class="Keyword">open</a> <a id="648" class="Keyword">import</a> <a id="655" href="foundation-core.propositions.html" class="Module">foundation-core.propositions</a>
<a id="684" class="Keyword">open</a> <a id="689" class="Keyword">import</a> <a id="696" href="foundation-core.retractions.html" class="Module">foundation-core.retractions</a>
<a id="724" class="Keyword">open</a> <a id="729" class="Keyword">import</a> <a id="736" href="foundation-core.sections.html" class="Module">foundation-core.sections</a>
<a id="761" class="Keyword">open</a> <a id="766" class="Keyword">import</a> <a id="773" href="foundation-core.sets.html" class="Module">foundation-core.sets</a>
<a id="794" class="Keyword">open</a> <a id="799" class="Keyword">import</a> <a id="806" href="foundation-core.truncated-types.html" class="Module">foundation-core.truncated-types</a>
<a id="838" class="Keyword">open</a> <a id="843" class="Keyword">import</a> <a id="850" href="foundation-core.truncation-levels.html" class="Module">foundation-core.truncation-levels</a>
</pre>
</details>

## Theorem

### A map between structured types is an equivalence if precomposition of functions into structured types by that map is an equivalence

<pre class="Agda"><a id="1058" class="Keyword">module</a> <a id="1065" href="foundation.precomposition-functions-into-subuniverses.html#1065" class="Module">_</a>
  <a id="1069" class="Symbol">{</a><a id="1070" href="foundation.precomposition-functions-into-subuniverses.html#1070" class="Bound">l1</a> <a id="1073" href="foundation.precomposition-functions-into-subuniverses.html#1073" class="Bound">l2</a> <a id="1076" class="Symbol">:</a> <a id="1078" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="1083" class="Symbol">}</a>
  <a id="1087" class="Symbol">(</a><a id="1088" href="foundation.precomposition-functions-into-subuniverses.html#1088" class="Bound">α</a> <a id="1090" class="Symbol">:</a> <a id="1092" href="Agda.Primitive.html#742" class="Postulate">Level</a> <a id="1098" class="Symbol">→</a> <a id="1100" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="1105" class="Symbol">)</a> <a id="1107" class="Symbol">(</a><a id="1108" href="foundation.precomposition-functions-into-subuniverses.html#1108" class="Bound">P</a> <a id="1110" class="Symbol">:</a> <a id="1112" class="Symbol">{</a><a id="1113" href="foundation.precomposition-functions-into-subuniverses.html#1113" class="Bound">l</a> <a id="1115" class="Symbol">:</a> <a id="1117" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="1122" class="Symbol">}</a> <a id="1124" class="Symbol">→</a> <a id="1126" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1129" href="foundation.precomposition-functions-into-subuniverses.html#1113" class="Bound">l</a> <a id="1131" class="Symbol">→</a> <a id="1133" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1136" class="Symbol">(</a><a id="1137" href="foundation.precomposition-functions-into-subuniverses.html#1088" class="Bound">α</a> <a id="1139" href="foundation.precomposition-functions-into-subuniverses.html#1113" class="Bound">l</a><a id="1140" class="Symbol">))</a>
  <a id="1145" class="Symbol">(</a><a id="1146" href="foundation.precomposition-functions-into-subuniverses.html#1146" class="Bound">A</a> <a id="1148" class="Symbol">:</a> <a id="1150" href="foundation.dependent-pair-types.html#505" class="Record">Σ</a> <a id="1152" class="Symbol">(</a><a id="1153" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1156" href="foundation.precomposition-functions-into-subuniverses.html#1070" class="Bound">l1</a><a id="1158" class="Symbol">)</a> <a id="1160" class="Symbol">(</a><a id="1161" href="foundation.precomposition-functions-into-subuniverses.html#1108" class="Bound">P</a> <a id="1163" class="Symbol">{</a><a id="1164" href="foundation.precomposition-functions-into-subuniverses.html#1070" class="Bound">l1</a><a id="1166" class="Symbol">}))</a> <a id="1170" class="Symbol">(</a><a id="1171" href="foundation.precomposition-functions-into-subuniverses.html#1171" class="Bound">B</a> <a id="1173" class="Symbol">:</a> <a id="1175" href="foundation.dependent-pair-types.html#505" class="Record">Σ</a> <a id="1177" class="Symbol">(</a><a id="1178" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1181" href="foundation.precomposition-functions-into-subuniverses.html#1073" class="Bound">l2</a><a id="1183" class="Symbol">)</a> <a id="1185" class="Symbol">(</a><a id="1186" href="foundation.precomposition-functions-into-subuniverses.html#1108" class="Bound">P</a> <a id="1188" class="Symbol">{</a><a id="1189" href="foundation.precomposition-functions-into-subuniverses.html#1073" class="Bound">l2</a><a id="1191" class="Symbol">}))</a> <a id="1195" class="Symbol">(</a><a id="1196" href="foundation.precomposition-functions-into-subuniverses.html#1196" class="Bound">f</a> <a id="1198" class="Symbol">:</a> <a id="1200" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="1204" href="foundation.precomposition-functions-into-subuniverses.html#1146" class="Bound">A</a> <a id="1206" class="Symbol">→</a> <a id="1208" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="1212" href="foundation.precomposition-functions-into-subuniverses.html#1171" class="Bound">B</a><a id="1213" class="Symbol">)</a>
  <a id="1217" class="Keyword">where</a>

  <a id="1226" href="foundation.precomposition-functions-into-subuniverses.html#1226" class="Function">universal-property-equiv-structured-type</a> <a id="1267" class="Symbol">:</a> <a id="1269" href="Agda.Primitive.html#512" class="Primitive">UUω</a>
  <a id="1275" href="foundation.precomposition-functions-into-subuniverses.html#1226" class="Function">universal-property-equiv-structured-type</a> <a id="1316" class="Symbol">=</a>
    <a id="1322" class="Symbol">{</a><a id="1323" href="foundation.precomposition-functions-into-subuniverses.html#1323" class="Bound">l</a> <a id="1325" class="Symbol">:</a> <a id="1327" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="1332" class="Symbol">}</a> <a id="1334" class="Symbol">(</a><a id="1335" href="foundation.precomposition-functions-into-subuniverses.html#1335" class="Bound">C</a> <a id="1337" class="Symbol">:</a> <a id="1339" href="foundation.dependent-pair-types.html#505" class="Record">Σ</a> <a id="1341" class="Symbol">(</a><a id="1342" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1345" href="foundation.precomposition-functions-into-subuniverses.html#1323" class="Bound">l</a><a id="1346" class="Symbol">)</a> <a id="1348" class="Symbol">(</a><a id="1349" href="foundation.precomposition-functions-into-subuniverses.html#1108" class="Bound">P</a> <a id="1351" class="Symbol">{</a><a id="1352" href="foundation.precomposition-functions-into-subuniverses.html#1323" class="Bound">l</a><a id="1353" class="Symbol">}))</a> <a id="1357" class="Symbol">→</a> <a id="1359" href="foundation-core.equivalences.html#1647" class="Function">is-equiv</a> <a id="1368" class="Symbol">(</a><a id="1369" href="foundation-core.precomposition-functions.html#582" class="Function">precomp</a> <a id="1377" href="foundation.precomposition-functions-into-subuniverses.html#1196" class="Bound">f</a> <a id="1379" class="Symbol">(</a><a id="1380" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="1384" href="foundation.precomposition-functions-into-subuniverses.html#1335" class="Bound">C</a><a id="1385" class="Symbol">))</a>

  <a id="1391" href="foundation.precomposition-functions-into-subuniverses.html#1391" class="Function">map-inv-is-equiv-precomp-structured-type</a> <a id="1432" class="Symbol">:</a>
    <a id="1438" href="foundation.precomposition-functions-into-subuniverses.html#1226" class="Function">universal-property-equiv-structured-type</a> <a id="1479" class="Symbol">→</a> <a id="1481" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="1485" href="foundation.precomposition-functions-into-subuniverses.html#1171" class="Bound">B</a> <a id="1487" class="Symbol">→</a> <a id="1489" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="1493" href="foundation.precomposition-functions-into-subuniverses.html#1146" class="Bound">A</a>
  <a id="1497" href="foundation.precomposition-functions-into-subuniverses.html#1391" class="Function">map-inv-is-equiv-precomp-structured-type</a> <a id="1538" href="foundation.precomposition-functions-into-subuniverses.html#1538" class="Bound">H</a> <a id="1540" class="Symbol">=</a>
    <a id="1546" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="1550" class="Symbol">(</a><a id="1551" href="foundation-core.contractible-types.html#947" class="Function">center</a> <a id="1558" class="Symbol">(</a><a id="1559" href="foundation-core.contractible-maps.html#3534" class="Function">is-contr-map-is-equiv</a> <a id="1581" class="Symbol">(</a><a id="1582" href="foundation.precomposition-functions-into-subuniverses.html#1538" class="Bound">H</a> <a id="1584" href="foundation.precomposition-functions-into-subuniverses.html#1146" class="Bound">A</a><a id="1585" class="Symbol">)</a> <a id="1587" href="foundation-core.function-types.html#307" class="Function">id</a><a id="1589" class="Symbol">))</a>

  <a id="1595" href="foundation.precomposition-functions-into-subuniverses.html#1595" class="Function">is-section-map-inv-is-equiv-precomp-structured-type</a> <a id="1647" class="Symbol">:</a>
    <a id="1653" class="Symbol">(</a><a id="1654" href="foundation.precomposition-functions-into-subuniverses.html#1654" class="Bound">H</a> <a id="1656" class="Symbol">:</a> <a id="1658" href="foundation.precomposition-functions-into-subuniverses.html#1226" class="Function">universal-property-equiv-structured-type</a><a id="1698" class="Symbol">)</a> <a id="1700" class="Symbol">→</a>
    <a id="1706" href="foundation-core.sections.html#1187" class="Function">is-section</a> <a id="1717" href="foundation.precomposition-functions-into-subuniverses.html#1196" class="Bound">f</a> <a id="1719" class="Symbol">(</a><a id="1720" href="foundation.precomposition-functions-into-subuniverses.html#1391" class="Function">map-inv-is-equiv-precomp-structured-type</a> <a id="1761" href="foundation.precomposition-functions-into-subuniverses.html#1654" class="Bound">H</a><a id="1762" class="Symbol">)</a>
  <a id="1766" href="foundation.precomposition-functions-into-subuniverses.html#1595" class="Function">is-section-map-inv-is-equiv-precomp-structured-type</a> <a id="1818" href="foundation.precomposition-functions-into-subuniverses.html#1818" class="Bound">H</a> <a id="1820" class="Symbol">=</a>
    <a id="1826" href="foundation-core.function-extensionality.html#1416" class="Function">htpy-eq</a>
      <a id="1840" class="Symbol">(</a> <a id="1842" href="foundation.action-on-identifications-functions.html#730" class="Function">ap</a>
        <a id="1853" class="Symbol">(</a> <a id="1855" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a><a id="1858" class="Symbol">)</a>
        <a id="1868" class="Symbol">(</a> <a id="1870" href="foundation-core.contractible-types.html#1034" class="Function">eq-is-contr&#39;</a>
          <a id="1893" class="Symbol">(</a> <a id="1895" href="foundation-core.contractible-maps.html#3534" class="Function">is-contr-map-is-equiv</a> <a id="1917" class="Symbol">(</a><a id="1918" href="foundation.precomposition-functions-into-subuniverses.html#1818" class="Bound">H</a> <a id="1920" href="foundation.precomposition-functions-into-subuniverses.html#1171" class="Bound">B</a><a id="1921" class="Symbol">)</a> <a id="1923" href="foundation.precomposition-functions-into-subuniverses.html#1196" class="Bound">f</a><a id="1924" class="Symbol">)</a>
          <a id="1936" class="Symbol">(</a> <a id="1938" class="Symbol">(</a> <a id="1940" href="foundation.precomposition-functions-into-subuniverses.html#1196" class="Bound">f</a> <a id="1942" href="foundation-core.function-types.html#455" class="Function Operator">∘</a> <a id="1944" class="Symbol">(</a><a id="1945" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="1949" class="Symbol">(</a><a id="1950" href="foundation-core.contractible-types.html#947" class="Function">center</a> <a id="1957" class="Symbol">(</a><a id="1958" href="foundation-core.contractible-maps.html#3534" class="Function">is-contr-map-is-equiv</a> <a id="1980" class="Symbol">(</a><a id="1981" href="foundation.precomposition-functions-into-subuniverses.html#1818" class="Bound">H</a> <a id="1983" href="foundation.precomposition-functions-into-subuniverses.html#1146" class="Bound">A</a><a id="1984" class="Symbol">)</a> <a id="1986" href="foundation-core.function-types.html#307" class="Function">id</a><a id="1988" class="Symbol">))))</a> <a id="1993" href="foundation.dependent-pair-types.html#689" class="InductiveConstructor Operator">,</a>
            <a id="2007" class="Symbol">(</a> <a id="2009" href="foundation.action-on-identifications-functions.html#730" class="Function">ap</a>
              <a id="2026" class="Symbol">(</a> <a id="2028" class="Symbol">λ</a> <a id="2030" class="Symbol">(</a><a id="2031" href="foundation.precomposition-functions-into-subuniverses.html#2031" class="Bound">g</a> <a id="2033" class="Symbol">:</a> <a id="2035" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="2039" href="foundation.precomposition-functions-into-subuniverses.html#1146" class="Bound">A</a> <a id="2041" class="Symbol">→</a> <a id="2043" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="2047" href="foundation.precomposition-functions-into-subuniverses.html#1146" class="Bound">A</a><a id="2048" class="Symbol">)</a> <a id="2050" class="Symbol">→</a> <a id="2052" href="foundation.precomposition-functions-into-subuniverses.html#1196" class="Bound">f</a> <a id="2054" href="foundation-core.function-types.html#455" class="Function Operator">∘</a> <a id="2056" href="foundation.precomposition-functions-into-subuniverses.html#2031" class="Bound">g</a><a id="2057" class="Symbol">)</a>
              <a id="2073" class="Symbol">(</a> <a id="2075" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="2079" class="Symbol">(</a><a id="2080" href="foundation-core.contractible-types.html#947" class="Function">center</a> <a id="2087" class="Symbol">(</a><a id="2088" href="foundation-core.contractible-maps.html#3534" class="Function">is-contr-map-is-equiv</a> <a id="2110" class="Symbol">(</a><a id="2111" href="foundation.precomposition-functions-into-subuniverses.html#1818" class="Bound">H</a> <a id="2113" href="foundation.precomposition-functions-into-subuniverses.html#1146" class="Bound">A</a><a id="2114" class="Symbol">)</a> <a id="2116" href="foundation-core.function-types.html#307" class="Function">id</a><a id="2118" class="Symbol">)))))</a>
          <a id="2134" class="Symbol">(</a> <a id="2136" href="foundation-core.function-types.html#307" class="Function">id</a> <a id="2139" href="foundation.dependent-pair-types.html#689" class="InductiveConstructor Operator">,</a> <a id="2141" href="foundation-core.identity-types.html#1922" class="InductiveConstructor">refl</a><a id="2145" class="Symbol">)))</a>

  <a id="2152" href="foundation.precomposition-functions-into-subuniverses.html#2152" class="Function">is-retraction-map-inv-is-equiv-precomp-structured-type</a> <a id="2207" class="Symbol">:</a>
    <a id="2213" class="Symbol">(</a><a id="2214" href="foundation.precomposition-functions-into-subuniverses.html#2214" class="Bound">H</a> <a id="2216" class="Symbol">:</a> <a id="2218" href="foundation.precomposition-functions-into-subuniverses.html#1226" class="Function">universal-property-equiv-structured-type</a><a id="2258" class="Symbol">)</a> <a id="2260" class="Symbol">→</a>
    <a id="2266" href="foundation-core.retractions.html#783" class="Function">is-retraction</a> <a id="2280" href="foundation.precomposition-functions-into-subuniverses.html#1196" class="Bound">f</a> <a id="2282" class="Symbol">(</a><a id="2283" href="foundation.precomposition-functions-into-subuniverses.html#1391" class="Function">map-inv-is-equiv-precomp-structured-type</a> <a id="2324" href="foundation.precomposition-functions-into-subuniverses.html#2214" class="Bound">H</a><a id="2325" class="Symbol">)</a>
  <a id="2329" href="foundation.precomposition-functions-into-subuniverses.html#2152" class="Function">is-retraction-map-inv-is-equiv-precomp-structured-type</a> <a id="2384" href="foundation.precomposition-functions-into-subuniverses.html#2384" class="Bound">H</a> <a id="2386" class="Symbol">=</a>
    <a id="2392" href="foundation-core.function-extensionality.html#1416" class="Function">htpy-eq</a> <a id="2400" class="Symbol">(</a><a id="2401" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="2405" class="Symbol">(</a><a id="2406" href="foundation-core.contractible-types.html#947" class="Function">center</a> <a id="2413" class="Symbol">(</a><a id="2414" href="foundation-core.contractible-maps.html#3534" class="Function">is-contr-map-is-equiv</a> <a id="2436" class="Symbol">(</a><a id="2437" href="foundation.precomposition-functions-into-subuniverses.html#2384" class="Bound">H</a> <a id="2439" href="foundation.precomposition-functions-into-subuniverses.html#1146" class="Bound">A</a><a id="2440" class="Symbol">)</a> <a id="2442" href="foundation-core.function-types.html#307" class="Function">id</a><a id="2444" class="Symbol">)))</a>

  <a id="2451" class="Keyword">abstract</a>
    <a id="2464" href="foundation.precomposition-functions-into-subuniverses.html#2464" class="Function">is-equiv-is-equiv-precomp-structured-type</a> <a id="2506" class="Symbol">:</a>
      <a id="2514" href="foundation.precomposition-functions-into-subuniverses.html#1226" class="Function">universal-property-equiv-structured-type</a> <a id="2555" class="Symbol">→</a> <a id="2557" href="foundation-core.equivalences.html#1647" class="Function">is-equiv</a> <a id="2566" href="foundation.precomposition-functions-into-subuniverses.html#1196" class="Bound">f</a>
    <a id="2572" href="foundation.precomposition-functions-into-subuniverses.html#2464" class="Function">is-equiv-is-equiv-precomp-structured-type</a> <a id="2614" href="foundation.precomposition-functions-into-subuniverses.html#2614" class="Bound">H</a> <a id="2616" class="Symbol">=</a>
      <a id="2624" href="foundation-core.equivalences.html#5122" class="Function">is-equiv-is-invertible</a>
        <a id="2655" class="Symbol">(</a> <a id="2657" href="foundation.precomposition-functions-into-subuniverses.html#1391" class="Function">map-inv-is-equiv-precomp-structured-type</a> <a id="2698" href="foundation.precomposition-functions-into-subuniverses.html#2614" class="Bound">H</a><a id="2699" class="Symbol">)</a>
        <a id="2709" class="Symbol">(</a> <a id="2711" href="foundation.precomposition-functions-into-subuniverses.html#1595" class="Function">is-section-map-inv-is-equiv-precomp-structured-type</a> <a id="2763" href="foundation.precomposition-functions-into-subuniverses.html#2614" class="Bound">H</a><a id="2764" class="Symbol">)</a>
        <a id="2774" class="Symbol">(</a> <a id="2776" href="foundation.precomposition-functions-into-subuniverses.html#2152" class="Function">is-retraction-map-inv-is-equiv-precomp-structured-type</a> <a id="2831" href="foundation.precomposition-functions-into-subuniverses.html#2614" class="Bound">H</a><a id="2832" class="Symbol">)</a>
</pre>
## Corollaries

### A map between propositions is an equivalence if precomposition of functions into propositions by that map is an equivalence

<pre class="Agda"><a id="2992" class="Keyword">module</a> <a id="2999" href="foundation.precomposition-functions-into-subuniverses.html#2999" class="Module">_</a>
  <a id="3003" class="Symbol">{</a><a id="3004" href="foundation.precomposition-functions-into-subuniverses.html#3004" class="Bound">l1</a> <a id="3007" href="foundation.precomposition-functions-into-subuniverses.html#3007" class="Bound">l2</a> <a id="3010" class="Symbol">:</a> <a id="3012" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="3017" class="Symbol">}</a> <a id="3019" class="Symbol">(</a><a id="3020" href="foundation.precomposition-functions-into-subuniverses.html#3020" class="Bound">P</a> <a id="3022" class="Symbol">:</a> <a id="3024" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="3029" href="foundation.precomposition-functions-into-subuniverses.html#3004" class="Bound">l1</a><a id="3031" class="Symbol">)</a> <a id="3033" class="Symbol">(</a><a id="3034" href="foundation.precomposition-functions-into-subuniverses.html#3034" class="Bound">Q</a> <a id="3036" class="Symbol">:</a> <a id="3038" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="3043" href="foundation.precomposition-functions-into-subuniverses.html#3007" class="Bound">l2</a><a id="3045" class="Symbol">)</a> <a id="3047" class="Symbol">(</a><a id="3048" href="foundation.precomposition-functions-into-subuniverses.html#3048" class="Bound">f</a> <a id="3050" class="Symbol">:</a> <a id="3052" href="foundation-core.propositions.html#1045" class="Function">type-Prop</a> <a id="3062" href="foundation.precomposition-functions-into-subuniverses.html#3020" class="Bound">P</a> <a id="3064" class="Symbol">→</a> <a id="3066" href="foundation-core.propositions.html#1045" class="Function">type-Prop</a> <a id="3076" href="foundation.precomposition-functions-into-subuniverses.html#3034" class="Bound">Q</a><a id="3077" class="Symbol">)</a>
  <a id="3081" class="Keyword">where</a>

  <a id="3090" href="foundation.precomposition-functions-into-subuniverses.html#3090" class="Function">universal-property-equiv-Prop</a> <a id="3120" class="Symbol">:</a> <a id="3122" href="Agda.Primitive.html#512" class="Primitive">UUω</a>
  <a id="3128" href="foundation.precomposition-functions-into-subuniverses.html#3090" class="Function">universal-property-equiv-Prop</a> <a id="3158" class="Symbol">=</a>
    <a id="3164" class="Symbol">{</a><a id="3165" href="foundation.precomposition-functions-into-subuniverses.html#3165" class="Bound">l</a> <a id="3167" class="Symbol">:</a> <a id="3169" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="3174" class="Symbol">}</a> <a id="3176" class="Symbol">(</a><a id="3177" href="foundation.precomposition-functions-into-subuniverses.html#3177" class="Bound">R</a> <a id="3179" class="Symbol">:</a> <a id="3181" href="foundation-core.propositions.html#949" class="Function">Prop</a> <a id="3186" href="foundation.precomposition-functions-into-subuniverses.html#3165" class="Bound">l</a><a id="3187" class="Symbol">)</a> <a id="3189" class="Symbol">→</a> <a id="3191" href="foundation-core.equivalences.html#1647" class="Function">is-equiv</a> <a id="3200" class="Symbol">(</a><a id="3201" href="foundation-core.precomposition-functions.html#582" class="Function">precomp</a> <a id="3209" href="foundation.precomposition-functions-into-subuniverses.html#3048" class="Bound">f</a> <a id="3211" class="Symbol">(</a><a id="3212" href="foundation-core.propositions.html#1045" class="Function">type-Prop</a> <a id="3222" href="foundation.precomposition-functions-into-subuniverses.html#3177" class="Bound">R</a><a id="3223" class="Symbol">))</a>

  <a id="3229" href="foundation.precomposition-functions-into-subuniverses.html#3229" class="Function">is-equiv-is-equiv-precomp-Prop</a> <a id="3260" class="Symbol">:</a>
    <a id="3266" href="foundation.precomposition-functions-into-subuniverses.html#3090" class="Function">universal-property-equiv-Prop</a> <a id="3296" class="Symbol">→</a> <a id="3298" href="foundation-core.equivalences.html#1647" class="Function">is-equiv</a> <a id="3307" href="foundation.precomposition-functions-into-subuniverses.html#3048" class="Bound">f</a>
  <a id="3311" href="foundation.precomposition-functions-into-subuniverses.html#3229" class="Function">is-equiv-is-equiv-precomp-Prop</a> <a id="3342" class="Symbol">=</a>
    <a id="3348" href="foundation.precomposition-functions-into-subuniverses.html#2464" class="Function">is-equiv-is-equiv-precomp-structured-type</a> <a id="3390" class="Symbol">(λ</a> <a id="3393" href="foundation.precomposition-functions-into-subuniverses.html#3393" class="Bound">l</a> <a id="3395" class="Symbol">→</a> <a id="3397" href="foundation.precomposition-functions-into-subuniverses.html#3393" class="Bound">l</a><a id="3398" class="Symbol">)</a> <a id="3400" href="foundation-core.propositions.html#867" class="Function">is-prop</a> <a id="3408" href="foundation.precomposition-functions-into-subuniverses.html#3020" class="Bound">P</a> <a id="3410" href="foundation.precomposition-functions-into-subuniverses.html#3034" class="Bound">Q</a> <a id="3412" href="foundation.precomposition-functions-into-subuniverses.html#3048" class="Bound">f</a>
</pre>
### A map between sets is an equivalence if precomposition of functions into sets by that map is an equivalence

<pre class="Agda"><a id="3540" class="Keyword">module</a> <a id="3547" href="foundation.precomposition-functions-into-subuniverses.html#3547" class="Module">_</a>
  <a id="3551" class="Symbol">{</a><a id="3552" href="foundation.precomposition-functions-into-subuniverses.html#3552" class="Bound">l1</a> <a id="3555" href="foundation.precomposition-functions-into-subuniverses.html#3555" class="Bound">l2</a> <a id="3558" class="Symbol">:</a> <a id="3560" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="3565" class="Symbol">}</a> <a id="3567" class="Symbol">(</a><a id="3568" href="foundation.precomposition-functions-into-subuniverses.html#3568" class="Bound">A</a> <a id="3570" class="Symbol">:</a> <a id="3572" href="foundation-core.sets.html#689" class="Function">Set</a> <a id="3576" href="foundation.precomposition-functions-into-subuniverses.html#3552" class="Bound">l1</a><a id="3578" class="Symbol">)</a> <a id="3580" class="Symbol">(</a><a id="3581" href="foundation.precomposition-functions-into-subuniverses.html#3581" class="Bound">B</a> <a id="3583" class="Symbol">:</a> <a id="3585" href="foundation-core.sets.html#689" class="Function">Set</a> <a id="3589" href="foundation.precomposition-functions-into-subuniverses.html#3555" class="Bound">l2</a><a id="3591" class="Symbol">)</a> <a id="3593" class="Symbol">(</a><a id="3594" href="foundation.precomposition-functions-into-subuniverses.html#3594" class="Bound">f</a> <a id="3596" class="Symbol">:</a> <a id="3598" href="foundation-core.sets.html#792" class="Function">type-Set</a> <a id="3607" href="foundation.precomposition-functions-into-subuniverses.html#3568" class="Bound">A</a> <a id="3609" class="Symbol">→</a> <a id="3611" href="foundation-core.sets.html#792" class="Function">type-Set</a> <a id="3620" href="foundation.precomposition-functions-into-subuniverses.html#3581" class="Bound">B</a><a id="3621" class="Symbol">)</a>
  <a id="3625" class="Keyword">where</a>

  <a id="3634" href="foundation.precomposition-functions-into-subuniverses.html#3634" class="Function">universal-property-equiv-Set</a> <a id="3663" class="Symbol">:</a> <a id="3665" href="Agda.Primitive.html#512" class="Primitive">UUω</a>
  <a id="3671" href="foundation.precomposition-functions-into-subuniverses.html#3634" class="Function">universal-property-equiv-Set</a> <a id="3700" class="Symbol">=</a>
    <a id="3706" class="Symbol">{</a><a id="3707" href="foundation.precomposition-functions-into-subuniverses.html#3707" class="Bound">l</a> <a id="3709" class="Symbol">:</a> <a id="3711" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="3716" class="Symbol">}</a> <a id="3718" class="Symbol">(</a><a id="3719" href="foundation.precomposition-functions-into-subuniverses.html#3719" class="Bound">C</a> <a id="3721" class="Symbol">:</a> <a id="3723" href="foundation-core.sets.html#689" class="Function">Set</a> <a id="3727" href="foundation.precomposition-functions-into-subuniverses.html#3707" class="Bound">l</a><a id="3728" class="Symbol">)</a> <a id="3730" class="Symbol">→</a> <a id="3732" href="foundation-core.equivalences.html#1647" class="Function">is-equiv</a> <a id="3741" class="Symbol">(</a><a id="3742" href="foundation-core.precomposition-functions.html#582" class="Function">precomp</a> <a id="3750" href="foundation.precomposition-functions-into-subuniverses.html#3594" class="Bound">f</a> <a id="3752" class="Symbol">(</a><a id="3753" href="foundation-core.sets.html#792" class="Function">type-Set</a> <a id="3762" href="foundation.precomposition-functions-into-subuniverses.html#3719" class="Bound">C</a><a id="3763" class="Symbol">))</a>

  <a id="3769" href="foundation.precomposition-functions-into-subuniverses.html#3769" class="Function">is-equiv-is-equiv-precomp-Set</a> <a id="3799" class="Symbol">:</a>
    <a id="3805" href="foundation.precomposition-functions-into-subuniverses.html#3634" class="Function">universal-property-equiv-Set</a> <a id="3834" class="Symbol">→</a> <a id="3836" href="foundation-core.equivalences.html#1647" class="Function">is-equiv</a> <a id="3845" href="foundation.precomposition-functions-into-subuniverses.html#3594" class="Bound">f</a>
  <a id="3849" href="foundation.precomposition-functions-into-subuniverses.html#3769" class="Function">is-equiv-is-equiv-precomp-Set</a> <a id="3879" class="Symbol">=</a>
    <a id="3885" href="foundation.precomposition-functions-into-subuniverses.html#2464" class="Function">is-equiv-is-equiv-precomp-structured-type</a> <a id="3927" class="Symbol">(λ</a> <a id="3930" href="foundation.precomposition-functions-into-subuniverses.html#3930" class="Bound">l</a> <a id="3932" class="Symbol">→</a> <a id="3934" href="foundation.precomposition-functions-into-subuniverses.html#3930" class="Bound">l</a><a id="3935" class="Symbol">)</a> <a id="3937" href="foundation-core.sets.html#614" class="Function">is-set</a> <a id="3944" href="foundation.precomposition-functions-into-subuniverses.html#3568" class="Bound">A</a> <a id="3946" href="foundation.precomposition-functions-into-subuniverses.html#3581" class="Bound">B</a> <a id="3948" href="foundation.precomposition-functions-into-subuniverses.html#3594" class="Bound">f</a>
</pre>
### A map between truncated types is an equivalence if precomposition of functions into truncated types by that map is an equivalence

<pre class="Agda"><a id="4098" class="Keyword">module</a> <a id="4105" href="foundation.precomposition-functions-into-subuniverses.html#4105" class="Module">_</a>
  <a id="4109" class="Symbol">{</a><a id="4110" href="foundation.precomposition-functions-into-subuniverses.html#4110" class="Bound">l1</a> <a id="4113" href="foundation.precomposition-functions-into-subuniverses.html#4113" class="Bound">l2</a> <a id="4116" class="Symbol">:</a> <a id="4118" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="4123" class="Symbol">}</a> <a id="4125" class="Symbol">(</a><a id="4126" href="foundation.precomposition-functions-into-subuniverses.html#4126" class="Bound">k</a> <a id="4128" class="Symbol">:</a> <a id="4130" href="foundation-core.truncation-levels.html#521" class="Datatype">𝕋</a><a id="4131" class="Symbol">)</a>
  <a id="4135" class="Symbol">(</a><a id="4136" href="foundation.precomposition-functions-into-subuniverses.html#4136" class="Bound">A</a> <a id="4138" class="Symbol">:</a> <a id="4140" href="foundation-core.truncated-types.html#1534" class="Function">Truncated-Type</a> <a id="4155" href="foundation.precomposition-functions-into-subuniverses.html#4110" class="Bound">l1</a> <a id="4158" href="foundation.precomposition-functions-into-subuniverses.html#4126" class="Bound">k</a><a id="4159" class="Symbol">)</a> <a id="4161" class="Symbol">(</a><a id="4162" href="foundation.precomposition-functions-into-subuniverses.html#4162" class="Bound">B</a> <a id="4164" class="Symbol">:</a> <a id="4166" href="foundation-core.truncated-types.html#1534" class="Function">Truncated-Type</a> <a id="4181" href="foundation.precomposition-functions-into-subuniverses.html#4113" class="Bound">l2</a> <a id="4184" href="foundation.precomposition-functions-into-subuniverses.html#4126" class="Bound">k</a><a id="4185" class="Symbol">)</a>
  <a id="4189" class="Symbol">(</a><a id="4190" href="foundation.precomposition-functions-into-subuniverses.html#4190" class="Bound">f</a> <a id="4192" class="Symbol">:</a> <a id="4194" href="foundation-core.truncated-types.html#1667" class="Function">type-Truncated-Type</a> <a id="4214" href="foundation.precomposition-functions-into-subuniverses.html#4136" class="Bound">A</a> <a id="4216" class="Symbol">→</a> <a id="4218" href="foundation-core.truncated-types.html#1667" class="Function">type-Truncated-Type</a> <a id="4238" href="foundation.precomposition-functions-into-subuniverses.html#4162" class="Bound">B</a><a id="4239" class="Symbol">)</a>
  <a id="4243" class="Keyword">where</a>

  <a id="4252" href="foundation.precomposition-functions-into-subuniverses.html#4252" class="Function">universal-property-equiv-Truncated-Type</a> <a id="4292" class="Symbol">:</a> <a id="4294" href="Agda.Primitive.html#512" class="Primitive">UUω</a>
  <a id="4300" href="foundation.precomposition-functions-into-subuniverses.html#4252" class="Function">universal-property-equiv-Truncated-Type</a> <a id="4340" class="Symbol">=</a>
    <a id="4346" class="Symbol">{</a><a id="4347" href="foundation.precomposition-functions-into-subuniverses.html#4347" class="Bound">l</a> <a id="4349" class="Symbol">:</a> <a id="4351" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="4356" class="Symbol">}</a> <a id="4358" class="Symbol">(</a><a id="4359" href="foundation.precomposition-functions-into-subuniverses.html#4359" class="Bound">C</a> <a id="4361" class="Symbol">:</a> <a id="4363" href="foundation-core.truncated-types.html#1534" class="Function">Truncated-Type</a> <a id="4378" href="foundation.precomposition-functions-into-subuniverses.html#4347" class="Bound">l</a> <a id="4380" href="foundation.precomposition-functions-into-subuniverses.html#4126" class="Bound">k</a><a id="4381" class="Symbol">)</a> <a id="4383" class="Symbol">→</a>
    <a id="4389" href="foundation-core.equivalences.html#1647" class="Function">is-equiv</a> <a id="4398" class="Symbol">(</a><a id="4399" href="foundation-core.precomposition-functions.html#582" class="Function">precomp</a> <a id="4407" href="foundation.precomposition-functions-into-subuniverses.html#4190" class="Bound">f</a> <a id="4409" class="Symbol">(</a><a id="4410" href="foundation-core.truncated-types.html#1667" class="Function">type-Truncated-Type</a> <a id="4430" href="foundation.precomposition-functions-into-subuniverses.html#4359" class="Bound">C</a><a id="4431" class="Symbol">))</a>

  <a id="4437" href="foundation.precomposition-functions-into-subuniverses.html#4437" class="Function">is-equiv-is-equiv-precomp-Truncated-Type</a> <a id="4478" class="Symbol">:</a>
    <a id="4484" href="foundation.precomposition-functions-into-subuniverses.html#4252" class="Function">universal-property-equiv-Truncated-Type</a> <a id="4524" class="Symbol">→</a> <a id="4526" href="foundation-core.equivalences.html#1647" class="Function">is-equiv</a> <a id="4535" href="foundation.precomposition-functions-into-subuniverses.html#4190" class="Bound">f</a>
  <a id="4539" href="foundation.precomposition-functions-into-subuniverses.html#4437" class="Function">is-equiv-is-equiv-precomp-Truncated-Type</a> <a id="4580" class="Symbol">=</a>
    <a id="4586" href="foundation.precomposition-functions-into-subuniverses.html#2464" class="Function">is-equiv-is-equiv-precomp-structured-type</a> <a id="4628" class="Symbol">(λ</a> <a id="4631" href="foundation.precomposition-functions-into-subuniverses.html#4631" class="Bound">l</a> <a id="4633" class="Symbol">→</a> <a id="4635" href="foundation.precomposition-functions-into-subuniverses.html#4631" class="Bound">l</a><a id="4636" class="Symbol">)</a> <a id="4638" class="Symbol">(</a><a id="4639" href="foundation-core.truncated-types.html#1236" class="Function">is-trunc</a> <a id="4648" href="foundation.precomposition-functions-into-subuniverses.html#4126" class="Bound">k</a><a id="4649" class="Symbol">)</a> <a id="4651" href="foundation.precomposition-functions-into-subuniverses.html#4136" class="Bound">A</a> <a id="4653" href="foundation.precomposition-functions-into-subuniverses.html#4162" class="Bound">B</a> <a id="4655" href="foundation.precomposition-functions-into-subuniverses.html#4190" class="Bound">f</a>
</pre>