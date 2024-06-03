/// /// [StructureDefinition_Context] A definition of a FHIR structure. This
/// resource is used to describe the underlying resources, data types defined
/// in FHIR, and also for describing extensions and constraints on resources
/// and data types.

@freezed
class StructureDefinition_Context with _$StructureDefinition_Context {
  const StructureDefinition_Context._();

  const factory StructureDefinition_Context({
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
/// /// [type] Defines how to interpret the expression that defines what the
/// context of the extension is.

    @JsonKey(name: 'type') FhirCode? type,
/// /// [_type] Extensions for type

    @JsonKey(name: '_type') FhirElement? typeElement,
/// /// [expression] An expression that defines where an extension can be used
/// in resources.

    @JsonKey(name: 'expression') String? expression,
/// /// [_expression] Extensions for expression

    @JsonKey(name: '_expression') FhirElement? expressionElement,
  }) = _$StructureDefinition_Context;

  @override
  String get fhirType => 'StructureDefinition_Context';

  factory StructureDefinition_Context.fromJson(Map<String, dynamic> json) =>
      _$StructureDefinition_ContextFromJson(json);

  factory StructureDefinition_Context.fromYaml(dynamic yaml) => yaml is String
      ? StructureDefinition_Context.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? StructureDefinition_Context.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'StructureDefinition_Context cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory StructureDefinition_Context.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$StructureDefinition_ContextFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
