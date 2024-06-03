/// /// [ActivityDefinition_DynamicValue] This resource allows for the
/// definition of some activity to be performed, independent of a particular
/// patient, practitioner, or other performance context.

@freezed
class ActivityDefinition_DynamicValue with _$ActivityDefinition_DynamicValue {
  const ActivityDefinition_DynamicValue._();

  const factory ActivityDefinition_DynamicValue({
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
/// /// [path] The path to the element to be customized. This is the path on
/// the resource that will hold the result of the calculation defined by the
/// expression. The specified path SHALL be a FHIRPath resolvable on the
/// specified target type of the ActivityDefinition, and SHALL consist only of
/// identifiers, constant indexers, and a restricted subset of functions. The
/// path is allowed to contain qualifiers (.) to traverse sub-elements, as well
/// as indexers ([x]) to traverse multiple-cardinality sub-elements (see the
/// [Simple FHIRPath Profile](fhirpath.html#simple) for full details).

    @JsonKey(name: 'path') String? path,
/// /// [_path] Extensions for path

    @JsonKey(name: '_path') FhirElement? pathElement,
/// /// [expression] An expression specifying the value of the customized
/// element.

    @JsonKey(name: 'expression') FhirExpression? expression,
  }) = _$ActivityDefinition_DynamicValue;

  @override
  String get fhirType => 'ActivityDefinition_DynamicValue';

  factory ActivityDefinition_DynamicValue.fromJson(Map<String, dynamic> json) =>
      _$ActivityDefinition_DynamicValueFromJson(json);

  factory ActivityDefinition_DynamicValue.fromYaml(dynamic yaml) => yaml is String
      ? ActivityDefinition_DynamicValue.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ActivityDefinition_DynamicValue.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ActivityDefinition_DynamicValue cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ActivityDefinition_DynamicValue.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ActivityDefinition_DynamicValueFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
