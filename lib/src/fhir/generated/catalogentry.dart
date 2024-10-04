import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CatalogEntry {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<Identifier> identifier;
  final CodeableConcept type;
  final FhirBoolean orderable;
  final PrimitiveElement Orderable;
  final Reference referencedItem;
  final List<Identifier> additionalIdentifier;
  final List<CodeableConcept> classification;
  final FhirCode status;
  final PrimitiveElement Status;
  final Period validityPeriod;
  final FhirDateTime validTo;
  final PrimitiveElement ValidTo;
  final FhirDateTime lastUpdated;
  final PrimitiveElement LastUpdated;
  final List<CodeableConcept> additionalCharacteristic;
  final List<CodeableConcept> additionalClassification;
  final List<CatalogEntryRelatedEntry> relatedEntry;
  const CatalogEntry({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.type,
    this.orderable,
    this.Orderable,
    required this.referencedItem,
    this.additionalIdentifier,
    this.classification,
    this.status,
    this.Status,
    this.validityPeriod,
    this.validTo,
    this.ValidTo,
    this.lastUpdated,
    this.LastUpdated,
    this.additionalCharacteristic,
    this.additionalClassification,
    this.relatedEntry,
  });
}
