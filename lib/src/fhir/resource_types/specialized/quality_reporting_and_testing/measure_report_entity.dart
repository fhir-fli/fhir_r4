import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class MeasureReportEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'MeasureReport';

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

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  String? measure;

  @ToOne()
  ReferenceEntity? subject;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;

  @ToOne()
  ReferenceEntity? reporter;

  @ToOne()
  PeriodEntity? period;

  @ToOne()
  CodeableConceptEntity? improvementNotation;

  @ToMany()
  List<MeasureReportGroupEntity>? group;

  @ToMany()
  List<ReferenceEntity>? evaluatedResource;
}

class MeasureReportGroupEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? code;

  @ToMany()
  List<MeasureReportPopulationEntity>? population;

  @ToOne()
  QuantityEntity? measureScore;

  @ToMany()
  List<MeasureReportStratifierEntity>? stratifier;
}

class MeasureReportPopulationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? code;

  int? count;

  @ToOne()
  PrimitiveElementEntity? countElement;

  @ToOne()
  ReferenceEntity? subjectResults;
}

class MeasureReportStratifierEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<CodeableConceptEntity>? code;

  @ToMany()
  List<MeasureReportStratumEntity>? stratum;
}

class MeasureReportStratumEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? value;

  @ToMany()
  List<MeasureReportComponentEntity>? component;

  @ToMany()
  List<MeasureReportPopulation1Entity>? population;

  @ToOne()
  QuantityEntity? measureScore;
}

class MeasureReportComponentEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? code;

  @ToOne()
  CodeableConceptEntity? value;
}

class MeasureReportPopulation1Entity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? code;

  int? count;

  @ToOne()
  PrimitiveElementEntity? countElement;

  @ToOne()
  ReferenceEntity? subjectResults;
}
