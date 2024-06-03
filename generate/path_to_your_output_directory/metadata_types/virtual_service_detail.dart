import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [VirtualServiceDetail] The set of values required to describe a virtual
/// service's connection details, including some limitations of the service.

@freezed
class VirtualServiceDetail with _$VirtualServiceDetail {
  const VirtualServiceDetail._();

  const factory VirtualServiceDetail({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [channelType] The type of virtual service to connect to (i.e. Teams,
/// Zoom, Specific VMR technology, WhatsApp).

    @JsonKey(name: 'channelType') Coding? channelType,
/// [addressUrl] What address or number needs to be used for a user to
/// connect to the virtual service to join. The channelType informs as to which
/// datatype is appropriate to use (requires knowledge of the specific type).

    @JsonKey(name: 'addressUrl') FhirUrl? addressUrl,
/// [_addressUrl] Extensions for addressUrl

    @JsonKey(name: '_addressUrl') PrimitiveElement? addressUrlElement,
/// [addressString] What address or number needs to be used for a user to
/// connect to the virtual service to join. The channelType informs as to which
/// datatype is appropriate to use (requires knowledge of the specific type).

    @JsonKey(name: 'addressString') String? addressString,
/// [_addressString] Extensions for addressString

    @JsonKey(name: '_addressString') PrimitiveElement? addressStringElement,
/// [addressContactPoint] What address or number needs to be used for a
/// user to connect to the virtual service to join. The channelType informs as
/// to which datatype is appropriate to use (requires knowledge of the specific
/// type).

    @JsonKey(name: 'addressContactPoint') ContactPoint? addressContactPoint,
/// [addressExtendedContactDetail] What address or number needs to be used
/// for a user to connect to the virtual service to join. The channelType
/// informs as to which datatype is appropriate to use (requires knowledge of
/// the specific type).

    @JsonKey(name: 'addressExtendedContactDetail') ExtendedContactDetail? addressExtendedContactDetail,
/// [additionalInfo] A web address that provides additional details on the
/// call, such as alternative/regional call in numbers, or other associated
/// services.

    @JsonKey(name: 'additionalInfo') List<List<FhirUrl>>? additionalInfo,
/// [_additionalInfo] Extensions for additionalInfo

    @JsonKey(name: '_additionalInfo') List<PrimitiveElement>? additionalInfoElement,
/// [maxParticipants] Maximum number of participants supported by the
/// virtual service where there are limitations imposed.

    @JsonKey(name: 'maxParticipants') FhirPositiveInt? maxParticipants,
/// [_maxParticipants] Extensions for maxParticipants

    @JsonKey(name: '_maxParticipants') PrimitiveElement? maxParticipantsElement,
/// [sessionKey] Some systems require an additional factor/value be
/// provided to access the service.

    @JsonKey(name: 'sessionKey') String? sessionKey,
/// [_sessionKey] Extensions for sessionKey

    @JsonKey(name: '_sessionKey') PrimitiveElement? sessionKeyElement,
  }) = _$VirtualServiceDetail;

  @override
  String get fhirType => 'VirtualServiceDetail';

  factory VirtualServiceDetail.fromJson(Map<String, dynamic> json) =>
      _$VirtualServiceDetailFromJson(json);

  factory VirtualServiceDetail.fromYaml(dynamic yaml) => yaml is String
      ? VirtualServiceDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? VirtualServiceDetail.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'VirtualServiceDetail cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory VirtualServiceDetail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$VirtualServiceDetailFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
