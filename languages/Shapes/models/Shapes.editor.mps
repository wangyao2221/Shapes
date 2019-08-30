<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3e35323e-1a53-4590-b77d-4f505974cbd8(Shapes.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="12" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="mbpf" ref="r:3992b02d-2767-4ccb-b5ff-76a0ce737385(Shapes.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="1pgdCCSfDuR">
    <ref role="1XX52x" to="mbpf:1pgdCCSayz_" resolve="Circle" />
    <node concept="3EZMnI" id="1pgdCCSfDwe" role="2wV5jI">
      <node concept="3F0ifn" id="1pgdCCSfDxd" role="3EZMnx">
        <property role="3F0ifm" value="circle" />
      </node>
      <node concept="3F0ifn" id="1pgdCCSfDxj" role="3EZMnx">
        <property role="3F0ifm" value="x:" />
      </node>
      <node concept="3F0A7n" id="1pgdCCSfDxA" role="3EZMnx">
        <ref role="1NtTu8" to="mbpf:1pgdCCSayzA" resolve="x" />
      </node>
      <node concept="3F0ifn" id="1pgdCCSfDxK" role="3EZMnx">
        <property role="3F0ifm" value="y:" />
      </node>
      <node concept="3F0A7n" id="1pgdCCSfDxW" role="3EZMnx">
        <ref role="1NtTu8" to="mbpf:1pgdCCSayzE" resolve="y" />
      </node>
      <node concept="3F0ifn" id="1pgdCCSfDym" role="3EZMnx">
        <property role="3F0ifm" value="radius:" />
      </node>
      <node concept="3F0A7n" id="1pgdCCSfDyA" role="3EZMnx">
        <ref role="1NtTu8" to="mbpf:1pgdCCSayzL" resolve="radius" />
      </node>
      <node concept="3F0ifn" id="1AGz40K06n1" role="3EZMnx">
        <property role="3F0ifm" value="color:" />
      </node>
      <node concept="PMmxH" id="1AGz40K06nl" role="3EZMnx">
        <ref role="PMmxG" node="1AGz40K06mx" resolve="ShapeColor" />
      </node>
      <node concept="l2Vlx" id="1pgdCCSfDwh" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1pgdCCSfDyR">
    <ref role="1XX52x" to="mbpf:1pgdCCSayzV" resolve="Square" />
    <node concept="3EZMnI" id="1pgdCCSfDyT" role="2wV5jI">
      <node concept="3F0ifn" id="1pgdCCSfDz0" role="3EZMnx">
        <property role="3F0ifm" value="square" />
      </node>
      <node concept="3F0ifn" id="1pgdCCSfDzi" role="3EZMnx">
        <property role="3F0ifm" value="upperLeftX:" />
      </node>
      <node concept="3F0A7n" id="1pgdCCSfDza" role="3EZMnx">
        <ref role="1NtTu8" to="mbpf:1pgdCCSayzW" resolve="upperLeftX" />
      </node>
      <node concept="3F0ifn" id="1pgdCCSfDzC" role="3EZMnx">
        <property role="3F0ifm" value="upperLeftY:" />
      </node>
      <node concept="3F0A7n" id="1pgdCCSfDzs" role="3EZMnx">
        <ref role="1NtTu8" to="mbpf:1pgdCCSay$0" resolve="upperLeftY" />
      </node>
      <node concept="3F0ifn" id="1pgdCCSfDzQ" role="3EZMnx">
        <property role="3F0ifm" value="size" />
      </node>
      <node concept="3F0A7n" id="1pgdCCSfD$6" role="3EZMnx">
        <ref role="1NtTu8" to="mbpf:1pgdCCSay$7" resolve="size" />
      </node>
      <node concept="3F0ifn" id="1AGz40K06nC" role="3EZMnx">
        <property role="3F0ifm" value="color:" />
      </node>
      <node concept="PMmxH" id="1AGz40K06nW" role="3EZMnx">
        <ref role="PMmxG" node="1AGz40K06mx" resolve="ShapeColor" />
      </node>
      <node concept="l2Vlx" id="1pgdCCSfDyW" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1pgdCCSfD$n">
    <ref role="1XX52x" to="mbpf:1pgdCCSay$h" resolve="Canvas" />
    <node concept="3EZMnI" id="1pgdCCSfD$p" role="2wV5jI">
      <node concept="3F0ifn" id="1pgdCCSfD$w" role="3EZMnx">
        <property role="3F0ifm" value="Painting" />
      </node>
      <node concept="3F0A7n" id="1pgdCCSfD$A" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F2HdR" id="1pgdCCSfQ9P" role="3EZMnx">
        <ref role="1NtTu8" to="mbpf:1pgdCCSay$m" resolve="shapes" />
        <node concept="2iRkQZ" id="1pgdCCSfQ9S" role="2czzBx" />
        <node concept="VPM3Z" id="1pgdCCSfQ9T" role="3F10Kt" />
        <node concept="pVoyu" id="1pgdCCSfUm_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="1pgdCCSfD$s" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="460HfZdILNA">
    <ref role="1XX52x" to="mbpf:460HfZdILNr" resolve="Color" />
    <node concept="3EZMnI" id="460HfZdILNC" role="2wV5jI">
      <node concept="3F0ifn" id="460HfZdILNJ" role="3EZMnx">
        <property role="3F0ifm" value="Color" />
        <node concept="VechU" id="lQSWoiLApf" role="3F10Kt" />
      </node>
      <node concept="3F0A7n" id="460HfZdILNP" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="l2Vlx" id="460HfZdILNF" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1AGz40JZW6A">
    <ref role="1XX52x" to="mbpf:1AGz40JZW6r" resolve="ColorReference" />
    <node concept="1iCGBv" id="1AGz40JZW6C" role="2wV5jI">
      <ref role="1NtTu8" to="mbpf:1AGz40JZW6s" resolve="target" />
      <node concept="1sVBvm" id="1AGz40JZW6E" role="1sWHZn">
        <node concept="3F0A7n" id="1AGz40JZW6P" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="1AGz40K06mx">
    <property role="TrG5h" value="ShapeColor" />
    <ref role="1XX52x" to="mbpf:1pgdCCSavp$" resolve="Shape" />
    <node concept="3EZMnI" id="1AGz40K06mB" role="2wV5jI">
      <node concept="3F0ifn" id="1AGz40K06mI" role="3EZMnx">
        <property role="3F0ifm" value="color:" />
      </node>
      <node concept="3F1sOY" id="1AGz40K06mO" role="3EZMnx">
        <ref role="1NtTu8" to="mbpf:1AGz40K06m6" resolve="color" />
      </node>
      <node concept="l2Vlx" id="1AGz40K06mE" role="2iSdaV" />
    </node>
  </node>
</model>

