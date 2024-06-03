import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [MessageDefinition_AllowedResponse] Defines the characteristics of a
/// message that can be shared between systems, including the type of event
/// that initiates the message, the content to be transmitted and what
/// response(s), if any, are permitted.

@freezed
class MessageDefinition_AllowedResponse with _$MessageDefinition_AllowedResponse {
  const MessageDefinition_AllowedResponse._();

  const factory MessageDefinition_AllowedResponse({
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
/// [message] A reference to the message definition that must be adhered to
/// by this supported response.

    @JsonKey(name: 'message') FhirCanonical? message,
/// [situation] Provides a description of the circumstances in which this
/// response should be used (as opposed to one of the alternative responses).

    @JsonKey(name: 'situation') FhirMarkdown? situation,
/// [_situation] Extensions for situation

    @JsonKey(name: '_situation') PrimitiveElement? situationElement,
  }) = _$MessageDefinition_AllowedResponse;

  @override
  String get fhirType => 'MessageDefinition_AllowedResponse';

  factory MessageDefinition_AllowedResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageDefinition_AllowedResponseFromJson(json);

  factory MessageDefinition_AllowedResponse.fromYaml(dynamic yaml) => yaml is String
      ? MessageDefinition_AllowedResponse.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MessageDefinition_AllowedResponse.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MessageDefinition_AllowedResponse cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MessageDefinition_AllowedResponse.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MessageDefinition_AllowedResponseFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
