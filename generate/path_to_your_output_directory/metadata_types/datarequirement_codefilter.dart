import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [DataRequirement_CodeFilter] Describes a required data item for
/// evaluation in terms of the type of data, and optional code or date-based
/// filters of the data.

@freezed
class DataRequirement_CodeFilter with _$DataRequirement_CodeFilter {
  const DataRequirement_CodeFilter._();

  const factory DataRequirement_CodeFilter({
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
/// [path] The code-valued attribute of the filter. The specified path
/// SHALL be a FHIRPath resolvable on the specified type of the
/// DataRequirement, and SHALL consist only of identifiers, constant indexers,
/// and .resolve(). The path is allowed to contain qualifiers (.) to traverse
/// sub-elements, as well as indexers ([x]) to traverse multiple-cardinality
/// sub-elements (see the [Simple FHIRPath Profile](fhirpath.html#simple) for
/// full details). Note that the index must be an integer constant. The path
/// must resolve to an element of type code, Coding, or CodeableConcept.

    @JsonKey(name: 'path') String? path,
/// [_path] Extensions for path

    @JsonKey(name: '_path') PrimitiveElement? pathElement,
/// [searchParam] A token parameter that refers to a search parameter
/// defined on the specified type of the DataRequirement, and which searches on
/// elements of type code, Coding, or CodeableConcept.

    @JsonKey(name: 'searchParam') String? searchParam,
/// [_searchParam] Extensions for searchParam

    @JsonKey(name: '_searchParam') PrimitiveElement? searchParamElement,
/// [valueSet] The valueset for the code filter. The valueSet and code
/// elements are additive. If valueSet is specified, the filter will return
/// only those data items for which the value of the code-valued element
/// specified in the path is a member of the specified valueset.

    @JsonKey(name: 'valueSet') FhirCanonical? valueSet,
/// [code] The codes for the code filter. If values are given, the filter
/// will return only those data items for which the code-valued attribute
/// specified by the path has a value that is one of the specified codes. If
/// codes are specified in addition to a value set, the filter returns items
/// matching a code in the value set or one of the specified codes.

    @JsonKey(name: 'code') List<List<Coding>>? code,
  }) = _$DataRequirement_CodeFilter;

  @override
  String get fhirType => 'DataRequirement_CodeFilter';

  factory DataRequirement_CodeFilter.fromJson(Map<String, dynamic> json) =>
      _$DataRequirement_CodeFilterFromJson(json);

  factory DataRequirement_CodeFilter.fromYaml(dynamic yaml) => yaml is String
      ? DataRequirement_CodeFilter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DataRequirement_CodeFilter.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DataRequirement_CodeFilter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DataRequirement_CodeFilter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DataRequirement_CodeFilterFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
