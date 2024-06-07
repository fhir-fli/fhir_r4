import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class MedicationDbObject {
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
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> manufacturer = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> form = ToOne<CodeableConceptDbObject>();
  final ToOne<RatioDbObject> amount = ToOne<RatioDbObject>();
  final ToMany<MedicationIngredientDbObject> ingredient =
      ToMany<MedicationIngredientDbObject>();
  final ToOne<MedicationBatchDbObject> batch = ToOne<MedicationBatchDbObject>();
  MedicationDbObject({required this.id});
}

@Entity()
class MedicationIngredientDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> itemCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> itemReference = ToOne<ReferenceDbObject>();
  final ToOne<FhirBooleanDbObject> isActive = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> isActiveElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<RatioDbObject> strength = ToOne<RatioDbObject>();
  MedicationIngredientDbObject({required this.id});
}

@Entity()
class MedicationBatchDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> lotNumber = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> lotNumberElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> expirationDate =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> expirationDateElement =
      ToOne<PrimitiveElementDbObject>();
  MedicationBatchDbObject({required this.id});
}
