# Commuting squares of homotopies

<pre class="Agda"><a id="44" class="Keyword">module</a> <a id="51" href="foundation.commuting-squares-of-homotopies.html" class="Module">foundation.commuting-squares-of-homotopies</a> <a id="94" class="Keyword">where</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="150" class="Keyword">open</a> <a id="155" class="Keyword">import</a> <a id="162" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>

<a id="190" class="Keyword">open</a> <a id="195" class="Keyword">import</a> <a id="202" href="foundation-core.homotopies.html" class="Module">foundation-core.homotopies</a>
</pre>
</details>

## Idea

A square of [homotopies](foundation-core.homotopies.md)

```text
          top
      f ------> g
      |         |
 left |         | right
      v         v
      h ------> i
        bottom
```

is said to **commute** if there is a homotopy `left ∙h bottom ~ top ∙h right `.
Such a homotopy is called a **coherence** of the square.

## Definition

<pre class="Agda"><a id="611" class="Keyword">module</a> <a id="618" href="foundation.commuting-squares-of-homotopies.html#618" class="Module">_</a>
  <a id="622" class="Symbol">{</a><a id="623" href="foundation.commuting-squares-of-homotopies.html#623" class="Bound">l1</a> <a id="626" href="foundation.commuting-squares-of-homotopies.html#626" class="Bound">l2</a> <a id="629" class="Symbol">:</a> <a id="631" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="636" class="Symbol">}</a> <a id="638" class="Symbol">{</a><a id="639" href="foundation.commuting-squares-of-homotopies.html#639" class="Bound">A</a> <a id="641" class="Symbol">:</a> <a id="643" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="646" href="foundation.commuting-squares-of-homotopies.html#623" class="Bound">l1</a><a id="648" class="Symbol">}</a> <a id="650" class="Symbol">{</a><a id="651" href="foundation.commuting-squares-of-homotopies.html#651" class="Bound">B</a> <a id="653" class="Symbol">:</a> <a id="655" href="foundation.commuting-squares-of-homotopies.html#639" class="Bound">A</a> <a id="657" class="Symbol">→</a> <a id="659" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="662" href="foundation.commuting-squares-of-homotopies.html#626" class="Bound">l2</a><a id="664" class="Symbol">}</a> <a id="666" class="Symbol">{</a><a id="667" href="foundation.commuting-squares-of-homotopies.html#667" class="Bound">f</a> <a id="669" href="foundation.commuting-squares-of-homotopies.html#669" class="Bound">g</a> <a id="671" href="foundation.commuting-squares-of-homotopies.html#671" class="Bound">h</a> <a id="673" href="foundation.commuting-squares-of-homotopies.html#673" class="Bound">i</a> <a id="675" class="Symbol">:</a> <a id="677" class="Symbol">(</a><a id="678" href="foundation.commuting-squares-of-homotopies.html#678" class="Bound">x</a> <a id="680" class="Symbol">:</a> <a id="682" href="foundation.commuting-squares-of-homotopies.html#639" class="Bound">A</a><a id="683" class="Symbol">)</a> <a id="685" class="Symbol">→</a> <a id="687" href="foundation.commuting-squares-of-homotopies.html#651" class="Bound">B</a> <a id="689" href="foundation.commuting-squares-of-homotopies.html#678" class="Bound">x</a><a id="690" class="Symbol">}</a>
  <a id="694" class="Keyword">where</a>

  <a id="703" href="foundation.commuting-squares-of-homotopies.html#703" class="Function">coherence-square-homotopies</a> <a id="731" class="Symbol">:</a>
    <a id="737" class="Symbol">(</a><a id="738" href="foundation.commuting-squares-of-homotopies.html#738" class="Bound">top</a> <a id="742" class="Symbol">:</a> <a id="744" href="foundation.commuting-squares-of-homotopies.html#667" class="Bound">f</a> <a id="746" href="foundation-core.homotopies.html#2717" class="Function Operator">~</a> <a id="748" href="foundation.commuting-squares-of-homotopies.html#669" class="Bound">g</a><a id="749" class="Symbol">)</a> <a id="751" class="Symbol">(</a><a id="752" href="foundation.commuting-squares-of-homotopies.html#752" class="Bound">left</a> <a id="757" class="Symbol">:</a> <a id="759" href="foundation.commuting-squares-of-homotopies.html#667" class="Bound">f</a> <a id="761" href="foundation-core.homotopies.html#2717" class="Function Operator">~</a> <a id="763" href="foundation.commuting-squares-of-homotopies.html#671" class="Bound">h</a><a id="764" class="Symbol">)</a> <a id="766" class="Symbol">(</a><a id="767" href="foundation.commuting-squares-of-homotopies.html#767" class="Bound">right</a> <a id="773" class="Symbol">:</a> <a id="775" href="foundation.commuting-squares-of-homotopies.html#669" class="Bound">g</a> <a id="777" href="foundation-core.homotopies.html#2717" class="Function Operator">~</a> <a id="779" href="foundation.commuting-squares-of-homotopies.html#673" class="Bound">i</a><a id="780" class="Symbol">)</a> <a id="782" class="Symbol">(</a><a id="783" href="foundation.commuting-squares-of-homotopies.html#783" class="Bound">bottom</a> <a id="790" class="Symbol">:</a> <a id="792" href="foundation.commuting-squares-of-homotopies.html#671" class="Bound">h</a> <a id="794" href="foundation-core.homotopies.html#2717" class="Function Operator">~</a> <a id="796" href="foundation.commuting-squares-of-homotopies.html#673" class="Bound">i</a><a id="797" class="Symbol">)</a> <a id="799" class="Symbol">→</a> <a id="801" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="804" class="Symbol">(</a><a id="805" href="foundation.commuting-squares-of-homotopies.html#623" class="Bound">l1</a> <a id="808" href="Agda.Primitive.html#961" class="Primitive Operator">⊔</a> <a id="810" href="foundation.commuting-squares-of-homotopies.html#626" class="Bound">l2</a><a id="812" class="Symbol">)</a>
  <a id="816" href="foundation.commuting-squares-of-homotopies.html#703" class="Function">coherence-square-homotopies</a> <a id="844" href="foundation.commuting-squares-of-homotopies.html#844" class="Bound">top</a> <a id="848" href="foundation.commuting-squares-of-homotopies.html#848" class="Bound">left</a> <a id="853" href="foundation.commuting-squares-of-homotopies.html#853" class="Bound">right</a> <a id="859" href="foundation.commuting-squares-of-homotopies.html#859" class="Bound">bottom</a> <a id="866" class="Symbol">=</a>
    <a id="872" href="foundation.commuting-squares-of-homotopies.html#848" class="Bound">left</a> <a id="877" href="foundation-core.homotopies.html#3281" class="Function Operator">∙h</a> <a id="880" href="foundation.commuting-squares-of-homotopies.html#859" class="Bound">bottom</a> <a id="887" href="foundation-core.homotopies.html#2717" class="Function Operator">~</a> <a id="889" href="foundation.commuting-squares-of-homotopies.html#844" class="Bound">top</a> <a id="893" href="foundation-core.homotopies.html#3281" class="Function Operator">∙h</a> <a id="896" href="foundation.commuting-squares-of-homotopies.html#853" class="Bound">right</a>
</pre>