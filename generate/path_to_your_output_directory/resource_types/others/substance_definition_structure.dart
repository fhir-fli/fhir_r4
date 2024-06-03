import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SubstanceDefinition_Structure] The detailed description of a
/// substance, typically at a level beyond what is used for prescribing.

@freezed
class SubstanceDefinition_Structure with _$SubstanceDefinition_Structure {
  const SubstanceDefinition_Structure._();

  const factory SubstanceDefinition_Structure({
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
/// [stereochemistry] Stereochemistry type.

    @JsonKey(name: 'stereochemistry') CodeableConcept? stereochemistry,
/// [opticalActivity] Optical activity type.

    @JsonKey(name: 'opticalActivity') CodeableConcept? opticalActivity,
/// [molecularFormula] An expression which states the number and type of
/// atoms present in a molecule of a substance.

    @JsonKey(name: 'molecularFormula') String? molecularFormula,
/// [_molecularFormula] Extensions for molecularFormula

    @JsonKey(name: '_molecularFormula') PrimitiveElement? molecularFormulaElement,
/// [molecularFormulaByMoiety] Specified per moiety according to the Hill
/// system, i.e. first C, then H, then alphabetical, each moiety separated by a
/// dot.

    @JsonKey(name: 'molecularFormulaByMoiety') String? molecularFormulaByMoiety,
/// [_molecularFormulaByMoiety] Extensions for molecularFormulaByMoiety

    @JsonKey(name: '_molecularFormulaByMoiety') PrimitiveElement? molecularFormulaByMoietyElement,
/// [molecularWeight] The molecular weight or weight range (for proteins,
/// polymers or nucleic acids).

    @JsonKey(name: 'molecularWeight') SubstanceDefinition_MolecularWeight? molecularWeight,
/// [technique] The method used to elucidate the structure of the drug
/// substance. Examples: X-ray, NMR, Peptide mapping, Ligand binding assay.

    @JsonKey(name: 'technique') List<List<CodeableConcept>>? technique,
/// [sourceDocument] The source of information about the structure.

    @JsonKey(name: 'sourceDocument') List<List<Reference>>? sourceDocument,
/// [representation] A depiction of the structure of the substance.

    @JsonKey(name: 'representation') List<List<SubstanceDefinition_Representation>>? representation,
  }) = _$SubstanceDefinition_Structure;

  @override
  String get fhirType => 'SubstanceDefinition_Structure';

  factory SubstanceDefinition_Structure.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinition_StructureFromJson(json);

  factory SubstanceDefinition_Structure.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinition_Structure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinition_Structure.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinition_Structure cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstanceDefinition_Structure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinition_StructureFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
