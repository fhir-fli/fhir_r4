import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [TestReport] A summary of information based on the results of executing
/// a TestScript.

@freezed
class TestReport with _$TestReport {
  const TestReport._();

  const factory TestReport({
/// [resourceType] This is a TestReport resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
/// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// [_language] Extensions for language

    @JsonKey(name: '_language') PrimitiveElement? languageElement,
/// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [identifier] Identifier for the TestReport assigned for external
/// purposes outside the context of FHIR.

    @JsonKey(name: 'identifier') Identifier? identifier,
/// [name] A free text natural language name identifying the executed
/// TestReport.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [status] The current state of this test report.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [testScript] Ideally this is an absolute URL that is used to identify
/// the version-specific TestScript that was executed, matching the
/// `TestScript.url`.

    @JsonKey(name: 'testScript') FhirCanonical? testScript,
/// [result] The overall result from the execution of the TestScript.

    @JsonKey(name: 'result') FhirCode? result,
/// [_result] Extensions for result

    @JsonKey(name: '_result') PrimitiveElement? resultElement,
/// [score] The final score (percentage of tests passed) resulting from the
/// execution of the TestScript.

    @JsonKey(name: 'score') FhirDecimal? score,
/// [_score] Extensions for score

    @JsonKey(name: '_score') PrimitiveElement? scoreElement,
/// [tester] Name of the tester producing this report (Organization or
/// individual).

    @JsonKey(name: 'tester') String? tester,
/// [_tester] Extensions for tester

    @JsonKey(name: '_tester') PrimitiveElement? testerElement,
/// [issued] When the TestScript was executed and this TestReport was
/// generated.

    @JsonKey(name: 'issued') FhirDateTime? issued,
/// [_issued] Extensions for issued

    @JsonKey(name: '_issued') PrimitiveElement? issuedElement,
/// [participant] A participant in the test execution, either the execution
/// engine, a client, or a server.

    @JsonKey(name: 'participant') List<List<TestReport_Participant>>? participant,
/// [setup] The results of the series of required setup operations before
/// the tests were executed.

    @JsonKey(name: 'setup') TestReport_Setup? setup,
/// [test] A test executed from the test script.

    @JsonKey(name: 'test') List<List<TestReport_Test>>? test,
/// [teardown] The results of the series of operations required to clean up
/// after all the tests were executed (successfully or otherwise).

    @JsonKey(name: 'teardown') TestReport_Teardown? teardown,
  }) = _$TestReport;

  @override
  String get fhirType => 'TestReport';

  factory TestReport.fromJson(Map<String, dynamic> json) =>
      _$TestReportFromJson(json);

  factory TestReport.fromYaml(dynamic yaml) => yaml is String
      ? TestReport.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestReport.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestReport cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory TestReport.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestReportFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
