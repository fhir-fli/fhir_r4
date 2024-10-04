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
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final Coding connectionType;
  final String name;
  final PrimitiveElement nameElement;
  final Reference managingOrganization;
  final List<ContactPoint> contact;
  final Period period;
  final List<CodeableConcept> payloadType;
  final List<FhirCode> payloadMimeType;
  final List<PrimitiveElement> payloadMimeTypeElement;
  final FhirUrl address;
  final PrimitiveElement addressElement;
  final List<String> header;
  final List<PrimitiveElement> headerElement;
  const Endpoint({
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
    required this.status,
    required this.statusElement,
    required this.connectionType,
    required this.name,
    required this.nameElement,
    required this.managingOrganization,
    required this.contact,
    required this.period,
    required this.payloadType,
    required this.payloadMimeType,
    required this.payloadMimeTypeElement,
    required this.address,
    required this.addressElement,
    required this.header,
    required this.headerElement,
  });
}


