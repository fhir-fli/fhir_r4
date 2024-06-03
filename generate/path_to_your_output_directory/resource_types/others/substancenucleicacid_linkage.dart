import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SubstanceNucleicAcid_Linkage] Nucleic acids are defined by three
/// distinct elements: the base, sugar and linkage. Individual substance/moiety
/// IDs will be created for each of these elements. The nucleotide sequence
/// will be always entered in the 5’-3’ direction.

@freezed
class SubstanceNucleicAcid_Linkage with _$SubstanceNucleicAcid_Linkage {
  const SubstanceNucleicAcid_Linkage._();

  const factory SubstanceNucleicAcid_Linkage({
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
/// [connectivity] The entity that links the sugar residues together should
/// also be captured for nearly all naturally occurring nucleic acid the
/// linkage is a phosphate group. For many synthetic oligonucleotides
/// phosphorothioate linkages are often seen. Linkage connectivity is assumed
/// to be 3’-5’. If the linkage is either 3’-3’ or 5’-5’ this should be
/// specified.

    @JsonKey(name: 'connectivity') String? connectivity,
/// [_connectivity] Extensions for connectivity

    @JsonKey(name: '_connectivity') PrimitiveElement? connectivityElement,
/// [identifier] Each linkage will be registered as a fragment and have an
/// ID.

    @JsonKey(name: 'identifier') Identifier? identifier,
/// [name] Each linkage will be registered as a fragment and have at least
/// one name. A single name shall be assigned to each linkage.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [residueSite] Residues shall be captured as described in 5.3.6.8.3.

    @JsonKey(name: 'residueSite') String? residueSite,
/// [_residueSite] Extensions for residueSite

    @JsonKey(name: '_residueSite') PrimitiveElement? residueSiteElement,
  }) = _$SubstanceNucleicAcid_Linkage;

  @override
  String get fhirType => 'SubstanceNucleicAcid_Linkage';

  factory SubstanceNucleicAcid_Linkage.fromJson(Map<String, dynamic> json) =>
      _$SubstanceNucleicAcid_LinkageFromJson(json);

  factory SubstanceNucleicAcid_Linkage.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceNucleicAcid_Linkage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceNucleicAcid_Linkage.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceNucleicAcid_Linkage cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstanceNucleicAcid_Linkage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceNucleicAcid_LinkageFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
