/// /// [OperationDefinition_Binding] A formal computable definition of an
/// operation (on the RESTful interface) or a named query (using the search
/// interaction).

@freezed
class OperationDefinition_Binding with _$OperationDefinition_Binding {
  const OperationDefinition_Binding._();

  const factory OperationDefinition_Binding({
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
/// /// [strength] Indicates the degree of conformance expectations associated
/// with this binding - that is, the degree to which the provided value set
/// must be adhered to in the instances.

    @JsonKey(name: 'strength') FhirCode? strength,
/// /// [_strength] Extensions for strength

    @JsonKey(name: '_strength') FhirElement? strengthElement,
/// /// [valueSet] Points to the value set or external definition (e.g.
/// implicit value set) that identifies the set of codes to be used.

    @JsonKey(name: 'valueSet') FhirCanonical? valueSet,
  }) = _$OperationDefinition_Binding;

  @override
  String get fhirType => 'OperationDefinition_Binding';

  factory OperationDefinition_Binding.fromJson(Map<String, dynamic> json) =>
      _$OperationDefinition_BindingFromJson(json);

  factory OperationDefinition_Binding.fromYaml(dynamic yaml) => yaml is String
      ? OperationDefinition_Binding.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? OperationDefinition_Binding.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'OperationDefinition_Binding cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory OperationDefinition_Binding.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$OperationDefinition_BindingFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
