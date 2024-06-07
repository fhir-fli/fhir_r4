import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class CatalogEntryDbObject {
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
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirBooleanDbObject> orderable = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> orderableElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> referencedItem = ToOne<ReferenceDbObject>();
  final ToMany<IdentifierDbObject> additionalIdentifier =
      ToMany<IdentifierDbObject>();
  final ToMany<CodeableConceptDbObject> classification =
      ToMany<CodeableConceptDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> validityPeriod = ToOne<PeriodDbObject>();
  final ToOne<FhirDateTimeDbObject> validTo = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> validToElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> lastUpdated = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> lastUpdatedElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> additionalCharacteristic =
      ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> additionalClassification =
      ToMany<CodeableConceptDbObject>();
  final ToMany<CatalogEntryRelatedEntryDbObject> relatedEntry =
      ToMany<CatalogEntryRelatedEntryDbObject>();
  CatalogEntryDbObject({required this.id});
}

@Entity()
class CatalogEntryRelatedEntryDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> relationtype = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> relationtypeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> item = ToOne<ReferenceDbObject>();
  CatalogEntryRelatedEntryDbObject({required this.id});
}
