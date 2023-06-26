# The action on identifications of dependent functions

<pre class="Agda"><a id="65" class="Keyword">module</a> <a id="72" href="foundation.action-on-identifications-dependent-functions.html" class="Module">foundation.action-on-identifications-dependent-functions</a> <a id="129" class="Keyword">where</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="185" class="Keyword">open</a> <a id="190" class="Keyword">import</a> <a id="197" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>

<a id="225" class="Keyword">open</a> <a id="230" class="Keyword">import</a> <a id="237" href="foundation-core.dependent-identifications.html" class="Module">foundation-core.dependent-identifications</a>
<a id="279" class="Keyword">open</a> <a id="284" class="Keyword">import</a> <a id="291" href="foundation-core.identity-types.html" class="Module">foundation-core.identity-types</a>
</pre>
</details>

## Idea

Given a dependent function `f : (x : A) → B x` and an
[identification](foundation-core.identity-types.md) `p : x ＝ y` in `A`, we
cannot directly compare the values `f x` and `f y`, since `f x` is an element of
type `B x` while `f y` is an element of type `B y`. However, we can
[transport](foundation-core.transport.md) the value `f x` along `p` to obtain an
element of type `B y` that is comparable to the value `f y`. In other words, we
can consider the type of
[dependent identifications](foundation-core.dependent-identifications.md) over
`p` from `f x` to `f y`. The **dependent action on identifications** of `f` on
`p` is a dependent identification

```text
  apd f p : dependent-identification B p (f x) (f y).
```

## Definition

### Functorial action of dependent functions on identity types

<pre class="Agda"><a id="apd"></a><a id="1159" href="foundation.action-on-identifications-dependent-functions.html#1159" class="Function">apd</a> <a id="1163" class="Symbol">:</a>
  <a id="1167" class="Symbol">{</a><a id="1168" href="foundation.action-on-identifications-dependent-functions.html#1168" class="Bound">l1</a> <a id="1171" href="foundation.action-on-identifications-dependent-functions.html#1171" class="Bound">l2</a> <a id="1174" class="Symbol">:</a> <a id="1176" href="Agda.Primitive.html#591" class="Postulate">Level</a><a id="1181" class="Symbol">}</a> <a id="1183" class="Symbol">{</a><a id="1184" href="foundation.action-on-identifications-dependent-functions.html#1184" class="Bound">A</a> <a id="1186" class="Symbol">:</a> <a id="1188" href="Agda.Primitive.html#320" class="Primitive">UU</a> <a id="1191" href="foundation.action-on-identifications-dependent-functions.html#1168" class="Bound">l1</a><a id="1193" class="Symbol">}</a> <a id="1195" class="Symbol">{</a><a id="1196" href="foundation.action-on-identifications-dependent-functions.html#1196" class="Bound">B</a> <a id="1198" class="Symbol">:</a> <a id="1200" href="foundation.action-on-identifications-dependent-functions.html#1184" class="Bound">A</a> <a id="1202" class="Symbol">→</a> <a id="1204" href="Agda.Primitive.html#320" class="Primitive">UU</a> <a id="1207" href="foundation.action-on-identifications-dependent-functions.html#1171" class="Bound">l2</a><a id="1209" class="Symbol">}</a> <a id="1211" class="Symbol">(</a><a id="1212" href="foundation.action-on-identifications-dependent-functions.html#1212" class="Bound">f</a> <a id="1214" class="Symbol">:</a> <a id="1216" class="Symbol">(</a><a id="1217" href="foundation.action-on-identifications-dependent-functions.html#1217" class="Bound">x</a> <a id="1219" class="Symbol">:</a> <a id="1221" href="foundation.action-on-identifications-dependent-functions.html#1184" class="Bound">A</a><a id="1222" class="Symbol">)</a> <a id="1224" class="Symbol">→</a> <a id="1226" href="foundation.action-on-identifications-dependent-functions.html#1196" class="Bound">B</a> <a id="1228" href="foundation.action-on-identifications-dependent-functions.html#1217" class="Bound">x</a><a id="1229" class="Symbol">)</a> <a id="1231" class="Symbol">{</a><a id="1232" href="foundation.action-on-identifications-dependent-functions.html#1232" class="Bound">x</a> <a id="1234" href="foundation.action-on-identifications-dependent-functions.html#1234" class="Bound">y</a> <a id="1236" class="Symbol">:</a> <a id="1238" href="foundation.action-on-identifications-dependent-functions.html#1184" class="Bound">A</a><a id="1239" class="Symbol">}</a>
  <a id="1243" class="Symbol">(</a><a id="1244" href="foundation.action-on-identifications-dependent-functions.html#1244" class="Bound">p</a> <a id="1246" class="Symbol">:</a> <a id="1248" href="foundation.action-on-identifications-dependent-functions.html#1232" class="Bound">x</a> <a id="1250" href="foundation-core.identity-types.html#5608" class="Function Operator">＝</a> <a id="1252" href="foundation.action-on-identifications-dependent-functions.html#1234" class="Bound">y</a><a id="1253" class="Symbol">)</a> <a id="1255" class="Symbol">→</a> <a id="1257" href="foundation-core.dependent-identifications.html#920" class="Function">dependent-identification</a> <a id="1282" href="foundation.action-on-identifications-dependent-functions.html#1196" class="Bound">B</a> <a id="1284" href="foundation.action-on-identifications-dependent-functions.html#1244" class="Bound">p</a> <a id="1286" class="Symbol">(</a><a id="1287" href="foundation.action-on-identifications-dependent-functions.html#1212" class="Bound">f</a> <a id="1289" href="foundation.action-on-identifications-dependent-functions.html#1232" class="Bound">x</a><a id="1290" class="Symbol">)</a> <a id="1292" class="Symbol">(</a><a id="1293" href="foundation.action-on-identifications-dependent-functions.html#1212" class="Bound">f</a> <a id="1295" href="foundation.action-on-identifications-dependent-functions.html#1234" class="Bound">y</a><a id="1296" class="Symbol">)</a>
<a id="1298" href="foundation.action-on-identifications-dependent-functions.html#1159" class="Function">apd</a> <a id="1302" href="foundation.action-on-identifications-dependent-functions.html#1302" class="Bound">f</a> <a id="1304" href="foundation-core.identity-types.html#5591" class="InductiveConstructor">refl</a> <a id="1309" class="Symbol">=</a> <a id="1311" href="foundation-core.identity-types.html#5591" class="InductiveConstructor">refl</a>
</pre>