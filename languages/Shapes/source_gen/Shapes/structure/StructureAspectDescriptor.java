package Shapes.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BaseStructureAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import java.util.Collection;
import java.util.Arrays;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import jetbrains.mps.smodel.runtime.DataTypeDescriptor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.runtime.impl.ConceptDescriptorBuilder2;
import jetbrains.mps.smodel.adapter.ids.PrimitiveTypeId;

public class StructureAspectDescriptor extends BaseStructureAspectDescriptor {
  /*package*/ final ConceptDescriptor myConceptCanvas = createDescriptorForCanvas();
  /*package*/ final ConceptDescriptor myConceptCircle = createDescriptorForCircle();
  /*package*/ final ConceptDescriptor myConceptColor = createDescriptorForColor();
  /*package*/ final ConceptDescriptor myConceptColorReference = createDescriptorForColorReference();
  /*package*/ final ConceptDescriptor myConceptShape = createDescriptorForShape();
  /*package*/ final ConceptDescriptor myConceptSquare = createDescriptorForSquare();
  private final LanguageConceptSwitch myIndexSwitch;

  public StructureAspectDescriptor() {
    myIndexSwitch = new LanguageConceptSwitch();
  }


  @Override
  public void reportDependencies(jetbrains.mps.smodel.runtime.StructureAspectDescriptor.Dependencies deps) {
    deps.extendedLanguage(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, "jetbrains.mps.lang.core");
  }

  @Override
  public Collection<ConceptDescriptor> getDescriptors() {
    return Arrays.asList(myConceptCanvas, myConceptCircle, myConceptColor, myConceptColorReference, myConceptShape, myConceptSquare);
  }

  @Override
  @Nullable
  public ConceptDescriptor getDescriptor(SConceptId id) {
    switch (myIndexSwitch.index(id)) {
      case LanguageConceptSwitch.Canvas:
        return myConceptCanvas;
      case LanguageConceptSwitch.Circle:
        return myConceptCircle;
      case LanguageConceptSwitch.Color:
        return myConceptColor;
      case LanguageConceptSwitch.ColorReference:
        return myConceptColorReference;
      case LanguageConceptSwitch.Shape:
        return myConceptShape;
      case LanguageConceptSwitch.Square:
        return myConceptSquare;
      default:
        return null;
    }
  }

  @Override
  public Collection<DataTypeDescriptor> getDataTypeDescriptors() {
    return Arrays.asList();
  }

  /*package*/ int internalIndex(SAbstractConcept c) {
    return myIndexSwitch.index(c);
  }

  private static ConceptDescriptor createDescriptorForCanvas() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("Shapes", "Canvas", 0xf718894dfdff459bL, 0x8ddad7868aeb03b3L, 0x1650368a382a2911L);
    b.class_(false, false, true);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.parent(0x4caf0310491e41f5L, 0x8a9b2006b3a94898L, 0x40c1a7cb987d20d5L);
    b.origin("r:3992b02d-2767-4ccb-b5ff-76a0ce737385(Shapes.structure)/1607845034246940945");
    b.version(2);
    b.aggregate("shapes", 0x1650368a382a2916L).target(0xf718894dfdff459bL, 0x8ddad7868aeb03b3L, 0x1650368a3829f664L).optional(true).ordered(true).multiple(true).origin("1607845034246940950").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForCircle() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("Shapes", "Circle", 0xf718894dfdff459bL, 0x8ddad7868aeb03b3L, 0x1650368a382a28e5L);
    b.class_(false, false, false);
    b.super_("Shapes.structure.Shape", 0xf718894dfdff459bL, 0x8ddad7868aeb03b3L, 0x1650368a3829f664L);
    b.origin("r:3992b02d-2767-4ccb-b5ff-76a0ce737385(Shapes.structure)/1607845034246940901");
    b.version(2);
    b.property("x", 0x1650368a382a28e6L).type(PrimitiveTypeId.INTEGER).origin("1607845034246940902").done();
    b.property("y", 0x1650368a382a28eaL).type(PrimitiveTypeId.INTEGER).origin("1607845034246940906").done();
    b.property("radius", 0x1650368a382a28f1L).type(PrimitiveTypeId.INTEGER).origin("1607845034246940913").done();
    b.alias("circle");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForColor() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("Shapes", "Color", 0xf718894dfdff459bL, 0x8ddad7868aeb03b3L, 0x4180b4ffcdbb1cdbL);
    b.class_(false, false, true);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:3992b02d-2767-4ccb-b5ff-76a0ce737385(Shapes.structure)/4719971420245531867");
    b.version(2);
    b.alias("color");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForColorReference() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("Shapes", "ColorReference", 0xf718894dfdff459bL, 0x8ddad7868aeb03b3L, 0x19ac8c402fffc19bL);
    b.class_(false, false, false);
    b.origin("r:3992b02d-2767-4ccb-b5ff-76a0ce737385(Shapes.structure)/1850007754253517211");
    b.version(2);
    b.associate("target", 0x19ac8c402fffc19cL).target(0xf718894dfdff459bL, 0x8ddad7868aeb03b3L, 0x4180b4ffcdbb1cdbL).optional(false).origin("1850007754253517212").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForShape() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("Shapes", "Shape", 0xf718894dfdff459bL, 0x8ddad7868aeb03b3L, 0x1650368a3829f664L);
    b.class_(false, true, false);
    b.origin("r:3992b02d-2767-4ccb-b5ff-76a0ce737385(Shapes.structure)/1607845034246927972");
    b.version(2);
    b.aggregate("color", 0x414fd1f16474ecafL).target(0xf718894dfdff459bL, 0x8ddad7868aeb03b3L, 0x19ac8c402fffc19bL).optional(false).ordered(true).multiple(false).origin("4706210970328165551").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForSquare() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("Shapes", "Square", 0xf718894dfdff459bL, 0x8ddad7868aeb03b3L, 0x1650368a382a28fbL);
    b.class_(false, false, false);
    b.super_("Shapes.structure.Shape", 0xf718894dfdff459bL, 0x8ddad7868aeb03b3L, 0x1650368a3829f664L);
    b.origin("r:3992b02d-2767-4ccb-b5ff-76a0ce737385(Shapes.structure)/1607845034246940923");
    b.version(2);
    b.property("upperLeftX", 0x1650368a382a28fcL).type(PrimitiveTypeId.INTEGER).origin("1607845034246940924").done();
    b.property("upperLeftY", 0x1650368a382a2900L).type(PrimitiveTypeId.INTEGER).origin("1607845034246940928").done();
    b.property("size", 0x1650368a382a2907L).type(PrimitiveTypeId.INTEGER).origin("1607845034246940935").done();
    b.alias("square");
    return b.create();
  }
}
