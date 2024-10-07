import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class FhirEndpoint extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final Coding connectionType;
  final FhirString? name;
  final Element? nameElement;
  final Reference? managingOrganization;
  final List<ContactPoint>? contact;
  final Period? period;
  final List<CodeableConcept> payloadType;
  final List<FhirCode>? payloadMimeType;
  final List<Element>? payloadMimeTypeElement;
  final FhirUrl address;
  final Element? addressElement;
  final List<FhirString>? header;
  final List<Element>? headerElement;

  FhirEndpoint({
    super.id,
    super.meta,
    super.implicitRules,
super.implicitRulesElement,
    super.language,
super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
this.statusElement,
    required this.connectionType,
    this.name,
this.nameElement,
    this.managingOrganization,
    this.contact,
    this.period,
    required this.payloadType,
    this.payloadMimeType,
this.payloadMimeTypeElement,
    required this.address,
this.addressElement,
    this.header,
this.headerElement,
  }) : super(resourceType: R4ResourceType.FhirEndpoint);

@override
FhirEndpoint clone() => throw UnimplementedError();
}

