import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Permission_Rule] Permission resource holds access rules for a given
/// data and context.

@freezed
class Permission_Rule with _$Permission_Rule {
  const Permission_Rule._();

  const factory Permission_Rule({
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
/// [type] deny | permit.

    @JsonKey(name: 'type') FhirCode? type,
/// [_type] Extensions for type

    @JsonKey(name: '_type') PrimitiveElement? typeElement,
/// [data] A description or definition of which activities are allowed to
/// be done on the data.

    @JsonKey(name: 'data') List<List<Permission_Data>>? data,
/// [activity] A description or definition of which activities are allowed
/// to be done on the data.

    @JsonKey(name: 'activity') List<List<Permission_Activity>>? activity,
/// [limit] What limits apply to the use of the data.

    @JsonKey(name: 'limit') List<List<CodeableConcept>>? limit,
  }) = _$Permission_Rule;

  @override
  String get fhirType => 'Permission_Rule';

  factory Permission_Rule.fromJson(Map<String, dynamic> json) =>
      _$Permission_RuleFromJson(json);

  factory Permission_Rule.fromYaml(dynamic yaml) => yaml is String
      ? Permission_Rule.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Permission_Rule.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Permission_Rule cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Permission_Rule.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Permission_RuleFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
