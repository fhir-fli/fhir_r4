import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Location] Details and position information for a place where services
/// are provided and resources and participants may be stored, found,
/// contained, or accommodated.

@freezed
class Location with _$Location {
  const Location._();

  const factory Location({
/// [resourceType] This is a Location resource

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
/// [identifier] Unique code or number identifying the location to its
/// users.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [status] The status property covers the general availability of the
/// resource, not the current value which may be covered by the
/// operationalStatus, or by a schedule/slots if they are configured for the
/// location.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [operationalStatus] The operational status covers operation values most
/// relevant to beds (but can also apply to rooms/units/chairs/etc. such as an
/// isolation unit/dialysis chair). This typically covers concepts such as
/// contamination, housekeeping, and other activities like maintenance.

    @JsonKey(name: 'operationalStatus') Coding? operationalStatus,
/// [name] Name of the location as used by humans. Does not need to be
/// unique.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [alias] A list of alternate names that the location is known as, or was
/// known as, in the past.

    @JsonKey(name: 'alias') List<List<String>>? alias,
/// [_alias] Extensions for alias

    @JsonKey(name: '_alias') List<PrimitiveElement>? aliasElement,
/// [description] Description of the Location, which helps in finding or
/// referencing the place.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [mode] Indicates whether a resource instance represents a specific
/// location or a class of locations.

    @JsonKey(name: 'mode') FhirCode? mode,
/// [_mode] Extensions for mode

    @JsonKey(name: '_mode') PrimitiveElement? modeElement,
/// [type] Indicates the type of function performed at the location.

    @JsonKey(name: 'type') List<List<CodeableConcept>>? type,
/// [contact] The contact details of communication devices available at the
/// location. This can include addresses, phone numbers, fax numbers, mobile
/// numbers, email addresses and web sites.

    @JsonKey(name: 'contact') List<List<ExtendedContactDetail>>? contact,
/// [address] Physical location.

    @JsonKey(name: 'address') Address? address,
/// [form] Physical form of the location, e.g. building, room, vehicle,
/// road, virtual.

    @JsonKey(name: 'form') CodeableConcept? form,
/// [position] The absolute geographic location of the Location, expressed
/// using the WGS84 datum (This is the same co-ordinate system used in KML).

    @JsonKey(name: 'position') Location_Position? position,
/// [managingOrganization] The organization responsible for the
/// provisioning and upkeep of the location.

    @JsonKey(name: 'managingOrganization') Reference? managingOrganization,
/// [partOf] Another Location of which this Location is physically a part
/// of.

    @JsonKey(name: 'partOf') Reference? partOf,
/// [characteristic] Collection of characteristics (attributes).

    @JsonKey(name: 'characteristic') List<List<CodeableConcept>>? characteristic,
/// [hoursOfOperation] What days/times during a week is this location
/// usually open, and any exceptions where the location is not available.

    @JsonKey(name: 'hoursOfOperation') Availability? hoursOfOperation,
/// [virtualService] Connection details of a virtual service (e.g. shared
/// conference call facility with dedicated number/details).

    @JsonKey(name: 'virtualService') List<List<VirtualServiceDetail>>? virtualService,
/// [endpoint] Technical endpoints providing access to services operated
/// for the location.

    @JsonKey(name: 'endpoint') List<List<Reference>>? endpoint,
  }) = _$Location;

  @override
  String get fhirType => 'Location';

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  factory Location.fromYaml(dynamic yaml) => yaml is String
      ? Location.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Location.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Location cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Location.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$LocationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
