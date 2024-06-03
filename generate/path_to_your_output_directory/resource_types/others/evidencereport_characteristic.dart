import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [EvidenceReport_Characteristic] The EvidenceReport Resource is a
/// specialized container for a collection of resources and codeable concepts,
/// adapted to support compositions of Evidence, EvidenceVariable, and Citation
/// resources and related concepts.

@freezed
class EvidenceReport_Characteristic with _$EvidenceReport_Characteristic {
  const EvidenceReport_Characteristic._();

  const factory EvidenceReport_Characteristic({
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
/// [code] Characteristic code.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [valueReference] Characteristic value.

    @JsonKey(name: 'valueReference') Reference? valueReference,
/// [valueCodeableConcept] Characteristic value.

    @JsonKey(name: 'valueCodeableConcept') CodeableConcept? valueCodeableConcept,
/// [valueBoolean] Characteristic value.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
/// [valueQuantity] Characteristic value.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// [valueRange] Characteristic value.

    @JsonKey(name: 'valueRange') Range? valueRange,
/// [exclude] Is used to express not the characteristic.

    @JsonKey(name: 'exclude') FhirBoolean? exclude,
/// [_exclude] Extensions for exclude

    @JsonKey(name: '_exclude') PrimitiveElement? excludeElement,
/// [period] Timeframe for the characteristic.

    @JsonKey(name: 'period') Period? period,
  }) = _$EvidenceReport_Characteristic;

  @override
  String get fhirType => 'EvidenceReport_Characteristic';

  factory EvidenceReport_Characteristic.fromJson(Map<String, dynamic> json) =>
      _$EvidenceReport_CharacteristicFromJson(json);

  factory EvidenceReport_Characteristic.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceReport_Characteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EvidenceReport_Characteristic.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EvidenceReport_Characteristic cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory EvidenceReport_Characteristic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EvidenceReport_CharacteristicFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
