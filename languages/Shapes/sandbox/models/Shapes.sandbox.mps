<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5cce10df-bf04-4a86-8bfc-356e223b9e78(Shapes.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="f718894d-fdff-459b-8dda-d7868aeb03b3" name="Shapes" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="f718894d-fdff-459b-8dda-d7868aeb03b3" name="Shapes">
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
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="IuxYr" id="1pgdCCSa_ld">
    <property role="TrG5h" value="MyDrawing" />
    <node concept="IuxTJ" id="1pgdCCSa_lg" role="IuxYs">
      <property role="IuxTG" value="1" />
      <property role="IuxTw" value="1" />
      <property role="IuxTV" value="1" />
    </node>
    <node concept="IuxTL" id="1pgdCCSa_ll" role="IuxYs">
      <property role="IuxTQ" value="5" />
      <property role="IuxYa" value="5" />
      <property role="IuxYd" value="2" />
    </node>
  </node>
</model>

