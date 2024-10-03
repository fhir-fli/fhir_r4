import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ImmunizationRecommendationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'ImmunizationRecommendation';

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

  @ToOne()
  ReferenceEntity? patient;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;

  @ToOne()
  ReferenceEntity? authority;

  @ToMany()
  List<ImmunizationRecommendationRecommendationEntity>? recommendation;
}

class ImmunizationRecommendationRecommendationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<CodeableConceptEntity>? vaccineCode;

  @ToOne()
  CodeableConceptEntity? targetDisease;

  @ToMany()
  List<CodeableConceptEntity>? contraindicatedVaccineCode;

  @ToOne()
  CodeableConceptEntity? forecastStatus;

  @ToMany()
  List<CodeableConceptEntity>? forecastReason;

  @ToMany()
  List<ImmunizationRecommendationDateCriterionEntity>? dateCriterion;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  String? series;

  @ToOne()
  PrimitiveElementEntity? seriesElement;

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

  @ToMany()
  List<ReferenceEntity>? supportingImmunization;

  @ToMany()
  List<ReferenceEntity>? supportingPatientInformation;
}

class ImmunizationRecommendationDateCriterionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? code;

  String? value;

  @ToOne()
  PrimitiveElementEntity? valueElement;
}
