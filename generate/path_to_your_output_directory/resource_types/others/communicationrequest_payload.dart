import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [CommunicationRequest_Payload] A request to convey information; e.g.
/// the CDS system proposes that an alert be sent to a responsible provider,
/// the CDS system proposes that the public health agency be notified about a
/// reportable condition.

@freezed
class CommunicationRequest_Payload with _$CommunicationRequest_Payload {
  const CommunicationRequest_Payload._();

  const factory CommunicationRequest_Payload({
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

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [contentAttachment] The content (or for multi-part communications, one
/// portion of the communication) to be communicated.

    @JsonKey(name: 'contentAttachment') Attachment? contentAttachment,
/// [contentReference] The content (or for multi-part communications, one
/// portion of the communication) to be communicated.

    @JsonKey(name: 'contentReference') Reference? contentReference,
/// [contentCodeableConcept] The content (or for multi-part communications,
/// one portion of the communication) to be communicated.

    @JsonKey(name: 'contentCodeableConcept') CodeableConcept? contentCodeableConcept,
  }) = _$CommunicationRequest_Payload;

  @override
  String get fhirType => 'CommunicationRequest_Payload';

  factory CommunicationRequest_Payload.fromJson(Map<String, dynamic> json) =>
      _$CommunicationRequest_PayloadFromJson(json);

  factory CommunicationRequest_Payload.fromYaml(dynamic yaml) => yaml is String
      ? CommunicationRequest_Payload.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CommunicationRequest_Payload.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CommunicationRequest_Payload cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CommunicationRequest_Payload.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CommunicationRequest_PayloadFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
