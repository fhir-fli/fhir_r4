import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [MedicinalProductDefinition_Characteristic] A medicinal product, being
/// a substance or combination of substances that is intended to treat, prevent
/// or diagnose a disease, or to restore, correct or modify physiological
/// functions by exerting a pharmacological, immunological or metabolic action.
/// This resource is intended to define and detail such products and their
/// properties, for uses other than direct patient care (e.g. regulatory use,
/// or drug catalogs).

@freezed
class MedicinalProductDefinition_Characteristic with _$MedicinalProductDefinition_Characteristic {
  const MedicinalProductDefinition_Characteristic._();

  const factory MedicinalProductDefinition_Characteristic({
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
/// [type] A code expressing the type of characteristic.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [valueCodeableConcept] A value for the characteristic.text.

    @JsonKey(name: 'valueCodeableConcept') CodeableConcept? valueCodeableConcept,
/// [valueMarkdown] A value for the characteristic.text.

    @JsonKey(name: 'valueMarkdown') FhirMarkdown? valueMarkdown,
/// [_valueMarkdown] Extensions for valueMarkdown

    @JsonKey(name: '_valueMarkdown') PrimitiveElement? valueMarkdownElement,
/// [valueQuantity] A value for the characteristic.text.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// [valueInteger] A value for the characteristic.text.

    @JsonKey(name: 'valueInteger') FhirInteger? valueInteger,
/// [_valueInteger] Extensions for valueInteger

    @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
/// [valueDate] A value for the characteristic.text.

    @JsonKey(name: 'valueDate') FhirDate? valueDate,
/// [_valueDate] Extensions for valueDate

    @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,
/// [valueBoolean] A value for the characteristic.text.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
/// [valueAttachment] A value for the characteristic.text.

    @JsonKey(name: 'valueAttachment') Attachment? valueAttachment,
  }) = _$MedicinalProductDefinition_Characteristic;

  @override
  String get fhirType => 'MedicinalProductDefinition_Characteristic';

  factory MedicinalProductDefinition_Characteristic.fromJson(Map<String, dynamic> json) =>
      _$MedicinalProductDefinition_CharacteristicFromJson(json);

  factory MedicinalProductDefinition_Characteristic.fromYaml(dynamic yaml) => yaml is String
      ? MedicinalProductDefinition_Characteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicinalProductDefinition_Characteristic.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicinalProductDefinition_Characteristic cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MedicinalProductDefinition_Characteristic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicinalProductDefinition_CharacteristicFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
