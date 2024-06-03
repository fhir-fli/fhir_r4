/// /// [RequestOrchestration_Output] A set of related requests that can be
/// used to capture intended activities that have inter-dependencies such as
/// "give this medication after that one".

@freezed
class RequestOrchestration_Output with _$RequestOrchestration_Output {
  const RequestOrchestration_Output._();

  const factory RequestOrchestration_Output({
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
/// /// [title] A human-readable label for the data requirement used to label
/// data flows in BPMN or similar diagrams. Also provides a human readable
/// label when rendering the data requirement that conveys its purpose to human
/// readers.

    @JsonKey(name: 'title') String? title,
/// /// [_title] Extensions for title

    @JsonKey(name: '_title') FhirElement? titleElement,
/// /// [requirement] Defines the data that results as output from the action.

    @JsonKey(name: 'requirement') DataRequirement? requirement,
/// /// [relatedData] Points to an existing input or output element that is
/// results as output from the action.

    @JsonKey(name: 'relatedData') String? relatedData,
/// /// [_relatedData] Extensions for relatedData

    @JsonKey(name: '_relatedData') FhirElement? relatedDataElement,
  }) = _$RequestOrchestration_Output;

  @override
  String get fhirType => 'RequestOrchestration_Output';

  factory RequestOrchestration_Output.fromJson(Map<String, dynamic> json) =>
      _$RequestOrchestration_OutputFromJson(json);

  factory RequestOrchestration_Output.fromYaml(dynamic yaml) => yaml is String
      ? RequestOrchestration_Output.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? RequestOrchestration_Output.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'RequestOrchestration_Output cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory RequestOrchestration_Output.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RequestOrchestration_OutputFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
