import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SubstanceNucleicAcid_Sugar] Nucleic acids are defined by three
/// distinct elements: the base, sugar and linkage. Individual substance/moiety
/// IDs will be created for each of these elements. The nucleotide sequence
/// will be always entered in the 5’-3’ direction.

@freezed
class SubstanceNucleicAcid_Sugar with _$SubstanceNucleicAcid_Sugar {
  const SubstanceNucleicAcid_Sugar._();

  const factory SubstanceNucleicAcid_Sugar({
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
/// [identifier] The Substance ID of the sugar or sugar-like component that
/// make up the nucleotide.

    @JsonKey(name: 'identifier') Identifier? identifier,
/// [name] The name of the sugar or sugar-like component that make up the
/// nucleotide.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [residueSite] The residues that contain a given sugar will be captured.
/// The order of given residues will be captured in the 5‘-3‘direction
/// consistent with the base sequences listed above.

    @JsonKey(name: 'residueSite') String? residueSite,
/// [_residueSite] Extensions for residueSite

    @JsonKey(name: '_residueSite') PrimitiveElement? residueSiteElement,
  }) = _$SubstanceNucleicAcid_Sugar;

  @override
  String get fhirType => 'SubstanceNucleicAcid_Sugar';

  factory SubstanceNucleicAcid_Sugar.fromJson(Map<String, dynamic> json) =>
      _$SubstanceNucleicAcid_SugarFromJson(json);

  factory SubstanceNucleicAcid_Sugar.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceNucleicAcid_Sugar.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceNucleicAcid_Sugar.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceNucleicAcid_Sugar cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstanceNucleicAcid_Sugar.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceNucleicAcid_SugarFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
