import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ImagingStudyEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'ImagingStudy';

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

  @ToMany()
  List<IdentifierEntity>? identifier;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToMany()
  List<CodingEntity>? modality;

  @ToOne()
  ReferenceEntity? subject;

  @ToOne()
  ReferenceEntity? encounter;

  String? started;

  @ToOne()
  PrimitiveElementEntity? startedElement;

  @ToMany()
  List<ReferenceEntity>? basedOn;

  @ToOne()
  ReferenceEntity? referrer;

  @ToMany()
  List<ReferenceEntity>? interpreter;

  @ToMany()
  List<ReferenceEntity>? endpoint;

  int? numberOfSeries;

  @ToOne()
  PrimitiveElementEntity? numberOfSeriesElement;

  int? numberOfInstances;

  @ToOne()
  PrimitiveElementEntity? numberOfInstancesElement;

  @ToOne()
  ReferenceEntity? procedureReference;

  @ToMany()
  List<CodeableConceptEntity>? procedureCode;

  @ToOne()
  ReferenceEntity? location;

  @ToMany()
  List<CodeableConceptEntity>? reasonCode;

  @ToMany()
  List<ReferenceEntity>? reasonReference;

  @ToMany()
  List<AnnotationEntity>? note;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToMany()
  List<ImagingStudySeriesEntity>? series;
}

class ImagingStudySeriesEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? uid;

  @ToOne()
  PrimitiveElementEntity? uidElement;

  int? number;

  @ToOne()
  PrimitiveElementEntity? numberElement;

  @ToOne()
  CodingEntity? modality;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  int? numberOfInstances;

  @ToOne()
  PrimitiveElementEntity? numberOfInstancesElement;

  @ToMany()
  List<ReferenceEntity>? endpoint;

  @ToOne()
  CodingEntity? bodySite;

  @ToOne()
  CodingEntity? laterality;

  @ToMany()
  List<ReferenceEntity>? specimen;

  String? started;

  @ToOne()
  PrimitiveElementEntity? startedElement;

  @ToMany()
  List<ImagingStudyPerformerEntity>? performer;

  @ToMany()
  List<ImagingStudyInstanceEntity>? instance;
}

class ImagingStudyPerformerEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? function;

  @ToOne()
  ReferenceEntity? actor;
}

class ImagingStudyInstanceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? uid;

  @ToOne()
  PrimitiveElementEntity? uidElement;

  @ToOne()
  CodingEntity? sopClass;

  int? number;

  @ToOne()
  PrimitiveElementEntity? numberElement;

  String? title;

  @ToOne()
  PrimitiveElementEntity? titleElement;
}
