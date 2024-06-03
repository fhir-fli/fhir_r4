/// /// [OperationOutcome_Issue] A collection of error, warning, or information
/// messages that result from a system action.

@freezed
class OperationOutcome_Issue with _$OperationOutcome_Issue {
  const OperationOutcome_Issue._();

  const factory OperationOutcome_Issue({
/// /// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
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
/// /// [severity] Indicates whether the issue indicates a variation from
/// successful processing.

    @JsonKey(name: 'severity') FhirCode? severity,
/// /// [_severity] Extensions for severity

    @JsonKey(name: '_severity') FhirElement? severityElement,
/// /// [code] Describes the type of the issue. The system that creates an
/// OperationOutcome SHALL choose the most applicable code from the IssueType
/// value set, and may additional provide its own code for the error in the
/// details element.

    @JsonKey(name: 'code') FhirCode? code,
/// /// [_code] Extensions for code

    @JsonKey(name: '_code') FhirElement? codeElement,
/// /// [details] Additional details about the error. This may be a text
/// description of the error or a system code that identifies the error.

    @JsonKey(name: 'details') CodeableConcept? details,
/// /// [diagnostics] Additional diagnostic information about the issue.

    @JsonKey(name: 'diagnostics') String? diagnostics,
/// /// [_diagnostics] Extensions for diagnostics

    @JsonKey(name: '_diagnostics') FhirElement? diagnosticsElement,
/// /// [location] This element is deprecated because it is XML specific. It is
/// replaced by issue.expression, which is format independent, and simpler to
/// parse. 

For resource issues, this will be a simple XPath limited to
/// element names, repetition indicators and the default child accessor that
/// identifies one of the elements in the resource that caused this issue to be
/// raised.  For HTTP errors, will be "http." + the parameter name.

    @JsonKey(name: 'location') List<List<String>>? location,
/// /// [_location] Extensions for location

    @JsonKey(name: '_location') List<FhirElement>? locationElement,
/// /// [expression] A [simple subset of FHIRPath](fhirpath.html#simple)
/// limited to element names, repetition indicators and the default child
/// accessor that identifies one of the elements in the resource that caused
/// this issue to be raised.

    @JsonKey(name: 'expression') List<List<String>>? expression,
/// /// [_expression] Extensions for expression

    @JsonKey(name: '_expression') List<FhirElement>? expressionElement,
  }) = _$OperationOutcome_Issue;

  @override
  String get fhirType => 'OperationOutcome_Issue';

  factory OperationOutcome_Issue.fromJson(Map<String, dynamic> json) =>
      _$OperationOutcome_IssueFromJson(json);

  factory OperationOutcome_Issue.fromYaml(dynamic yaml) => yaml is String
      ? OperationOutcome_Issue.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? OperationOutcome_Issue.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'OperationOutcome_Issue cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory OperationOutcome_Issue.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$OperationOutcome_IssueFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
