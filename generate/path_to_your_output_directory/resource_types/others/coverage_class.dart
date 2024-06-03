import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Coverage_Class] Financial instrument which may be used to reimburse or
/// pay for health care products and services. Includes both insurance and
/// self-payment.

@freezed
class Coverage_Class with _$Coverage_Class {
  const Coverage_Class._();

  const factory Coverage_Class({
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
/// [type] The type of classification for which an insurer-specific class
/// label or number and optional name is provided.  For example, type may be
/// used to identify a class of coverage or employer group, policy, or plan.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [value] The alphanumeric identifier associated with the insurer issued
/// label.

    @JsonKey(name: 'value') Identifier? value,
/// [name] A short description for the class.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
  }) = _$Coverage_Class;

  @override
  String get fhirType => 'Coverage_Class';

  factory Coverage_Class.fromJson(Map<String, dynamic> json) =>
      _$Coverage_ClassFromJson(json);

  factory Coverage_Class.fromYaml(dynamic yaml) => yaml is String
      ? Coverage_Class.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Coverage_Class.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Coverage_Class cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Coverage_Class.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Coverage_ClassFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
