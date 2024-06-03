import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Citation_StatusDate] The Citation Resource enables reference to any
/// knowledge artifact for purposes of identification and attribution. The
/// Citation Resource supports existing reference structures and developing
/// publication practices such as versioning, expressing complex
/// contributorship roles, and referencing computable resources.

@freezed
class Citation_StatusDate with _$Citation_StatusDate {
  const Citation_StatusDate._();

  const factory Citation_StatusDate({
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
/// [activity] The state or status of the citation record (that will be
/// paired with the period).

    @JsonKey(name: 'activity') CodeableConcept? activity,
/// [actual] Whether the status date is actual (has occurred) or expected
/// (estimated or anticipated).

    @JsonKey(name: 'actual') FhirBoolean? actual,
/// [_actual] Extensions for actual

    @JsonKey(name: '_actual') PrimitiveElement? actualElement,
/// [period] When the status started and/or ended.

    @JsonKey(name: 'period') Period? period,
  }) = _$Citation_StatusDate;

  @override
  String get fhirType => 'Citation_StatusDate';

  factory Citation_StatusDate.fromJson(Map<String, dynamic> json) =>
      _$Citation_StatusDateFromJson(json);

  factory Citation_StatusDate.fromYaml(dynamic yaml) => yaml is String
      ? Citation_StatusDate.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Citation_StatusDate.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Citation_StatusDate cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Citation_StatusDate.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Citation_StatusDateFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
