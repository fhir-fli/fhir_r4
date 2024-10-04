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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final List<CodeableConcept> serviceCategory;
  final List<CodeableConcept> serviceType;
  final List<CodeableConcept> specialty;
  final CodeableConcept appointmentType;
  final Reference schedule;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirInstant start;
  final PrimitiveElement Start;
  final FhirInstant end;
  final PrimitiveElement End;
  final FhirBoolean overbooked;
  final PrimitiveElement Overbooked;
  final String comment;
  final PrimitiveElement Comment;
}


