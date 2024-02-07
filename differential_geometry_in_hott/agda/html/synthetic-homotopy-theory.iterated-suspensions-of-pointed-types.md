# Iterated suspensions of pointed types

<pre class="Agda"><a id="50" class="Keyword">module</a> <a id="57" href="synthetic-homotopy-theory.iterated-suspensions-of-pointed-types.html" class="Module">synthetic-homotopy-theory.iterated-suspensions-of-pointed-types</a> <a id="121" class="Keyword">where</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="177" class="Keyword">open</a> <a id="182" class="Keyword">import</a> <a id="189" href="elementary-number-theory.natural-numbers.html" class="Module">elementary-number-theory.natural-numbers</a>

<a id="231" class="Keyword">open</a> <a id="236" class="Keyword">import</a> <a id="243" href="foundation.iterating-functions.html" class="Module">foundation.iterating-functions</a>
<a id="274" class="Keyword">open</a> <a id="279" class="Keyword">import</a> <a id="286" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>

<a id="314" class="Keyword">open</a> <a id="319" class="Keyword">import</a> <a id="326" href="structured-types.pointed-types.html" class="Module">structured-types.pointed-types</a>

<a id="358" class="Keyword">open</a> <a id="363" class="Keyword">import</a> <a id="370" href="synthetic-homotopy-theory.suspensions-of-pointed-types.html" class="Module">synthetic-homotopy-theory.suspensions-of-pointed-types</a>
</pre>
</details>

## Idea

Given a [pointed type](structured-types.pointed-types.md) `X` and a
[natural number](elementary-number-theory.natural-numbers.md) `n`, we can form
the **`n`-iterated suspension** of `X`.

## Definitions

### The iterated suspension of a pointed type

<pre class="Agda"><a id="iterated-suspension-Pointed-Type"></a><a id="710" href="synthetic-homotopy-theory.iterated-suspensions-of-pointed-types.html#710" class="Function">iterated-suspension-Pointed-Type</a> <a id="743" class="Symbol">:</a>
  <a id="747" class="Symbol">{</a><a id="748" href="synthetic-homotopy-theory.iterated-suspensions-of-pointed-types.html#748" class="Bound">l</a> <a id="750" class="Symbol">:</a> <a id="752" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="757" class="Symbol">}</a> <a id="759" class="Symbol">(</a><a id="760" href="synthetic-homotopy-theory.iterated-suspensions-of-pointed-types.html#760" class="Bound">n</a> <a id="762" class="Symbol">:</a> <a id="764" href="elementary-number-theory.natural-numbers.html#732" class="Datatype">ℕ</a><a id="765" class="Symbol">)</a> <a id="767" class="Symbol">→</a> <a id="769" href="structured-types.pointed-types.html#355" class="Function">Pointed-Type</a> <a id="782" href="synthetic-homotopy-theory.iterated-suspensions-of-pointed-types.html#748" class="Bound">l</a> <a id="784" class="Symbol">→</a> <a id="786" href="structured-types.pointed-types.html#355" class="Function">Pointed-Type</a> <a id="799" href="synthetic-homotopy-theory.iterated-suspensions-of-pointed-types.html#748" class="Bound">l</a>
<a id="801" href="synthetic-homotopy-theory.iterated-suspensions-of-pointed-types.html#710" class="Function">iterated-suspension-Pointed-Type</a> <a id="834" href="synthetic-homotopy-theory.iterated-suspensions-of-pointed-types.html#834" class="Bound">n</a> <a id="836" class="Symbol">=</a> <a id="838" href="foundation.iterating-functions.html#1086" class="Function">iterate</a> <a id="846" href="synthetic-homotopy-theory.iterated-suspensions-of-pointed-types.html#834" class="Bound">n</a> <a id="848" href="synthetic-homotopy-theory.suspensions-of-pointed-types.html#674" class="Function">suspension-Pointed-Type</a>
</pre>