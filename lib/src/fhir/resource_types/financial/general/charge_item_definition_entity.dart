import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ChargeItemDefinitionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'ChargeItemDefinition';

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

  String? url;

  @ToOne()
  PrimitiveElementEntity? urlElement;

  @ToMany()
  List<IdentifierEntity>? identifier;

  String? version;

  @ToOne()
  PrimitiveElementEntity? versionElement;

  String? title;

  @ToOne()
  PrimitiveElementEntity? titleElement;

  List<FhirUri>? derivedFromUri;

  @ToMany()
  List<PrimitiveElementEntity>? derivedFromUriElement;

  List<String>? partOf;

  List<String>? replaces;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  bool? experimental;

  @ToOne()
  PrimitiveElementEntity? experimentalElement;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;

  String? publisher;

  @ToOne()
  PrimitiveElementEntity? publisherElement;

  @ToMany()
  List<ContactDetailEntity>? contact;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToMany()
  List<UsageContextEntity>? useContext;

  @ToMany()
  List<CodeableConceptEntity>? jurisdiction;

  String? copyright;

  @ToOne()
  PrimitiveElementEntity? copyrightElement;

  String? approvalDate;

  @ToOne()
  PrimitiveElementEntity? approvalDateElement;

  String? lastReviewDate;

  @ToOne()
  PrimitiveElementEntity? lastReviewDateElement;

  @ToOne()
  PeriodEntity? effectivePeriod;

  @ToOne()
  CodeableConceptEntity? code;

  @ToMany()
  List<ReferenceEntity>? instance;

  @ToMany()
  List<ChargeItemDefinitionApplicabilityEntity>? applicability;

  @ToMany()
  List<ChargeItemDefinitionPropertyGroupEntity>? propertyGroup;
}

class ChargeItemDefinitionApplicabilityEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  String? expression;

  @ToOne()
  PrimitiveElementEntity? expressionElement;
}

class ChargeItemDefinitionPropertyGroupEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<ChargeItemDefinitionApplicabilityEntity>? applicability;

  @ToMany()
  List<ChargeItemDefinitionPriceComponentEntity>? priceComponent;
}

class ChargeItemDefinitionPriceComponentEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  @ToOne()
  CodeableConceptEntity? code;

  double? factor;

  @ToOne()
  PrimitiveElementEntity? factorElement;

  @ToOne()
  MoneyEntity? amount;
}
