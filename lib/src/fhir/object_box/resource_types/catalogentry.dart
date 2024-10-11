import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class CatalogEntry extends Resource {
  CatalogEntry({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.type,
    required this.orderable,
    required this.referencedItem,
    this.additionalIdentifier,
    this.classification,
    this.status,
    this.validityPeriod,
    this.validTo,
    this.lastUpdated,
    this.additionalCharacteristic,
    this.additionalClassification,
    this.relatedEntry,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  bool orderable;
  ToOne<Reference> referencedItem = ToOne<Reference>();
  ToMany<Identifier>? additionalIdentifier = ToMany<Identifier>();
  ToMany<CodeableConcept>? classification = ToMany<CodeableConcept>();
  String? status;
  ToOne<Period>? validityPeriod = ToOne<Period>();
  String? validTo;
  String? lastUpdated;
  ToMany<CodeableConcept>? additionalCharacteristic = ToMany<CodeableConcept>();
  ToMany<CodeableConcept>? additionalClassification = ToMany<CodeableConcept>();
  ToMany<CatalogEntryRelatedEntry>? relatedEntry =
      ToMany<CatalogEntryRelatedEntry>();
}

@Entity()
class CatalogEntryRelatedEntry {
  CatalogEntryRelatedEntry({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.relationtype,
    required this.item,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String relationtype;
  ToOne<Reference> item = ToOne<Reference>();
}
