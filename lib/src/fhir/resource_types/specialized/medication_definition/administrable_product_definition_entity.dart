import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class AdministrableProductDefinitionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'AdministrableProductDefinition';
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
  List<ReferenceEntity>? formOf;
  @ToOne()
  CodeableConceptEntity? administrableDoseForm;
  @ToOne()
  CodeableConceptEntity? unitOfPresentation;
  @ToMany()
  List<ReferenceEntity>? producedFrom;
  @ToMany()
  List<CodeableConceptEntity>? ingredient;
  @ToOne()
  ReferenceEntity? device;
  @ToMany()
  List<AdministrableProductDefinitionPropertyEntity>? property;
  @ToMany()
  List<AdministrableProductDefinitionRouteOfAdministrationEntity>
      routeOfAdministration;
}

class AdministrableProductDefinitionPropertyEntity {
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

  @ToOne()
  CodeableConceptEntity? status;
}

class AdministrableProductDefinitionRouteOfAdministrationEntity {
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
  QuantityEntity? firstDose;

  @ToOne()
  QuantityEntity? maxSingleDose;

  @ToOne()
  QuantityEntity? maxDosePerDay;

  @ToOne()
  RatioEntity? maxDosePerTreatmentPeriod;

  @ToOne()
  FhirDurationEntity? maxTreatmentPeriod;

  @ToMany()
  List<AdministrableProductDefinitionTargetSpeciesEntity>? targetSpecies;
}

class AdministrableProductDefinitionTargetSpeciesEntity {
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
  List<AdministrableProductDefinitionWithdrawalPeriodEntity>? withdrawalPeriod;
}

class AdministrableProductDefinitionWithdrawalPeriodEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? tissue;

  @ToOne()
  QuantityEntity? value;

  String? supportingInformation;

  @ToOne()
  PrimitiveElementEntity? supportingInformationElement;
}
