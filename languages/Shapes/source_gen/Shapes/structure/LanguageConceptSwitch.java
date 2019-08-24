package Shapes.structure;

/*Generated by MPS */

import jetbrains.mps.lang.smodel.LanguageConceptIndex;
import jetbrains.mps.lang.smodel.LanguageConceptIndexBuilder;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public final class LanguageConceptSwitch {
  private final LanguageConceptIndex myIndex;
  public static final int Canvas = 0;
  public static final int Circle = 1;
  public static final int Color = 2;
  public static final int Shape = 3;
  public static final int Square = 4;

  public LanguageConceptSwitch() {
    LanguageConceptIndexBuilder builder = new LanguageConceptIndexBuilder(0xf718894dfdff459bL, 0x8ddad7868aeb03b3L);
    builder.put(0x1650368a382a2911L, Canvas);
    builder.put(0x1650368a382a28e5L, Circle);
    builder.put(0x4180b4ffcdbb1cdbL, Color);
    builder.put(0x1650368a3829f664L, Shape);
    builder.put(0x1650368a382a28fbL, Square);
    myIndex = builder.seal();
  }

  /*package*/ int index(SConceptId cid) {
    return myIndex.index(cid);
  }

  public int index(SAbstractConcept concept) {
    return myIndex.index(concept);
  }
}
