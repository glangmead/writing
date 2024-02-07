# Types equipped with endomorphisms

<pre class="Agda"><a id="46" class="Keyword">module</a> <a id="53" href="structured-types.types-equipped-with-endomorphisms.html" class="Module">structured-types.types-equipped-with-endomorphisms</a> <a id="104" class="Keyword">where</a>
</pre>
<details><summary>Imports</summary>

<pre class="Agda"><a id="160" class="Keyword">open</a> <a id="165" class="Keyword">import</a> <a id="172" href="foundation.dependent-pair-types.html" class="Module">foundation.dependent-pair-types</a>
<a id="204" class="Keyword">open</a> <a id="209" class="Keyword">import</a> <a id="216" href="foundation.endomorphisms.html" class="Module">foundation.endomorphisms</a>
<a id="241" class="Keyword">open</a> <a id="246" class="Keyword">import</a> <a id="253" href="foundation.function-types.html" class="Module">foundation.function-types</a>
<a id="279" class="Keyword">open</a> <a id="284" class="Keyword">import</a> <a id="291" href="foundation.unit-type.html" class="Module">foundation.unit-type</a>
<a id="312" class="Keyword">open</a> <a id="317" class="Keyword">import</a> <a id="324" href="foundation.universe-levels.html" class="Module">foundation.universe-levels</a>
</pre>
</details>

## Idea

A type equipped with an endomorphism consists of a type `A` equipped with a map
`A → A`.

## Definitions

### Types equipped with endomorphisms

<pre class="Agda"><a id="Type-With-Endomorphism"></a><a id="530" href="structured-types.types-equipped-with-endomorphisms.html#530" class="Function">Type-With-Endomorphism</a> <a id="553" class="Symbol">:</a> <a id="555" class="Symbol">(</a><a id="556" href="structured-types.types-equipped-with-endomorphisms.html#556" class="Bound">l</a> <a id="558" class="Symbol">:</a> <a id="560" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="565" class="Symbol">)</a> <a id="567" class="Symbol">→</a> <a id="569" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="572" class="Symbol">(</a><a id="573" href="Agda.Primitive.html#931" class="Primitive">lsuc</a> <a id="578" href="structured-types.types-equipped-with-endomorphisms.html#556" class="Bound">l</a><a id="579" class="Symbol">)</a>
<a id="581" href="structured-types.types-equipped-with-endomorphisms.html#530" class="Function">Type-With-Endomorphism</a> <a id="604" href="structured-types.types-equipped-with-endomorphisms.html#604" class="Bound">l</a> <a id="606" class="Symbol">=</a> <a id="608" href="foundation.dependent-pair-types.html#505" class="Record">Σ</a> <a id="610" class="Symbol">(</a><a id="611" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="614" href="structured-types.types-equipped-with-endomorphisms.html#604" class="Bound">l</a><a id="615" class="Symbol">)</a> <a id="617" href="foundation-core.endomorphisms.html#506" class="Function">endo</a>

<a id="623" class="Keyword">module</a> <a id="630" href="structured-types.types-equipped-with-endomorphisms.html#630" class="Module">_</a>
  <a id="634" class="Symbol">{</a><a id="635" href="structured-types.types-equipped-with-endomorphisms.html#635" class="Bound">l</a> <a id="637" class="Symbol">:</a> <a id="639" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="644" class="Symbol">}</a> <a id="646" class="Symbol">(</a><a id="647" href="structured-types.types-equipped-with-endomorphisms.html#647" class="Bound">X</a> <a id="649" class="Symbol">:</a> <a id="651" href="structured-types.types-equipped-with-endomorphisms.html#530" class="Function">Type-With-Endomorphism</a> <a id="674" href="structured-types.types-equipped-with-endomorphisms.html#635" class="Bound">l</a><a id="675" class="Symbol">)</a>
  <a id="679" class="Keyword">where</a>

  <a id="688" href="structured-types.types-equipped-with-endomorphisms.html#688" class="Function">type-Type-With-Endomorphism</a> <a id="716" class="Symbol">:</a> <a id="718" href="Agda.Primitive.html#388" class="Primitive">UU</a> <a id="721" href="structured-types.types-equipped-with-endomorphisms.html#635" class="Bound">l</a>
  <a id="725" href="structured-types.types-equipped-with-endomorphisms.html#688" class="Function">type-Type-With-Endomorphism</a> <a id="753" class="Symbol">=</a> <a id="755" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="759" href="structured-types.types-equipped-with-endomorphisms.html#647" class="Bound">X</a>

  <a id="764" href="structured-types.types-equipped-with-endomorphisms.html#764" class="Function">endomorphism-Type-With-Endomorphism</a> <a id="800" class="Symbol">:</a>
    <a id="806" href="structured-types.types-equipped-with-endomorphisms.html#688" class="Function">type-Type-With-Endomorphism</a> <a id="834" class="Symbol">→</a> <a id="836" href="structured-types.types-equipped-with-endomorphisms.html#688" class="Function">type-Type-With-Endomorphism</a>
  <a id="866" href="structured-types.types-equipped-with-endomorphisms.html#764" class="Function">endomorphism-Type-With-Endomorphism</a> <a id="902" class="Symbol">=</a> <a id="904" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="908" href="structured-types.types-equipped-with-endomorphisms.html#647" class="Bound">X</a>
</pre>
## Example

### Unit type equipped with endomorphisms

<pre class="Agda"><a id="trivial-Type-With-Endomorphism"></a><a id="978" href="structured-types.types-equipped-with-endomorphisms.html#978" class="Function">trivial-Type-With-Endomorphism</a> <a id="1009" class="Symbol">:</a> <a id="1011" class="Symbol">{</a><a id="1012" href="structured-types.types-equipped-with-endomorphisms.html#1012" class="Bound">l</a> <a id="1014" class="Symbol">:</a> <a id="1016" href="Agda.Primitive.html#742" class="Postulate">Level</a><a id="1021" class="Symbol">}</a> <a id="1023" class="Symbol">→</a> <a id="1025" href="structured-types.types-equipped-with-endomorphisms.html#530" class="Function">Type-With-Endomorphism</a> <a id="1048" href="structured-types.types-equipped-with-endomorphisms.html#1012" class="Bound">l</a>
<a id="1050" href="foundation.dependent-pair-types.html#603" class="Field">pr1</a> <a id="1054" class="Symbol">(</a><a id="1055" href="structured-types.types-equipped-with-endomorphisms.html#978" class="Function">trivial-Type-With-Endomorphism</a> <a id="1086" class="Symbol">{</a><a id="1087" href="structured-types.types-equipped-with-endomorphisms.html#1087" class="Bound">l</a><a id="1088" class="Symbol">})</a> <a id="1091" class="Symbol">=</a> <a id="1093" href="foundation.unit-type.html#1351" class="Function">raise-unit</a> <a id="1104" href="structured-types.types-equipped-with-endomorphisms.html#1087" class="Bound">l</a>
<a id="1106" href="foundation.dependent-pair-types.html#615" class="Field">pr2</a> <a id="1110" href="structured-types.types-equipped-with-endomorphisms.html#978" class="Function">trivial-Type-With-Endomorphism</a> <a id="1141" class="Symbol">=</a> <a id="1143" href="foundation-core.function-types.html#307" class="Function">id</a>
</pre>