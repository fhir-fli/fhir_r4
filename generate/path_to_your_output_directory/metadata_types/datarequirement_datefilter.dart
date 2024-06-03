/// /// [DataRequirement_DateFilter] Describes a required data item for
/// evaluation in terms of the type of data, and optional code or date-based
/// filters of the data.

@freezed
class DataRequirement_DateFilter with _$DataRequirement_DateFilter {
  const DataRequirement_DateFilter._();

  const factory DataRequirement_DateFilter({
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
/// /// [path] The date-valued attribute of the filter. The specified path
/// SHALL be a FHIRPath resolvable on the specified type of the
/// DataRequirement, and SHALL consist only of identifiers, constant indexers,
/// and .resolve(). The path is allowed to contain qualifiers (.) to traverse
/// sub-elements, as well as indexers ([x]) to traverse multiple-cardinality
/// sub-elements (see the [Simple FHIRPath Profile](fhirpath.html#simple) for
/// full details). Note that the index must be an integer constant. The path
/// must resolve to an element of type date, dateTime, Period, Schedule, or
/// Timing.

    @JsonKey(name: 'path') String? path,
/// /// [_path] Extensions for path

    @JsonKey(name: '_path') FhirElement? pathElement,
/// /// [searchParam] A date parameter that refers to a search parameter
/// defined on the specified type of the DataRequirement, and which searches on
/// elements of type date, dateTime, Period, Schedule, or Timing.

    @JsonKey(name: 'searchParam') String? searchParam,
/// /// [_searchParam] Extensions for searchParam

    @JsonKey(name: '_searchParam') FhirElement? searchParamElement,
/// /// [valueDateTime] The value of the filter. If period is specified, the
/// filter will return only those data items that fall within the bounds
/// determined by the Period, inclusive of the period boundaries. If dateTime
/// is specified, the filter will return only those data items that are equal
/// to the specified dateTime. If a Duration is specified, the filter will
/// return only those data items that fall within Duration before now.

    @JsonKey(name: 'valueDateTime') FhirDateTime? valueDateTime,
/// /// [_valueDateTime] Extensions for valueDateTime

    @JsonKey(name: '_valueDateTime') FhirElement? valueDateTimeElement,
/// /// [valuePeriod] The value of the filter. If period is specified, the
/// filter will return only those data items that fall within the bounds
/// determined by the Period, inclusive of the period boundaries. If dateTime
/// is specified, the filter will return only those data items that are equal
/// to the specified dateTime. If a Duration is specified, the filter will
/// return only those data items that fall within Duration before now.

    @JsonKey(name: 'valuePeriod') Period? valuePeriod,
/// /// [valueDuration] The value of the filter. If period is specified, the
/// filter will return only those data items that fall within the bounds
/// determined by the Period, inclusive of the period boundaries. If dateTime
/// is specified, the filter will return only those data items that are equal
/// to the specified dateTime. If a Duration is specified, the filter will
/// return only those data items that fall within Duration before now.

    @JsonKey(name: 'valueDuration') FhirDuration? valueDuration,
  }) = _$DataRequirement_DateFilter;

  @override
  String get fhirType => 'DataRequirement_DateFilter';

  factory DataRequirement_DateFilter.fromJson(Map<String, dynamic> json) =>
      _$DataRequirement_DateFilterFromJson(json);

  factory DataRequirement_DateFilter.fromYaml(dynamic yaml) => yaml is String
      ? DataRequirement_DateFilter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DataRequirement_DateFilter.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DataRequirement_DateFilter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DataRequirement_DateFilter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DataRequirement_DateFilterFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
