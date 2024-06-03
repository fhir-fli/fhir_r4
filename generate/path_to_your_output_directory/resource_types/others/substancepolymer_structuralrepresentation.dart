import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SubstancePolymer_StructuralRepresentation] Properties of a substance
/// specific to it being a polymer.

@freezed
class SubstancePolymer_StructuralRepresentation with _$SubstancePolymer_StructuralRepresentation {
  const SubstancePolymer_StructuralRepresentation._();

  const factory SubstancePolymer_StructuralRepresentation({
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
/// [type] The type of structure (e.g. Full, Partial, Representative).

    @JsonKey(name: 'type') CodeableConcept? type,
/// [representation] The structural representation as text string in a
/// standard format e.g. InChI, SMILES, MOLFILE, CDX, SDF, PDB, mmCIF.

    @JsonKey(name: 'representation') String? representation,
/// [_representation] Extensions for representation

    @JsonKey(name: '_representation') PrimitiveElement? representationElement,
/// [format] The format of the representation e.g. InChI, SMILES, MOLFILE,
/// CDX, SDF, PDB, mmCIF.

    @JsonKey(name: 'format') CodeableConcept? format,
/// [attachment] An attached file with the structural representation.

    @JsonKey(name: 'attachment') Attachment? attachment,
  }) = _$SubstancePolymer_StructuralRepresentation;

  @override
  String get fhirType => 'SubstancePolymer_StructuralRepresentation';

  factory SubstancePolymer_StructuralRepresentation.fromJson(Map<String, dynamic> json) =>
      _$SubstancePolymer_StructuralRepresentationFromJson(json);

  factory SubstancePolymer_StructuralRepresentation.fromYaml(dynamic yaml) => yaml is String
      ? SubstancePolymer_StructuralRepresentation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstancePolymer_StructuralRepresentation.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstancePolymer_StructuralRepresentation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstancePolymer_StructuralRepresentation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstancePolymer_StructuralRepresentationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
