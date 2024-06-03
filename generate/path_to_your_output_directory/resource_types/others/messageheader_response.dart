/// /// [MessageHeader_Response] The header for a message exchange that is
/// either requesting or responding to an action.  The reference(s) that are
/// the subject of the action as well as other information related to the
/// action are typically transmitted in a bundle in which the MessageHeader
/// resource instance is the first resource in the bundle.

@freezed
class MessageHeader_Response with _$MessageHeader_Response {
  const MessageHeader_Response._();

  const factory MessageHeader_Response({
/// /// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// /// [identifier] The Bundle.identifier of the message to which this message
/// is a response.

    @JsonKey(name: 'identifier') Identifier? identifier,
/// /// [code] Code that identifies the type of response to the message -
/// whether it was successful or not, and whether it should be resent or not.

    @JsonKey(name: 'code') FhirCode? code,
/// /// [_code] Extensions for code

    @JsonKey(name: '_code') FhirElement? codeElement,
/// /// [details] Full details of any issues found in the message.

    @JsonKey(name: 'details') Reference? details,
  }) = _$MessageHeader_Response;

  @override
  String get fhirType => 'MessageHeader_Response';

  factory MessageHeader_Response.fromJson(Map<String, dynamic> json) =>
      _$MessageHeader_ResponseFromJson(json);

  factory MessageHeader_Response.fromYaml(dynamic yaml) => yaml is String
      ? MessageHeader_Response.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MessageHeader_Response.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MessageHeader_Response cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MessageHeader_Response.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MessageHeader_ResponseFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
