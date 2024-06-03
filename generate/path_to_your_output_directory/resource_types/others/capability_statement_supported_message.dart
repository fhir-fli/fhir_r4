import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [CapabilityStatement_SupportedMessage] A Capability Statement documents
/// a set of capabilities (behaviors) of a FHIR Server or Client for a
/// particular version of FHIR that may be used as a statement of actual server
/// functionality or a statement of required or desired server implementation.

@freezed
class CapabilityStatement_SupportedMessage with _$CapabilityStatement_SupportedMessage {
  const CapabilityStatement_SupportedMessage._();

  const factory CapabilityStatement_SupportedMessage({
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
/// [mode] The mode of this event declaration - whether application is
/// sender or receiver.

    @JsonKey(name: 'mode') FhirCode? mode,
/// [_mode] Extensions for mode

    @JsonKey(name: '_mode') PrimitiveElement? modeElement,
/// [definition] Points to a message definition that identifies the
/// messaging event, message structure, allowed responses, etc.

    @JsonKey(name: 'definition') FhirCanonical? definition,
  }) = _$CapabilityStatement_SupportedMessage;

  @override
  String get fhirType => 'CapabilityStatement_SupportedMessage';

  factory CapabilityStatement_SupportedMessage.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatement_SupportedMessageFromJson(json);

  factory CapabilityStatement_SupportedMessage.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatement_SupportedMessage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CapabilityStatement_SupportedMessage.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CapabilityStatement_SupportedMessage cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CapabilityStatement_SupportedMessage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CapabilityStatement_SupportedMessageFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
