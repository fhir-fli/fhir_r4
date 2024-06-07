import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class ManufacturedItemDefinitionDbObject {
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
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> manufacturedDoseForm =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> unitOfPresentation =
      ToOne<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> manufacturer = ToMany<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> ingredient =
      ToMany<CodeableConceptDbObject>();
  final ToMany<ManufacturedItemDefinitionPropertyDbObject> property =
      ToMany<ManufacturedItemDefinitionPropertyDbObject>();
  ManufacturedItemDefinitionDbObject({required this.id});
}

@Entity()
class ManufacturedItemDefinitionPropertyDbObject {
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
  ManufacturedItemDefinitionPropertyDbObject({required this.id});
}
