# Function types

<pre class="Agda"><a id="27" class="Keyword">module</a> <a id="34" href="foundation.function-types.html" class="Module">foundation.function-types</a> <a id="60" class="Keyword">where</a>

<a id="67" class="Keyword">open</a> <a id="72" class="Keyword">import</a> <a id="79" href="foundation-core.function-types.html" class="Module">foundation-core.function-types</a> <a id="110" class="Keyword">public</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="167" class="Keyword">open</a> <a id="172" class="Keyword">import</a> <a id="179" href="foundation.action-on-identifications-dependent-functions.html" class="Module">foundation.action-on-identifications-dependent-functions</a>
<a id="236" class="Keyword">open</a> <a id="241" class="Keyword">import</a> <a id="248" href="foundation.function-extensionality.html" class="Module">foundation.function-extensionality</a>
<a id="283" class="Keyword">open</a> <a id="288" class="Keyword">import</a> <a id="295" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>

<a id="323" class="Keyword">open</a> <a id="328" class="Keyword">import</a> <a id="335" href="foundation-core.equivalences.html" class="Module">foundation-core.equivalences</a>
<a id="364" class="Keyword">open</a> <a id="369" class="Keyword">import</a> <a id="376" href="foundation-core.homotopies.html" class="Module">foundation-core.homotopies</a>
<a id="403" class="Keyword">open</a> <a id="408" class="Keyword">import</a> <a id="415" href="foundation-core.identity-types.html" class="Module">foundation-core.identity-types</a>
<a id="446" class="Keyword">open</a> <a id="451" class="Keyword">import</a> <a id="458" href="foundation-core.transport.html" class="Module">foundation-core.transport</a>
</pre>
</details>

## Properties

### Transport in a family of function types

