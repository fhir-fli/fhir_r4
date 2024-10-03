import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class DiagnosticReportEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'DiagnosticReport';

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

  @ToMany()
  List<ReferenceEntity>? basedOn;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToMany()
  List<CodeableConceptEntity>? category;

  @ToOne()
  CodeableConceptEntity? code;

  @ToOne()
  ReferenceEntity? subject;

  @ToOne()
  ReferenceEntity? encounter;

  String? effectiveDateTime;

  @ToOne()
  PrimitiveElementEntity? effectiveDateTimeElement;

  @ToOne()
  PeriodEntity? effectivePeriod;

  String? issued;

  @ToOne()
  PrimitiveElementEntity? issuedElement;

  @ToMany()
  List<ReferenceEntity>? performer;

  @ToMany()
  List<ReferenceEntity>? resultsInterpreter;

  @ToMany()
  List<ReferenceEntity>? specimen;

  @ToMany()
  List<ReferenceEntity>? result;

  @ToMany()
  List<ReferenceEntity>? imagingStudy;

  @ToMany()
  List<DiagnosticReportMediaEntity>? media;

  String? conclusion;

  @ToOne()
  PrimitiveElementEntity? conclusionElement;

  @ToMany()
  List<CodeableConceptEntity>? conclusionCode;

  @ToMany()
  List<AttachmentEntity>? presentedForm;
}

class DiagnosticReportMediaEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? comment;

  @ToOne()
  PrimitiveElementEntity? commentElement;

  @ToOne()
  ReferenceEntity? link;
}
