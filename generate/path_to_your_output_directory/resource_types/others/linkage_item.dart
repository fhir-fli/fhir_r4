import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Linkage_Item] Identifies two or more records (resource instances) that
/// refer to the same real-world "occurrence".

@freezed
class Linkage_Item with _$Linkage_Item {
  const Linkage_Item._();

  const factory Linkage_Item({
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
/// [type] Distinguishes which item is "source of truth" (if any) and which
/// items are no longer considered to be current representations.

    @JsonKey(name: 'type') FhirCode? type,
/// [_type] Extensions for type

    @JsonKey(name: '_type') PrimitiveElement? typeElement,
/// [resource] The resource instance being linked as part of the group.

    @JsonKey(name: 'resource') Reference? resource,
  }) = _$Linkage_Item;

  @override
  String get fhirType => 'Linkage_Item';

  factory Linkage_Item.fromJson(Map<String, dynamic> json) =>
      _$Linkage_ItemFromJson(json);

  factory Linkage_Item.fromYaml(dynamic yaml) => yaml is String
      ? Linkage_Item.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Linkage_Item.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Linkage_Item cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Linkage_Item.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Linkage_ItemFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