<pre class="Agda"><a id="569" class="Keyword">module</a> <a id="576" href="foundation.function-types.html#576" class="Module">_</a>
  <a id="580" class="Symbol">{</a><a id="581" href="foundation.function-types.html#581" class="Bound">l1</a> <a id="584" href="foundation.function-types.html#584" class="Bound">l2</a> <a id="587" href="foundation.function-types.html#587" class="Bound">l3</a> <a id="590" class="Symbol">:</a> <a id="592" href="Agda.Primitive.html#591" class="Postulate">Level</a><a id="597" class="Symbol">}</a> <a id="599" class="Symbol">{</a><a id="600" href="foundation.function-types.html#600" class="Bound">A</a> <a id="602" class="Symbol">:</a> <a id="604" href="Agda.Primitive.html#320" class="Primitive">UU</a> <a id="607" href="foundation.function-types.html#581" class="Bound">l1</a><a id="609" class="Symbol">}</a> <a id="611" class="Symbol">{</a><a id="612" href="foundation.function-types.html#612" class="Bound">x</a> <a id="614" href="foundation.function-types.html#614" class="Bound">y</a> <a id="616" class="Symbol">:</a> <a id="618" href="foundation.function-types.html#600" class="Bound">A</a><a id="619" class="Symbol">}</a> <a id="621" class="Symbol">(</a><a id="622" href="foundation.function-types.html#622" class="Bound">B</a> <a id="624" class="Symbol">:</a> <a id="626" href="foundation.function-types.html#600" class="Bound">A</a> <a id="628" class="Symbol">→</a> <a id="630" href="Agda.Primitive.html#320" class="Primitive">UU</a> <a id="633" href="foundation.function-types.html#584" class="Bound">l2</a><a id="635" class="Symbol">)</a> <a id="637" class="Symbol">(</a><a id="638" href="foundation.function-types.html#638" class="Bound">C</a> <a id="640" class="Symbol">:</a> <a id="642" href="foundation.function-types.html#600" class="Bound">A</a> <a id="644" class="Symbol">→</a> <a id="646" href="Agda.Primitive.html#320" class="Primitive">UU</a> <a id="649" href="foundation.function-types.html#587" class="Bound">l3</a><a id="651" class="Symbol">)</a>
  <a id="655" class="Keyword">where</a>

  <a id="664" href="foundation.function-types.html#664" class="Function">tr-function-type</a> <a id="681" class="Symbol">:</a>
    <a id="687" class="Symbol">(</a><a id="688" href="foundation.function-types.html#688" class="Bound">p</a> <a id="690" class="Symbol">:</a> <a id="692" href="foundation.function-types.html#612" class="Bound">x</a> <a id="694" href="foundation-core.identity-types.html#5608" class="Function Operator">＝</a> <a id="696" href="foundation.function-types.html#614" class="Bound">y</a><a id="697" class="Symbol">)</a> <a id="699" class="Symbol">(</a><a id="700" href="foundation.function-types.html#700" class="Bound">f</a> <a id="702" class="Symbol">:</a> <a id="704" href="foundation.function-types.html#622" class="Bound">B</a> <a id="706" href="foundation.function-types.html#612" class="Bound">x</a> <a id="708" class="Symbol">→</a> <a id="710" href="foundation.function-types.html#638" class="Bound">C</a> <a id="712" href="foundation.function-types.html#612" class="Bound">x</a><a id="713" class="Symbol">)</a> <a id="715" class="Symbol">→</a>
    <a id="721" href="foundation-core.transport.html#641" class="Function">tr</a> <a id="724" class="Symbol">(λ</a> <a id="727" href="foundation.function-types.html#727" class="Bound">a</a> <a id="729" class="Symbol">→</a> <a id="731" href="foundation.function-types.html#622" class="Bound">B</a> <a id="733" href="foundation.function-types.html#727" class="Bound">a</a> <a id="735" class="Symbol">→</a> <a id="737" href="foundation.function-types.html#638" class="Bound">C</a> <a id="739" href="foundation.function-types.html#727" class="Bound">a</a><a id="740" class="Symbol">)</a> <a id="742" href="foundation.function-types.html#688" class="Bound">p</a> <a id="744" href="foundation.function-types.html#700" class="Bound">f</a> <a id="746" href="foundation-core.identity-types.html#5608" class="Function Operator">＝</a> <a id="748" class="Symbol">(</a><a id="749" href="foundation-core.transport.html#641" class="Function">tr</a> <a id="752" href="foundation.function-types.html#638" class="Bound">C</a> <a id="754" href="foundation.function-types.html#688" class="Bound">p</a> <a id="756" href="foundation-core.function-types.html#440" class="Function Operator">∘</a> <a id="758" class="Symbol">(</a><a id="759" href="foundation.function-types.html#700" class="Bound">f</a> <a id="761" href="foundation-core.function-types.html#440" class="Function Operator">∘</a> <a id="763" href="foundation-core.transport.html#641" class="Function">tr</a> <a id="766" href="foundation.function-types.html#622" class="Bound">B</a> <a id="768" class="Symbol">(</a><a id="769" href="foundation-core.identity-types.html#6845" class="Function">inv</a> <a id="773" href="foundation.function-types.html#688" class="Bound">p</a><a id="774" class="Symbol">)))</a>
  <a id="780" href="foundation.function-types.html#664" class="Function">tr-function-type</a> <a id="797" href="foundation-core.identity-types.html#5591" class="InductiveConstructor">refl</a> <a id="802" href="foundation.function-types.html#802" class="Bound">f</a> <a id="804" class="Symbol">=</a> <a id="806" href="foundation-core.identity-types.html#5591" class="InductiveConstructor">refl</a>

  <a id="814" href="foundation.function-types.html#814" class="Function">compute-dependent-identification-function-type</a> <a id="861" class="Symbol">:</a>
    <a id="867" class="Symbol">(</a><a id="868" href="foundation.function-types.html#868" class="Bound">p</a> <a id="870" class="Symbol">:</a> <a id="872" href="foundation.function-types.html#612" class="Bound">x</a> <a id="874" href="foundation-core.identity-types.html#5608" class="Function Operator">＝</a> <a id="876" href="foundation.function-types.html#614" class="Bound">y</a><a id="877" class="Symbol">)</a> <a id="879" class="Symbol">(</a><a id="880" href="foundation.function-types.html#880" class="Bound">f</a> <a id="882" class="Symbol">:</a> <a id="884" href="foundation.function-types.html#622" class="Bound">B</a> <a id="886" href="foundation.function-types.html#612" class="Bound">x</a> <a id="888" class="Symbol">→</a> <a id="890" href="foundation.function-types.html#638" class="Bound">C</a> <a id="892" href="foundation.function-types.html#612" class="Bound">x</a><a id="893" class="Symbol">)</a> <a id="895" class="Symbol">(</a><a id="896" href="foundation.function-types.html#896" class="Bound">g</a> <a id="898" class="Symbol">:</a> <a id="900" href="foundation.function-types.html#622" class="Bound">B</a> <a id="902" href="foundation.function-types.html#614" class="Bound">y</a> <a id="904" class="Symbol">→</a> <a id="906" href="foundation.function-types.html#638" class="Bound">C</a> <a id="908" href="foundation.function-types.html#614" class="Bound">y</a><a id="909" class="Symbol">)</a> <a id="911" class="Symbol">→</a>
    <a id="917" class="Symbol">((</a><a id="919" href="foundation.function-types.html#919" class="Bound">b</a> <a id="921" class="Symbol">:</a> <a id="923" href="foundation.function-types.html#622" class="Bound">B</a> <a id="925" href="foundation.function-types.html#612" class="Bound">x</a><a id="926" class="Symbol">)</a> <a id="928" class="Symbol">→</a> <a id="930" href="foundation-core.transport.html#641" class="Function">tr</a> <a id="933" href="foundation.function-types.html#638" class="Bound">C</a> <a id="935" href="foundation.function-types.html#868" class="Bound">p</a> <a id="937" class="Symbol">(</a><a id="938" href="foundation.function-types.html#880" class="Bound">f</a> <a id="940" href="foundation.function-types.html#919" class="Bound">b</a><a id="941" class="Symbol">)</a> <a id="943" href="foundation-core.identity-types.html#5608" class="Function Operator">＝</a> <a id="945" href="foundation.function-types.html#896" class="Bound">g</a> <a id="947" class="Symbol">(</a><a id="948" href="foundation-core.transport.html#641" class="Function">tr</a> <a id="951" href="foundation.function-types.html#622" class="Bound">B</a> <a id="953" href="foundation.function-types.html#868" class="Bound">p</a> <a id="955" href="foundation.function-types.html#919" class="Bound">b</a><a id="956" class="Symbol">))</a> <a id="959" href="foundation-core.equivalences.html#1334" class="Function Operator">≃</a>
    <a id="965" class="Symbol">(</a><a id="966" href="foundation-core.transport.html#641" class="Function">tr</a> <a id="969" class="Symbol">(λ</a> <a id="972" href="foundation.function-types.html#972" class="Bound">a</a> <a id="974" class="Symbol">→</a> <a id="976" href="foundation.function-types.html#622" class="Bound">B</a> <a id="978" href="foundation.function-types.html#972" class="Bound">a</a> <a id="980" class="Symbol">→</a> <a id="982" href="foundation.function-types.html#638" class="Bound">C</a> <a id="984" href="foundation.function-types.html#972" class="Bound">a</a><a id="985" class="Symbol">)</a> <a id="987" href="foundation.function-types.html#868" class="Bound">p</a> <a id="989" href="foundation.function-types.html#880" class="Bound">f</a> <a id="991" href="foundation-core.identity-types.html#5608" class="Function Operator">＝</a> <a id="993" href="foundation.function-types.html#896" class="Bound">g</a><a id="994" class="Symbol">)</a>
  <a id="998" href="foundation.function-types.html#814" class="Function">compute-dependent-identification-function-type</a> <a id="1045" href="foundation-core.identity-types.html#5591" class="InductiveConstructor">refl</a> <a id="1050" href="foundation.function-types.html#1050" class="Bound">f</a> <a id="1052" href="foundation.function-types.html#1052" class="Bound">g</a> <a id="1054" class="Symbol">=</a>
    <a id="1060" href="foundation-core.equivalences.html#7104" class="Function">inv-equiv</a> <a id="1070" href="foundation.function-extensionality.html#1176" class="Function">equiv-funext</a>

  <a id="1086" href="foundation.function-types.html#1086" class="Function">map-compute-dependent-identification-function-type</a> <a id="1137" class="Symbol">:</a>
    <a id="1143" class="Symbol">(</a><a id="1144" href="foundation.function-types.html#1144" class="Bound">p</a> <a id="1146" class="Symbol">:</a> <a id="1148" href="foundation.function-types.html#612" class="Bound">x</a> <a id="1150" href="foundation-core.identity-types.html#5608" class="Function Operator">＝</a> <a id="1152" href="foundation.function-types.html#614" class="Bound">y</a><a id="1153" class="Symbol">)</a> <a id="1155" class="Symbol">(</a><a id="1156" href="foundation.function-types.html#1156" class="Bound">f</a> <a id="1158" class="Symbol">:</a> <a id="1160" href="foundation.function-types.html#622" class="Bound">B</a> <a id="1162" href="foundation.function-types.html#612" class="Bound">x</a> <a id="1164" class="Symbol">→</a> <a id="1166" href="foundation.function-types.html#638" class="Bound">C</a> <a id="1168" href="foundation.function-types.html#612" class="Bound">x</a><a id="1169" class="Symbol">)</a> <a id="1171" class="Symbol">(</a><a id="1172" href="foundation.function-types.html#1172" class="Bound">g</a> <a id="1174" class="Symbol">:</a> <a id="1176" href="foundation.function-types.html#622" class="Bound">B</a> <a id="1178" href="foundation.function-types.html#614" class="Bound">y</a> <a id="1180" class="Symbol">→</a> <a id="1182" href="foundation.function-types.html#638" class="Bound">C</a> <a id="1184" href="foundation.function-types.html#614" class="Bound">y</a><a id="1185" class="Symbol">)</a> <a id="1187" class="Symbol">→</a>
    <a id="1193" class="Symbol">((</a><a id="1195" href="foundation.function-types.html#1195" class="Bound">b</a> <a id="1197" class="Symbol">:</a> <a id="1199" href="foundation.function-types.html#622" class="Bound">B</a> <a id="1201" href="foundation.function-types.html#612" class="Bound">x</a><a id="1202" class="Symbol">)</a> <a id="1204" class="Symbol">→</a> <a id="1206" href="foundation-core.transport.html#641" class="Function">tr</a> <a id="1209" href="foundation.function-types.html#638" class="Bound">C</a> <a id="1211" href="foundation.function-types.html#1144" class="Bound">p</a> <a id="1213" class="Symbol">(</a><a id="1214" href="foundation.function-types.html#1156" class="Bound">f</a> <a id="1216" href="foundation.function-types.html#1195" class="Bound">b</a><a id="1217" class="Symbol">)</a> <a id="1219" href="foundation-core.identity-types.html#5608" class="Function Operator">＝</a> <a id="1221" href="foundation.function-types.html#1172" class="Bound">g</a> <a id="1223" class="Symbol">(</a><a id="1224" href="foundation-core.transport.html#641" class="Function">tr</a> <a id="1227" href="foundation.function-types.html#622" class="Bound">B</a> <a id="1229" href="foundation.function-types.html#1144" class="Bound">p</a> <a id="1231" href="foundation.function-types.html#1195" class="Bound">b</a><a id="1232" class="Symbol">))</a> <a id="1235" class="Symbol">→</a>
    <a id="1241" class="Symbol">(</a><a id="1242" href="foundation-core.transport.html#641" class="Function">tr</a> <a id="1245" class="Symbol">(λ</a> <a id="1248" href="foundation.function-types.html#1248" class="Bound">a</a> <a id="1250" class="Symbol">→</a> <a id="1252" href="foundation.function-types.html#622" class="Bound">B</a> <a id="1254" href="foundation.function-types.html#1248" class="Bound">a</a> <a id="1256" class="Symbol">→</a> <a id="1258" href="foundation.function-types.html#638" class="Bound">C</a> <a id="1260" href="foundation.function-types.html#1248" class="Bound">a</a><a id="1261" class="Symbol">)</a> <a id="1263" href="foundation.function-types.html#1144" class="Bound">p</a> <a id="1265" href="foundation.function-types.html#1156" class="Bound">f</a> <a id="1267" href="foundation-core.identity-types.html#5608" class="Function Operator">＝</a> <a id="1269" href="foundation.function-types.html#1172" class="Bound">g</a><a id="1270" class="Symbol">)</a>
  <a id="1274" href="foundation.function-types.html#1086" class="Function">map-compute-dependent-identification-function-type</a> <a id="1325" href="foundation.function-types.html#1325" class="Bound">p</a> <a id="1327" href="foundation.function-types.html#1327" class="Bound">f</a> <a id="1329" href="foundation.function-types.html#1329" class="Bound">g</a> <a id="1331" class="Symbol">=</a>
    <a id="1337" href="foundation-core.equivalences.html#2239" class="Function">map-equiv</a> <a id="1347" class="Symbol">(</a><a id="1348" href="foundation.function-types.html#814" class="Function">compute-dependent-identification-function-type</a> <a id="1395" href="foundation.function-types.html#1325" class="Bound">p</a> <a id="1397" href="foundation.function-types.html#1327" class="Bound">f</a> <a id="1399" href="foundation.function-types.html#1329" class="Bound">g</a><a id="1400" class="Symbol">)</a>
