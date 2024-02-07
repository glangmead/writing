# The monoid of natural numbers with addition

<pre class="Agda"><a id="56" class="Keyword">module</a> <a id="63" href="elementary-number-theory.monoid-of-natural-numbers-with-addition.html" class="Module">elementary-number-theory.monoid-of-natural-numbers-with-addition</a> <a id="128" class="Keyword">where</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="184" class="Keyword">open</a> <a id="189" class="Keyword">import</a> <a id="196" href="elementary-number-theory.addition-natural-numbers.html" class="Module">elementary-number-theory.addition-natural-numbers</a>
<a id="246" class="Keyword">open</a> <a id="251" class="Keyword">import</a> <a id="258" href="elementary-number-theory.equality-natural-numbers.html" class="Module">elementary-number-theory.equality-natural-numbers</a>

<a id="309" class="Keyword">open</a> <a id="314" class="Keyword">import</a> <a id="321" href="foundation.dependent-pair-types.html" class="Module">foundation.dependent-pair-types</a>
<a id="353" class="Keyword">open</a> <a id="358" class="Keyword">import</a> <a id="365" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>

<a id="393" class="Keyword">open</a> <a id="398" class="Keyword">import</a> <a id="405" href="group-theory.commutative-monoids.html" class="Module">group-theory.commutative-monoids</a>
<a id="438" class="Keyword">open</a> <a id="443" class="Keyword">import</a> <a id="450" href="group-theory.monoids.html" class="Module">group-theory.monoids</a>
<a id="471" class="Keyword">open</a> <a id="476" class="Keyword">import</a> <a id="483" href="group-theory.semigroups.html" class="Module">group-theory.semigroups</a>
</pre>
</details>

## Idea

The natural numbers equipped with `0` and addition is a commutative monoid.

## Definitions

### The Semigroup of natural numbers

<pre class="Agda"><a id="ℕ-Semigroup"></a><a id="672" href="elementary-number-theory.monoid-of-natural-numbers-with-addition.html#672" class="Function">ℕ-Semigroup</a> <a id="684" class="Symbol">:</a> <a id="686" href="group-theory.semigroups.html#802" class="Function">Semigroup</a> <a id="696" href="Agda.Primitive.html#915" class="Primitive">lzero</a>
<a id="702" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="706" href="elementary-number-theory.monoid-of-natural-numbers-with-addition.html#672" class="Function">ℕ-Semigroup</a> <a id="718" class="Symbol">=</a> <a id="720" href="elementary-number-theory.equality-natural-numbers.html#1914" class="Function">ℕ-Set</a>
<a id="726" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="730" class="Symbol">(</a><a id="731" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="735" href="elementary-number-theory.monoid-of-natural-numbers-with-addition.html#672" class="Function">ℕ-Semigroup</a><a id="746" class="Symbol">)</a> <a id="748" class="Symbol">=</a> <a id="750" href="elementary-number-theory.addition-natural-numbers.html#791" class="Function">add-ℕ</a>
<a id="756" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="760" class="Symbol">(</a><a id="761" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="765" href="elementary-number-theory.monoid-of-natural-numbers-with-addition.html#672" class="Function">ℕ-Semigroup</a><a id="776" class="Symbol">)</a> <a id="778" class="Symbol">=</a> <a id="780" href="elementary-number-theory.addition-natural-numbers.html#1740" class="Function">associative-add-ℕ</a>
</pre>
### The monoid of natural numbers

<pre class="Agda"><a id="ℕ-Monoid"></a><a id="846" href="elementary-number-theory.monoid-of-natural-numbers-with-addition.html#846" class="Function">ℕ-Monoid</a> <a id="855" class="Symbol">:</a> <a id="857" href="group-theory.monoids.html#787" class="Function">Monoid</a> <a id="864" href="Agda.Primitive.html#915" class="Primitive">lzero</a>
<a id="870" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="874" href="elementary-number-theory.monoid-of-natural-numbers-with-addition.html#846" class="Function">ℕ-Monoid</a> <a id="883" class="Symbol">=</a> <a id="885" href="elementary-number-theory.monoid-of-natural-numbers-with-addition.html#672" class="Function">ℕ-Semigroup</a>
<a id="897" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="901" class="Symbol">(</a><a id="902" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="906" href="elementary-number-theory.monoid-of-natural-numbers-with-addition.html#846" class="Function">ℕ-Monoid</a><a id="914" class="Symbol">)</a> <a id="916" class="Symbol">=</a> <a id="918" class="Number">0</a>
<a id="920" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="924" class="Symbol">(</a><a id="925" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="929" class="Symbol">(</a><a id="930" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="934" href="elementary-number-theory.monoid-of-natural-numbers-with-addition.html#846" class="Function">ℕ-Monoid</a><a id="942" class="Symbol">))</a> <a id="945" class="Symbol">=</a> <a id="947" href="elementary-number-theory.addition-natural-numbers.html#1182" class="Function">left-unit-law-add-ℕ</a>
<a id="967" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="971" class="Symbol">(</a><a id="972" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="976" class="Symbol">(</a><a id="977" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="981" href="elementary-number-theory.monoid-of-natural-numbers-with-addition.html#846" class="Function">ℕ-Monoid</a><a id="989" class="Symbol">))</a> <a id="992" class="Symbol">=</a> <a id="994" href="elementary-number-theory.addition-natural-numbers.html#1100" class="Function">right-unit-law-add-ℕ</a>
</pre>
### The commutative monoid of natural numbers

<pre class="Agda"><a id="ℕ-Commutative-Monoid"></a><a id="1075" href="elementary-number-theory.monoid-of-natural-numbers-with-addition.html#1075" class="Function">ℕ-Commutative-Monoid</a> <a id="1096" class="Symbol">:</a> <a id="1098" href="group-theory.commutative-monoids.html#839" class="Function">Commutative-Monoid</a> <a id="1117" href="Agda.Primitive.html#915" class="Primitive">lzero</a>
<a id="1123" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="1127" href="elementary-number-theory.monoid-of-natural-numbers-with-addition.html#1075" class="Function">ℕ-Commutative-Monoid</a> <a id="1148" class="Symbol">=</a> <a id="1150" href="elementary-number-theory.monoid-of-natural-numbers-with-addition.html#846" class="Function">ℕ-Monoid</a>
<a id="1159" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="1163" href="elementary-number-theory.monoid-of-natural-numbers-with-addition.html#1075" class="Function">ℕ-Commutative-Monoid</a> <a id="1184" class="Symbol">=</a> <a id="1186" href="elementary-number-theory.addition-natural-numbers.html#1955" class="Function">commutative-add-ℕ</a>
</pre>