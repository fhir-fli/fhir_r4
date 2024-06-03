import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [TestPlan_TestCase] A plan for executing testing on an artifact or
/// specifications.

@freezed
class TestPlan_TestCase with _$TestPlan_TestCase {
  const TestPlan_TestCase._();

  const factory TestPlan_TestCase({
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
/// [key] Key that identifies this test case (unique within this resource).

    @JsonKey(name: 'key') FhirId? key,
/// [_key] Extensions for key

    @JsonKey(name: '_key') PrimitiveElement? keyElement,
/// [description] Narrative description using markdown content to explain
/// the purpose of this test case.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [sequence] Sequence of test case - an ordinal number that indicates the
/// order for the present test case in the test plan.

    @JsonKey(name: 'sequence') FhirInteger? sequence,
/// [_sequence] Extensions for sequence

    @JsonKey(name: '_sequence') PrimitiveElement? sequenceElement,
/// [scope] The scope or artifact covered by the case, when the individual
/// test case is associated with a testable artifact.

    @JsonKey(name: 'scope') List<List<Reference>>? scope,
/// [requirement] Links or references providing traceability to the testing
/// requirements for this assert.

    @JsonKey(name: 'requirement') List<List<TestPlan_Requirement>>? requirement,
/// [dependency] The required criteria to execute the test case - e.g.
/// preconditions, previous tests.

    @JsonKey(name: 'dependency') List<List<TestPlan_Dependency1>>? dependency,
/// [testRun] The actual test to be executed.

    @JsonKey(name: 'testRun') List<List<TestPlan_TestRun>>? testRun,
/// [testData] The test data used in the test case.

    @JsonKey(name: 'testData') List<List<TestPlan_TestData>>? testData,
/// [assertion] The test assertions - the expectations of test results from
/// the execution of the test case.

    @JsonKey(name: 'assertion') List<List<TestPlan_Assertion>>? assertion,
  }) = _$TestPlan_TestCase;

  @override
  String get fhirType => 'TestPlan_TestCase';

  factory TestPlan_TestCase.fromJson(Map<String, dynamic> json) =>
      _$TestPlan_TestCaseFromJson(json);

  factory TestPlan_TestCase.fromYaml(dynamic yaml) => yaml is String
      ? TestPlan_TestCase.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestPlan_TestCase.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestPlan_TestCase cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory TestPlan_TestCase.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestPlan_TestCaseFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
