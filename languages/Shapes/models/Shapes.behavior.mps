<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f6c04368-fd6a-4954-a825-88f99352a45a(Shapes.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="9z78" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.border(JDK/)" />
    <import index="t6h5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.reflect(JDK/)" />
    <import index="mbpf" ref="r:3992b02d-2767-4ccb-b5ff-76a0ce737385(Shapes.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" implicit="true" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194628440" name="jetbrains.mps.lang.behavior.structure.SuperNodeExpression" flags="nn" index="13iAh5" />
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
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
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
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
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
    </language>
  </registry>
  <node concept="13h7C7" id="58xh05AV_Kq">
    <ref role="13h7C2" to="mbpf:1pgdCCSay$h" resolve="Canvas" />
    <node concept="13hLZK" id="58xh05AV_Kr" role="13h7CW">
      <node concept="3clFbS" id="58xh05AV_Ks" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="58xh05AV_OP" role="13h7CS">
      <property role="TrG5h" value="interpret" />
      <node concept="3Tm1VV" id="58xh05AV_OQ" role="1B3o_S" />
      <node concept="3cqZAl" id="58xh05AV_Px" role="3clF45" />
      <node concept="3clFbS" id="58xh05AV_OS" role="3clF47">
        <node concept="3cpWs8" id="58xh05AVN$x" role="3cqZAp">
          <node concept="3cpWsn" id="58xh05AVN$y" role="3cpWs9">
            <property role="TrG5h" value="frame" />
            <node concept="3uibUv" id="58xh05AVN$z" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JFrame" resolve="JFrame" />
            </node>
            <node concept="2ShNRf" id="58xh05AVNA5" role="33vP2m">
              <node concept="1pGfFk" id="58xh05AVRDM" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JFrame.&lt;init&gt;(java.lang.String)" resolve="JFrame" />
                <node concept="3cpWs3" id="58xh05AVT6Z" role="37wK5m">
                  <node concept="2OqwBi" id="58xh05AVTqs" role="3uHU7w">
                    <node concept="13iPFW" id="58xh05AVT7m" role="2Oq$k0" />
                    <node concept="3TrcHB" id="58xh05AVTR5" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="58xh05AVS1J" role="3uHU7B">
                    <property role="Xl_RC" value="Preview:" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="58xh05AVUC4" role="3cqZAp">
          <node concept="3cpWsn" id="58xh05AVUC2" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="panel" />
            <node concept="3uibUv" id="58xh05AVUQ6" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
            </node>
            <node concept="2YIFZM" id="58xh05AWCNa" role="33vP2m">
              <ref role="37wK5l" node="58xh05AVVqD" resolve="createPanel" />
              <ref role="1Pybhc" node="58xh05AVUTg" resolve="PreviewFactory" />
              <node concept="13iPFW" id="58xh05AWCNX" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="58xh05AWD2S" role="3cqZAp">
          <node concept="2OqwBi" id="58xh05AWDGm" role="3clFbG">
            <node concept="37vLTw" id="58xh05AWD2Q" role="2Oq$k0">
              <ref role="3cqZAo" node="58xh05AVN$y" resolve="frame" />
            </node>
            <node concept="liA8E" id="58xh05AWR6F" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
              <node concept="37vLTw" id="58xh05AWR83" role="37wK5m">
                <ref role="3cqZAo" node="58xh05AVUC2" resolve="panel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="58xh05AWRVe" role="3cqZAp">
          <node concept="2OqwBi" id="58xh05AWSNc" role="3clFbG">
            <node concept="37vLTw" id="58xh05AWRVc" role="2Oq$k0">
              <ref role="3cqZAo" node="58xh05AVN$y" resolve="frame" />
            </node>
            <node concept="liA8E" id="58xh05AXjv1" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Window.setVisible(boolean)" resolve="setVisible" />
              <node concept="3clFbT" id="58xh05AXjwO" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="58xh05AXjVn" role="3cqZAp">
          <node concept="2OqwBi" id="58xh05AXkF4" role="3clFbG">
            <node concept="37vLTw" id="58xh05AXjVl" role="2Oq$k0">
              <ref role="3cqZAo" node="58xh05AVN$y" resolve="frame" />
            </node>
            <node concept="liA8E" id="58xh05AXybY" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Window.pack()" resolve="pack" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="58xh05AVUTg">
    <property role="1EXbeo" value="true" />
    <property role="TrG5h" value="PreviewFactory" />
    <node concept="2YIFZL" id="58xh05AVVqD" role="jymVt">
      <property role="TrG5h" value="createPanel" />
      <node concept="3clFbS" id="58xh05AVVqG" role="3clF47">
        <node concept="3cpWs6" id="58xh05AVV_A" role="3cqZAp">
          <node concept="2ShNRf" id="58xh05AVVDn" role="3cqZAk">
            <node concept="YeOm9" id="58xh05AVWLI" role="2ShVmc">
              <node concept="1Y3b0j" id="58xh05AVWLL" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                <ref role="1Y3XeK" to="dxuu:~JPanel" resolve="JPanel" />
                <node concept="3Tm1VV" id="58xh05AVWLM" role="1B3o_S" />
                <node concept="2tJIrI" id="58xh05AVWOl" role="jymVt" />
                <node concept="3clFb_" id="58xh05AVXFf" role="jymVt">
                  <property role="TrG5h" value="paintComponent" />
                  <node concept="3Tmbuc" id="58xh05AVXFg" role="1B3o_S" />
                  <node concept="3cqZAl" id="58xh05AVXFi" role="3clF45" />
                  <node concept="37vLTG" id="58xh05AVXFj" role="3clF46">
                    <property role="TrG5h" value="graphics" />
                    <node concept="3uibUv" id="58xh05AVXFk" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="58xh05AVXFo" role="3clF47">
                    <node concept="3clFbF" id="58xh05AVXFs" role="3cqZAp">
                      <node concept="3nyPlj" id="58xh05AVXFr" role="3clFbG">
                        <ref role="37wK5l" to="dxuu:~JComponent.paintComponent(java.awt.Graphics)" resolve="paintComponent" />
                        <node concept="37vLTw" id="58xh05AVXFq" role="37wK5m">
                          <ref role="3cqZAo" node="58xh05AVXFj" resolve="graphics" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="58xh05AVYd$" role="3cqZAp">
                      <node concept="2OqwBi" id="58xh05AW1UI" role="3clFbG">
                        <node concept="2OqwBi" id="58xh05AW0Fp" role="2Oq$k0">
                          <node concept="2OqwBi" id="58xh05AVZAi" role="2Oq$k0">
                            <node concept="liA8E" id="58xh05AW0gU" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                            </node>
                            <node concept="2JrnkZ" id="58xh05AVZAr" role="2Oq$k0">
                              <node concept="2OqwBi" id="58xh05AVZ0C" role="2JrQYb">
                                <node concept="37vLTw" id="58xh05AVYdy" role="2Oq$k0">
                                  <ref role="3cqZAo" node="58xh05AVVsD" resolve="thisCanvas" />
                                </node>
                                <node concept="I4A8Y" id="58xh05AVZjS" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="58xh05AW1K4" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                          </node>
                        </node>
                        <node concept="liA8E" id="58xh05AW6tY" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                          <node concept="1bVj0M" id="58xh05AW7lI" role="37wK5m">
                            <node concept="3clFbS" id="58xh05AW7lJ" role="1bW5cS">
                              <node concept="3clFbF" id="58xh05AW8mh" role="3cqZAp">
                                <node concept="2OqwBi" id="58xh05AWfnk" role="3clFbG">
                                  <node concept="2OqwBi" id="58xh05AW8Uz" role="2Oq$k0">
                                    <node concept="37vLTw" id="58xh05AW8mg" role="2Oq$k0">
                                      <ref role="3cqZAo" node="58xh05AVVsD" resolve="thisCanvas" />
                                    </node>
                                    <node concept="3Tsc0h" id="58xh05AW9s7" role="2OqNvi">
                                      <ref role="3TtcxE" to="mbpf:1pgdCCSay$m" resolve="shapes" />
                                    </node>
                                  </node>
                                  <node concept="2es0OD" id="58xh05AWin7" role="2OqNvi">
                                    <node concept="1bVj0M" id="58xh05AWin9" role="23t8la">
                                      <node concept="3clFbS" id="58xh05AWina" role="1bW5cS">
                                        <node concept="3clFbF" id="58xh05AWjDI" role="3cqZAp">
                                          <node concept="2OqwBi" id="58xh05AWmoh" role="3clFbG">
                                            <node concept="37vLTw" id="58xh05AWlLX" role="2Oq$k0">
                                              <ref role="3cqZAo" node="58xh05AWinb" resolve="it" />
                                            </node>
                                            <node concept="2qgKlT" id="58xh05AWBis" role="2OqNvi">
                                              <ref role="37wK5l" node="58xh05AWqwL" resolve="drawShape" />
                                              <node concept="37vLTw" id="58xh05AWCyX" role="37wK5m">
                                                <ref role="3cqZAo" node="58xh05AVXFj" resolve="graphics" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="Rh6nW" id="58xh05AWinb" role="1bW2Oz">
                                        <property role="TrG5h" value="it" />
                                        <node concept="2jxLKc" id="58xh05AWinc" role="1tU5fm" />
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
                  </node>
                  <node concept="2AHcQZ" id="58xh05AVXFp" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="58xh05AXz7g" role="jymVt" />
                <node concept="3clFb_" id="58xh05AXznc" role="jymVt">
                  <property role="TrG5h" value="getPreferredSize" />
                  <node concept="3Tm1VV" id="58xh05AXznd" role="1B3o_S" />
                  <node concept="3uibUv" id="58xh05AXzng" role="3clF45">
                    <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
                  </node>
                  <node concept="3clFbS" id="58xh05AXznk" role="3clF47">
                    <node concept="3cpWs6" id="58xh05AXBm9" role="3cqZAp">
                      <node concept="2ShNRf" id="58xh05AXBTy" role="3cqZAk">
                        <node concept="1pGfFk" id="58xh05AXEsU" role="2ShVmc">
                          <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                          <node concept="3cmrfG" id="58xh05AXF8b" role="37wK5m">
                            <property role="3cmrfH" value="500" />
                          </node>
                          <node concept="3cmrfG" id="58xh05AXGe6" role="37wK5m">
                            <property role="3cmrfH" value="500" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="58xh05AXznl" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="58xh05AXHkk" role="jymVt" />
                <node concept="3clFb_" id="58xh05AXHCz" role="jymVt">
                  <property role="TrG5h" value="getBorder" />
                  <node concept="3Tm1VV" id="58xh05AXHC$" role="1B3o_S" />
                  <node concept="3uibUv" id="58xh05AXHCA" role="3clF45">
                    <ref role="3uigEE" to="9z78:~Border" resolve="Border" />
                  </node>
                  <node concept="3clFbS" id="58xh05AXHCE" role="3clF47">
                    <node concept="3clFbF" id="58xh05AXMlg" role="3cqZAp">
                      <node concept="2ShNRf" id="58xh05AXMle" role="3clFbG">
                        <node concept="1pGfFk" id="58xh05AXO42" role="2ShVmc">
                          <ref role="37wK5l" to="9z78:~TitledBorder.&lt;init&gt;(java.lang.String)" resolve="TitledBorder" />
                          <node concept="Xl_RD" id="58xh05AXODn" role="37wK5m">
                            <property role="Xl_RC" value="Instant Preview" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="58xh05AXHCF" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="58xh05AVVej" role="1B3o_S" />
      <node concept="3uibUv" id="58xh05AVVpT" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
      </node>
      <node concept="37vLTG" id="58xh05AVVsD" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="thisCanvas" />
        <node concept="3Tqbb2" id="58xh05AVVuo" role="1tU5fm">
          <ref role="ehGHo" to="mbpf:1pgdCCSay$h" resolve="Canvas" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="58xh05AVUTh" role="1B3o_S" />
  </node>
  <node concept="13h7C7" id="58xh05AWqeo">
    <ref role="13h7C2" to="mbpf:1pgdCCSavp$" resolve="Shape" />
    <node concept="13hLZK" id="58xh05AWqep" role="13h7CW">
      <node concept="3clFbS" id="58xh05AWqeq" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="58xh05AWqwL" role="13h7CS">
      <property role="TrG5h" value="drawShape" />
      <property role="13i0it" value="true" />
      <node concept="37vLTG" id="58xh05AWq_D" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="58xh05AWr6h" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="3Tm1VV" id="58xh05AWqwM" role="1B3o_S" />
      <node concept="3cqZAl" id="58xh05AWqxG" role="3clF45" />
      <node concept="3clFbS" id="58xh05AWqwO" role="3clF47">
        <node concept="3clFbF" id="58xh05AWr8i" role="3cqZAp">
          <node concept="2OqwBi" id="58xh05AWre5" role="3clFbG">
            <node concept="37vLTw" id="58xh05AWr8h" role="2Oq$k0">
              <ref role="3cqZAo" node="58xh05AWq_D" resolve="graphics" />
            </node>
            <node concept="liA8E" id="58xh05AWrya" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
              <node concept="2OqwBi" id="58xh05AWvT_" role="37wK5m">
                <node concept="2OqwBi" id="58xh05AWtiH" role="2Oq$k0">
                  <node concept="13iPFW" id="58xh05AWrzh" role="2Oq$k0" />
                  <node concept="3TrEf2" id="58xh05AWtsB" role="2OqNvi">
                    <ref role="3Tt5mk" to="mbpf:45fOv5$teMJ" resolve="color" />
                  </node>
                </node>
                <node concept="2qgKlT" id="58xh05AWwvR" role="2OqNvi">
                  <ref role="37wK5l" node="58xh05AWv2c" resolve="findColor" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="58xh05B1XV4" role="13h7CS">
      <property role="TrG5h" value="drawShapeAt" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="58xh05B1XV5" role="1B3o_S" />
      <node concept="3cqZAl" id="58xh05B1Y6z" role="3clF45" />
      <node concept="3clFbS" id="58xh05B1XV7" role="3clF47">
        <node concept="3clFbF" id="58xh05B1YwC" role="3cqZAp">
          <node concept="2OqwBi" id="58xh05B1YA9" role="3clFbG">
            <node concept="37vLTw" id="58xh05B1YwB" role="2Oq$k0">
              <ref role="3cqZAo" node="58xh05B1Y8D" resolve="graphics" />
            </node>
            <node concept="liA8E" id="58xh05B1YTD" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
              <node concept="2OqwBi" id="58xh05B1ZFI" role="37wK5m">
                <node concept="2OqwBi" id="58xh05B1Z3N" role="2Oq$k0">
                  <node concept="13iPFW" id="58xh05B1YUu" role="2Oq$k0" />
                  <node concept="3TrEf2" id="58xh05B1ZpO" role="2OqNvi">
                    <ref role="3Tt5mk" to="mbpf:45fOv5$teMJ" resolve="color" />
                  </node>
                </node>
                <node concept="2qgKlT" id="58xh05B20fD" role="2OqNvi">
                  <ref role="37wK5l" node="58xh05AWv2c" resolve="findColor" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="58xh05B1Y8D" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="58xh05B1Y8C" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="37vLTG" id="58xh05B1YaW" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="58xh05B1Ybw" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="58xh05B1Ycc" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="58xh05B1YcE" role="1tU5fm" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="58xh05AWt_G">
    <ref role="13h7C2" to="mbpf:1AGz40JZW6r" resolve="ColorReference" />
    <node concept="13hLZK" id="58xh05AWt_H" role="13h7CW">
      <node concept="3clFbS" id="58xh05AWt_I" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="58xh05AWv2c" role="13h7CS">
      <property role="TrG5h" value="findColor" />
      <node concept="3Tm1VV" id="58xh05AWv2d" role="1B3o_S" />
      <node concept="3uibUv" id="58xh05AWv3j" role="3clF45">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="3clFbS" id="58xh05AWv2f" role="3clF47">
        <node concept="3cpWs8" id="58xh05B248r" role="3cqZAp">
          <node concept="3cpWsn" id="58xh05B248u" role="3cpWs9">
            <property role="TrG5h" value="color" />
            <node concept="3Tqbb2" id="58xh05B248q" role="1tU5fm">
              <ref role="ehGHo" to="mbpf:460HfZdILNr" resolve="Color" />
            </node>
            <node concept="2OqwBi" id="58xh05B24n9" role="33vP2m">
              <node concept="13iPFW" id="58xh05B24e7" role="2Oq$k0" />
              <node concept="3TrEf2" id="58xh05B24FJ" role="2OqNvi">
                <ref role="3Tt5mk" to="mbpf:1AGz40JZW6s" resolve="target" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="58xh05B24Li" role="3cqZAp">
          <node concept="3clFbS" id="58xh05B24Lk" role="3clFbx">
            <node concept="3cpWs6" id="58xh05B25ct" role="3cqZAp">
              <node concept="10M0yZ" id="58xh05B25gh" role="3cqZAk">
                <ref role="3cqZAo" to="z60i:~Color.BLUE" resolve="BLUE" />
                <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="58xh05B256Q" role="3clFbw">
            <node concept="10Nm6u" id="58xh05B25b5" role="3uHU7w" />
            <node concept="37vLTw" id="58xh05B24Pj" role="3uHU7B">
              <ref role="3cqZAo" node="58xh05B248u" resolve="color" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="58xh05B25mp" role="3cqZAp">
          <node concept="3cpWsn" id="58xh05B25mv" role="3cpWs9">
            <property role="TrG5h" value="clazz" />
            <node concept="3uibUv" id="58xh05B25mx" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
              <node concept="3uibUv" id="58xh05B25ud" role="11_B2D">
                <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
              </node>
            </node>
            <node concept="3VsKOn" id="58xh05B25NI" role="33vP2m">
              <ref role="3VsUkX" to="z60i:~Color" resolve="Color" />
            </node>
          </node>
        </node>
        <node concept="SfApY" id="58xh05B25T3" role="3cqZAp">
          <node concept="3clFbS" id="58xh05B25T5" role="SfCbr">
            <node concept="3cpWs6" id="58xh05B25XC" role="3cqZAp">
              <node concept="10QFUN" id="58xh05B2ho9" role="3cqZAk">
                <node concept="3uibUv" id="58xh05B2hHg" role="10QFUM">
                  <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
                </node>
                <node concept="2OqwBi" id="58xh05B2a68" role="10QFUP">
                  <node concept="2OqwBi" id="58xh05B26Kv" role="2Oq$k0">
                    <node concept="37vLTw" id="58xh05B26nh" role="2Oq$k0">
                      <ref role="3cqZAo" node="58xh05B25mv" resolve="clazz" />
                    </node>
                    <node concept="liA8E" id="58xh05B28pM" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Class.getField(java.lang.String)" resolve="getField" />
                      <node concept="2OqwBi" id="58xh05B28Lz" role="37wK5m">
                        <node concept="37vLTw" id="58xh05B28_c" role="2Oq$k0">
                          <ref role="3cqZAo" node="58xh05B248u" resolve="color" />
                        </node>
                        <node concept="3TrcHB" id="58xh05B29EY" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="58xh05B2gLv" role="2OqNvi">
                    <ref role="37wK5l" to="t6h5:~Field.get(java.lang.Object)" resolve="get" />
                    <node concept="37vLTw" id="58xh05B2h5q" role="37wK5m">
                      <ref role="3cqZAo" node="58xh05B25mv" resolve="clazz" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="58xh05B25T6" role="TEbGg">
            <node concept="3cpWsn" id="58xh05B25T8" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="58xh05B2jZ7" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~IllegalAccessException" resolve="IllegalAccessException" />
              </node>
            </node>
            <node concept="3clFbS" id="58xh05B25Tc" role="TDEfX">
              <node concept="3cpWs6" id="58xh05B2kd6" role="3cqZAp">
                <node concept="10M0yZ" id="58xh05B2kyu" role="3cqZAk">
                  <ref role="3cqZAo" to="z60i:~Color.BLUE" resolve="BLUE" />
                  <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="58xh05B2luZ" role="TEbGg">
            <node concept="3cpWsn" id="58xh05B2lv0" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="58xh05B2mN9" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~NoSuchFieldException" resolve="NoSuchFieldException" />
              </node>
            </node>
            <node concept="3clFbS" id="58xh05B2lv2" role="TDEfX">
              <node concept="3cpWs6" id="58xh05B2maC" role="3cqZAp">
                <node concept="10M0yZ" id="58xh05B2mAz" role="3cqZAk">
                  <ref role="3cqZAo" to="z60i:~Color.BLUE" resolve="BLUE" />
                  <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="58xh05B2mWY" role="TEbGg">
            <node concept="3cpWsn" id="58xh05B2mWZ" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="58xh05B2nlp" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~SecurityException" resolve="SecurityException" />
              </node>
            </node>
            <node concept="3clFbS" id="58xh05B2mX1" role="TDEfX">
              <node concept="3cpWs6" id="58xh05B2nFi" role="3cqZAp">
                <node concept="10M0yZ" id="58xh05B2o5t" role="3cqZAk">
                  <ref role="3cqZAo" to="z60i:~Color.BLUE" resolve="BLUE" />
                  <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="58xh05AWwER">
    <ref role="13h7C2" to="mbpf:1pgdCCSayz_" resolve="Circle" />
    <node concept="13hLZK" id="58xh05AWwES" role="13h7CW">
      <node concept="3clFbS" id="58xh05AWwET" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="58xh05AWwI8" role="13h7CS">
      <property role="TrG5h" value="drawShape" />
      <ref role="13i0hy" node="58xh05AWqwL" resolve="drawShape" />
      <node concept="3Tm1VV" id="58xh05AWwI9" role="1B3o_S" />
      <node concept="3clFbS" id="58xh05AWwIb" role="3clF47">
        <node concept="3clFbF" id="58xh05AXWrP" role="3cqZAp">
          <node concept="2OqwBi" id="58xh05AXWAf" role="3clFbG">
            <node concept="13iAh5" id="58xh05AXWrN" role="2Oq$k0" />
            <node concept="2qgKlT" id="58xh05AXWXq" role="2OqNvi">
              <ref role="37wK5l" node="58xh05AWqwL" resolve="drawShape" />
              <node concept="37vLTw" id="58xh05AXX1W" role="37wK5m">
                <ref role="3cqZAo" node="58xh05AXRf5" resolve="graphics" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="58xh05AXRY2" role="3cqZAp">
          <node concept="2OqwBi" id="58xh05AXS3P" role="3clFbG">
            <node concept="37vLTw" id="58xh05AXRY1" role="2Oq$k0">
              <ref role="3cqZAo" node="58xh05AXRf5" resolve="graphics" />
            </node>
            <node concept="liA8E" id="58xh05AXSns" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.drawOval(int,int,int,int)" resolve="drawOval" />
              <node concept="2OqwBi" id="58xh05AXSyc" role="37wK5m">
                <node concept="13iPFW" id="58xh05AXSo8" role="2Oq$k0" />
                <node concept="3TrcHB" id="58xh05AXSLD" role="2OqNvi">
                  <ref role="3TsBF5" to="mbpf:1pgdCCSayzA" resolve="x" />
                </node>
              </node>
              <node concept="2OqwBi" id="58xh05AXT4N" role="37wK5m">
                <node concept="13iPFW" id="58xh05AXSS_" role="2Oq$k0" />
                <node concept="3TrcHB" id="58xh05AXTe$" role="2OqNvi">
                  <ref role="3TsBF5" to="mbpf:1pgdCCSayzE" resolve="y" />
                </node>
              </node>
              <node concept="2OqwBi" id="58xh05AXTwj" role="37wK5m">
                <node concept="13iPFW" id="58xh05AXTlS" role="2Oq$k0" />
                <node concept="3TrcHB" id="58xh05AXTNK" role="2OqNvi">
                  <ref role="3TsBF5" to="mbpf:1pgdCCSayzL" resolve="radius" />
                </node>
              </node>
              <node concept="2OqwBi" id="58xh05AXU4J" role="37wK5m">
                <node concept="13iPFW" id="58xh05AXTUj" role="2Oq$k0" />
                <node concept="3TrcHB" id="58xh05AXUwC" role="2OqNvi">
                  <ref role="3TsBF5" to="mbpf:1pgdCCSayzL" resolve="radius" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="58xh05AXRf5" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="58xh05AXRf6" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="3cqZAl" id="58xh05AXRf7" role="3clF45" />
    </node>
    <node concept="13i0hz" id="58xh05B2BWe" role="13h7CS">
      <property role="TrG5h" value="drawShapeAt" />
      <property role="13i0it" value="true" />
      <ref role="13i0hy" node="58xh05B1XV4" resolve="drawShapeAt" />
      <node concept="3Tm1VV" id="58xh05B2BWf" role="1B3o_S" />
      <node concept="3clFbS" id="58xh05B2BWg" role="3clF47">
        <node concept="3clFbF" id="58xh05B2BWh" role="3cqZAp">
          <node concept="2OqwBi" id="58xh05B2BWi" role="3clFbG">
            <node concept="13iAh5" id="58xh05B2BWj" role="2Oq$k0" />
            <node concept="2qgKlT" id="58xh05B2BWk" role="2OqNvi">
              <ref role="37wK5l" node="58xh05B1XV4" resolve="drawShapeAt" />
              <node concept="37vLTw" id="58xh05B2BWl" role="37wK5m">
                <ref role="3cqZAo" node="58xh05B2BWy" resolve="graphics" />
              </node>
              <node concept="37vLTw" id="58xh05B52q4" role="37wK5m">
                <ref role="3cqZAo" node="58xh05B2BW$" resolve="x" />
              </node>
              <node concept="37vLTw" id="58xh05B52zf" role="37wK5m">
                <ref role="3cqZAo" node="58xh05B2BWA" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="58xh05B2BWm" role="3cqZAp">
          <node concept="2OqwBi" id="58xh05B2BWn" role="3clFbG">
            <node concept="37vLTw" id="58xh05B2BWo" role="2Oq$k0">
              <ref role="3cqZAo" node="58xh05B2BWy" resolve="graphics" />
            </node>
            <node concept="liA8E" id="58xh05B2BWp" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.drawOval(int,int,int,int)" resolve="drawOval" />
              <node concept="37vLTw" id="58xh05B2BWq" role="37wK5m">
                <ref role="3cqZAo" node="58xh05B2BW$" resolve="x" />
              </node>
              <node concept="37vLTw" id="58xh05B2BWr" role="37wK5m">
                <ref role="3cqZAo" node="58xh05B2BWA" resolve="y" />
              </node>
              <node concept="2OqwBi" id="58xh05B2BWs" role="37wK5m">
                <node concept="13iPFW" id="58xh05B2BWt" role="2Oq$k0" />
                <node concept="3TrcHB" id="58xh05B2Cwn" role="2OqNvi">
                  <ref role="3TsBF5" to="mbpf:1pgdCCSayzL" resolve="radius" />
                </node>
              </node>
              <node concept="2OqwBi" id="58xh05B2BWv" role="37wK5m">
                <node concept="13iPFW" id="58xh05B2BWw" role="2Oq$k0" />
                <node concept="3TrcHB" id="58xh05B2CNG" role="2OqNvi">
                  <ref role="3TsBF5" to="mbpf:1pgdCCSayzL" resolve="radius" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="58xh05B2BWy" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="58xh05B2BWz" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="37vLTG" id="58xh05B2BW$" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="58xh05B2BW_" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="58xh05B2BWA" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="58xh05B2BWB" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="58xh05B2BWC" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="58xh05AXVN4">
    <ref role="13h7C2" to="mbpf:1pgdCCSayzV" resolve="Square" />
    <node concept="13hLZK" id="58xh05AXVN5" role="13h7CW">
      <node concept="3clFbS" id="58xh05AXVN6" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="58xh05AXVRh" role="13h7CS">
      <property role="TrG5h" value="drawShape" />
      <ref role="13i0hy" node="58xh05AWqwL" resolve="drawShape" />
      <node concept="3Tm1VV" id="58xh05AXVRi" role="1B3o_S" />
      <node concept="3clFbS" id="58xh05AXVRk" role="3clF47">
        <node concept="3clFbF" id="58xh05AXVYj" role="3cqZAp">
          <node concept="2OqwBi" id="58xh05AXW5r" role="3clFbG">
            <node concept="13iAh5" id="58xh05AXVYi" role="2Oq$k0" />
            <node concept="2qgKlT" id="58xh05AXXwN" role="2OqNvi">
              <ref role="37wK5l" node="58xh05AWqwL" resolve="drawShape" />
              <node concept="37vLTw" id="58xh05AXX_l" role="37wK5m">
                <ref role="3cqZAo" node="58xh05AXVWv" resolve="graphics" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="58xh05AXXIl" role="3cqZAp">
          <node concept="2OqwBi" id="58xh05AXXOd" role="3clFbG">
            <node concept="37vLTw" id="58xh05AXXIj" role="2Oq$k0">
              <ref role="3cqZAo" node="58xh05AXVWv" resolve="graphics" />
            </node>
            <node concept="liA8E" id="58xh05AXYbv" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.drawRect(int,int,int,int)" resolve="drawRect" />
              <node concept="2OqwBi" id="58xh05AXYlZ" role="37wK5m">
                <node concept="13iPFW" id="58xh05AXYcb" role="2Oq$k0" />
                <node concept="3TrcHB" id="58xh05AXYJh" role="2OqNvi">
                  <ref role="3TsBF5" to="mbpf:1pgdCCSayzW" resolve="upperLeftX" />
                </node>
              </node>
              <node concept="2OqwBi" id="58xh05AXZ0f" role="37wK5m">
                <node concept="13iPFW" id="58xh05AXYQd" role="2Oq$k0" />
                <node concept="3TrcHB" id="58xh05AXZrE" role="2OqNvi">
                  <ref role="3TsBF5" to="mbpf:1pgdCCSay$0" resolve="upperLeftY" />
                </node>
              </node>
              <node concept="2OqwBi" id="58xh05AXZJN" role="37wK5m">
                <node concept="13iPFW" id="58xh05AXZzm" role="2Oq$k0" />
                <node concept="3TrcHB" id="58xh05AY03s" role="2OqNvi">
                  <ref role="3TsBF5" to="mbpf:1pgdCCSay$7" resolve="size" />
                </node>
              </node>
              <node concept="2OqwBi" id="58xh05AY0nO" role="37wK5m">
                <node concept="13iPFW" id="58xh05AY0b8" role="2Oq$k0" />
                <node concept="3TrcHB" id="58xh05AY13K" role="2OqNvi">
                  <ref role="3TsBF5" to="mbpf:1pgdCCSay$7" resolve="size" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="58xh05AXVWv" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="58xh05AXVWw" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="3cqZAl" id="58xh05AXVWx" role="3clF45" />
    </node>
    <node concept="13i0hz" id="58xh05B2_lT" role="13h7CS">
      <property role="TrG5h" value="drawShapeAt" />
      <property role="13i0it" value="true" />
      <ref role="13i0hy" node="58xh05B1XV4" resolve="drawShapeAt" />
      <node concept="3Tm1VV" id="58xh05B2_lU" role="1B3o_S" />
      <node concept="3clFbS" id="58xh05B2_lW" role="3clF47">
        <node concept="3clFbF" id="58xh05B2Al2" role="3cqZAp">
          <node concept="2OqwBi" id="58xh05B2Al3" role="3clFbG">
            <node concept="13iAh5" id="58xh05B2Al4" role="2Oq$k0" />
            <node concept="2qgKlT" id="58xh05B2Al5" role="2OqNvi">
              <ref role="37wK5l" node="58xh05AWqwL" resolve="drawShape" />
              <node concept="37vLTw" id="58xh05B2Al6" role="37wK5m">
                <ref role="3cqZAo" node="58xh05B2AcM" resolve="graphics" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="58xh05B2Al7" role="3cqZAp">
          <node concept="2OqwBi" id="58xh05B2Al8" role="3clFbG">
            <node concept="37vLTw" id="58xh05B2Al9" role="2Oq$k0">
              <ref role="3cqZAo" node="58xh05B2AcM" resolve="graphics" />
            </node>
            <node concept="liA8E" id="58xh05B2Ala" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.drawRect(int,int,int,int)" resolve="drawRect" />
              <node concept="37vLTw" id="58xh05B2ACU" role="37wK5m">
                <ref role="3cqZAo" node="58xh05B2AcO" resolve="x" />
              </node>
              <node concept="37vLTw" id="58xh05B2BHM" role="37wK5m">
                <ref role="3cqZAo" node="58xh05B2AcQ" resolve="y" />
              </node>
              <node concept="2OqwBi" id="58xh05B2Alh" role="37wK5m">
                <node concept="13iPFW" id="58xh05B2Ali" role="2Oq$k0" />
                <node concept="3TrcHB" id="58xh05B2Alj" role="2OqNvi">
                  <ref role="3TsBF5" to="mbpf:1pgdCCSay$7" resolve="size" />
                </node>
              </node>
              <node concept="2OqwBi" id="58xh05B2Alk" role="37wK5m">
                <node concept="13iPFW" id="58xh05B2All" role="2Oq$k0" />
                <node concept="3TrcHB" id="58xh05B2Alm" role="2OqNvi">
                  <ref role="3TsBF5" to="mbpf:1pgdCCSay$7" resolve="size" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="58xh05B2AcM" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="58xh05B2AcN" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="37vLTG" id="58xh05B2AcO" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="58xh05B2AcP" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="58xh05B2AcQ" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="58xh05B2AcR" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="58xh05B2AcS" role="3clF45" />
    </node>
  </node>
</model>

