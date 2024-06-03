import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Permission_Data] Permission resource holds access rules for a given
/// data and context.

@freezed
class Permission_Data with _$Permission_Data {
  const Permission_Data._();

  const factory Permission_Data({
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
/// [resource] Explicit FHIR Resource references.

    @JsonKey(name: 'resource') List<List<Permission_Resource>>? resource,
/// [security] The data in scope are those with the given codes present in
/// that data .meta.security element.

    @JsonKey(name: 'security') List<List<Coding>>? security,
/// [period] Clinical or Operational Relevant period of time that bounds
/// the data controlled by this rule.

    @JsonKey(name: 'period') Period? period,
/// [expression] Used when other data selection elements are insufficient.

    @JsonKey(name: 'expression') FhirExpression? expression,
  }) = _$Permission_Data;

  @override
  String get fhirType => 'Permission_Data';

  factory Permission_Data.fromJson(Map<String, dynamic> json) =>
      _$Permission_DataFromJson(json);

  factory Permission_Data.fromYaml(dynamic yaml) => yaml is String
      ? Permission_Data.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Permission_Data.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Permission_Data cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Permission_Data.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Permission_DataFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
