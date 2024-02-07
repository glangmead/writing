# Univalent type families

<pre class="Agda"><a id="36" class="Keyword">module</a> <a id="43" href="foundation.univalent-type-families.html" class="Module">foundation.univalent-type-families</a> <a id="78" class="Keyword">where</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="134" class="Keyword">open</a> <a id="139" class="Keyword">import</a> <a id="146" href="foundation.transport-along-identifications.html" class="Module">foundation.transport-along-identifications</a>
<a id="189" class="Keyword">open</a> <a id="194" class="Keyword">import</a> <a id="201" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>

<a id="229" class="Keyword">open</a> <a id="234" class="Keyword">import</a> <a id="241" href="foundation-core.equivalences.html" class="Module">foundation-core.equivalences</a>
<a id="270" class="Keyword">open</a> <a id="275" class="Keyword">import</a> <a id="282" href="foundation-core.identity-types.html" class="Module">foundation-core.identity-types</a>
</pre>
</details>

## Idea

A type family `B` over `A` is said to be univalent if the map

```text
  equiv-tr : (Id x y) → (B x ≃ B y)
```

is an equivalence for every `x y : A`.

## Definition

<pre class="Agda"><a id="is-univalent"></a><a id="514" href="foundation.univalent-type-families.html#514" class="Function">is-univalent</a> <a id="527" class="Symbol">:</a>
  <a id="531" class="Symbol">{</a><a id="532" href="foundation.univalent-type-families.html#532" class="Bound">l1</a> <a id="535" href="foundation.univalent-type-families.html#535" class="Bound">l2</a> <a id="538" class="Symbol">:</a> <a id="540" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="545" class="Symbol">}</a> <a id="547" class="Symbol">{</a><a id="548" href="foundation.univalent-type-families.html#548" class="Bound">A</a> <a id="550" class="Symbol">:</a> <a id="552" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="555" href="foundation.univalent-type-families.html#532" class="Bound">l1</a><a id="557" class="Symbol">}</a> <a id="559" class="Symbol">→</a> <a id="561" class="Symbol">(</a><a id="562" href="foundation.univalent-type-families.html#548" class="Bound">A</a> <a id="564" class="Symbol">→</a> <a id="566" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="569" href="foundation.univalent-type-families.html#535" class="Bound">l2</a><a id="571" class="Symbol">)</a> <a id="573" class="Symbol">→</a> <a id="575" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="578" class="Symbol">(</a><a id="579" href="foundation.univalent-type-families.html#532" class="Bound">l1</a> <a id="582" href="Agda.Primitive.html#961" class="Primitive Operator">⊔</a> <a id="584" href="foundation.univalent-type-families.html#535" class="Bound">l2</a><a id="586" class="Symbol">)</a>
<a id="588" href="foundation.univalent-type-families.html#514" class="Function">is-univalent</a> <a id="601" class="Symbol">{</a><a id="602" class="Argument">A</a> <a id="604" class="Symbol">=</a> <a id="606" href="foundation.univalent-type-families.html#606" class="Bound">A</a><a id="607" class="Symbol">}</a> <a id="609" href="foundation.univalent-type-families.html#609" class="Bound">B</a> <a id="611" class="Symbol">=</a> <a id="613" class="Symbol">(</a><a id="614" href="foundation.univalent-type-families.html#614" class="Bound">x</a> <a id="616" href="foundation.univalent-type-families.html#616" class="Bound">y</a> <a id="618" class="Symbol">:</a> <a id="620" href="foundation.univalent-type-families.html#606" class="Bound">A</a><a id="621" class="Symbol">)</a> <a id="623" class="Symbol">→</a> <a id="625" href="foundation-core.equivalences.html#1647" class="Function">is-equiv</a> <a id="634" class="Symbol">(λ</a> <a id="637" class="Symbol">(</a><a id="638" href="foundation.univalent-type-families.html#638" class="Bound">p</a> <a id="640" class="Symbol">:</a> <a id="642" href="foundation.univalent-type-families.html#614" class="Bound">x</a> <a id="644" href="foundation-core.identity-types.html#1953" class="Function Operator">＝</a> <a id="646" href="foundation.univalent-type-families.html#616" class="Bound">y</a><a id="647" class="Symbol">)</a> <a id="649" class="Symbol">→</a> <a id="651" href="foundation.transport-along-identifications.html#1450" class="Function">equiv-tr</a> <a id="660" href="foundation.univalent-type-families.html#609" class="Bound">B</a> <a id="662" href="foundation.univalent-type-families.html#638" class="Bound">p</a><a id="663" class="Symbol">)</a>
</pre>