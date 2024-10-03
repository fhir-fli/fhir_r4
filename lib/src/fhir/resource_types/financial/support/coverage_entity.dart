import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class CoverageEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Coverage';

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
  CodeableConceptEntity? type;

  @ToOne()
  ReferenceEntity? policyHolder;

  @ToOne()
  ReferenceEntity? subscriber;

  String? subscriberId;

  @ToOne()
  PrimitiveElementEntity? subscriberIdElement;

  @ToOne()
  ReferenceEntity? beneficiary;

  String? dependent;

  @ToOne()
  PrimitiveElementEntity? dependentElement;

  @ToOne()
  CodeableConceptEntity? relationship;

  @ToOne()
  PeriodEntity? period;

  @ToMany()
  List<ReferenceEntity>? payor;

  @ToMany()
  List<CoverageClassEntity>? class_;

  int? order;

  @ToOne()
  PrimitiveElementEntity? orderElement;

  String? network;

  @ToOne()
  PrimitiveElementEntity? networkElement;

  @ToMany()
  List<CoverageCostToBeneficiaryEntity>? costToBeneficiary;

  bool? subrogation;

  @ToOne()
  PrimitiveElementEntity? subrogationElement;

  @ToMany()
  List<ReferenceEntity>? contract;
}

class CoverageClassEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? type;

  String? value;

  @ToOne()
  PrimitiveElementEntity? valueElement;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;
}

class CoverageCostToBeneficiaryEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  QuantityEntity? valueQuantity;

  @ToOne()
  MoneyEntity? valueMoney;

  @ToMany()
  List<CoverageExceptionEntity>? exception;
}

class CoverageExceptionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  PeriodEntity? period;
}
