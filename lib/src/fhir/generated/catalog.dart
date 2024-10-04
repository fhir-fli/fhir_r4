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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
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
}

@Data()
@JsonCodable()
class CatalogEntryRelatedEntry {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode relationtype;
  final PrimitiveElement Relationtype;
  final Reference item;
}


