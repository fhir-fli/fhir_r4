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
  const Slot({
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
    required this.serviceCategory,
    required this.serviceType,
    required this.specialty,
    required this.appointmentType,
    required this.schedule,
    required this.status,
    required this.statusElement,
    required this.start,
    required this.startElement,
    required this.end,
    required this.endElement,
    required this.overbooked,
    required this.overbookedElement,
    required this.comment,
    required this.commentElement,
  });
}


