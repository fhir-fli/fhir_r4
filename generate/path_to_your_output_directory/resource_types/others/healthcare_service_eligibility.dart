import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [HealthcareService_Eligibility] The details of a healthcare service
/// available at a location.

@freezed
class HealthcareService_Eligibility with _$HealthcareService_Eligibility {
  const HealthcareService_Eligibility._();

  const factory HealthcareService_Eligibility({
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
/// [code] Coded value for the eligibility.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [valueCodeableConcept] Sometimes an eligibility code requires
/// additional data to calculate the eligibility rules.

    @JsonKey(name: 'valueCodeableConcept') CodeableConcept? valueCodeableConcept,
/// [valueBoolean] Sometimes an eligibility code requires additional data
/// to calculate the eligibility rules.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
/// [valueQuantity] Sometimes an eligibility code requires additional data
/// to calculate the eligibility rules.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// [valueRange] Sometimes an eligibility code requires additional data to
/// calculate the eligibility rules.

    @JsonKey(name: 'valueRange') Range? valueRange,
/// [valueReference] Sometimes an eligibility code requires additional data
/// to calculate the eligibility rules.

    @JsonKey(name: 'valueReference') Reference? valueReference,
/// [comment] Describes the eligibility conditions for the service.

    @JsonKey(name: 'comment') FhirMarkdown? comment,
/// [_comment] Extensions for comment

    @JsonKey(name: '_comment') PrimitiveElement? commentElement,
/// [period] The period that this eligibility rule is a requirement for
/// this service.

    @JsonKey(name: 'period') FhirMarkdown? period,
/// [_period] Extensions for period

    @JsonKey(name: '_period') PrimitiveElement? periodElement,
  }) = _$HealthcareService_Eligibility;

  @override
  String get fhirType => 'HealthcareService_Eligibility';

  factory HealthcareService_Eligibility.fromJson(Map<String, dynamic> json) =>
      _$HealthcareService_EligibilityFromJson(json);

  factory HealthcareService_Eligibility.fromYaml(dynamic yaml) => yaml is String
      ? HealthcareService_Eligibility.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? HealthcareService_Eligibility.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'HealthcareService_Eligibility cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory HealthcareService_Eligibility.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$HealthcareService_EligibilityFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
