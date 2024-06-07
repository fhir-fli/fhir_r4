import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class BiologicallyDerivedProductDbObject {
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
  final ToOne<BiologicallyDerivedProductCategoryDbObject> productCategory =
      ToOne<BiologicallyDerivedProductCategoryDbObject>();
  final ToOne<PrimitiveElementDbObject> productCategoryElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> productCode =
      ToOne<CodeableConceptDbObject>();
  final ToOne<BiologicallyDerivedProductStatusDbObject> status =
      ToOne<BiologicallyDerivedProductStatusDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> request = ToMany<ReferenceDbObject>();
  final ToOne<FhirIntegerDbObject> quantity = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> quantityElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> parent = ToMany<ReferenceDbObject>();
  final ToOne<BiologicallyDerivedProductCollectionDbObject> collection =
      ToOne<BiologicallyDerivedProductCollectionDbObject>();
  final ToMany<BiologicallyDerivedProductProcessingDbObject> processing =
      ToMany<BiologicallyDerivedProductProcessingDbObject>();
  final ToOne<BiologicallyDerivedProductManipulationDbObject> manipulation =
      ToOne<BiologicallyDerivedProductManipulationDbObject>();
  final ToMany<BiologicallyDerivedProductStorageDbObject> storage =
      ToMany<BiologicallyDerivedProductStorageDbObject>();
  BiologicallyDerivedProductDbObject({required this.id});
}

@Entity()
class BiologicallyDerivedProductCollectionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<ReferenceDbObject> collector = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> source = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> collectedDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> collectedDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> collectedPeriod = ToOne<PeriodDbObject>();
  BiologicallyDerivedProductCollectionDbObject({required this.id});
}

@Entity()
class BiologicallyDerivedProductProcessingDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> procedure =
      ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> additive = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> timeDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> timeDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> timePeriod = ToOne<PeriodDbObject>();
  BiologicallyDerivedProductProcessingDbObject({required this.id});
}

@Entity()
class BiologicallyDerivedProductManipulationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> timeDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> timeDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> timePeriod = ToOne<PeriodDbObject>();
  BiologicallyDerivedProductManipulationDbObject({required this.id});
}

@Entity()
class BiologicallyDerivedProductStorageDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> temperature = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> temperatureElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<BiologicallyDerivedProductStorageScaleDbObject> scale =
      ToOne<BiologicallyDerivedProductStorageScaleDbObject>();
  final ToOne<PrimitiveElementDbObject> scaleElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> duration = ToOne<PeriodDbObject>();
  BiologicallyDerivedProductStorageDbObject({required this.id});
}
