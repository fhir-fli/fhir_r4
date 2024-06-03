import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Organization_Qualification] A formally or informally recognized
/// grouping of people or organizations formed for the purpose of achieving
/// some form of collective action.

@freezed
class Organization_Qualification with _$Organization_Qualification {
  const Organization_Qualification._();

  const factory Organization_Qualification({
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
/// [identifier] An identifier allocated to this qualification for this
/// organization.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [code] Coded representation of the qualification.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [status] Qualifications often take time to attain and might be tracked
/// during this time, and completed qualifications might not always be valid.
/// This status concept has some overlap with period and both should be
/// considered together. Refer to the descriptions of the codes for how the
/// period should be interpreted.If a qualification is revoked or otherwise
/// cancelled, then the period is likely to be ignored, and might be related to
/// when it was active.

    @JsonKey(name: 'status') CodeableConcept? status,
/// [period] Period during which the qualification is valid.

    @JsonKey(name: 'period') Period? period,
/// [issuer] Organization that regulates and issues the qualification.

    @JsonKey(name: 'issuer') Reference? issuer,
  }) = _$Organization_Qualification;

  @override
  String get fhirType => 'Organization_Qualification';

  factory Organization_Qualification.fromJson(Map<String, dynamic> json) =>
      _$Organization_QualificationFromJson(json);

  factory Organization_Qualification.fromYaml(dynamic yaml) => yaml is String
      ? Organization_Qualification.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Organization_Qualification.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Organization_Qualification cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Organization_Qualification.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Organization_QualificationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
