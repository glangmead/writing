# Double lifts of families of elements

<pre class="Agda"><a id="49" class="Keyword">module</a> <a id="56" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html" class="Module">orthogonal-factorization-systems.double-lifts-families-of-elements</a> <a id="123" class="Keyword">where</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="179" class="Keyword">open</a> <a id="184" class="Keyword">import</a> <a id="191" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>

<a id="219" class="Keyword">open</a> <a id="224" class="Keyword">import</a> <a id="231" href="orthogonal-factorization-systems.lifts-families-of-elements.html" class="Module">orthogonal-factorization-systems.lifts-families-of-elements</a>
</pre>
</details>

## Idea

Consider a family of elements `b : (i : I) → B i (a i)` over a family of
elements `a : (i : I) → A i` and consider a family of types

```text
  C : (i : I) (x : A i) → B i x → 𝒰.
```

Recall that `b` is also a
[dependent lift](orthogonal-factorization-systems.lifts-families-of-elements.md)
of the family of elements `a`. The type of
{{#concept "dependent double lifts" Disambiguation="family of elements"}} of `b`
and `a` to `C` is defined to be the type

```text
  (i : I) → C i (a i) (b i).
```

Note that this is the type of double lifts in the sense that it simultaneously
lifts `a` and `b` to the type family `C`.

The definition of (ordinary) double lifts is somewhat simpler: Given a lift `b`
of `a : I → A` to a type family `B : A → 𝒰`, a
{{#concept "double lift" Disambiguation="families of elements"}} of `a` and `b`
to a type family

```text
  C : (x : A) → B x → 𝒰
```

is a family of elements

```text
  (i : I) → C (a i) (b i).
```

Note that this is the type of double lifts in the sense that it simultaneously
lifts `a` and `b` to the type family `C`.

The type of double lifts plays a role in the
[universal property of the family of fibers of a map](foundation.universal-property-family-of-fibers-of-maps.md).

## Definitions

### Dependent double lifts of families of elements

<pre class="Agda"><a id="1623" class="Keyword">module</a> <a id="1630" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1630" class="Module">_</a>
  <a id="1634" class="Symbol">{</a><a id="1635" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1635" class="Bound">l1</a> <a id="1638" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1638" class="Bound">l2</a> <a id="1641" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1641" class="Bound">l3</a> <a id="1644" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1644" class="Bound">l4</a> <a id="1647" class="Symbol">:</a> <a id="1649" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="1654" class="Symbol">}</a> <a id="1656" class="Symbol">{</a><a id="1657" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1657" class="Bound">I</a> <a id="1659" class="Symbol">:</a> <a id="1661" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1664" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1635" class="Bound">l1</a><a id="1666" class="Symbol">}</a> <a id="1668" class="Symbol">{</a><a id="1669" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1669" class="Bound">A</a> <a id="1671" class="Symbol">:</a> <a id="1673" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1657" class="Bound">I</a> <a id="1675" class="Symbol">→</a> <a id="1677" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1680" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1638" class="Bound">l2</a><a id="1682" class="Symbol">}</a> <a id="1684" class="Symbol">{</a><a id="1685" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1685" class="Bound">B</a> <a id="1687" class="Symbol">:</a> <a id="1689" class="Symbol">(</a><a id="1690" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1690" class="Bound">i</a> <a id="1692" class="Symbol">:</a> <a id="1694" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1657" class="Bound">I</a><a id="1695" class="Symbol">)</a> <a id="1697" class="Symbol">→</a> <a id="1699" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1669" class="Bound">A</a> <a id="1701" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1690" class="Bound">i</a> <a id="1703" class="Symbol">→</a> <a id="1705" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1708" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1641" class="Bound">l3</a><a id="1710" class="Symbol">}</a>
  <a id="1714" class="Symbol">(</a><a id="1715" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1715" class="Bound">C</a> <a id="1717" class="Symbol">:</a> <a id="1719" class="Symbol">(</a><a id="1720" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1720" class="Bound">i</a> <a id="1722" class="Symbol">:</a> <a id="1724" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1657" class="Bound">I</a><a id="1725" class="Symbol">)</a> <a id="1727" class="Symbol">(</a><a id="1728" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1728" class="Bound">x</a> <a id="1730" class="Symbol">:</a> <a id="1732" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1669" class="Bound">A</a> <a id="1734" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1720" class="Bound">i</a><a id="1735" class="Symbol">)</a> <a id="1737" class="Symbol">→</a> <a id="1739" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1685" class="Bound">B</a> <a id="1741" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1720" class="Bound">i</a> <a id="1743" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1728" class="Bound">x</a> <a id="1745" class="Symbol">→</a> <a id="1747" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1750" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1644" class="Bound">l4</a><a id="1752" class="Symbol">)</a>
  <a id="1756" class="Symbol">{</a><a id="1757" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1757" class="Bound">a</a> <a id="1759" class="Symbol">:</a> <a id="1761" class="Symbol">(</a><a id="1762" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1762" class="Bound">i</a> <a id="1764" class="Symbol">:</a> <a id="1766" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1657" class="Bound">I</a><a id="1767" class="Symbol">)</a> <a id="1769" class="Symbol">→</a> <a id="1771" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1669" class="Bound">A</a> <a id="1773" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1762" class="Bound">i</a><a id="1774" class="Symbol">}</a> <a id="1776" class="Symbol">(</a><a id="1777" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1777" class="Bound">b</a> <a id="1779" class="Symbol">:</a> <a id="1781" href="orthogonal-factorization-systems.lifts-families-of-elements.html#999" class="Function">dependent-lift-family-of-elements</a> <a id="1815" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1685" class="Bound">B</a> <a id="1817" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1757" class="Bound">a</a><a id="1818" class="Symbol">)</a>
  <a id="1822" class="Keyword">where</a>

  <a id="1831" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1831" class="Function">dependent-double-lift-family-of-elements</a> <a id="1872" class="Symbol">:</a> <a id="1874" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="1877" class="Symbol">(</a><a id="1878" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1635" class="Bound">l1</a> <a id="1881" href="Agda.Primitive.html#961" class="Primitive Operator">⊔</a> <a id="1883" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1644" class="Bound">l4</a><a id="1885" class="Symbol">)</a>
  <a id="1889" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1831" class="Function">dependent-double-lift-family-of-elements</a> <a id="1930" class="Symbol">=</a>
    <a id="1936" href="orthogonal-factorization-systems.lifts-families-of-elements.html#999" class="Function">dependent-lift-family-of-elements</a> <a id="1970" class="Symbol">(λ</a> <a id="1973" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1973" class="Bound">i</a> <a id="1975" class="Symbol">→</a> <a id="1977" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1715" class="Bound">C</a> <a id="1979" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1973" class="Bound">i</a> <a id="1981" class="Symbol">(</a><a id="1982" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1757" class="Bound">a</a> <a id="1984" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1973" class="Bound">i</a><a id="1985" class="Symbol">))</a> <a id="1988" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#1777" class="Bound">b</a>
</pre>
### Double lifts of families of elements

<pre class="Agda"><a id="2045" class="Keyword">module</a> <a id="2052" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2052" class="Module">_</a>
  <a id="2056" class="Symbol">{</a><a id="2057" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2057" class="Bound">l1</a> <a id="2060" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2060" class="Bound">l2</a> <a id="2063" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2063" class="Bound">l3</a> <a id="2066" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2066" class="Bound">l4</a> <a id="2069" class="Symbol">:</a> <a id="2071" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="2076" class="Symbol">}</a> <a id="2078" class="Symbol">{</a><a id="2079" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2079" class="Bound">I</a> <a id="2081" class="Symbol">:</a> <a id="2083" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2086" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2057" class="Bound">l1</a><a id="2088" class="Symbol">}</a> <a id="2090" class="Symbol">{</a><a id="2091" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2091" class="Bound">A</a> <a id="2093" class="Symbol">:</a> <a id="2095" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2098" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2060" class="Bound">l2</a><a id="2100" class="Symbol">}</a> <a id="2102" class="Symbol">{</a><a id="2103" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2103" class="Bound">B</a> <a id="2105" class="Symbol">:</a> <a id="2107" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2091" class="Bound">A</a> <a id="2109" class="Symbol">→</a> <a id="2111" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2114" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2063" class="Bound">l3</a><a id="2116" class="Symbol">}</a>
  <a id="2120" class="Symbol">(</a><a id="2121" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2121" class="Bound">C</a> <a id="2123" class="Symbol">:</a> <a id="2125" class="Symbol">(</a><a id="2126" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2126" class="Bound">x</a> <a id="2128" class="Symbol">:</a> <a id="2130" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2091" class="Bound">A</a><a id="2131" class="Symbol">)</a> <a id="2133" class="Symbol">→</a> <a id="2135" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2103" class="Bound">B</a> <a id="2137" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2126" class="Bound">x</a> <a id="2139" class="Symbol">→</a> <a id="2141" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2144" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2066" class="Bound">l4</a><a id="2146" class="Symbol">)</a>
  <a id="2150" class="Symbol">{</a><a id="2151" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2151" class="Bound">a</a> <a id="2153" class="Symbol">:</a> <a id="2155" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2079" class="Bound">I</a> <a id="2157" class="Symbol">→</a> <a id="2159" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2091" class="Bound">A</a><a id="2160" class="Symbol">}</a> <a id="2162" class="Symbol">(</a><a id="2163" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2163" class="Bound">b</a> <a id="2165" class="Symbol">:</a> <a id="2167" href="orthogonal-factorization-systems.lifts-families-of-elements.html#1247" class="Function">lift-family-of-elements</a> <a id="2191" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2103" class="Bound">B</a> <a id="2193" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2151" class="Bound">a</a><a id="2194" class="Symbol">)</a>
  <a id="2198" class="Keyword">where</a>

  <a id="2207" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2207" class="Function">double-lift-family-of-elements</a> <a id="2238" class="Symbol">:</a> <a id="2240" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="2243" class="Symbol">(</a><a id="2244" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2057" class="Bound">l1</a> <a id="2247" href="Agda.Primitive.html#961" class="Primitive Operator">⊔</a> <a id="2249" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2066" class="Bound">l4</a><a id="2251" class="Symbol">)</a>
  <a id="2255" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2207" class="Function">double-lift-family-of-elements</a> <a id="2286" class="Symbol">=</a>
    <a id="2292" href="orthogonal-factorization-systems.lifts-families-of-elements.html#999" class="Function">dependent-lift-family-of-elements</a> <a id="2326" class="Symbol">(λ</a> <a id="2329" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2329" class="Bound">i</a> <a id="2331" class="Symbol">→</a> <a id="2333" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2121" class="Bound">C</a> <a id="2335" class="Symbol">(</a><a id="2336" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2151" class="Bound">a</a> <a id="2338" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2329" class="Bound">i</a><a id="2339" class="Symbol">))</a> <a id="2342" href="orthogonal-factorization-systems.double-lifts-families-of-elements.html#2163" class="Bound">b</a>
</pre>
## See also

- [Lifts of families of elements](orthogonal-factorization-systems.lifts-families-of-elements.md)
- [Lifts of maps](orthogonal-factorization-systems.lifts-of-maps.md)
- [The universal property of the family of fibers of a map](foundation.universal-property-family-of-fibers-of-maps.md)
