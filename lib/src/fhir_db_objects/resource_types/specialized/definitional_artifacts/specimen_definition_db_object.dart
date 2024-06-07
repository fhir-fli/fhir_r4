import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class SpecimenDefinitionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> resourceType = ToOne<StringDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<IdentifierDbObject> identifier = ToOne<IdentifierDbObject>();
  final ToOne<CodeableConceptDbObject> typeCollected =
      ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> patientPreparation =
      ToMany<CodeableConceptDbObject>();
  final ToOne<StringDbObject> timeAspect = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> timeAspectElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> collection =
      ToMany<CodeableConceptDbObject>();
  final ToMany<SpecimenDefinitionTypeTestedDbObject> typeTested =
      ToMany<SpecimenDefinitionTypeTestedDbObject>();
  SpecimenDefinitionDbObject({required this.id});
}

@Entity()
class SpecimenDefinitionTypeTestedDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirBooleanDbObject> isDerived = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> isDerivedElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirCodeDbObject> preference = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> preferenceElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<SpecimenDefinitionContainerDbObject> container =
      ToOne<SpecimenDefinitionContainerDbObject>();
  final ToOne<StringDbObject> requirement = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> requirementElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDurationDbObject> retentionTime =
      ToOne<FhirDurationDbObject>();
  final ToMany<CodeableConceptDbObject> rejectionCriterion =
      ToMany<CodeableConceptDbObject>();
  final ToMany<SpecimenDefinitionHandlingDbObject> handling =
      ToMany<SpecimenDefinitionHandlingDbObject>();
  SpecimenDefinitionTypeTestedDbObject({required this.id});
}

@Entity()
class SpecimenDefinitionContainerDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> material =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> cap = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<QuantityDbObject> capacity = ToOne<QuantityDbObject>();
  final ToOne<QuantityDbObject> minimumVolumeQuantity =
      ToOne<QuantityDbObject>();
  final ToOne<StringDbObject> minimumVolumeString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> minimumVolumeStringElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<SpecimenDefinitionAdditiveDbObject> additive =
      ToMany<SpecimenDefinitionAdditiveDbObject>();
  final ToOne<StringDbObject> preparation = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> preparationElement =
      ToOne<PrimitiveElementDbObject>();
  SpecimenDefinitionContainerDbObject({required this.id});
}

@Entity()
class SpecimenDefinitionAdditiveDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> additiveCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> additiveReference = ToOne<ReferenceDbObject>();
  SpecimenDefinitionAdditiveDbObject({required this.id});
}

@Entity()
class SpecimenDefinitionHandlingDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> temperatureQualifier =
      ToOne<CodeableConceptDbObject>();
  final ToOne<RangeDbObject> temperatureRange = ToOne<RangeDbObject>();
  final ToOne<FhirDurationDbObject> maxDuration = ToOne<FhirDurationDbObject>();
  final ToOne<StringDbObject> instruction = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> instructionElement =
      ToOne<PrimitiveElementDbObject>();
  SpecimenDefinitionHandlingDbObject({required this.id});
}
