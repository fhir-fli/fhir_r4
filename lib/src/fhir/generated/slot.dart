import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Slot {
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
  final List<CodeableConcept> serviceCategory;
  final List<CodeableConcept> serviceType;
  final List<CodeableConcept> specialty;
  final CodeableConcept appointmentType;
  final Reference schedule;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirInstant start;
  final PrimitiveElement startElement;
  final FhirInstant end;
  final PrimitiveElement endElement;
  final FhirBoolean overbooked;
  final PrimitiveElement overbookedElement;
  final String comment;
  final PrimitiveElement commentElement;
}


