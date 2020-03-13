<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3e35323e-1a53-4590-b77d-4f505974cbd8(Shapes.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="12" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="35i7" ref="r:f6c04368-fd6a-4954-a825-88f99352a45a(Shapes.behavior)" />
    <import index="mbpf" ref="r:3992b02d-2767-4ccb-b5ff-76a0ce737385(Shapes.structure)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="2597348684684069742" name="contextHints" index="CpUAK" />
      </concept>
      <concept id="6822301196700715228" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReference" flags="ig" index="2aJ2om">
        <reference id="5944657839026714445" name="hint" index="2$4xQ3" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="5944657839000868711" name="jetbrains.mps.lang.editor.structure.ConceptEditorContextHints" flags="ig" index="2ABfQD">
        <child id="5944657839000877563" name="hints" index="2ABdcP" />
      </concept>
      <concept id="5944657839003601246" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclaration" flags="ig" index="2BsEeg">
        <property id="168363875802087287" name="showInUI" index="2gpH_U" />
        <property id="5944657839012629576" name="presentation" index="2BUmq6" />
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
      <concept id="1103016434866" name="jetbrains.mps.lang.editor.structure.CellModel_JComponent" flags="sg" stub="8104358048506731196" index="3gTLQM">
        <child id="1176475119347" name="componentProvider" index="3FoqZy" />
      </concept>
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
      <concept id="1176474535556" name="jetbrains.mps.lang.editor.structure.QueryFunction_JComponent" flags="in" index="3Fmcul" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
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
      <node concept="PMmxH" id="45fOv5$tgdv" role="3EZMnx">
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
        <property role="3F0ifm" value="siz:" />
      </node>
      <node concept="3F0A7n" id="1pgdCCSfD$6" role="3EZMnx">
        <ref role="1NtTu8" to="mbpf:1pgdCCSay$7" resolve="size" />
      </node>
      <node concept="PMmxH" id="45fOv5$tgd3" role="3EZMnx">
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
    <node concept="1iCGBv" id="45fOv5$sxtL" role="2wV5jI">
      <ref role="1NtTu8" to="mbpf:1AGz40JZW6s" resolve="target" />
      <node concept="1sVBvm" id="45fOv5$sxtN" role="1sWHZn">
        <node concept="3F0A7n" id="45fOv5$sxtU" role="2wV5jI">
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
      <node concept="3F1sOY" id="45fOv5$twfl" role="3EZMnx">
        <ref role="1NtTu8" to="mbpf:45fOv5$teMJ" resolve="color" />
      </node>
      <node concept="l2Vlx" id="1AGz40K06mE" role="2iSdaV" />
    </node>
  </node>
  <node concept="2ABfQD" id="58xh05AZDHB">
    <property role="TrG5h" value="Shapes" />
    <node concept="2BsEeg" id="58xh05B6uQG" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="ShapePreview" />
      <property role="2BUmq6" value="With ShapePreview" />
    </node>
    <node concept="2BsEeg" id="58xh05AZDIo" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="ScenePreview" />
      <property role="2BUmq6" value="With Scene Preview" />
    </node>
  </node>
  <node concept="24kQdi" id="58xh05AZDMm">
    <ref role="1XX52x" to="mbpf:1pgdCCSayz_" resolve="Circle" />
    <node concept="2aJ2om" id="58xh05B6vVI" role="CpUAK">
      <ref role="2$4xQ3" node="58xh05B6uQG" resolve="ShapePreview" />
    </node>
    <node concept="3EZMnI" id="58xh05AZDPx" role="2wV5jI">
      <node concept="3F0ifn" id="58xh05AZDPy" role="3EZMnx">
        <property role="3F0ifm" value="circle" />
      </node>
      <node concept="3F0ifn" id="58xh05AZDPz" role="3EZMnx">
        <property role="3F0ifm" value="x:" />
      </node>
      <node concept="3F0A7n" id="58xh05AZDP$" role="3EZMnx">
        <ref role="1NtTu8" to="mbpf:1pgdCCSayzA" resolve="x" />
      </node>
      <node concept="3F0ifn" id="58xh05AZDP_" role="3EZMnx">
        <property role="3F0ifm" value="y:" />
      </node>
      <node concept="3F0A7n" id="58xh05AZDPA" role="3EZMnx">
        <ref role="1NtTu8" to="mbpf:1pgdCCSayzE" resolve="y" />
      </node>
      <node concept="3F0ifn" id="58xh05AZDPB" role="3EZMnx">
        <property role="3F0ifm" value="radius:" />
      </node>
      <node concept="3F0A7n" id="58xh05AZDPC" role="3EZMnx">
        <ref role="1NtTu8" to="mbpf:1pgdCCSayzL" resolve="radius" />
      </node>
      <node concept="PMmxH" id="58xh05AZDPD" role="3EZMnx">
        <ref role="PMmxG" node="1AGz40K06mx" resolve="ShapeColor" />
      </node>
      <node concept="3gTLQM" id="58xh05AZERj" role="3EZMnx">
        <node concept="3Fmcul" id="58xh05AZERl" role="3FoqZy">
          <node concept="3clFbS" id="58xh05AZERn" role="2VODD2">
            <node concept="3clFbF" id="58xh05AZF4P" role="3cqZAp">
              <node concept="2ShNRf" id="58xh05AZF4N" role="3clFbG">
                <node concept="YeOm9" id="58xh05AZGt1" role="2ShVmc">
                  <node concept="1Y3b0j" id="58xh05AZGt4" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                    <ref role="1Y3XeK" to="dxuu:~JPanel" resolve="JPanel" />
                    <node concept="3Tm1VV" id="58xh05AZGt5" role="1B3o_S" />
                    <node concept="3clFb_" id="58xh05AZH8V" role="jymVt">
                      <property role="TrG5h" value="paintComponent" />
                      <node concept="3Tm1VV" id="58xh05AZH8W" role="1B3o_S" />
                      <node concept="3cqZAl" id="58xh05AZH8Y" role="3clF45" />
                      <node concept="37vLTG" id="58xh05AZH8Z" role="3clF46">
                        <property role="TrG5h" value="graphics" />
                        <node concept="3uibUv" id="58xh05AZH90" role="1tU5fm">
                          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="58xh05AZH97" role="3clF47">
                        <node concept="3clFbF" id="58xh05AZI$A" role="3cqZAp">
                          <node concept="1rXfSq" id="58xh05AZI$$" role="3clFbG">
                            <ref role="37wK5l" to="dxuu:~JComponent.setOpaque(boolean)" resolve="setOpaque" />
                            <node concept="3clFbT" id="58xh05AZJC_" role="37wK5m" />
                          </node>
                        </node>
                        <node concept="3clFbF" id="58xh05AZH9b" role="3cqZAp">
                          <node concept="3nyPlj" id="58xh05AZH9a" role="3clFbG">
                            <ref role="37wK5l" to="z60i:~Container.paintComponents(java.awt.Graphics)" resolve="paintComponents" />
                            <node concept="37vLTw" id="58xh05AZH99" role="37wK5m">
                              <ref role="3cqZAo" node="58xh05AZH8Z" resolve="graphics" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="58xh05AZKDb" role="3cqZAp">
                          <node concept="2OqwBi" id="58xh05AZOg9" role="3clFbG">
                            <node concept="2OqwBi" id="58xh05AZMUN" role="2Oq$k0">
                              <node concept="2OqwBi" id="58xh05AZM4F" role="2Oq$k0">
                                <node concept="liA8E" id="58xh05AZMOK" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                                </node>
                                <node concept="2JrnkZ" id="58xh05AZM4O" role="2Oq$k0">
                                  <node concept="2OqwBi" id="58xh05AZLrq" role="2JrQYb">
                                    <node concept="pncrf" id="58xh05AZKD9" role="2Oq$k0" />
                                    <node concept="I4A8Y" id="58xh05AZLCC" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="58xh05AZO6y" role="2OqNvi">
                                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                              </node>
                            </node>
                            <node concept="liA8E" id="58xh05AZPOq" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                              <node concept="1bVj0M" id="58xh05AZQnx" role="37wK5m">
                                <node concept="3clFbS" id="58xh05AZQny" role="1bW5cS">
                                  <node concept="3clFbF" id="58xh05AZRvG" role="3cqZAp">
                                    <node concept="2OqwBi" id="58xh05AZS6h" role="3clFbG">
                                      <node concept="pncrf" id="58xh05AZRvF" role="2Oq$k0" />
                                      <node concept="2qgKlT" id="58xh05AZSBc" role="2OqNvi">
                                        <ref role="37wK5l" to="35i7:58xh05B1XV4" resolve="drawShapeAt" />
                                        <node concept="37vLTw" id="58xh05AZTFi" role="37wK5m">
                                          <ref role="3cqZAo" node="58xh05AZH8Z" resolve="graphics" />
                                        </node>
                                        <node concept="3cmrfG" id="58xh05B3188" role="37wK5m">
                                          <property role="3cmrfH" value="10" />
                                        </node>
                                        <node concept="3cmrfG" id="58xh05B330W" role="37wK5m">
                                          <property role="3cmrfH" value="10" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="58xh05AZH98" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="58xh05AZU9j" role="jymVt" />
                    <node concept="3clFb_" id="58xh05AZU_6" role="jymVt">
                      <property role="TrG5h" value="getPreferredSize" />
                      <node concept="3Tm1VV" id="58xh05AZU_7" role="1B3o_S" />
                      <node concept="3uibUv" id="58xh05AZU_a" role="3clF45">
                        <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
                      </node>
                      <node concept="3clFbS" id="58xh05AZU_e" role="3clF47">
                        <node concept="3cpWs8" id="58xh05B43EI" role="3cqZAp">
                          <node concept="3cpWsn" id="58xh05B43EJ" role="3cpWs9">
                            <property role="TrG5h" value="dimension" />
                            <node concept="3uibUv" id="58xh05B43EK" role="1tU5fm">
                              <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
                            </node>
                            <node concept="2ShNRf" id="58xh05B43EL" role="33vP2m">
                              <node concept="1pGfFk" id="58xh05B43EM" role="2ShVmc">
                                <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;()" resolve="Dimension" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="58xh05B43EN" role="3cqZAp">
                          <node concept="2OqwBi" id="58xh05B43EO" role="3clFbG">
                            <node concept="2OqwBi" id="58xh05B43EP" role="2Oq$k0">
                              <node concept="2OqwBi" id="58xh05B43EQ" role="2Oq$k0">
                                <node concept="liA8E" id="58xh05B43ER" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                                </node>
                                <node concept="2JrnkZ" id="58xh05B43ES" role="2Oq$k0">
                                  <node concept="2OqwBi" id="58xh05B43ET" role="2JrQYb">
                                    <node concept="pncrf" id="58xh05B43EU" role="2Oq$k0" />
                                    <node concept="I4A8Y" id="58xh05B43EV" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="58xh05B43EW" role="2OqNvi">
                                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                              </node>
                            </node>
                            <node concept="liA8E" id="58xh05B43EX" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                              <node concept="1bVj0M" id="58xh05B43EY" role="37wK5m">
                                <node concept="3clFbS" id="58xh05B43EZ" role="1bW5cS">
                                  <node concept="3clFbF" id="58xh05B43F0" role="3cqZAp">
                                    <node concept="37vLTI" id="58xh05B4dDk" role="3clFbG">
                                      <node concept="3cpWs3" id="58xh05B4h1t" role="37vLTx">
                                        <node concept="2OqwBi" id="58xh05B4lwh" role="3uHU7w">
                                          <node concept="pncrf" id="58xh05B4k$t" role="2Oq$k0" />
                                          <node concept="3TrcHB" id="58xh05B4mLi" role="2OqNvi">
                                            <ref role="3TsBF5" to="mbpf:1pgdCCSayzL" resolve="radius" />
                                          </node>
                                        </node>
                                        <node concept="3cmrfG" id="58xh05B4eWj" role="3uHU7B">
                                          <property role="3cmrfH" value="20" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="58xh05B43F7" role="37vLTJ">
                                        <node concept="37vLTw" id="58xh05B43F8" role="2Oq$k0">
                                          <ref role="3cqZAo" node="58xh05B43EJ" resolve="dimension" />
                                        </node>
                                        <node concept="2OwXpG" id="58xh05B43F9" role="2OqNvi">
                                          <ref role="2Oxat5" to="z60i:~Dimension.width" resolve="width" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="58xh05B43Fa" role="3cqZAp">
                                    <node concept="37vLTI" id="58xh05B4s9J" role="3clFbG">
                                      <node concept="2OqwBi" id="58xh05B43Fh" role="37vLTJ">
                                        <node concept="37vLTw" id="58xh05B43Fi" role="2Oq$k0">
                                          <ref role="3cqZAo" node="58xh05B43EJ" resolve="dimension" />
                                        </node>
                                        <node concept="2OwXpG" id="58xh05B43Fj" role="2OqNvi">
                                          <ref role="2Oxat5" to="z60i:~Dimension.height" resolve="height" />
                                        </node>
                                      </node>
                                      <node concept="3cpWs3" id="58xh05B4t08" role="37vLTx">
                                        <node concept="2OqwBi" id="58xh05B4t0a" role="3uHU7w">
                                          <node concept="pncrf" id="58xh05B4t0b" role="2Oq$k0" />
                                          <node concept="3TrcHB" id="58xh05B4t0c" role="2OqNvi">
                                            <ref role="3TsBF5" to="mbpf:1pgdCCSayzL" resolve="radius" />
                                          </node>
                                        </node>
                                        <node concept="3cmrfG" id="58xh05B4t0e" role="3uHU7B">
                                          <property role="3cmrfH" value="20" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="58xh05B43Fk" role="3cqZAp">
                          <node concept="37vLTw" id="58xh05B43Fl" role="3cqZAk">
                            <ref role="3cqZAo" node="58xh05B43EJ" resolve="dimension" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="58xh05AZU_f" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="58xh05AZDPE" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="58xh05AZEKu">
    <ref role="1XX52x" to="mbpf:1pgdCCSayzV" resolve="Square" />
    <node concept="2aJ2om" id="58xh05B6xvo" role="CpUAK">
      <ref role="2$4xQ3" node="58xh05B6uQG" resolve="ShapePreview" />
    </node>
    <node concept="3EZMnI" id="58xh05AZENa" role="2wV5jI">
      <node concept="3F0ifn" id="58xh05AZENb" role="3EZMnx">
        <property role="3F0ifm" value="square" />
      </node>
      <node concept="3F0ifn" id="58xh05AZENc" role="3EZMnx">
        <property role="3F0ifm" value="upperLeftX:" />
      </node>
      <node concept="3F0A7n" id="58xh05AZENd" role="3EZMnx">
        <ref role="1NtTu8" to="mbpf:1pgdCCSayzW" resolve="upperLeftX" />
      </node>
      <node concept="3F0ifn" id="58xh05AZENe" role="3EZMnx">
        <property role="3F0ifm" value="upperLeftY:" />
      </node>
      <node concept="3F0A7n" id="58xh05AZENf" role="3EZMnx">
        <ref role="1NtTu8" to="mbpf:1pgdCCSay$0" resolve="upperLeftY" />
      </node>
      <node concept="3F0ifn" id="58xh05AZENg" role="3EZMnx">
        <property role="3F0ifm" value="siz:" />
      </node>
      <node concept="3F0A7n" id="58xh05AZENh" role="3EZMnx">
        <ref role="1NtTu8" to="mbpf:1pgdCCSay$7" resolve="size" />
      </node>
      <node concept="PMmxH" id="58xh05AZENi" role="3EZMnx">
        <ref role="PMmxG" node="1AGz40K06mx" resolve="ShapeColor" />
      </node>
      <node concept="3gTLQM" id="58xh05B0g8h" role="3EZMnx">
        <node concept="3Fmcul" id="58xh05B0g8j" role="3FoqZy">
          <node concept="3clFbS" id="58xh05B0g8l" role="2VODD2">
            <node concept="3clFbF" id="58xh05B0l57" role="3cqZAp">
              <node concept="2ShNRf" id="58xh05B0l55" role="3clFbG">
                <node concept="YeOm9" id="58xh05B0n2s" role="2ShVmc">
                  <node concept="1Y3b0j" id="58xh05B0n2v" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                    <ref role="1Y3XeK" to="dxuu:~JPanel" resolve="JPanel" />
                    <node concept="3Tm1VV" id="58xh05B0n2w" role="1B3o_S" />
                    <node concept="3clFb_" id="58xh05B0nIa" role="jymVt">
                      <property role="TrG5h" value="paintComponent" />
                      <node concept="3Tmbuc" id="58xh05B0nIb" role="1B3o_S" />
                      <node concept="3cqZAl" id="58xh05B0nId" role="3clF45" />
                      <node concept="37vLTG" id="58xh05B0nIe" role="3clF46">
                        <property role="TrG5h" value="graphics" />
                        <node concept="3uibUv" id="58xh05B0nIf" role="1tU5fm">
                          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="58xh05B0nIj" role="3clF47">
                        <node concept="3clFbF" id="58xh05B0pT3" role="3cqZAp">
                          <node concept="1rXfSq" id="58xh05B0pT1" role="3clFbG">
                            <ref role="37wK5l" to="dxuu:~JComponent.setOpaque(boolean)" resolve="setOpaque" />
                            <node concept="3clFbT" id="58xh05B0qVi" role="37wK5m" />
                          </node>
                        </node>
                        <node concept="3clFbF" id="58xh05B0nIn" role="3cqZAp">
                          <node concept="3nyPlj" id="58xh05B0nIm" role="3clFbG">
                            <ref role="37wK5l" to="dxuu:~JComponent.paintComponent(java.awt.Graphics)" resolve="paintComponent" />
                            <node concept="37vLTw" id="58xh05B0nIl" role="37wK5m">
                              <ref role="3cqZAo" node="58xh05B0nIe" resolve="graphics" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="58xh05B0rUB" role="3cqZAp">
                          <node concept="2OqwBi" id="58xh05B0xVC" role="3clFbG">
                            <node concept="2OqwBi" id="58xh05B0wDs" role="2Oq$k0">
                              <node concept="2OqwBi" id="58xh05B0vKk" role="2Oq$k0">
                                <node concept="liA8E" id="58xh05B0ww_" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                                </node>
                                <node concept="2JrnkZ" id="58xh05B0vKt" role="2Oq$k0">
                                  <node concept="2OqwBi" id="58xh05B0sxd" role="2JrQYb">
                                    <node concept="pncrf" id="58xh05B0rU_" role="2Oq$k0" />
                                    <node concept="I4A8Y" id="58xh05B0vum" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="58xh05B0xPm" role="2OqNvi">
                                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                              </node>
                            </node>
                            <node concept="liA8E" id="58xh05B0zyM" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                              <node concept="1bVj0M" id="58xh05B0$5N" role="37wK5m">
                                <node concept="3clFbS" id="58xh05B0$5O" role="1bW5cS">
                                  <node concept="3clFbF" id="58xh05B2UdZ" role="3cqZAp">
                                    <node concept="2OqwBi" id="58xh05B2UQU" role="3clFbG">
                                      <node concept="pncrf" id="58xh05B2UdY" role="2Oq$k0" />
                                      <node concept="2qgKlT" id="58xh05B2Vtn" role="2OqNvi">
                                        <ref role="37wK5l" to="35i7:58xh05B1XV4" resolve="drawShapeAt" />
                                        <node concept="37vLTw" id="58xh05B2WxL" role="37wK5m">
                                          <ref role="3cqZAo" node="58xh05B0nIe" resolve="graphics" />
                                        </node>
                                        <node concept="3cmrfG" id="58xh05B2Y3f" role="37wK5m">
                                          <property role="3cmrfH" value="10" />
                                        </node>
                                        <node concept="3cmrfG" id="58xh05B2Zas" role="37wK5m">
                                          <property role="3cmrfH" value="10" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="58xh05B0nIk" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="58xh05B0AEc" role="jymVt" />
                    <node concept="2tJIrI" id="58xh05B0AFK" role="jymVt" />
                    <node concept="3clFb_" id="58xh05B0B5x" role="jymVt">
                      <property role="TrG5h" value="getPreferredSize" />
                      <node concept="3Tm1VV" id="58xh05B0B5y" role="1B3o_S" />
                      <node concept="3uibUv" id="58xh05B0B5_" role="3clF45">
                        <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
                      </node>
                      <node concept="3clFbS" id="58xh05B0B5D" role="3clF47">
                        <node concept="3cpWs8" id="58xh05B3s66" role="3cqZAp">
                          <node concept="3cpWsn" id="58xh05B3s67" role="3cpWs9">
                            <property role="TrG5h" value="dimension" />
                            <node concept="3uibUv" id="58xh05B3s68" role="1tU5fm">
                              <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
                            </node>
                            <node concept="2ShNRf" id="58xh05B3tiO" role="33vP2m">
                              <node concept="1pGfFk" id="58xh05B3uUk" role="2ShVmc">
                                <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;()" resolve="Dimension" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="58xh05B3iNM" role="3cqZAp">
                          <node concept="2OqwBi" id="58xh05B3mNe" role="3clFbG">
                            <node concept="2OqwBi" id="58xh05B3lus" role="2Oq$k0">
                              <node concept="2OqwBi" id="58xh05B3l7b" role="2Oq$k0">
                                <node concept="liA8E" id="58xh05B3lkU" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                                </node>
                                <node concept="2JrnkZ" id="58xh05B3l7k" role="2Oq$k0">
                                  <node concept="2OqwBi" id="58xh05B3k20" role="2JrQYb">
                                    <node concept="pncrf" id="58xh05B3iNK" role="2Oq$k0" />
                                    <node concept="I4A8Y" id="58xh05B3kQx" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="58xh05B3mDn" role="2OqNvi">
                                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                              </node>
                            </node>
                            <node concept="liA8E" id="58xh05B3onr" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                              <node concept="1bVj0M" id="58xh05B3oUZ" role="37wK5m">
                                <node concept="3clFbS" id="58xh05B3oV0" role="1bW5cS">
                                  <node concept="3clFbF" id="58xh05B3vZ7" role="3cqZAp">
                                    <node concept="37vLTI" id="58xh05B3Baa" role="3clFbG">
                                      <node concept="3cpWs3" id="58xh05B3Dgo" role="37vLTx">
                                        <node concept="2OqwBi" id="58xh05B3FJ3" role="3uHU7w">
                                          <node concept="pncrf" id="58xh05B3EH1" role="2Oq$k0" />
                                          <node concept="3TrcHB" id="58xh05B3GNX" role="2OqNvi">
                                            <ref role="3TsBF5" to="mbpf:1pgdCCSay$7" resolve="size" />
                                          </node>
                                        </node>
                                        <node concept="3cmrfG" id="58xh05B3BOh" role="3uHU7B">
                                          <property role="3cmrfH" value="20" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="58xh05B3wKL" role="37vLTJ">
                                        <node concept="37vLTw" id="58xh05B3vZ5" role="2Oq$k0">
                                          <ref role="3cqZAo" node="58xh05B3s67" resolve="dimension" />
                                        </node>
                                        <node concept="2OwXpG" id="58xh05B3xWO" role="2OqNvi">
                                          <ref role="2Oxat5" to="z60i:~Dimension.width" resolve="width" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="58xh05B3Jaa" role="3cqZAp">
                                    <node concept="37vLTI" id="58xh05B3Qk_" role="3clFbG">
                                      <node concept="3cpWs3" id="58xh05B3SPL" role="37vLTx">
                                        <node concept="2OqwBi" id="58xh05B3VGr" role="3uHU7w">
                                          <node concept="pncrf" id="58xh05B3UHD" role="2Oq$k0" />
                                          <node concept="3TrcHB" id="58xh05B3WZ4" role="2OqNvi">
                                            <ref role="3TsBF5" to="mbpf:1pgdCCSay$7" resolve="size" />
                                          </node>
                                        </node>
                                        <node concept="3cmrfG" id="58xh05B3Rch" role="3uHU7B">
                                          <property role="3cmrfH" value="20" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="58xh05B3Kbt" role="37vLTJ">
                                        <node concept="37vLTw" id="58xh05B3Ja8" role="2Oq$k0">
                                          <ref role="3cqZAo" node="58xh05B3s67" resolve="dimension" />
                                        </node>
                                        <node concept="2OwXpG" id="58xh05B3LQQ" role="2OqNvi">
                                          <ref role="2Oxat5" to="z60i:~Dimension.height" resolve="height" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="58xh05B3YDz" role="3cqZAp">
                          <node concept="37vLTw" id="58xh05B40nP" role="3cqZAk">
                            <ref role="3cqZAo" node="58xh05B3s67" resolve="dimension" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="58xh05B0B5E" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="58xh05AZENj" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="58xh05B6gKZ">
    <ref role="1XX52x" to="mbpf:1pgdCCSay$h" resolve="Canvas" />
    <node concept="2aJ2om" id="58xh05B6hBQ" role="CpUAK">
      <ref role="2$4xQ3" node="58xh05AZDIo" resolve="ScenePreview" />
    </node>
    <node concept="3EZMnI" id="58xh05B6hEP" role="2wV5jI">
      <node concept="3F0ifn" id="58xh05B6hEQ" role="3EZMnx">
        <property role="3F0ifm" value="Painting" />
      </node>
      <node concept="3F0A7n" id="58xh05B6hER" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="58xh05B6ijL" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="58xh05B6ikY" role="3EZMnx">
        <node concept="VPM3Z" id="58xh05B6il0" role="3F10Kt" />
        <node concept="3F2HdR" id="58xh05B6hES" role="3EZMnx">
          <ref role="1NtTu8" to="mbpf:1pgdCCSay$m" resolve="shapes" />
          <node concept="2iRkQZ" id="58xh05B6hET" role="2czzBx" />
          <node concept="VPM3Z" id="58xh05B6hEU" role="3F10Kt" />
          <node concept="pVoyu" id="58xh05B6hEV" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3XFhqQ" id="58xh05B6imX" role="3EZMnx" />
        <node concept="3EZMnI" id="58xh05B6io5" role="3EZMnx">
          <node concept="VPM3Z" id="58xh05B6io7" role="3F10Kt" />
          <node concept="3gTLQM" id="58xh05B6ipB" role="3EZMnx">
            <node concept="3Fmcul" id="58xh05B6ipD" role="3FoqZy">
              <node concept="3clFbS" id="58xh05B6ipF" role="2VODD2">
                <node concept="3clFbF" id="58xh05B6iA$" role="3cqZAp">
                  <node concept="2YIFZM" id="58xh05B6iSs" role="3clFbG">
                    <ref role="37wK5l" to="35i7:58xh05AVVqD" resolve="createPanel" />
                    <ref role="1Pybhc" to="35i7:58xh05AVUTg" resolve="PreviewFactory" />
                    <node concept="pncrf" id="58xh05B6jo_" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2iRkQZ" id="58xh05B6ioa" role="2iSdaV" />
        </node>
        <node concept="2iRfu4" id="58xh05B6il3" role="2iSdaV" />
      </node>
      <node concept="l2Vlx" id="58xh05B6hEW" role="2iSdaV" />
    </node>
  </node>
</model>

