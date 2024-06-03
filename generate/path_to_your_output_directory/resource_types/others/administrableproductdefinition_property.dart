import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [AdministrableProductDefinition_Property] A medicinal product in the
/// final form which is suitable for administering to a patient (after any
/// mixing of multiple components, dissolution etc. has been performed).

@freezed
class AdministrableProductDefinition_Property with _$AdministrableProductDefinition_Property {
  const AdministrableProductDefinition_Property._();

  const factory AdministrableProductDefinition_Property({
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
/// [type] A code expressing the type of characteristic.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [valueCodeableConcept] A value for the characteristic.

    @JsonKey(name: 'valueCodeableConcept') CodeableConcept? valueCodeableConcept,
/// [valueQuantity] A value for the characteristic.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// [valueDate] A value for the characteristic.

    @JsonKey(name: 'valueDate') FhirDate? valueDate,
/// [_valueDate] Extensions for valueDate

    @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,
/// [valueBoolean] A value for the characteristic.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
/// [valueMarkdown] A value for the characteristic.

    @JsonKey(name: 'valueMarkdown') FhirMarkdown? valueMarkdown,
/// [_valueMarkdown] Extensions for valueMarkdown

    @JsonKey(name: '_valueMarkdown') PrimitiveElement? valueMarkdownElement,
/// [valueAttachment] A value for the characteristic.

    @JsonKey(name: 'valueAttachment') Attachment? valueAttachment,
/// [valueReference] A value for the characteristic.

    @JsonKey(name: 'valueReference') Reference? valueReference,
/// [status] The status of characteristic e.g. assigned or pending.

    @JsonKey(name: 'status') CodeableConcept? status,
  }) = _$AdministrableProductDefinition_Property;

  @override
  String get fhirType => 'AdministrableProductDefinition_Property';

  factory AdministrableProductDefinition_Property.fromJson(Map<String, dynamic> json) =>
      _$AdministrableProductDefinition_PropertyFromJson(json);

  factory AdministrableProductDefinition_Property.fromYaml(dynamic yaml) => yaml is String
      ? AdministrableProductDefinition_Property.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AdministrableProductDefinition_Property.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AdministrableProductDefinition_Property cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory AdministrableProductDefinition_Property.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AdministrableProductDefinition_PropertyFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
