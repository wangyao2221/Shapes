package Shapes.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.EditorAspectDescriptorBase;
import jetbrains.mps.openapi.editor.descriptor.EditorHintsProvider;
import java.util.Collection;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditorHint;
import java.util.Arrays;
import jetbrains.mps.editor.runtime.descriptor.ConceptEditorHintImpl;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import java.util.Collections;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditorComponent;
import jetbrains.mps.openapi.editor.descriptor.SubstituteMenu;
import jetbrains.mps.lang.smodel.ConceptSwitchIndex;
import jetbrains.mps.lang.smodel.ConceptSwitchIndexBuilder;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;

public class EditorAspectDescriptorImpl extends EditorAspectDescriptorBase implements EditorHintsProvider {
  private Collection<ConceptEditorHint> myHints = Arrays.<ConceptEditorHint>asList(new ConceptEditorHintImpl("ShapePreview", "With ShapePreview", true, "Shapes.editor.Shapes.ShapePreview"), new ConceptEditorHintImpl("ScenePreview", "With Scene Preview", true, "Shapes.editor.Shapes.ScenePreview"));
  @NotNull
  public Collection<ConceptEditor> getDeclaredEditors(SAbstractConcept concept) {
    SAbstractConcept cncpt = ((SAbstractConcept) concept);
    switch (conceptIndex.index(cncpt)) {
      case 0:
        return Arrays.asList(new ConceptEditor[]{new Canvas_Editor(), new Canvas_ScenePreview_Editor()});
      case 1:
        return Arrays.asList(new ConceptEditor[]{new Circle_Editor(), new Circle_ShapePreview_Editor()});
      case 2:
        return Collections.<ConceptEditor>singletonList(new Color_Editor());
      case 3:
        return Collections.<ConceptEditor>singletonList(new ColorReference_Editor());
      case 4:
        return Arrays.asList(new ConceptEditor[]{new Square_Editor(), new Square_ShapePreview_Editor()});
      default:
    }
    return Collections.<ConceptEditor>emptyList();
  }

  @NotNull
  public Collection<ConceptEditorComponent> getDeclaredEditorComponents(SAbstractConcept concept, String editorComponentId) {
    SAbstractConcept cncpt = ((SAbstractConcept) concept);
    switch (conceptIndex1.index(cncpt)) {
      case 0:
        if (true) {
          if ("Shapes.editor.ShapeColor".equals(editorComponentId)) {
            return Collections.<ConceptEditorComponent>singletonList(new ShapeColor());
          }
        }
        break;
      default:
    }
    return Collections.<ConceptEditorComponent>emptyList();
  }
  public Collection<ConceptEditorHint> getHints() {
    return myHints;
  }

  @NotNull
  @Override
  public Collection<SubstituteMenu> getDeclaredDefaultSubstituteMenus(SAbstractConcept concept) {
    SAbstractConcept cncpt = concept;
    switch (conceptIndex2.index(cncpt)) {
      case 0:
        return Collections.<SubstituteMenu>singletonList(new ColorReference_SubstituteMenu());
      default:
    }
    return Collections.<SubstituteMenu>emptyList();
  }

  private static final ConceptSwitchIndex conceptIndex = new ConceptSwitchIndexBuilder().put(MetaIdFactory.conceptId(0xf718894dfdff459bL, 0x8ddad7868aeb03b3L, 0x1650368a382a2911L), MetaIdFactory.conceptId(0xf718894dfdff459bL, 0x8ddad7868aeb03b3L, 0x1650368a382a28e5L), MetaIdFactory.conceptId(0xf718894dfdff459bL, 0x8ddad7868aeb03b3L, 0x4180b4ffcdbb1cdbL), MetaIdFactory.conceptId(0xf718894dfdff459bL, 0x8ddad7868aeb03b3L, 0x19ac8c402fffc19bL), MetaIdFactory.conceptId(0xf718894dfdff459bL, 0x8ddad7868aeb03b3L, 0x1650368a382a28fbL)).seal();
  private static final ConceptSwitchIndex conceptIndex1 = new ConceptSwitchIndexBuilder().put(MetaIdFactory.conceptId(0xf718894dfdff459bL, 0x8ddad7868aeb03b3L, 0x1650368a3829f664L)).seal();
  private static final ConceptSwitchIndex conceptIndex2 = new ConceptSwitchIndexBuilder().put(MetaIdFactory.conceptId(0xf718894dfdff459bL, 0x8ddad7868aeb03b3L, 0x19ac8c402fffc19bL)).seal();
}
