import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [DataRequirement_ValueFilter] Describes a required data item for
/// evaluation in terms of the type of data, and optional code or date-based
/// filters of the data.

@freezed
class DataRequirement_ValueFilter with _$DataRequirement_ValueFilter {
  const DataRequirement_ValueFilter._();

  const factory DataRequirement_ValueFilter({
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
/// [path] The attribute of the filter. The specified path SHALL be a
/// FHIRPath resolvable on the specified type of the DataRequirement, and SHALL
/// consist only of identifiers, constant indexers, and .resolve(). The path is
/// allowed to contain qualifiers (.) to traverse sub-elements, as well as
/// indexers ([x]) to traverse multiple-cardinality sub-elements (see the
/// [Simple FHIRPath Profile](fhirpath.html#simple) for full details). Note
/// that the index must be an integer constant. The path must resolve to an
/// element of a type that is comparable to the valueFilter.value[x] element
/// for the filter.

    @JsonKey(name: 'path') String? path,
/// [_path] Extensions for path

    @JsonKey(name: '_path') PrimitiveElement? pathElement,
/// [searchParam] A search parameter defined on the specified type of the
/// DataRequirement, and which searches on elements of a type compatible with
/// the type of the valueFilter.value[x] for the filter.

    @JsonKey(name: 'searchParam') String? searchParam,
/// [_searchParam] Extensions for searchParam

    @JsonKey(name: '_searchParam') PrimitiveElement? searchParamElement,
/// [comparator] The comparator to be used to determine whether the value
/// is matching.

    @JsonKey(name: 'comparator') FhirCode? comparator,
/// [_comparator] Extensions for comparator

    @JsonKey(name: '_comparator') PrimitiveElement? comparatorElement,
/// [valueDateTime] The value of the filter.

    @JsonKey(name: 'valueDateTime') FhirDateTime? valueDateTime,
/// [_valueDateTime] Extensions for valueDateTime

    @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,
/// [valuePeriod] The value of the filter.

    @JsonKey(name: 'valuePeriod') Period? valuePeriod,
/// [valueDuration] The value of the filter.

    @JsonKey(name: 'valueDuration') FhirDuration? valueDuration,
  }) = _$DataRequirement_ValueFilter;

  @override
  String get fhirType => 'DataRequirement_ValueFilter';

  factory DataRequirement_ValueFilter.fromJson(Map<String, dynamic> json) =>
      _$DataRequirement_ValueFilterFromJson(json);

  factory DataRequirement_ValueFilter.fromYaml(dynamic yaml) => yaml is String
      ? DataRequirement_ValueFilter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DataRequirement_ValueFilter.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DataRequirement_ValueFilter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DataRequirement_ValueFilter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DataRequirement_ValueFilterFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
