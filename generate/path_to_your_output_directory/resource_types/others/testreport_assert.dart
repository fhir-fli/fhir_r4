import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [TestReport_Assert] A summary of information based on the results of
/// executing a TestScript.

@freezed
class TestReport_Assert with _$TestReport_Assert {
  const TestReport_Assert._();

  const factory TestReport_Assert({
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
/// [result] The result of this assertion.

    @JsonKey(name: 'result') FhirCode? result,
/// [_result] Extensions for result

    @JsonKey(name: '_result') PrimitiveElement? resultElement,
/// [message] An explanatory message associated with the result.

    @JsonKey(name: 'message') FhirMarkdown? message,
/// [_message] Extensions for message

    @JsonKey(name: '_message') PrimitiveElement? messageElement,
/// [detail] A link to further details on the result.

    @JsonKey(name: 'detail') String? detail,
/// [_detail] Extensions for detail

    @JsonKey(name: '_detail') PrimitiveElement? detailElement,
/// [requirement] Links or references providing traceability to the testing
/// requirements for this assert.

    @JsonKey(name: 'requirement') List<List<TestReport_Requirement>>? requirement,
  }) = _$TestReport_Assert;

  @override
  String get fhirType => 'TestReport_Assert';

  factory TestReport_Assert.fromJson(Map<String, dynamic> json) =>
      _$TestReport_AssertFromJson(json);

  factory TestReport_Assert.fromYaml(dynamic yaml) => yaml is String
      ? TestReport_Assert.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestReport_Assert.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestReport_Assert cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory TestReport_Assert.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestReport_AssertFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
