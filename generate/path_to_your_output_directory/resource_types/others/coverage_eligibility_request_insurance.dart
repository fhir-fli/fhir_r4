import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [CoverageEligibilityRequest_Insurance] The CoverageEligibilityRequest
/// provides patient and insurance coverage information to an insurer for them
/// to respond, in the form of an CoverageEligibilityResponse, with information
/// regarding whether the stated coverage is valid and in-force and optionally
/// to provide the insurance details of the policy.

@freezed
class CoverageEligibilityRequest_Insurance with _$CoverageEligibilityRequest_Insurance {
  const CoverageEligibilityRequest_Insurance._();

  const factory CoverageEligibilityRequest_Insurance({
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
/// [focal] A flag to indicate that this Coverage is to be used for
/// evaluation of this request when set to true.

    @JsonKey(name: 'focal') FhirBoolean? focal,
/// [_focal] Extensions for focal

    @JsonKey(name: '_focal') PrimitiveElement? focalElement,
/// [coverage] Reference to the insurance card level information contained
/// in the Coverage resource. The coverage issuing insurer will use these
/// details to locate the patient's actual coverage within the insurer's
/// information system.

    @JsonKey(name: 'coverage') Reference? coverage,
/// [businessArrangement] A business agreement number established between
/// the provider and the insurer for special business processing purposes.

    @JsonKey(name: 'businessArrangement') String? businessArrangement,
/// [_businessArrangement] Extensions for businessArrangement

    @JsonKey(name: '_businessArrangement') PrimitiveElement? businessArrangementElement,
  }) = _$CoverageEligibilityRequest_Insurance;

  @override
  String get fhirType => 'CoverageEligibilityRequest_Insurance';

  factory CoverageEligibilityRequest_Insurance.fromJson(Map<String, dynamic> json) =>
      _$CoverageEligibilityRequest_InsuranceFromJson(json);

  factory CoverageEligibilityRequest_Insurance.fromYaml(dynamic yaml) => yaml is String
      ? CoverageEligibilityRequest_Insurance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CoverageEligibilityRequest_Insurance.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CoverageEligibilityRequest_Insurance cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CoverageEligibilityRequest_Insurance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CoverageEligibilityRequest_InsuranceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
