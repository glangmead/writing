# Torsorial type families

<pre class="Agda"><a id="36" class="Keyword">module</a> <a id="43" href="foundation-core.torsorial-type-families.html" class="Module">foundation-core.torsorial-type-families</a> <a id="83" class="Keyword">where</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="139" class="Keyword">open</a> <a id="144" class="Keyword">import</a> <a id="151" href="foundation.dependent-pair-types.html" class="Module">foundation.dependent-pair-types</a>
<a id="183" class="Keyword">open</a> <a id="188" class="Keyword">import</a> <a id="195" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>

<a id="223" class="Keyword">open</a> <a id="228" class="Keyword">import</a> <a id="235" href="foundation-core.contractible-types.html" class="Module">foundation-core.contractible-types</a>
</pre>
</details>

## Idea

A type family `B` over `A` is said to be **torsorial** if its
[total space](foundation.dependent-pair-types.md) is
[contractible](foundation-core.contractible-types.md).

The terminology of torsorial type families is derived from torsors of higher
group theory, which are type families `X : BG → 𝒰` with contractible total
space. In the conventional sense of the word, a torsor is therefore a torsorial
type family over a
[pointed connected type](higher-group-theory.higher-groups.md). If we drop the
condition that they are defined over a pointed connected type, we get to the
notion of 'torsor-like', or indeed 'torsorial' type families.

## Definition

### The predicate of being a torsorial type family

<pre class="Agda"><a id="is-torsorial"></a><a id="1012" href="foundation-core.torsorial-type-families.html#1012" class="Function">is-torsorial</a> <a id="1025" class="Symbol">:</a>
  <a id="1029" class="Symbol">{</a><a id="1030" href="foundation-core.torsorial-type-families.html#1030" class="Bound">l1</a> <a id="1033" href="foundation-core.torsorial-type-families.html#1033" class="Bound">l2</a> <a id="1036" class="Symbol">:</a> <a id="1038" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="1043" class="Symbol">}</a> <a id="1045" class="Symbol">{</a><a id="1046" href="foundation-core.torsorial-type-families.html#1046" class="Bound">B</a> <a id="1048" class="Symbol">:</a> <a id="1050" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1053" href="foundation-core.torsorial-type-families.html#1030" class="Bound">l1</a><a id="1055" class="Symbol">}</a> <a id="1057" class="Symbol">→</a> <a id="1059" class="Symbol">(</a><a id="1060" href="foundation-core.torsorial-type-families.html#1046" class="Bound">B</a> <a id="1062" class="Symbol">→</a> <a id="1064" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1067" href="foundation-core.torsorial-type-families.html#1033" class="Bound">l2</a><a id="1069" class="Symbol">)</a> <a id="1071" class="Symbol">→</a> <a id="1073" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1076" class="Symbol">(</a><a id="1077" href="foundation-core.torsorial-type-families.html#1030" class="Bound">l1</a> <a id="1080" href="Agda.Primitive.html#961" class="Primitive Operator">⊔</a> <a id="1082" href="foundation-core.torsorial-type-families.html#1033" class="Bound">l2</a><a id="1084" class="Symbol">)</a>
<a id="1086" href="foundation-core.torsorial-type-families.html#1012" class="Function">is-torsorial</a> <a id="1099" href="foundation-core.torsorial-type-families.html#1099" class="Bound">E</a> <a id="1101" class="Symbol">=</a> <a id="1103" href="foundation-core.contractible-types.html#855" class="Function">is-contr</a> <a id="1112" class="Symbol">(</a><a id="1113" href="foundation.dependent-pair-types.html#505" class="Record">Σ</a> <a id="1115" class="Symbol">_</a> <a id="1117" href="foundation-core.torsorial-type-families.html#1099" class="Bound">E</a><a id="1118" class="Symbol">)</a>
</pre>