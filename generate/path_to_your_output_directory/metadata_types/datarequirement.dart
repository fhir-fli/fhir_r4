import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [DataRequirement] Describes a required data item for evaluation in
/// terms of the type of data, and optional code or date-based filters of the
/// data.

@freezed
class DataRequirement with _$DataRequirement {
  const DataRequirement._();

  const factory DataRequirement({
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
/// [type] The type of the required data, specified as the type name of a
/// resource. For profiles, this value is set to the type of the base resource
/// of the profile.

    @JsonKey(name: 'type') FhirCode? type,
/// [_type] Extensions for type

    @JsonKey(name: '_type') PrimitiveElement? typeElement,
/// [profile] The profile of the required data, specified as the uri of the
/// profile definition.

    @JsonKey(name: 'profile') List<List<FhirCanonical>>? profile,
/// [subjectCodeableConcept] The intended subjects of the data requirement.
/// If this element is not provided, a Patient subject is assumed.

    @JsonKey(name: 'subjectCodeableConcept') CodeableConcept? subjectCodeableConcept,
/// [subjectReference] The intended subjects of the data requirement. If
/// this element is not provided, a Patient subject is assumed.

    @JsonKey(name: 'subjectReference') Reference? subjectReference,
/// [mustSupport] Indicates that specific elements of the type are
/// referenced by the knowledge module and must be supported by the consumer in
/// order to obtain an effective evaluation. This does not mean that a value is
/// required for this element, only that the consuming system must understand
/// the element and be able to provide values for it if they are available.
/// 

The value of mustSupport SHALL be a FHIRPath resolvable on the type of
/// the DataRequirement. The path SHALL consist only of identifiers, constant
/// indexers, and .resolve() (see the [Simple FHIRPath
/// Profile](fhirpath.html#simple) for full details).

    @JsonKey(name: 'mustSupport') List<List<String>>? mustSupport,
/// [_mustSupport] Extensions for mustSupport

    @JsonKey(name: '_mustSupport') List<PrimitiveElement>? mustSupportElement,
/// [codeFilter] Code filters specify additional constraints on the data,
/// specifying the value set of interest for a particular element of the data.
/// Each code filter defines an additional constraint on the data, i.e. code
/// filters are AND'ed, not OR'ed.

    @JsonKey(name: 'codeFilter') List<List<DataRequirement_CodeFilter>>? codeFilter,
/// [dateFilter] Date filters specify additional constraints on the data in
/// terms of the applicable date range for specific elements. Each date filter
/// specifies an additional constraint on the data, i.e. date filters are
/// AND'ed, not OR'ed.

    @JsonKey(name: 'dateFilter') List<List<DataRequirement_DateFilter>>? dateFilter,
/// [valueFilter] Value filters specify additional constraints on the data
/// for elements other than code-valued or date-valued. Each value filter
/// specifies an additional constraint on the data (i.e. valueFilters are
/// AND'ed, not OR'ed).

    @JsonKey(name: 'valueFilter') List<List<DataRequirement_ValueFilter>>? valueFilter,
/// [limit] Specifies a maximum number of results that are required (uses
/// the _count search parameter).

    @JsonKey(name: 'limit') FhirPositiveInt? limit,
/// [_limit] Extensions for limit

    @JsonKey(name: '_limit') PrimitiveElement? limitElement,
/// [sort] Specifies the order of the results to be returned.

    @JsonKey(name: 'sort') List<List<DataRequirement_Sort>>? sort,
  }) = _$DataRequirement;

  @override
  String get fhirType => 'DataRequirement';

  factory DataRequirement.fromJson(Map<String, dynamic> json) =>
      _$DataRequirementFromJson(json);

  factory DataRequirement.fromYaml(dynamic yaml) => yaml is String
      ? DataRequirement.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DataRequirement.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DataRequirement cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DataRequirement.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DataRequirementFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
