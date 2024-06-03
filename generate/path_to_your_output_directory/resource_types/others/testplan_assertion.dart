import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [TestPlan_Assertion] A plan for executing testing on an artifact or
/// specifications.

@freezed
class TestPlan_Assertion with _$TestPlan_Assertion {
  const TestPlan_Assertion._();

  const factory TestPlan_Assertion({
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
/// [type] The test assertion type - this can be used to group assertions
/// as 'required' or 'optional', or can be used for other classification of the
/// assertion.

    @JsonKey(name: 'type') List<List<CodeableConcept>>? type,
/// [object] The focus or object of the assertion i.e. a resource.

    @JsonKey(name: 'object') List<List<CodeableReference>>? object,
/// [result] The test assertion - the expected outcome from the test case
/// execution.

    @JsonKey(name: 'result') List<List<CodeableReference>>? result,
  }) = _$TestPlan_Assertion;

  @override
  String get fhirType => 'TestPlan_Assertion';

  factory TestPlan_Assertion.fromJson(Map<String, dynamic> json) =>
      _$TestPlan_AssertionFromJson(json);

  factory TestPlan_Assertion.fromYaml(dynamic yaml) => yaml is String
      ? TestPlan_Assertion.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestPlan_Assertion.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestPlan_Assertion cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory TestPlan_Assertion.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestPlan_AssertionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
