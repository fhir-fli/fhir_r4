import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class CoverageEligibilityResponseEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'CoverageEligibilityResponse';

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

  List<String>? purpose;

  @ToMany()
  List<PrimitiveElementEntity>? purposeElement;

  @ToOne()
  ReferenceEntity? patient;

  String? servicedDate;

  @ToOne()
  PrimitiveElementEntity? servicedDateElement;

  @ToOne()
  PeriodEntity? servicedPeriod;

  String? created;

  @ToOne()
  PrimitiveElementEntity? createdElement;

  @ToOne()
  ReferenceEntity? requestor;

  @ToOne()
  ReferenceEntity? request;

  String? outcome;

  @ToOne()
  PrimitiveElementEntity? outcomeElement;

  String? disposition;

  @ToOne()
  PrimitiveElementEntity? dispositionElement;

  @ToOne()
  ReferenceEntity? insurer;

  @ToMany()
  List<CoverageEligibilityResponseInsuranceEntity>? insurance;

  String? preAuthRef;

  @ToOne()
  PrimitiveElementEntity? preAuthRefElement;

  @ToOne()
  CodeableConceptEntity? form;

  @ToMany()
  List<CoverageEligibilityResponseErrorEntity>? error;
}

class CoverageEligibilityResponseInsuranceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  ReferenceEntity? coverage;

  bool? inforce;

  @ToOne()
  PrimitiveElementEntity? inforceElement;

  @ToOne()
  PeriodEntity? benefitPeriod;

  @ToMany()
  List<CoverageEligibilityResponseItemEntity>? item;
}

class CoverageEligibilityResponseItemEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? category;

  @ToOne()
  CodeableConceptEntity? productOrService;

  @ToMany()
  List<CodeableConceptEntity>? modifier;

  @ToOne()
  ReferenceEntity? provider;

  bool? excluded;

  @ToOne()
  PrimitiveElementEntity? excludedElement;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToOne()
  CodeableConceptEntity? network;

  @ToOne()
  CodeableConceptEntity? unit;

  @ToOne()
  CodeableConceptEntity? term;

  @ToMany()
  List<CoverageEligibilityResponseBenefitEntity>? benefit;

  bool? authorizationRequired;

  @ToOne()
  PrimitiveElementEntity? authorizationRequiredElement;

  @ToMany()
  List<CodeableConceptEntity>? authorizationSupporting;

  String? authorizationUrl;

  @ToOne()
  PrimitiveElementEntity? authorizationUrlElement;
}

class CoverageEligibilityResponseBenefitEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? type;

  int? allowedUnsignedInt;

  @ToOne()
  PrimitiveElementEntity? allowedUnsignedIntElement;

  String? allowedString;

  @ToOne()
  PrimitiveElementEntity? allowedStringElement;

  @ToOne()
  MoneyEntity? allowedMoney;

  int? usedUnsignedInt;

  @ToOne()
  PrimitiveElementEntity? usedUnsignedIntElement;

  String? usedString;

  @ToOne()
  PrimitiveElementEntity? usedStringElement;

  @ToOne()
  MoneyEntity? usedMoney;
}

class CoverageEligibilityResponseErrorEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? code;
}
