import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class PackagedProductDefinitionDbObject {
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
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> packageFor = ToMany<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> status =
      ToOne<CodeableConceptDbObject>();
  final ToOne<FhirDateTimeDbObject> statusDate = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<QuantityDbObject> containedItemQuantity =
      ToMany<QuantityDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<PackagedProductDefinitionLegalStatusOfSupplyDbObject>
      legalStatusOfSupply =
      ToMany<PackagedProductDefinitionLegalStatusOfSupplyDbObject>();
  final ToMany<MarketingStatusDbObject> marketingStatus =
      ToMany<MarketingStatusDbObject>();
  final ToMany<CodeableConceptDbObject> characteristic =
      ToMany<CodeableConceptDbObject>();
  final ToOne<FhirBooleanDbObject> copackagedIndicator =
      ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> copackagedIndicatorElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> manufacturer = ToMany<ReferenceDbObject>();
  final ToOne<PackagedProductDefinitionPackageDbObject> package =
      ToOne<PackagedProductDefinitionPackageDbObject>();
  PackagedProductDefinitionDbObject({required this.id});
}

@Entity()
class PackagedProductDefinitionLegalStatusOfSupplyDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> jurisdiction =
      ToOne<CodeableConceptDbObject>();
  PackagedProductDefinitionLegalStatusOfSupplyDbObject({required this.id});
}

@Entity()
class PackagedProductDefinitionPackageDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirIntegerDbObject> quantity = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> quantityElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> material =
      ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> alternateMaterial =
      ToMany<CodeableConceptDbObject>();
  final ToMany<PackagedProductDefinitionShelfLifeStorageDbObject>
      shelfLifeStorage =
      ToMany<PackagedProductDefinitionShelfLifeStorageDbObject>();
  final ToMany<ReferenceDbObject> manufacturer = ToMany<ReferenceDbObject>();
  final ToMany<PackagedProductDefinitionPropertyDbObject> property =
      ToMany<PackagedProductDefinitionPropertyDbObject>();
  final ToMany<PackagedProductDefinitionContainedItemDbObject> containedItem =
      ToMany<PackagedProductDefinitionContainedItemDbObject>();
  final ToMany<PackagedProductDefinitionPackageDbObject> package =
      ToMany<PackagedProductDefinitionPackageDbObject>();
  PackagedProductDefinitionPackageDbObject({required this.id});
}

@Entity()
class PackagedProductDefinitionShelfLifeStorageDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<IdentifierDbObject> identifier = ToOne<IdentifierDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirDurationDbObject> periodDuration =
      ToOne<FhirDurationDbObject>();
  final ToOne<StringDbObject> periodString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> periodStringElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> specialPrecautionsForStorage =
      ToMany<CodeableConceptDbObject>();
  PackagedProductDefinitionShelfLifeStorageDbObject({required this.id});
}

@Entity()
class PackagedProductDefinitionPropertyDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> valueCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> valueQuantity = ToOne<QuantityDbObject>();
  final ToOne<FhirDateDbObject> valueDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> valueDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> valueBoolean = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> valueBooleanElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<AttachmentDbObject> valueAttachment = ToOne<AttachmentDbObject>();
  PackagedProductDefinitionPropertyDbObject({required this.id});
}

@Entity()
class PackagedProductDefinitionContainedItemDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableReferenceDbObject> item =
      ToOne<CodeableReferenceDbObject>();
  final ToOne<QuantityDbObject> amount = ToOne<QuantityDbObject>();
  PackagedProductDefinitionContainedItemDbObject({required this.id});
}
