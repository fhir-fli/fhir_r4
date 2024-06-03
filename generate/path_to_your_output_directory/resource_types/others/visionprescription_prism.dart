import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [VisionPrescription_Prism] An authorization for the provision of
/// glasses and/or contact lenses to a patient.

@freezed
class VisionPrescription_Prism with _$VisionPrescription_Prism {
  const VisionPrescription_Prism._();

  const factory VisionPrescription_Prism({
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
/// [amount] Amount of prism to compensate for eye alignment in fractional
/// units.

    @JsonKey(name: 'amount') FhirDecimal? amount,
/// [_amount] Extensions for amount

    @JsonKey(name: '_amount') PrimitiveElement? amountElement,
/// [base] The relative base, or reference lens edge, for the prism.

    @JsonKey(name: 'base') FhirCode? base,
/// [_base] Extensions for base

    @JsonKey(name: '_base') PrimitiveElement? baseElement,
  }) = _$VisionPrescription_Prism;

  @override
  String get fhirType => 'VisionPrescription_Prism';

  factory VisionPrescription_Prism.fromJson(Map<String, dynamic> json) =>
      _$VisionPrescription_PrismFromJson(json);

  factory VisionPrescription_Prism.fromYaml(dynamic yaml) => yaml is String
      ? VisionPrescription_Prism.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? VisionPrescription_Prism.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'VisionPrescription_Prism cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory VisionPrescription_Prism.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$VisionPrescription_PrismFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
