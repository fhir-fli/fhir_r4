import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Practitioner_Qualification] A person who is directly or indirectly
/// involved in the provisioning of healthcare or related services.

@freezed
class Practitioner_Qualification with _$Practitioner_Qualification {
  const Practitioner_Qualification._();

  const factory Practitioner_Qualification({
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
/// [identifier] An identifier that applies to this person's qualification.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [code] Coded representation of the qualification.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [status] Qualifications often take time to attain and might be tracked
/// during this time, and completed qualifications might not always be valid.
/// This status concept has some overlap with period and both should be
/// considered together. Refer to the descriptions of the codes for how the
/// period should be interpreted.If a qualification is revoked or otherwise
/// cancelled, then the period is likely to be ignored, and m be related to
/// when it was active.

    @JsonKey(name: 'status') CodeableConcept? status,
/// [period] Period during which the qualification is valid.

    @JsonKey(name: 'period') Period? period,
/// [issuer] Organization that regulates and issues the qualification.

    @JsonKey(name: 'issuer') Reference? issuer,
  }) = _$Practitioner_Qualification;

  @override
  String get fhirType => 'Practitioner_Qualification';

  factory Practitioner_Qualification.fromJson(Map<String, dynamic> json) =>
      _$Practitioner_QualificationFromJson(json);

  factory Practitioner_Qualification.fromYaml(dynamic yaml) => yaml is String
      ? Practitioner_Qualification.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Practitioner_Qualification.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Practitioner_Qualification cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Practitioner_Qualification.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Practitioner_QualificationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
