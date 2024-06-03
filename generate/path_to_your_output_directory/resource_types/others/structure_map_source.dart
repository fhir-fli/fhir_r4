import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [StructureMap_Source] A Map of relationships between 2 structures that
/// can be used to transform data.

@freezed
class StructureMap_Source with _$StructureMap_Source {
  const StructureMap_Source._();

  const factory StructureMap_Source({
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
/// [context] Type or variable this rule applies to.

    @JsonKey(name: 'context') FhirId? context,
/// [_context] Extensions for context

    @JsonKey(name: '_context') PrimitiveElement? contextElement,
/// [min] Specified minimum cardinality for the element. This is optional;
/// if present, it acts an implicit check on the input content.

    @JsonKey(name: 'min') FhirInteger? min,
/// [_min] Extensions for min

    @JsonKey(name: '_min') PrimitiveElement? minElement,
/// [max] Specified maximum cardinality for the element - a number or a
/// "*". This is optional; if present, it acts an implicit check on the input
/// content (* just serves as documentation; it's the default value).

    @JsonKey(name: 'max') String? max,
/// [_max] Extensions for max

    @JsonKey(name: '_max') PrimitiveElement? maxElement,
/// [type] Specified type for the element. This works as a condition on the
/// mapping - use for polymorphic elements.

    @JsonKey(name: 'type') String? type,
/// [_type] Extensions for type

    @JsonKey(name: '_type') PrimitiveElement? typeElement,
/// [defaultValue] A value to use if there is no existing value in the
/// source object.

    @JsonKey(name: 'defaultValue') String? defaultValue,
/// [_defaultValue] Extensions for defaultValue

    @JsonKey(name: '_defaultValue') PrimitiveElement? defaultValueElement,
/// [element] Optional field for this source.

    @JsonKey(name: 'element') String? element,
/// [_element] Extensions for element

    @JsonKey(name: '_element') PrimitiveElement? elementElement,
/// [listMode] How to handle the list mode for this element.

    @JsonKey(name: 'listMode') FhirCode? listMode,
/// [_listMode] Extensions for listMode

    @JsonKey(name: '_listMode') PrimitiveElement? listModeElement,
/// [variable] Named context for field, if a field is specified.

    @JsonKey(name: 'variable') FhirId? variable,
/// [_variable] Extensions for variable

    @JsonKey(name: '_variable') PrimitiveElement? variableElement,
/// [condition] FHIRPath expression  - must be true or the rule does not
/// apply.

    @JsonKey(name: 'condition') String? condition,
/// [_condition] Extensions for condition

    @JsonKey(name: '_condition') PrimitiveElement? conditionElement,
/// [check] FHIRPath expression  - must be true or the mapping engine
/// throws an error instead of completing.

    @JsonKey(name: 'check') String? check,
/// [_check] Extensions for check

    @JsonKey(name: '_check') PrimitiveElement? checkElement,
/// [logMessage] A FHIRPath expression which specifies a message to put in
/// the transform log when content matching the source rule is found.

    @JsonKey(name: 'logMessage') String? logMessage,
/// [_logMessage] Extensions for logMessage

    @JsonKey(name: '_logMessage') PrimitiveElement? logMessageElement,
  }) = _$StructureMap_Source;

  @override
  String get fhirType => 'StructureMap_Source';

  factory StructureMap_Source.fromJson(Map<String, dynamic> json) =>
      _$StructureMap_SourceFromJson(json);

  factory StructureMap_Source.fromYaml(dynamic yaml) => yaml is String
      ? StructureMap_Source.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? StructureMap_Source.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'StructureMap_Source cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory StructureMap_Source.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$StructureMap_SourceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
