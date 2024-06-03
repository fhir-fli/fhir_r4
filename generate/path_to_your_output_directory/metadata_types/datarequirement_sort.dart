import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [DataRequirement_Sort] Describes a required data item for evaluation in
/// terms of the type of data, and optional code or date-based filters of the
/// data.

@freezed
class DataRequirement_Sort with _$DataRequirement_Sort {
  const DataRequirement_Sort._();

  const factory DataRequirement_Sort({
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
/// [path] The attribute of the sort. The specified path must be resolvable
/// from the type of the required data. The path is allowed to contain
/// qualifiers (.) to traverse sub-elements, as well as indexers ([x]) to
/// traverse multiple-cardinality sub-elements. Note that the index must be an
/// integer constant.

    @JsonKey(name: 'path') String? path,
/// [_path] Extensions for path

    @JsonKey(name: '_path') PrimitiveElement? pathElement,
/// [direction] The direction of the sort, ascending or descending.

    @JsonKey(name: 'direction') dynamic? direction,
/// [_direction] Extensions for direction

    @JsonKey(name: '_direction') PrimitiveElement? directionElement,
  }) = _$DataRequirement_Sort;

  @override
  String get fhirType => 'DataRequirement_Sort';

  factory DataRequirement_Sort.fromJson(Map<String, dynamic> json) =>
      _$DataRequirement_SortFromJson(json);

  factory DataRequirement_Sort.fromYaml(dynamic yaml) => yaml is String
      ? DataRequirement_Sort.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DataRequirement_Sort.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DataRequirement_Sort cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DataRequirement_Sort.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DataRequirement_SortFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
