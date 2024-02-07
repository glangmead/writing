# Injective maps

<pre class="Agda"><a id="27" class="Keyword">module</a> <a id="34" href="foundation.injective-maps.html" class="Module">foundation.injective-maps</a> <a id="60" class="Keyword">where</a>

<a id="67" class="Keyword">open</a> <a id="72" class="Keyword">import</a> <a id="79" href="foundation-core.injective-maps.html" class="Module">foundation-core.injective-maps</a> <a id="110" class="Keyword">public</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="167" class="Keyword">open</a> <a id="172" class="Keyword">import</a> <a id="179" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>

<a id="207" class="Keyword">open</a> <a id="212" class="Keyword">import</a> <a id="219" href="foundation-core.empty-types.html" class="Module">foundation-core.empty-types</a>
<a id="247" class="Keyword">open</a> <a id="252" class="Keyword">import</a> <a id="259" href="foundation-core.negation.html" class="Module">foundation-core.negation</a>
</pre>
</details>

## Idea

A map `f : A → B` is **injective** if `f x ＝ f y` implies `x ＝ y`.

## Warning

The notion of injective map is, however, not homotopically coherent. It is fine
to use injectivity for maps between [sets](foundation-core.sets.md), but for
maps between general types it is recommended to use the notion of
[embedding](foundation-core.embeddings.md).

## Definitions

### Non-injective maps

<pre class="Agda"><a id="706" class="Keyword">module</a> <a id="713" href="foundation.injective-maps.html#713" class="Module">_</a>
  <a id="717" class="Symbol">{</a><a id="718" href="foundation.injective-maps.html#718" class="Bound">l1</a> <a id="721" href="foundation.injective-maps.html#721" class="Bound">l2</a> <a id="724" class="Symbol">:</a> <a id="726" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="731" class="Symbol">}</a> <a id="733" class="Symbol">{</a><a id="734" href="foundation.injective-maps.html#734" class="Bound">A</a> <a id="736" class="Symbol">:</a> <a id="738" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="741" href="foundation.injective-maps.html#718" class="Bound">l1</a><a id="743" class="Symbol">}</a> <a id="745" class="Symbol">{</a><a id="746" href="foundation.injective-maps.html#746" class="Bound">B</a> <a id="748" class="Symbol">:</a> <a id="750" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="753" href="foundation.injective-maps.html#721" class="Bound">l2</a><a id="755" class="Symbol">}</a>
  <a id="759" class="Keyword">where</a>

  <a id="768" href="foundation.injective-maps.html#768" class="Function">is-not-injective</a> <a id="785" class="Symbol">:</a> <a id="787" class="Symbol">(</a><a id="788" href="foundation.injective-maps.html#734" class="Bound">A</a> <a id="790" class="Symbol">→</a> <a id="792" href="foundation.injective-maps.html#746" class="Bound">B</a><a id="793" class="Symbol">)</a> <a id="795" class="Symbol">→</a> <a id="797" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="800" class="Symbol">(</a><a id="801" href="foundation.injective-maps.html#718" class="Bound">l1</a> <a id="804" href="Agda.Primitive.html#961" class="Primitive Operator">⊔</a> <a id="806" href="foundation.injective-maps.html#721" class="Bound">l2</a><a id="808" class="Symbol">)</a>
  <a id="812" href="foundation.injective-maps.html#768" class="Function">is-not-injective</a> <a id="829" href="foundation.injective-maps.html#829" class="Bound">f</a> <a id="831" class="Symbol">=</a> <a id="833" href="foundation-core.negation.html#434" class="Function">¬</a> <a id="835" class="Symbol">(</a><a id="836" href="foundation-core.injective-maps.html#1071" class="Function">is-injective</a> <a id="849" href="foundation.injective-maps.html#829" class="Bound">f</a><a id="850" class="Symbol">)</a>
</pre>
### Any map out of an empty type is injective

<pre class="Agda"><a id="is-injective-is-empty"></a><a id="912" href="foundation.injective-maps.html#912" class="Function">is-injective-is-empty</a> <a id="934" class="Symbol">:</a>
  <a id="938" class="Symbol">{</a><a id="939" href="foundation.injective-maps.html#939" class="Bound">l1</a> <a id="942" href="foundation.injective-maps.html#942" class="Bound">l2</a> <a id="945" class="Symbol">:</a> <a id="947" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="952" class="Symbol">}</a> <a id="954" class="Symbol">{</a><a id="955" href="foundation.injective-maps.html#955" class="Bound">A</a> <a id="957" class="Symbol">:</a> <a id="959" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="962" href="foundation.injective-maps.html#939" class="Bound">l1</a><a id="964" class="Symbol">}</a> <a id="966" class="Symbol">{</a><a id="967" href="foundation.injective-maps.html#967" class="Bound">B</a> <a id="969" class="Symbol">:</a> <a id="971" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="974" href="foundation.injective-maps.html#942" class="Bound">l2</a><a id="976" class="Symbol">}</a> <a id="978" class="Symbol">(</a><a id="979" href="foundation.injective-maps.html#979" class="Bound">f</a> <a id="981" class="Symbol">:</a> <a id="983" href="foundation.injective-maps.html#955" class="Bound">A</a> <a id="985" class="Symbol">→</a> <a id="987" href="foundation.injective-maps.html#967" class="Bound">B</a><a id="988" class="Symbol">)</a> <a id="990" class="Symbol">→</a>
  <a id="994" href="foundation-core.empty-types.html#972" class="Function">is-empty</a> <a id="1003" href="foundation.injective-maps.html#955" class="Bound">A</a> <a id="1005" class="Symbol">→</a> <a id="1007" href="foundation-core.injective-maps.html#1071" class="Function">is-injective</a> <a id="1020" href="foundation.injective-maps.html#979" class="Bound">f</a>
<a id="1022" href="foundation.injective-maps.html#912" class="Function">is-injective-is-empty</a> <a id="1044" href="foundation.injective-maps.html#1044" class="Bound">f</a> <a id="1046" href="foundation.injective-maps.html#1046" class="Bound">is-empty-A</a> <a id="1057" class="Symbol">{</a><a id="1058" href="foundation.injective-maps.html#1058" class="Bound">x</a><a id="1059" class="Symbol">}</a> <a id="1061" class="Symbol">=</a> <a id="1063" href="foundation-core.empty-types.html#904" class="Function">ex-falso</a> <a id="1072" class="Symbol">(</a><a id="1073" href="foundation.injective-maps.html#1046" class="Bound">is-empty-A</a> <a id="1084" href="foundation.injective-maps.html#1058" class="Bound">x</a><a id="1085" class="Symbol">)</a>
</pre>