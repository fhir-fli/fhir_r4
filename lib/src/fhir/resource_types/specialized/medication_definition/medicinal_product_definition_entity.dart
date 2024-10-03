import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class MedicinalProductDefinitionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'MedicinalProductDefinition';

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
  CodeableConceptEntity? type;

  @ToOne()
  CodeableConceptEntity? domain;

  String? version;

  @ToOne()
  PrimitiveElementEntity? versionElement;

  @ToOne()
  CodeableConceptEntity? status;

  String? statusDate;

  @ToOne()
  PrimitiveElementEntity? statusDateElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToOne()
  CodeableConceptEntity? combinedPharmaceuticalDoseForm;

  @ToMany()
  List<CodeableConceptEntity>? route;

  String? indication;

  @ToOne()
  PrimitiveElementEntity? indicationElement;

  @ToOne()
  CodeableConceptEntity? legalStatusOfSupply;

  @ToOne()
  CodeableConceptEntity? additionalMonitoringIndicator;

  @ToMany()
  List<CodeableConceptEntity>? specialMeasures;

  @ToOne()
  CodeableConceptEntity? pediatricUseIndicator;

  @ToMany()
  List<CodeableConceptEntity>? classification;

  @ToMany()
  List<MarketingStatusEntity>? marketingStatus;

  @ToMany()
  List<CodeableConceptEntity>? packagedMedicinalProduct;

  @ToMany()
  List<CodeableConceptEntity>? ingredient;

  @ToMany()
  List<CodeableReferenceEntity>? impurity;

  @ToMany()
  List<ReferenceEntity>? attachedDocument;

  @ToMany()
  List<ReferenceEntity>? masterFile;

  @ToMany()
  List<MedicinalProductDefinitionContactEntity>? contact;

  @ToMany()
  List<ReferenceEntity>? clinicalTrial;

  @ToMany()
  List<CodingEntity>? code;

  @ToMany()
  List<MedicinalProductDefinitionNameEntity>? name;

  @ToMany()
  List<MedicinalProductDefinitionCrossReferenceEntity>? crossReference;

  @ToMany()
  List<MedicinalProductDefinitionOperationEntity>? operation;

  @ToMany()
  List<MedicinalProductDefinitionCharacteristicEntity>? characteristic;
}

class MedicinalProductDefinitionContactEntity {
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
  ReferenceEntity? contact;
}

class MedicinalProductDefinitionNameEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? productName;

  @ToOne()
  PrimitiveElementEntity? productNameElement;

  @ToOne()
  CodeableConceptEntity? type;

  @ToMany()
  List<MedicinalProductDefinitionNamePartEntity>? namePart;

  @ToMany()
  List<MedicinalProductDefinitionCountryLanguageEntity>? countryLanguage;
}

class MedicinalProductDefinitionNamePartEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? part_;

  @ToOne()
  PrimitiveElementEntity? partElement;

  @ToOne()
  CodeableConceptEntity? type;
}

class MedicinalProductDefinitionCountryLanguageEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? country;

  @ToOne()
  CodeableConceptEntity? jurisdiction;

  @ToOne()
  CodeableConceptEntity? language;
}

class MedicinalProductDefinitionCrossReferenceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableReferenceEntity? product;

  @ToOne()
  CodeableConceptEntity? type;
}

class MedicinalProductDefinitionOperationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableReferenceEntity? type;

  @ToOne()
  PeriodEntity? effectiveDate;

  @ToMany()
  List<ReferenceEntity>? organization;

  @ToOne()
  CodeableConceptEntity? confidentialityIndicator;
}

class MedicinalProductDefinitionCharacteristicEntity {
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
  CodeableConceptEntity? valueCodeableConcept;

  @ToOne()
  QuantityEntity? valueQuantity;

  String? valueDate;

  @ToOne()
  PrimitiveElementEntity? valueDateElement;

  bool? valueBoolean;

  @ToOne()
  PrimitiveElementEntity? valueBooleanElement;

  @ToOne()
  AttachmentEntity? valueAttachment;
}
