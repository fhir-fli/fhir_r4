/// /// [ValueSet_Filter] A ValueSet resource instance specifies a set of codes
/// drawn from one or more code systems, intended for use in a particular
/// context. Value sets link between [CodeSystem](codesystem.html) definitions
/// and their use in [coded elements](terminologies.html).

@freezed
class ValueSet_Filter with _$ValueSet_Filter {
  const ValueSet_Filter._();

  const factory ValueSet_Filter({
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
/// /// [property] A code that identifies a property or a filter defined in the
/// code system.

    @JsonKey(name: 'property') FhirCode? property,
/// /// [_property] Extensions for property

    @JsonKey(name: '_property') FhirElement? propertyElement,
/// /// [op] The kind of operation to perform as a part of the filter criteria.

    @JsonKey(name: 'op') FhirCode? op,
/// /// [_op] Extensions for op

    @JsonKey(name: '_op') FhirElement? opElement,
/// /// [value] The match value may be either a code defined by the system, or
/// a string value, which is a regex match on the literal string of the
/// property value  (if the filter represents a property defined in CodeSystem)
/// or of the system filter value (if the filter represents a filter defined in
/// CodeSystem) when the operation is 'regex', or one of the values (true and
/// false), when the operation is 'exists'.

    @JsonKey(name: 'value') String? value,
/// /// [_value] Extensions for value

    @JsonKey(name: '_value') FhirElement? valueElement,
  }) = _$ValueSet_Filter;

  @override
  String get fhirType => 'ValueSet_Filter';

  factory ValueSet_Filter.fromJson(Map<String, dynamic> json) =>
      _$ValueSet_FilterFromJson(json);

  factory ValueSet_Filter.fromYaml(dynamic yaml) => yaml is String
      ? ValueSet_Filter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ValueSet_Filter.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ValueSet_Filter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ValueSet_Filter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ValueSet_FilterFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
