import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [MessageHeader_Destination] The header for a message exchange that is
/// either requesting or responding to an action.  The reference(s) that are
/// the subject of the action as well as other information related to the
/// action are typically transmitted in a bundle in which the MessageHeader
/// resource instance is the first resource in the bundle.

@freezed
class MessageHeader_Destination with _$MessageHeader_Destination {
  const MessageHeader_Destination._();

  const factory MessageHeader_Destination({
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
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [endpointUrl] Indicates where the message should be routed.

    @JsonKey(name: 'endpointUrl') FhirUrl? endpointUrl,
/// [_endpointUrl] Extensions for endpointUrl

    @JsonKey(name: '_endpointUrl') PrimitiveElement? endpointUrlElement,
/// [endpointReference] Indicates where the message should be routed.

    @JsonKey(name: 'endpointReference') Reference? endpointReference,
/// [name] Human-readable name for the target system.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [receiver] Allows data conveyed by a message to be addressed to a
/// particular person or department when routing to a specific application
/// isn't sufficient.

    @JsonKey(name: 'receiver') Reference? receiver,
  }) = _$MessageHeader_Destination;

  @override
  String get fhirType => 'MessageHeader_Destination';

  factory MessageHeader_Destination.fromJson(Map<String, dynamic> json) =>
      _$MessageHeader_DestinationFromJson(json);

  factory MessageHeader_Destination.fromYaml(dynamic yaml) => yaml is String
      ? MessageHeader_Destination.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MessageHeader_Destination.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MessageHeader_Destination cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MessageHeader_Destination.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MessageHeader_DestinationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
