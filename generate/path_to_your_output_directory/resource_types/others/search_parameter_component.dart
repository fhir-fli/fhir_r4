import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SearchParameter_Component] A search parameter that defines a named
/// search item that can be used to search/filter on a resource.

@freezed
class SearchParameter_Component with _$SearchParameter_Component {
  const SearchParameter_Component._();

  const factory SearchParameter_Component({
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
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [definition] The definition of the search parameter that describes this
/// part.

    @JsonKey(name: 'definition') FhirCanonical? definition,
/// [expression] A sub-expression that defines how to extract values for
/// this component from the output of the main SearchParameter.expression.

    @JsonKey(name: 'expression') String? expression,
/// [_expression] Extensions for expression

    @JsonKey(name: '_expression') PrimitiveElement? expressionElement,
  }) = _$SearchParameter_Component;

  @override
  String get fhirType => 'SearchParameter_Component';

  factory SearchParameter_Component.fromJson(Map<String, dynamic> json) =>
      _$SearchParameter_ComponentFromJson(json);

  factory SearchParameter_Component.fromYaml(dynamic yaml) => yaml is String
      ? SearchParameter_Component.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SearchParameter_Component.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SearchParameter_Component cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SearchParameter_Component.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SearchParameter_ComponentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
