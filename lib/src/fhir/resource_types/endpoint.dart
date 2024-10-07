import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [FhirEndpoint] /// The technical details of an endpoint that can be used for electronic
/// services, such as for web services providing XDS.b or a REST endpoint for
/// another FHIR server. This may include any security context information.
class FhirEndpoint extends DomainResource {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifier for the organization that is used to identify the endpoint
  /// across multiple disparate systems.
  final List<Identifier>? identifier;

  /// [status] /// active | suspended | error | off | test.
  final FhirCode status;
  final Element? statusElement;

  /// [connectionType] /// A coded value that represents the technical details of the usage of this
  /// endpoint, such as what WSDLs should be used in what way. (e.g.
  /// XDS.b/DICOM/cds-hook).
  final Coding connectionType;

  /// [name] /// A friendly name that this endpoint can be referred to with.
  final FhirString? name;
  final Element? nameElement;

  /// [managingOrganization] /// The organization that manages this endpoint (even if technically another
  /// organization is hosting this in the cloud, it is the organization
  /// associated with the data).
  final Reference? managingOrganization;

  /// [contact] /// Contact details for a human to contact about the subscription. The primary
  /// use of this for system administrator troubleshooting.
  final List<ContactPoint>? contact;

  /// [period] /// The interval during which the endpoint is expected to be operational.
  final Period? period;

  /// [payloadType] /// The payload type describes the acceptable content that can be communicated
  /// on the endpoint.
  final List<CodeableConcept> payloadType;

  /// [payloadMimeType] /// The mime type to send the payload in - e.g. application/fhir+xml,
  /// application/fhir+json. If the mime type is not specified, then the sender
  /// could send any content (including no content depending on the
  /// connectionType).
  final List<FhirCode>? payloadMimeType;
  final List<Element>? payloadMimeTypeElement;

  /// [address] /// The uri that describes the actual end-point to connect to.
  final FhirUrl address;
  final Element? addressElement;

  /// [header] /// Additional headers / information to send as part of the notification.
  final List<FhirString>? header;
  final List<Element>? headerElement;
  @override
  FhirEndpoint clone() => throw UnimplementedError();
  FhirEndpoint copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirCode? status,
    Element? statusElement,
    Coding? connectionType,
    FhirString? name,
    Element? nameElement,
    Reference? managingOrganization,
    List<ContactPoint>? contact,
    Period? period,
    List<CodeableConcept>? payloadType,
    List<FhirCode>? payloadMimeType,
    List<Element>? payloadMimeTypeElement,
    FhirUrl? address,
    Element? addressElement,
    List<FhirString>? header,
    List<Element>? headerElement,
  }) {
    return FhirEndpoint(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      connectionType: connectionType ?? this.connectionType,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      managingOrganization: managingOrganization ?? this.managingOrganization,
      contact: contact ?? this.contact,
      period: period ?? this.period,
      payloadType: payloadType ?? this.payloadType,
      payloadMimeType: payloadMimeType ?? this.payloadMimeType,
      payloadMimeTypeElement:
          payloadMimeTypeElement ?? this.payloadMimeTypeElement,
      address: address ?? this.address,
      addressElement: addressElement ?? this.addressElement,
      header: header ?? this.header,
      headerElement: headerElement ?? this.headerElement,
    );
  }
}
