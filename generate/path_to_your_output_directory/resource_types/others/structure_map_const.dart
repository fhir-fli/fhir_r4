import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [StructureMap_Const] A Map of relationships between 2 structures that
/// can be used to transform data.

@freezed
class StructureMap_Const with _$StructureMap_Const {
  const StructureMap_Const._();

  const factory StructureMap_Const({
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
/// [name] Other maps used by this map (canonical URLs).

    @JsonKey(name: 'name') FhirId? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [value] A FHIRPath expression that is the value of this variable.

    @JsonKey(name: 'value') String? value,
/// [_value] Extensions for value

    @JsonKey(name: '_value') PrimitiveElement? valueElement,
  }) = _$StructureMap_Const;

  @override
  String get fhirType => 'StructureMap_Const';

  factory StructureMap_Const.fromJson(Map<String, dynamic> json) =>
      _$StructureMap_ConstFromJson(json);

  factory StructureMap_Const.fromYaml(dynamic yaml) => yaml is String
      ? StructureMap_Const.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? StructureMap_Const.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'StructureMap_Const cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory StructureMap_Const.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$StructureMap_ConstFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
