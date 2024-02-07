# The multiplicative monoid of natural numbers

<pre class="Agda"><a id="57" class="Keyword">module</a> <a id="64" href="elementary-number-theory.multiplicative-monoid-of-natural-numbers.html" class="Module">elementary-number-theory.multiplicative-monoid-of-natural-numbers</a> <a id="130" class="Keyword">where</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="186" class="Keyword">open</a> <a id="191" class="Keyword">import</a> <a id="198" href="elementary-number-theory.equality-natural-numbers.html" class="Module">elementary-number-theory.equality-natural-numbers</a>
<a id="248" class="Keyword">open</a> <a id="253" class="Keyword">import</a> <a id="260" href="elementary-number-theory.multiplication-natural-numbers.html" class="Module">elementary-number-theory.multiplication-natural-numbers</a>

<a id="317" class="Keyword">open</a> <a id="322" class="Keyword">import</a> <a id="329" href="foundation.dependent-pair-types.html" class="Module">foundation.dependent-pair-types</a>
<a id="361" class="Keyword">open</a> <a id="366" class="Keyword">import</a> <a id="373" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>

<a id="401" class="Keyword">open</a> <a id="406" class="Keyword">import</a> <a id="413" href="group-theory.monoids.html" class="Module">group-theory.monoids</a>
<a id="434" class="Keyword">open</a> <a id="439" class="Keyword">import</a> <a id="446" href="group-theory.semigroups.html" class="Module">group-theory.semigroups</a>
</pre>
</details>

## Idea

The **multiplicative monoid of natural numbers** consists of
[natural numbers](elementary-number-theory.natural-numbers.md), and is equipped
with the
[multiplication operation](elementary-number-theory.multiplication-natural-numbers.md)
of the natural numbers as its multiplicative structure.

## Definitions

### The multiplicative semigroup of natural numbers

<pre class="Agda"><a id="ℕ*-Semigroup"></a><a id="867" href="elementary-number-theory.multiplicative-monoid-of-natural-numbers.html#867" class="Function">ℕ*-Semigroup</a> <a id="880" class="Symbol">:</a> <a id="882" href="group-theory.semigroups.html#802" class="Function">Semigroup</a> <a id="892" href="Agda.Primitive.html#915" class="Primitive">lzero</a>
<a id="898" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="902" href="elementary-number-theory.multiplicative-monoid-of-natural-numbers.html#867" class="Function">ℕ*-Semigroup</a> <a id="915" class="Symbol">=</a> <a id="917" href="elementary-number-theory.equality-natural-numbers.html#1914" class="Function">ℕ-Set</a>
<a id="923" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="927" class="Symbol">(</a><a id="928" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="932" href="elementary-number-theory.multiplicative-monoid-of-natural-numbers.html#867" class="Function">ℕ*-Semigroup</a><a id="944" class="Symbol">)</a> <a id="946" class="Symbol">=</a> <a id="948" href="elementary-number-theory.multiplication-natural-numbers.html#1234" class="Function">mul-ℕ</a>
<a id="954" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="958" class="Symbol">(</a><a id="959" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="963" href="elementary-number-theory.multiplicative-monoid-of-natural-numbers.html#867" class="Function">ℕ*-Semigroup</a><a id="975" class="Symbol">)</a> <a id="977" class="Symbol">=</a> <a id="979" href="elementary-number-theory.multiplication-natural-numbers.html#3956" class="Function">associative-mul-ℕ</a>
</pre>
### The multiplicative monoid of natural numbers

<pre class="Agda"><a id="ℕ*-Monoid"></a><a id="1060" href="elementary-number-theory.multiplicative-monoid-of-natural-numbers.html#1060" class="Function">ℕ*-Monoid</a> <a id="1070" class="Symbol">:</a> <a id="1072" href="group-theory.monoids.html#787" class="Function">Monoid</a> <a id="1079" href="Agda.Primitive.html#915" class="Primitive">lzero</a>
<a id="1085" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="1089" href="elementary-number-theory.multiplicative-monoid-of-natural-numbers.html#1060" class="Function">ℕ*-Monoid</a> <a id="1099" class="Symbol">=</a> <a id="1101" href="elementary-number-theory.multiplicative-monoid-of-natural-numbers.html#867" class="Function">ℕ*-Semigroup</a>
<a id="1114" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="1118" class="Symbol">(</a><a id="1119" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="1123" href="elementary-number-theory.multiplicative-monoid-of-natural-numbers.html#1060" class="Function">ℕ*-Monoid</a><a id="1132" class="Symbol">)</a> <a id="1134" class="Symbol">=</a> <a id="1136" class="Number">1</a>
<a id="1138" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="1142" class="Symbol">(</a><a id="1143" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="1147" class="Symbol">(</a><a id="1148" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="1152" href="elementary-number-theory.multiplicative-monoid-of-natural-numbers.html#1060" class="Function">ℕ*-Monoid</a><a id="1161" class="Symbol">))</a> <a id="1164" class="Symbol">=</a> <a id="1166" href="elementary-number-theory.multiplication-natural-numbers.html#2056" class="Function">left-unit-law-mul-ℕ</a>
<a id="1186" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="1190" class="Symbol">(</a><a id="1191" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="1195" class="Symbol">(</a><a id="1196" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="1200" href="elementary-number-theory.multiplicative-monoid-of-natural-numbers.html#1060" class="Function">ℕ*-Monoid</a><a id="1209" class="Symbol">))</a> <a id="1212" class="Symbol">=</a> <a id="1214" href="elementary-number-theory.multiplication-natural-numbers.html#1897" class="Function">right-unit-law-mul-ℕ</a>
</pre>