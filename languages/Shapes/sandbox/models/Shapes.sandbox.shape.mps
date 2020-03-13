<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:26540732-f9ef-4811-b33b-76af26ed4c2f(Shapes.sandbox.shape)">
  <persistence version="9" />
  <languages>
    <use id="f718894d-fdff-459b-8dda-d7868aeb03b3" name="Shapes" version="0" />
  </languages>
  <imports>
    <import index="o1c2" ref="r:1ccaf832-bdea-46c1-864e-955b76c6806a(Shapes.colors)" implicit="true" />
  </imports>
  <registry>
    <language id="f718894d-fdff-459b-8dda-d7868aeb03b3" name="Shapes">
      <concept id="1607845034246927972" name="Shapes.structure.Shape" flags="ng" index="Ius3I">
        <child id="4706210970328165551" name="color" index="_eNPu" />
      </concept>
      <concept id="1607845034246940901" name="Shapes.structure.Circle" flags="ng" index="IuxTJ">
        <property id="1607845034246940906" name="y" index="IuxTw" />
        <property id="1607845034246940902" name="x" index="IuxTG" />
        <property id="1607845034246940913" name="radius" index="IuxTV" />
      </concept>
      <concept id="1607845034246940923" name="Shapes.structure.Square" flags="ng" index="IuxTL">
        <property id="1607845034246940924" name="upperLeftX" index="IuxTQ" />
        <property id="1607845034246940928" name="upperLeftY" index="IuxYa" />
        <property id="1607845034246940935" name="size" index="IuxYd" />
      </concept>
      <concept id="1607845034246940945" name="Shapes.structure.Canvas" flags="ng" index="IuxYr">
        <child id="1607845034246940950" name="shapes" index="IuxYs" />
      </concept>
      <concept id="1850007754253517211" name="Shapes.structure.ColorReference" flags="ng" index="QkORr">
        <reference id="1850007754253517212" name="target" index="QkORs" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="IuxYr" id="1fd$gs9Bzzp">
    <property role="TrG5h" value="MyDrawing" />
    <node concept="IuxTJ" id="1fd$gs9Bzzw" role="IuxYs">
      <property role="IuxTG" value="100" />
      <property role="IuxTw" value="100" />
      <property role="IuxTV" value="100" />
      <node concept="QkORr" id="1fd$gs9BzzE" role="_eNPu">
        <ref role="QkORs" to="o1c2:1AGz40JZW6o" resolve="red" />
      </node>
    </node>
    <node concept="IuxTL" id="1fd$gs9BzzS" role="IuxYs">
      <property role="IuxTQ" value="100" />
      <property role="IuxYa" value="100" />
      <property role="IuxYd" value="100" />
      <node concept="QkORr" id="1fd$gs9Bz$6" role="_eNPu">
        <ref role="QkORs" to="o1c2:1AGz40JZW6l" resolve="blue" />
      </node>
    </node>
  </node>
</model>

