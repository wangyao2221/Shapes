package Shapes.behavior;

/*Generated by MPS */

import jetbrains.mps.core.aspects.behaviour.BaseBHDescriptor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.core.aspects.behaviour.api.BehaviorRegistry;
import jetbrains.mps.smodel.language.ConceptRegistry;
import jetbrains.mps.core.aspects.behaviour.api.SMethod;
import jetbrains.mps.core.aspects.behaviour.SMethodBuilder;
import jetbrains.mps.core.aspects.behaviour.SJavaCompoundTypeImpl;
import jetbrains.mps.core.aspects.behaviour.SModifiersImpl;
import jetbrains.mps.core.aspects.behaviour.AccessPrivileges;
import java.awt.Graphics;
import java.util.List;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;

public final class Shape__BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0xf718894dfdff459bL, 0x8ddad7868aeb03b3L, 0x1650368a3829f664L, "Shapes.structure.Shape");
  private static final BehaviorRegistry REGISTRY = ConceptRegistry.getInstance().getBehaviorRegistry();

  public static final SMethod<Void> drawShape_id58xh05AWqwL = new SMethodBuilder<Void>(new SJavaCompoundTypeImpl(Void.class)).name("drawShape").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("58xh05AWqwL").registry(REGISTRY).build(SMethodBuilder.createJavaParameter(Graphics.class, ""));
  public static final SMethod<Void> drawShapeAt_id58xh05B1XV4 = new SMethodBuilder<Void>(new SJavaCompoundTypeImpl(Void.class)).name("drawShapeAt").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("58xh05B1XV4").registry(REGISTRY).build(SMethodBuilder.createJavaParameter(Graphics.class, ""), SMethodBuilder.createJavaParameter(Integer.TYPE, ""), SMethodBuilder.createJavaParameter(Integer.TYPE, ""));

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(drawShape_id58xh05AWqwL, drawShapeAt_id58xh05B1XV4);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  /*package*/ static void drawShape_id58xh05AWqwL(@NotNull SNode __thisNode__, Graphics graphics) {
    graphics.setColor(ColorReference__BehaviorDescriptor.findColor_id58xh05AWv2c.invoke(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0xf718894dfdff459bL, 0x8ddad7868aeb03b3L, 0x1650368a3829f664L, 0x414fd1f16474ecafL, "color"))));
  }
  /*package*/ static void drawShapeAt_id58xh05B1XV4(@NotNull SNode __thisNode__, Graphics graphics, int x, int y) {
    graphics.setColor(ColorReference__BehaviorDescriptor.findColor_id58xh05AWv2c.invoke(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0xf718894dfdff459bL, 0x8ddad7868aeb03b3L, 0x1650368a3829f664L, 0x414fd1f16474ecafL, "color"))));
  }

  /*package*/ Shape__BehaviorDescriptor() {
    super(REGISTRY);
  }

  @Override
  protected void initNode(@NotNull SNode node, @NotNull SConstructor constructor, @Nullable Object[] parameters) {
    ___init___(node);
  }

  @Override
  protected <T> T invokeSpecial0(@NotNull SNode node, @NotNull SMethod<T> method, @Nullable Object[] parameters) {
    int methodIndex = BH_METHODS.indexOf(method);
    if (methodIndex < 0) {
      throw new BHMethodNotFoundException(this, method);
    }
    switch (methodIndex) {
      case 0:
        drawShape_id58xh05AWqwL(node, (Graphics) parameters[0]);
        return null;
      case 1:
        drawShapeAt_id58xh05B1XV4(node, (Graphics) parameters[0], ((int) (Integer) parameters[1]), ((int) (Integer) parameters[2]));
        return null;
      default:
        throw new BHMethodNotFoundException(this, method);
    }
  }

  @Override
  protected <T> T invokeSpecial0(@NotNull SAbstractConcept concept, @NotNull SMethod<T> method, @Nullable Object[] parameters) {
    int methodIndex = BH_METHODS.indexOf(method);
    if (methodIndex < 0) {
      throw new BHMethodNotFoundException(this, method);
    }
    switch (methodIndex) {
      default:
        throw new BHMethodNotFoundException(this, method);
    }
  }

  @NotNull
  @Override
  public List<SMethod<?>> getDeclaredMethods() {
    return BH_METHODS;
  }

  @NotNull
  @Override
  public SAbstractConcept getConcept() {
    return CONCEPT;
  }
}
