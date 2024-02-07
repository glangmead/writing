# Commuting pentagons of identifications

<pre class="Agda"><a id="51" class="Keyword">module</a> <a id="58" href="foundation.commuting-pentagons-of-identifications.html" class="Module">foundation.commuting-pentagons-of-identifications</a> <a id="108" class="Keyword">where</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="164" class="Keyword">open</a> <a id="169" class="Keyword">import</a> <a id="176" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>

<a id="204" class="Keyword">open</a> <a id="209" class="Keyword">import</a> <a id="216" href="foundation-core.identity-types.html" class="Module">foundation-core.identity-types</a>
</pre>
</details>

## Idea

A pentagon of [identifications](foundation-core.identity-types.md)

```text
             top
           x --- y
top-left  /       \ top-right
         /         \
        z           w
          \       /
bottom-left \   / bottom-right
              v
```

is said to **commute** if there is an identification

```text
  top-left ∙ bottom-left ＝ (top ∙ top-right) ∙ bottom-right.
```

Such an identification is called a **coherence** of the pentagon.

## Definition

<pre class="Agda"><a id="748" class="Keyword">module</a> <a id="755" href="foundation.commuting-pentagons-of-identifications.html#755" class="Module">_</a>
  <a id="759" class="Symbol">{</a><a id="760" href="foundation.commuting-pentagons-of-identifications.html#760" class="Bound">l</a> <a id="762" class="Symbol">:</a> <a id="764" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="769" class="Symbol">}</a> <a id="771" class="Symbol">{</a><a id="772" href="foundation.commuting-pentagons-of-identifications.html#772" class="Bound">A</a> <a id="774" class="Symbol">:</a> <a id="776" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="779" href="foundation.commuting-pentagons-of-identifications.html#760" class="Bound">l</a><a id="780" class="Symbol">}</a> <a id="782" class="Symbol">{</a><a id="783" href="foundation.commuting-pentagons-of-identifications.html#783" class="Bound">x</a> <a id="785" href="foundation.commuting-pentagons-of-identifications.html#785" class="Bound">y</a> <a id="787" href="foundation.commuting-pentagons-of-identifications.html#787" class="Bound">z</a> <a id="789" href="foundation.commuting-pentagons-of-identifications.html#789" class="Bound">w</a> <a id="791" href="foundation.commuting-pentagons-of-identifications.html#791" class="Bound">v</a> <a id="793" class="Symbol">:</a> <a id="795" href="foundation.commuting-pentagons-of-identifications.html#772" class="Bound">A</a><a id="796" class="Symbol">}</a>
  <a id="800" class="Keyword">where</a>

  <a id="809" href="foundation.commuting-pentagons-of-identifications.html#809" class="Function">coherence-pentagon-identifications</a> <a id="844" class="Symbol">:</a>
    <a id="850" class="Symbol">(</a><a id="851" href="foundation.commuting-pentagons-of-identifications.html#851" class="Bound">top</a> <a id="855" class="Symbol">:</a> <a id="857" href="foundation.commuting-pentagons-of-identifications.html#783" class="Bound">x</a> <a id="859" href="foundation-core.identity-types.html#1953" class="Function Operator">＝</a> <a id="861" href="foundation.commuting-pentagons-of-identifications.html#785" class="Bound">y</a><a id="862" class="Symbol">)</a>
    <a id="868" class="Symbol">(</a><a id="869" href="foundation.commuting-pentagons-of-identifications.html#869" class="Bound">top-left</a> <a id="878" class="Symbol">:</a> <a id="880" href="foundation.commuting-pentagons-of-identifications.html#783" class="Bound">x</a> <a id="882" href="foundation-core.identity-types.html#1953" class="Function Operator">＝</a> <a id="884" href="foundation.commuting-pentagons-of-identifications.html#787" class="Bound">z</a><a id="885" class="Symbol">)</a> <a id="887" class="Symbol">(</a><a id="888" href="foundation.commuting-pentagons-of-identifications.html#888" class="Bound">top-right</a> <a id="898" class="Symbol">:</a> <a id="900" href="foundation.commuting-pentagons-of-identifications.html#785" class="Bound">y</a> <a id="902" href="foundation-core.identity-types.html#1953" class="Function Operator">＝</a> <a id="904" href="foundation.commuting-pentagons-of-identifications.html#789" class="Bound">w</a><a id="905" class="Symbol">)</a>
    <a id="911" class="Symbol">(</a><a id="912" href="foundation.commuting-pentagons-of-identifications.html#912" class="Bound">bottom-left</a> <a id="924" class="Symbol">:</a> <a id="926" href="foundation.commuting-pentagons-of-identifications.html#787" class="Bound">z</a> <a id="928" href="foundation-core.identity-types.html#1953" class="Function Operator">＝</a> <a id="930" href="foundation.commuting-pentagons-of-identifications.html#791" class="Bound">v</a><a id="931" class="Symbol">)</a> <a id="933" class="Symbol">(</a><a id="934" href="foundation.commuting-pentagons-of-identifications.html#934" class="Bound">bottom-right</a> <a id="947" class="Symbol">:</a> <a id="949" href="foundation.commuting-pentagons-of-identifications.html#789" class="Bound">w</a> <a id="951" href="foundation-core.identity-types.html#1953" class="Function Operator">＝</a> <a id="953" href="foundation.commuting-pentagons-of-identifications.html#791" class="Bound">v</a><a id="954" class="Symbol">)</a> <a id="956" class="Symbol">→</a> <a id="958" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="961" href="foundation.commuting-pentagons-of-identifications.html#760" class="Bound">l</a>
  <a id="965" href="foundation.commuting-pentagons-of-identifications.html#809" class="Function">coherence-pentagon-identifications</a>
    <a id="1004" href="foundation.commuting-pentagons-of-identifications.html#1004" class="Bound">top</a> <a id="1008" href="foundation.commuting-pentagons-of-identifications.html#1008" class="Bound">top-left</a> <a id="1017" href="foundation.commuting-pentagons-of-identifications.html#1017" class="Bound">top-right</a> <a id="1027" href="foundation.commuting-pentagons-of-identifications.html#1027" class="Bound">bottom-left</a> <a id="1039" href="foundation.commuting-pentagons-of-identifications.html#1039" class="Bound">bottom-right</a> <a id="1052" class="Symbol">=</a>
    <a id="1058" href="foundation.commuting-pentagons-of-identifications.html#1008" class="Bound">top-left</a> <a id="1067" href="foundation-core.identity-types.html#2902" class="Function Operator">∙</a> <a id="1069" href="foundation.commuting-pentagons-of-identifications.html#1027" class="Bound">bottom-left</a> <a id="1081" href="foundation-core.identity-types.html#1953" class="Function Operator">＝</a> <a id="1083" class="Symbol">(</a><a id="1084" href="foundation.commuting-pentagons-of-identifications.html#1004" class="Bound">top</a> <a id="1088" href="foundation-core.identity-types.html#2902" class="Function Operator">∙</a> <a id="1090" href="foundation.commuting-pentagons-of-identifications.html#1017" class="Bound">top-right</a><a id="1099" class="Symbol">)</a> <a id="1101" href="foundation-core.identity-types.html#2902" class="Function Operator">∙</a> <a id="1103" href="foundation.commuting-pentagons-of-identifications.html#1039" class="Bound">bottom-right</a>
</pre>