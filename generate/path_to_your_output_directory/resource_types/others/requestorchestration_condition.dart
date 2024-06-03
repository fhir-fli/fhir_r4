/// /// [RequestOrchestration_Condition] A set of related requests that can be
/// used to capture intended activities that have inter-dependencies such as
/// "give this medication after that one".

@freezed
class RequestOrchestration_Condition with _$RequestOrchestration_Condition {
  const RequestOrchestration_Condition._();

  const factory RequestOrchestration_Condition({
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
/// /// [kind] The kind of condition.

    @JsonKey(name: 'kind') FhirCode? kind,
/// /// [_kind] Extensions for kind

    @JsonKey(name: '_kind') FhirElement? kindElement,
/// /// [expression] An expression that returns true or false, indicating
/// whether or not the condition is satisfied.

    @JsonKey(name: 'expression') FhirExpression? expression,
  }) = _$RequestOrchestration_Condition;

  @override
  String get fhirType => 'RequestOrchestration_Condition';

  factory RequestOrchestration_Condition.fromJson(Map<String, dynamic> json) =>
      _$RequestOrchestration_ConditionFromJson(json);

  factory RequestOrchestration_Condition.fromYaml(dynamic yaml) => yaml is String
      ? RequestOrchestration_Condition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? RequestOrchestration_Condition.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'RequestOrchestration_Condition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory RequestOrchestration_Condition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RequestOrchestration_ConditionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
