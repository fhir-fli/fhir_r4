import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ImmunizationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Immunization';

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

  @ToOne()
  CodeableConceptEntity? statusReason;

  @ToOne()
  CodeableConceptEntity? vaccineCode;

  @ToOne()
  ReferenceEntity? patient;

  @ToOne()
  ReferenceEntity? encounter;

  String? occurrenceDateTime;

  @ToOne()
  PrimitiveElementEntity? occurrenceDateTimeElement;

  String? occurrenceString;

  @ToOne()
  PrimitiveElementEntity? occurrenceStringElement;

  String? recorded;

  @ToOne()
  PrimitiveElementEntity? recordedElement;

  bool? primarySource;

  @ToOne()
  PrimitiveElementEntity? primarySourceElement;

  @ToOne()
  CodeableConceptEntity? reportOrigin;

  @ToOne()
  ReferenceEntity? location;

  @ToOne()
  ReferenceEntity? manufacturer;

  String? lotNumber;

  @ToOne()
  PrimitiveElementEntity? lotNumberElement;

  String? expirationDate;

  @ToOne()
  PrimitiveElementEntity? expirationDateElement;

  @ToOne()
  CodeableConceptEntity? site;

  @ToOne()
  CodeableConceptEntity? route;

  @ToOne()
  QuantityEntity? doseQuantity;

  @ToMany()
  List<ImmunizationPerformerEntity>? performer;

  @ToMany()
  List<AnnotationEntity>? note;

  @ToMany()
  List<CodeableConceptEntity>? reasonCode;

  @ToMany()
  List<ReferenceEntity>? reasonReference;

  bool? isSubpotent;

  @ToOne()
  PrimitiveElementEntity? isSubpotentElement;

  @ToMany()
  List<CodeableConceptEntity>? subpotentReason;

  @ToMany()
  List<ImmunizationEducationEntity>? education;

  @ToMany()
  List<CodeableConceptEntity>? programEligibility;

  @ToOne()
  CodeableConceptEntity? fundingSource;

  @ToMany()
  List<ImmunizationReactionEntity>? reaction;

  @ToMany()
  List<ImmunizationProtocolAppliedEntity>? protocolApplied;
}

class ImmunizationPerformerEntity {
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

class ImmunizationEducationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? documentType;

  @ToOne()
  PrimitiveElementEntity? documentTypeElement;

  String? reference;

  @ToOne()
  PrimitiveElementEntity? referenceElement;

  String? publicationDate;

  @ToOne()
  PrimitiveElementEntity? publicationDateElement;

  String? presentationDate;

  @ToOne()
  PrimitiveElementEntity? presentationDateElement;
}

class ImmunizationReactionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;

  @ToOne()
  ReferenceEntity? detail;

  bool? reported;

  @ToOne()
  PrimitiveElementEntity? reportedElement;
}

class ImmunizationProtocolAppliedEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? series;

  @ToOne()
  PrimitiveElementEntity? seriesElement;

  @ToOne()
  ReferenceEntity? authority;

  @ToMany()
  List<CodeableConceptEntity>? targetDisease;

  int? doseNumberPositiveInt;

  @ToOne()
  PrimitiveElementEntity? doseNumberPositiveIntElement;

  String? doseNumberString;

  @ToOne()
  PrimitiveElementEntity? doseNumberStringElement;

  int? seriesDosesPositiveInt;

  @ToOne()
  PrimitiveElementEntity? seriesDosesPositiveIntElement;

  String? seriesDosesString;

  @ToOne()
  PrimitiveElementEntity? seriesDosesStringElement;
}
