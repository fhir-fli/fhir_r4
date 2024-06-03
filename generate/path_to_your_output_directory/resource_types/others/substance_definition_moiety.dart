import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SubstanceDefinition_Moiety] The detailed description of a substance,
/// typically at a level beyond what is used for prescribing.

@freezed
class SubstanceDefinition_Moiety with _$SubstanceDefinition_Moiety {
  const SubstanceDefinition_Moiety._();

  const factory SubstanceDefinition_Moiety({
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
/// [role] Role that the moiety is playing.

    @JsonKey(name: 'role') CodeableConcept? role,
/// [identifier] Identifier by which this moiety substance is known.

    @JsonKey(name: 'identifier') Identifier? identifier,
/// [name] Textual name for this moiety substance.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [stereochemistry] Stereochemistry type.

    @JsonKey(name: 'stereochemistry') CodeableConcept? stereochemistry,
/// [opticalActivity] Optical activity type.

    @JsonKey(name: 'opticalActivity') CodeableConcept? opticalActivity,
/// [molecularFormula] Molecular formula for this moiety of this substance,
/// typically using the Hill system.

    @JsonKey(name: 'molecularFormula') String? molecularFormula,
/// [_molecularFormula] Extensions for molecularFormula

    @JsonKey(name: '_molecularFormula') PrimitiveElement? molecularFormulaElement,
/// [amountQuantity] Quantitative value for this moiety.

    @JsonKey(name: 'amountQuantity') Quantity? amountQuantity,
/// [amountString] Quantitative value for this moiety.

    @JsonKey(name: 'amountString') String? amountString,
/// [_amountString] Extensions for amountString

    @JsonKey(name: '_amountString') PrimitiveElement? amountStringElement,
/// [measurementType] The measurement type of the quantitative value. In
/// capturing the actual relative amounts of substances or molecular fragments
/// it may be necessary to indicate whether the amount refers to, for example,
/// a mole ratio or weight ratio.

    @JsonKey(name: 'measurementType') CodeableConcept? measurementType,
  }) = _$SubstanceDefinition_Moiety;

  @override
  String get fhirType => 'SubstanceDefinition_Moiety';

  factory SubstanceDefinition_Moiety.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinition_MoietyFromJson(json);

  factory SubstanceDefinition_Moiety.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinition_Moiety.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinition_Moiety.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinition_Moiety cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstanceDefinition_Moiety.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinition_MoietyFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
