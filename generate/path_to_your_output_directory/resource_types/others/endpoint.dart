import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Endpoint] The technical details of an endpoint that can be used for
/// electronic services, such as for web services providing XDS.b, a REST
/// endpoint for another FHIR server, or a s/Mime email address. This may
/// include any security context information.

@freezed
class Endpoint with _$Endpoint {
  const Endpoint._();

  const factory Endpoint({
/// [resourceType] This is a Endpoint resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
/// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// [_language] Extensions for language

    @JsonKey(name: '_language') PrimitiveElement? languageElement,
/// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [identifier] Identifier for the organization that is used to identify
/// the endpoint across multiple disparate systems.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [status] The endpoint status represents whether the endpoint can
/// currently be used for connections or why it can't be used.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [connectionType] A coded value that represents the technical details of
/// the usage of this endpoint, such as what WSDLs should be used in what way.
/// (e.g. XDS.b/DICOM/cds-hook).

    @JsonKey(name: 'connectionType') List<List<CodeableConcept>>? connectionType,
/// [name] A friendly name that this endpoint can be referred to with.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [description] The description of the endpoint and what it is for
/// (typically used as supplemental information in an endpoint directory
/// describing its usage/purpose).

    @JsonKey(name: 'description') String? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [environmentType] The type of environment(s) exposed at this endpoint
/// (dev, prod, test, etc.).

    @JsonKey(name: 'environmentType') List<List<CodeableConcept>>? environmentType,
/// [managingOrganization] The organization that provides technical
/// management services for this endpoint.  This would be the organization that
/// acts as the public help desk for when the endpoint is not functioning.  It
/// does NOT necessarily represent the organization who is the steward of data
/// being provided/accepted by the endpoint.

    @JsonKey(name: 'managingOrganization') Reference? managingOrganization,
/// [contact] Contact details for a human to contact about the endpoint.
/// The primary use of this for system administrator troubleshooting.

    @JsonKey(name: 'contact') List<List<ContactPoint>>? contact,
/// [period] The interval during which the endpoint is expected to be
/// operational.

    @JsonKey(name: 'period') Period? period,
/// [availability] The times the endpoint is expected to be available,
/// including transient downtimes and any exceptions.

    @JsonKey(name: 'availability') Availability? availability,
/// [payload] The set of payloads that are provided/available at this
/// endpoint.

    @JsonKey(name: 'payload') List<List<Endpoint_Payload>>? payload,
/// [address] The uri that describes the actual end-point to connect to.

    @JsonKey(name: 'address') FhirUrl? address,
/// [_address] Extensions for address

    @JsonKey(name: '_address') PrimitiveElement? addressElement,
/// [header] Additional headers / information to send as part of the
/// notification.

    @JsonKey(name: 'header') List<List<String>>? header,
/// [_header] Extensions for header

    @JsonKey(name: '_header') List<PrimitiveElement>? headerElement,
  }) = _$Endpoint;

  @override
  String get fhirType => 'Endpoint';

  factory Endpoint.fromJson(Map<String, dynamic> json) =>
      _$EndpointFromJson(json);

  factory Endpoint.fromYaml(dynamic yaml) => yaml is String
      ? Endpoint.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Endpoint.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Endpoint cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Endpoint.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EndpointFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
