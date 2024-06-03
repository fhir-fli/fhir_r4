import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Account_Diagnosis] A financial tool for tracking value accrued for a
/// particular purpose.  In the healthcare field, used to track charges for a
/// patient, cost centers, etc.

@freezed
class Account_Diagnosis with _$Account_Diagnosis {
  const Account_Diagnosis._();

  const factory Account_Diagnosis({
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
/// [sequence] Ranking of the diagnosis (for each type).

    @JsonKey(name: 'sequence') FhirPositiveInt? sequence,
/// [_sequence] Extensions for sequence

    @JsonKey(name: '_sequence') PrimitiveElement? sequenceElement,
/// [condition] The diagnosis relevant to the account.

    @JsonKey(name: 'condition') CodeableReference? condition,
/// [dateOfDiagnosis] Ranking of the diagnosis (for each type).

    @JsonKey(name: 'dateOfDiagnosis') FhirDateTime? dateOfDiagnosis,
/// [_dateOfDiagnosis] Extensions for dateOfDiagnosis

    @JsonKey(name: '_dateOfDiagnosis') PrimitiveElement? dateOfDiagnosisElement,
/// [type] Type that this diagnosis has relevant to the account (e.g.
/// admission, billing, discharge …).

    @JsonKey(name: 'type') List<List<CodeableConcept>>? type,
/// [onAdmission] Was the Diagnosis present on Admission in the related
/// Encounter.

    @JsonKey(name: 'onAdmission') FhirBoolean? onAdmission,
/// [_onAdmission] Extensions for onAdmission

    @JsonKey(name: '_onAdmission') PrimitiveElement? onAdmissionElement,
/// [packageCode] The package code can be used to group diagnoses that may
/// be priced or delivered as a single product. Such as DRGs.

    @JsonKey(name: 'packageCode') List<List<CodeableConcept>>? packageCode,
  }) = _$Account_Diagnosis;

  @override
  String get fhirType => 'Account_Diagnosis';

  factory Account_Diagnosis.fromJson(Map<String, dynamic> json) =>
      _$Account_DiagnosisFromJson(json);

  factory Account_Diagnosis.fromYaml(dynamic yaml) => yaml is String
      ? Account_Diagnosis.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Account_Diagnosis.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Account_Diagnosis cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Account_Diagnosis.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Account_DiagnosisFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
