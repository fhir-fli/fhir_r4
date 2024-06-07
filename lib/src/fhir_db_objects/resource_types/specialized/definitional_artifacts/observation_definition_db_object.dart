import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class ObservationDefinitionDbObject {
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
  final ToMany<CodeableConceptDbObject> category =
      ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToMany<FhirCodeDbObject> permittedDataType = ToMany<FhirCodeDbObject>();
  final ToMany<PrimitiveElementDbObject> permittedDataTypeElement =
      ToMany<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> multipleResultsAllowed =
      ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> multipleResultsAllowedElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> method =
      ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> preferredReportName = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> preferredReportNameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ObservationDefinitionQuantitativeDetailsDbObject>
      quantitativeDetails =
      ToOne<ObservationDefinitionQuantitativeDetailsDbObject>();
  final ToMany<ObservationDefinitionQualifiedIntervalDbObject>
      qualifiedInterval =
      ToMany<ObservationDefinitionQualifiedIntervalDbObject>();
  final ToOne<ReferenceDbObject> validCodedValueSet =
      ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> normalCodedValueSet =
      ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> abnormalCodedValueSet =
      ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> criticalCodedValueSet =
      ToOne<ReferenceDbObject>();
  ObservationDefinitionDbObject({required this.id});
}

@Entity()
class ObservationDefinitionQuantitativeDetailsDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> customaryUnit =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> unit = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirDecimalDbObject> conversionFactor =
      ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> conversionFactorElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> decimalPrecision =
      ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> decimalPrecisionElement =
      ToOne<PrimitiveElementDbObject>();
  ObservationDefinitionQuantitativeDetailsDbObject({required this.id});
}

@Entity()
class ObservationDefinitionQualifiedIntervalDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> category = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> categoryElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<RangeDbObject> range = ToOne<RangeDbObject>();
  final ToOne<CodeableConceptDbObject> context =
      ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> appliesTo =
      ToMany<CodeableConceptDbObject>();
  final ToOne<FhirCodeDbObject> gender = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> genderElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<RangeDbObject> age = ToOne<RangeDbObject>();
  final ToOne<RangeDbObject> gestationalAge = ToOne<RangeDbObject>();
  final ToOne<StringDbObject> condition = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> conditionElement =
      ToOne<PrimitiveElementDbObject>();
  ObservationDefinitionQualifiedIntervalDbObject({required this.id});
}
