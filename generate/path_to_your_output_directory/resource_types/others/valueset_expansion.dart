/// /// [ValueSet_Expansion] A ValueSet resource instance specifies a set of
/// codes drawn from one or more code systems, intended for use in a particular
/// context. Value sets link between [CodeSystem](codesystem.html) definitions
/// and their use in [coded elements](terminologies.html).

@freezed
class ValueSet_Expansion with _$ValueSet_Expansion {
  const ValueSet_Expansion._();

  const factory ValueSet_Expansion({
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
/// /// [identifier] An identifier that uniquely identifies this expansion of
/// the valueset, based on a unique combination of the provided parameters, the
/// system default parameters, and the underlying system code system versions
/// etc. Systems may re-use the same identifier as long as those factors remain
/// the same, and the expansion is the same, but are not required to do so.
/// This is a business identifier.

    @JsonKey(name: 'identifier') FhirUri? identifier,
/// /// [_identifier] Extensions for identifier

    @JsonKey(name: '_identifier') FhirElement? identifierElement,
/// /// [next] As per paging Search results, the next URLs are opaque to the
/// client, have no dictated structure, and only the server understands them.

    @JsonKey(name: 'next') FhirUri? next,
/// /// [_next] Extensions for next

    @JsonKey(name: '_next') FhirElement? nextElement,
/// /// [timestamp] The time at which the expansion was produced by the
/// expanding system.

    @JsonKey(name: 'timestamp') FhirDateTime? timestamp,
/// /// [_timestamp] Extensions for timestamp

    @JsonKey(name: '_timestamp') FhirElement? timestampElement,
/// /// [total] The total number of concepts in the expansion. If the number of
/// concept nodes in this resource is less than the stated number, then the
/// server can return more using the offset parameter.

    @JsonKey(name: 'total') FhirInteger? total,
/// /// [_total] Extensions for total

    @JsonKey(name: '_total') FhirElement? totalElement,
/// /// [offset] If paging is being used, the offset at which this resource
/// starts.  I.e. this resource is a partial view into the expansion. If paging
/// is not being used, this element SHALL NOT be present.

    @JsonKey(name: 'offset') FhirInteger? offset,
/// /// [_offset] Extensions for offset

    @JsonKey(name: '_offset') FhirElement? offsetElement,
/// /// [parameter] A parameter that controlled the expansion process. These
/// parameters may be used by users of expanded value sets to check whether the
/// expansion is suitable for a particular purpose, or to pick the correct
/// expansion.

    @JsonKey(name: 'parameter') List<List<ValueSet_Parameter>>? parameter,
/// /// [property] A property defines an additional slot through which
/// additional information can be provided about a concept.

    @JsonKey(name: 'property') List<List<ValueSet_Property>>? property,
/// /// [contains] The codes that are contained in the value set expansion.

    @JsonKey(name: 'contains') List<List<ValueSet_Contains>>? contains,
  }) = _$ValueSet_Expansion;

  @override
  String get fhirType => 'ValueSet_Expansion';

  factory ValueSet_Expansion.fromJson(Map<String, dynamic> json) =>
      _$ValueSet_ExpansionFromJson(json);

  factory ValueSet_Expansion.fromYaml(dynamic yaml) => yaml is String
      ? ValueSet_Expansion.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ValueSet_Expansion.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ValueSet_Expansion cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ValueSet_Expansion.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ValueSet_ExpansionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
