import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Endpoint {
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
  final FhirCode status;
  final PrimitiveElement Status;
  final Coding connectionType;
  final String name;
  final PrimitiveElement Name;
  final Reference managingOrganization;
  final List<ContactPoint> contact;
  final Period period;
  final List<CodeableConcept> payloadType;
  final List<FhirCode> payloadMimeType;
  final List<PrimitiveElement> PayloadMimeType;
  final FhirUrl address;
  final PrimitiveElement Address;
  final List<String> header;
  final List<PrimitiveElement> Header;
}


