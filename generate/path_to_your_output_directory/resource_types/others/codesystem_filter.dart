import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [CodeSystem_Filter] The CodeSystem resource is used to declare the
/// existence of and describe a code system or code system supplement and its
/// key properties, and optionally define a part or all of its content.

@freezed
class CodeSystem_Filter with _$CodeSystem_Filter {
  const CodeSystem_Filter._();

  const factory CodeSystem_Filter({
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
/// [code] The code that identifies this filter when it is used as a filter
/// in [ValueSet](valueset.html#).compose.include.filter.

    @JsonKey(name: 'code') FhirCode? code,
/// [_code] Extensions for code

    @JsonKey(name: '_code') PrimitiveElement? codeElement,
/// [description] A description of how or why the filter is used.

    @JsonKey(name: 'description') String? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [operator] A list of operators that can be used with the filter.

    @JsonKey(name: 'operator') List<List<FhirCode>>? operator,
/// [_operator] Extensions for operator

    @JsonKey(name: '_operator') List<PrimitiveElement>? operatorElement,
/// [value] A description of what the value for the filter should be.

    @JsonKey(name: 'value') String? value,
/// [_value] Extensions for value

    @JsonKey(name: '_value') PrimitiveElement? valueElement,
  }) = _$CodeSystem_Filter;

  @override
  String get fhirType => 'CodeSystem_Filter';

  factory CodeSystem_Filter.fromJson(Map<String, dynamic> json) =>
      _$CodeSystem_FilterFromJson(json);

  factory CodeSystem_Filter.fromYaml(dynamic yaml) => yaml is String
      ? CodeSystem_Filter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CodeSystem_Filter.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CodeSystem_Filter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CodeSystem_Filter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CodeSystem_FilterFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
