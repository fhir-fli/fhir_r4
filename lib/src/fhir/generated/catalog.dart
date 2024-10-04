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
}


