import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ClinicalImpression_Finding] A record of a clinical assessment
/// performed to determine what problem(s) may affect the patient and before
/// planning the treatments or management strategies that are best to manage a
/// patient's condition. Assessments are often 1:1 with a clinical consultation
/// / encounter,  but this varies greatly depending on the clinical workflow.
/// This resource is called "ClinicalImpression" rather than
/// "ClinicalAssessment" to avoid confusion with the recording of assessment
/// tools such as Apgar score.

@freezed
class ClinicalImpression_Finding with _$ClinicalImpression_Finding {
  const ClinicalImpression_Finding._();

  const factory ClinicalImpression_Finding({
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
/// [item] Specific text, code or reference for finding or diagnosis, which
/// may include ruled-out or resolved conditions.

    @JsonKey(name: 'item') CodeableReference? item,
/// [basis] Which investigations support finding or diagnosis.

    @JsonKey(name: 'basis') String? basis,
/// [_basis] Extensions for basis

    @JsonKey(name: '_basis') PrimitiveElement? basisElement,
  }) = _$ClinicalImpression_Finding;

  @override
  String get fhirType => 'ClinicalImpression_Finding';

  factory ClinicalImpression_Finding.fromJson(Map<String, dynamic> json) =>
      _$ClinicalImpression_FindingFromJson(json);

  factory ClinicalImpression_Finding.fromYaml(dynamic yaml) => yaml is String
      ? ClinicalImpression_Finding.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalImpression_Finding.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalImpression_Finding cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ClinicalImpression_Finding.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalImpression_FindingFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
