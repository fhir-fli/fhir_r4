import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class SupplyRequestDbObject {
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
  final ToOne<CodeableConceptDbObject> category =
      ToOne<CodeableConceptDbObject>();
  final ToOne<FhirCodeDbObject> priority = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> priorityElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> itemCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> itemReference = ToOne<ReferenceDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  final ToMany<SupplyRequestParameterDbObject> parameter =
      ToMany<SupplyRequestParameterDbObject>();
  final ToOne<FhirDateTimeDbObject> occurrenceDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> occurrenceDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> occurrencePeriod = ToOne<PeriodDbObject>();
  final ToOne<TimingDbObject> occurrenceTiming = ToOne<TimingDbObject>();
  final ToOne<FhirDateTimeDbObject> authoredOn = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> authoredOnElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> requester = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> supplier = ToMany<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> reasonCode =
      ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> reasonReference = ToMany<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> deliverFrom = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> deliverTo = ToOne<ReferenceDbObject>();
  SupplyRequestDbObject({required this.id});
}

@Entity()
class SupplyRequestParameterDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> valueCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<QuantityDbObject> valueQuantity = ToOne<QuantityDbObject>();
  final ToOne<RangeDbObject> valueRange = ToOne<RangeDbObject>();
  final ToOne<FhirBooleanDbObject> valueBoolean = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> valueBooleanElement =
      ToOne<PrimitiveElementDbObject>();
  SupplyRequestParameterDbObject({required this.id});
}
