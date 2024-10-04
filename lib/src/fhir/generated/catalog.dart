import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class CatalogEntry {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final CodeableConcept type;
  final FhirBoolean orderable;
  final PrimitiveElement orderableElement;
  final Reference referencedItem;
  final List<Identifier> additionalIdentifier;
  final List<CodeableConcept> classification;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final Period validityPeriod;
  final FhirDateTime validTo;
  final PrimitiveElement validToElement;
  final FhirDateTime lastUpdated;
  final PrimitiveElement lastUpdatedElement;
  final List<CodeableConcept> additionalCharacteristic;
  final List<CodeableConcept> additionalClassification;
  final List<CatalogEntryRelatedEntry> relatedEntry;
  const CatalogEntry({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.type,
    required this.orderable,
    required this.orderableElement,
    required this.referencedItem,
    required this.additionalIdentifier,
    required this.classification,
    required this.status,
    required this.statusElement,
    required this.validityPeriod,
    required this.validTo,
    required this.validToElement,
    required this.lastUpdated,
    required this.lastUpdatedElement,
    required this.additionalCharacteristic,
    required this.additionalClassification,
    required this.relatedEntry,
  });
}

@Data()
@JsonCodable()
class CatalogEntryRelatedEntry {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode relationtype;
  final PrimitiveElement relationtypeElement;
  final Reference item;
  const CatalogEntryRelatedEntry({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.relationtype,
    required this.relationtypeElement,
    required this.item,
  });
}


