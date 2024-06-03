import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Communication_Payload] A clinical or business level record of
/// information being transmitted or shared; e.g. an alert that was sent to a
/// responsible provider, a public health agency communication to a
/// provider/reporter in response to a case report for a reportable condition.

@freezed
class Communication_Payload with _$Communication_Payload {
  const Communication_Payload._();

  const factory Communication_Payload({
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
/// [contentAttachment] A communicated content (or for multi-part
/// communications, one portion of the communication).

    @JsonKey(name: 'contentAttachment') Attachment? contentAttachment,
/// [contentReference] A communicated content (or for multi-part
/// communications, one portion of the communication).

    @JsonKey(name: 'contentReference') Reference? contentReference,
/// [contentCodeableConcept] A communicated content (or for multi-part
/// communications, one portion of the communication).

    @JsonKey(name: 'contentCodeableConcept') CodeableConcept? contentCodeableConcept,
  }) = _$Communication_Payload;

  @override
  String get fhirType => 'Communication_Payload';

  factory Communication_Payload.fromJson(Map<String, dynamic> json) =>
      _$Communication_PayloadFromJson(json);

  factory Communication_Payload.fromYaml(dynamic yaml) => yaml is String
      ? Communication_Payload.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Communication_Payload.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Communication_Payload cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Communication_Payload.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Communication_PayloadFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
