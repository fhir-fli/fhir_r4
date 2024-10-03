import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class CompositionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Composition';

  String? id;

  @ToOne()
  FhirMetaEntity? meta;

  String? implicitRules;

  @ToOne()
  PrimitiveElementEntity? implicitRulesElement;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  @ToOne()
  NarrativeEntity? text;

  @ToMany()
  List<ResourceEntity>? contained;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  IdentifierEntity? identifier;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  CodeableConceptEntity? type;

  @ToMany()
  List<CodeableConceptEntity>? category;

  @ToOne()
  ReferenceEntity? subject;

  @ToOne()
  ReferenceEntity? encounter;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;

  @ToMany()
  List<ReferenceEntity>? author;

  String? title;

  @ToOne()
  PrimitiveElementEntity? titleElement;

  String? confidentiality;

  @ToOne()
  PrimitiveElementEntity? confidentialityElement;

  @ToMany()
  List<CompositionAttesterEntity>? attester;

  @ToOne()
  ReferenceEntity? custodian;

  @ToMany()
  List<CompositionRelatesToEntity>? relatesTo;

  @ToMany()
  List<CompositionEventEntity>? event;

  @ToMany()
  List<CompositionSectionEntity>? section;
}

class CompositionAttesterEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? mode;

  @ToOne()
  PrimitiveElementEntity? modeElement;

  String? time;

  @ToOne()
  PrimitiveElementEntity? timeElement;

  @ToOne()
  ReferenceEntity? party;
}

class CompositionRelatesToEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? code;

  @ToOne()
  PrimitiveElementEntity? codeElement;

  @ToOne()
  IdentifierEntity? targetIdentifier;

  @ToOne()
  ReferenceEntity? targetReference;
}

class CompositionEventEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<CodeableConceptEntity>? code;

  @ToOne()
  PeriodEntity? period;

  @ToMany()
  List<ReferenceEntity>? detail;
}

class CompositionSectionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? title;

  @ToOne()
  PrimitiveElementEntity? titleElement;

  @ToOne()
  CodeableConceptEntity? code;

  @ToMany()
  List<ReferenceEntity>? author;

  @ToOne()
  ReferenceEntity? focus;

  @ToOne()
  NarrativeEntity? text;

  String? mode;

  @ToOne()
  PrimitiveElementEntity? modeElement;

  @ToOne()
  CodeableConceptEntity? orderedBy;

  @ToMany()
  List<ReferenceEntity>? entry;

  @ToOne()
  CodeableConceptEntity? emptyReason;

  @ToMany()
  List<CompositionSectionEntity>? section;
}
