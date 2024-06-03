import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [CoverageEligibilityResponse_Insurance] This resource provides
/// eligibility and plan details from the processing of an
/// CoverageEligibilityRequest resource.

@freezed
class CoverageEligibilityResponse_Insurance with _$CoverageEligibilityResponse_Insurance {
  const CoverageEligibilityResponse_Insurance._();

  const factory CoverageEligibilityResponse_Insurance({
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
/// [coverage] Reference to the insurance card level information contained
/// in the Coverage resource. The coverage issuing insurer will use these
/// details to locate the patient's actual coverage within the insurer's
/// information system.

    @JsonKey(name: 'coverage') Reference? coverage,
/// [inforce] Flag indicating if the coverage provided is inforce currently
/// if no service date(s) specified or for the whole duration of the service
/// dates.

    @JsonKey(name: 'inforce') FhirBoolean? inforce,
/// [_inforce] Extensions for inforce

    @JsonKey(name: '_inforce') PrimitiveElement? inforceElement,
/// [benefitPeriod] The term of the benefits documented in this response.

    @JsonKey(name: 'benefitPeriod') Period? benefitPeriod,
/// [item] Benefits and optionally current balances, and authorization
/// details by category or service.

    @JsonKey(name: 'item') List<List<CoverageEligibilityResponse_Item>>? item,
  }) = _$CoverageEligibilityResponse_Insurance;

  @override
  String get fhirType => 'CoverageEligibilityResponse_Insurance';

  factory CoverageEligibilityResponse_Insurance.fromJson(Map<String, dynamic> json) =>
      _$CoverageEligibilityResponse_InsuranceFromJson(json);

  factory CoverageEligibilityResponse_Insurance.fromYaml(dynamic yaml) => yaml is String
      ? CoverageEligibilityResponse_Insurance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CoverageEligibilityResponse_Insurance.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CoverageEligibilityResponse_Insurance cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CoverageEligibilityResponse_Insurance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CoverageEligibilityResponse_InsuranceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