</pre>
Relation between`compute-dependent-identification-function-type` and
`preserves-tr`

<pre class="Agda"><a id="1500" class="Keyword">module</a> <a id="1507" href="foundation.function-types.html#1507" class="Module">_</a>
  <a id="1511" class="Symbol">{</a><a id="1512" href="foundation.function-types.html#1512" class="Bound">l1</a> <a id="1515" href="foundation.function-types.html#1515" class="Bound">l2</a> <a id="1518" href="foundation.function-types.html#1518" class="Bound">l3</a> <a id="1521" class="Symbol">:</a> <a id="1523" href="Agda.Primitive.html#591" class="Postulate">Level</a><a id="1528" class="Symbol">}</a> <a id="1530" class="Symbol">{</a><a id="1531" href="foundation.function-types.html#1531" class="Bound">I</a> <a id="1533" class="Symbol">:</a> <a id="1535" href="Agda.Primitive.html#320" class="Primitive">UU</a> <a id="1538" href="foundation.function-types.html#1512" class="Bound">l1</a><a id="1540" class="Symbol">}</a> <a id="1542" class="Symbol">{</a><a id="1543" href="foundation.function-types.html#1543" class="Bound">i0</a> <a id="1546" href="foundation.function-types.html#1546" class="Bound">i1</a> <a id="1549" class="Symbol">:</a> <a id="1551" href="foundation.function-types.html#1531" class="Bound">I</a><a id="1552" class="Symbol">}</a> <a id="1554" class="Symbol">{</a><a id="1555" href="foundation.function-types.html#1555" class="Bound">A</a> <a id="1557" class="Symbol">:</a> <a id="1559" href="foundation.function-types.html#1531" class="Bound">I</a> <a id="1561" class="Symbol">→</a> <a id="1563" href="Agda.Primitive.html#320" class="Primitive">UU</a> <a id="1566" href="foundation.function-types.html#1515" class="Bound">l2</a><a id="1568" class="Symbol">}</a> <a id="1570" class="Symbol">{</a><a id="1571" href="foundation.function-types.html#1571" class="Bound">B</a> <a id="1573" class="Symbol">:</a> <a id="1575" href="foundation.function-types.html#1531" class="Bound">I</a> <a id="1577" class="Symbol">→</a> <a id="1579" href="Agda.Primitive.html#320" class="Primitive">UU</a> <a id="1582" href="foundation.function-types.html#1518" class="Bound">l3</a><a id="1584" class="Symbol">}</a>
  <a id="1588" class="Symbol">(</a><a id="1589" href="foundation.function-types.html#1589" class="Bound">f</a> <a id="1591" class="Symbol">:</a> <a id="1593" class="Symbol">(</a><a id="1594" href="foundation.function-types.html#1594" class="Bound">i</a> <a id="1596" class="Symbol">:</a> <a id="1598" href="foundation.function-types.html#1531" class="Bound">I</a><a id="1599" class="Symbol">)</a> <a id="1601" class="Symbol">→</a> <a id="1603" href="foundation.function-types.html#1555" class="Bound">A</a> <a id="1605" href="foundation.function-types.html#1594" class="Bound">i</a> <a id="1607" class="Symbol">→</a> <a id="1609" href="foundation.function-types.html#1571" class="Bound">B</a> <a id="1611" href="foundation.function-types.html#1594" class="Bound">i</a><a id="1612" class="Symbol">)</a>
  <a id="1616" class="Keyword">where</a>

  <a id="1625" href="foundation.function-types.html#1625" class="Function">preserves-tr-apd-function</a> <a id="1651" class="Symbol">:</a>
    <a id="1657" class="Symbol">(</a><a id="1658" href="foundation.function-types.html#1658" class="Bound">p</a> <a id="1660" class="Symbol">:</a> <a id="1662" href="foundation.function-types.html#1543" class="Bound">i0</a> <a id="1665" href="foundation-core.identity-types.html#5608" class="Function Operator">＝</a> <a id="1667" href="foundation.function-types.html#1546" class="Bound">i1</a><a id="1669" class="Symbol">)</a> <a id="1671" class="Symbol">(</a><a id="1672" href="foundation.function-types.html#1672" class="Bound">a</a> <a id="1674" class="Symbol">:</a> <a id="1676" href="foundation.function-types.html#1555" class="Bound">A</a> <a id="1678" href="foundation.function-types.html#1543" class="Bound">i0</a><a id="1680" class="Symbol">)</a> <a id="1682" class="Symbol">→</a>
    <a id="1688" href="foundation-core.equivalences.html#6373" class="Function">map-inv-equiv</a>
      <a id="1708" class="Symbol">(</a> <a id="1710" href="foundation.function-types.html#814" class="Function">compute-dependent-identification-function-type</a> <a id="1757" href="foundation.function-types.html#1555" class="Bound">A</a> <a id="1759" href="foundation.function-types.html#1571" class="Bound">B</a> <a id="1761" href="foundation.function-types.html#1658" class="Bound">p</a> <a id="1763" class="Symbol">(</a><a id="1764" href="foundation.function-types.html#1589" class="Bound">f</a> <a id="1766" href="foundation.function-types.html#1543" class="Bound">i0</a><a id="1768" class="Symbol">)</a> <a id="1770" class="Symbol">(</a><a id="1771" href="foundation.function-types.html#1589" class="Bound">f</a> <a id="1773" href="foundation.function-types.html#1546" class="Bound">i1</a><a id="1775" class="Symbol">))</a>
      <a id="1784" class="Symbol">(</a> <a id="1786" href="foundation.action-on-identifications-dependent-functions.html#1159" class="Function">apd</a> <a id="1790" href="foundation.function-types.html#1589" class="Bound">f</a> <a id="1792" href="foundation.function-types.html#1658" class="Bound">p</a><a id="1793" class="Symbol">)</a> <a id="1795" href="foundation.function-types.html#1672" class="Bound">a</a> <a id="1797" href="foundation-core.identity-types.html#5608" class="Function Operator">＝</a>
    <a id="1803" href="foundation-core.homotopies.html#2630" class="Function">inv-htpy</a> <a id="1812" class="Symbol">(</a><a id="1813" href="foundation-core.transport.html#1500" class="Function">preserves-tr</a> <a id="1826" href="foundation.function-types.html#1589" class="Bound">f</a> <a id="1828" href="foundation.function-types.html#1658" class="Bound">p</a><a id="1829" class="Symbol">)</a> <a id="1831" href="foundation.function-types.html#1672" class="Bound">a</a>
  <a id="1835" href="foundation.function-types.html#1625" class="Function">preserves-tr-apd-function</a> <a id="1861" href="foundation-core.identity-types.html#5591" class="InductiveConstructor">refl</a> <a id="1866" class="Symbol">=</a> <a id="1868" href="foundation-core.homotopies.html#2457" class="Function">refl-htpy</a>
</pre>