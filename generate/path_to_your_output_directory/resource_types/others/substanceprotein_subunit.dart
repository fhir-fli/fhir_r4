import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SubstanceProtein_Subunit] A SubstanceProtein is defined as a single
/// unit of a linear amino acid sequence, or a combination of subunits that are
/// either covalently linked or have a defined invariant stoichiometric
/// relationship. This includes all synthetic, recombinant and purified
/// SubstanceProteins of defined sequence, whether the use is therapeutic or
/// prophylactic. This set of elements will be used to describe albumins,
/// coagulation factors, cytokines, growth factors, peptide/SubstanceProtein
/// hormones, enzymes, toxins, toxoids, recombinant vaccines, and
/// immunomodulators.

@freezed
class SubstanceProtein_Subunit with _$SubstanceProtein_Subunit {
  const SubstanceProtein_Subunit._();

  const factory SubstanceProtein_Subunit({
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
/// [subunit] Index of primary sequences of amino acids linked through
/// peptide bonds in order of decreasing length. Sequences of the same length
/// will be ordered by molecular weight. Subunits that have identical sequences
/// will be repeated and have sequential subscripts.

    @JsonKey(name: 'subunit') FhirInteger? subunit,
/// [_subunit] Extensions for subunit

    @JsonKey(name: '_subunit') PrimitiveElement? subunitElement,
/// [sequence] The sequence information shall be provided enumerating the
/// amino acids from N- to C-terminal end using standard single-letter amino
/// acid codes. Uppercase shall be used for L-amino acids and lowercase for
/// D-amino acids. Transcribed SubstanceProteins will always be described using
/// the translated sequence; for synthetic peptide containing amino acids that
/// are not represented with a single letter code an X should be used within
/// the sequence. The modified amino acids will be distinguished by their
/// position in the sequence.

    @JsonKey(name: 'sequence') String? sequence,
/// [_sequence] Extensions for sequence

    @JsonKey(name: '_sequence') PrimitiveElement? sequenceElement,
/// [length] Length of linear sequences of amino acids contained in the
/// subunit.

    @JsonKey(name: 'length') FhirInteger? length,
/// [_length] Extensions for length

    @JsonKey(name: '_length') PrimitiveElement? lengthElement,
/// [sequenceAttachment] The sequence information shall be provided
/// enumerating the amino acids from N- to C-terminal end using standard
/// single-letter amino acid codes. Uppercase shall be used for L-amino acids
/// and lowercase for D-amino acids. Transcribed SubstanceProteins will always
/// be described using the translated sequence; for synthetic peptide
/// containing amino acids that are not represented with a single letter code
/// an X should be used within the sequence. The modified amino acids will be
/// distinguished by their position in the sequence.

    @JsonKey(name: 'sequenceAttachment') Attachment? sequenceAttachment,
/// [nTerminalModificationId] Unique identifier for molecular fragment
/// modification based on the ISO 11238 Substance ID.

    @JsonKey(name: 'nTerminalModificationId') Identifier? nTerminalModificationId,
/// [nTerminalModification] The name of the fragment modified at the
/// N-terminal of the SubstanceProtein shall be specified.

    @JsonKey(name: 'nTerminalModification') String? nTerminalModification,
/// [_nTerminalModification] Extensions for nTerminalModification

    @JsonKey(name: '_nTerminalModification') PrimitiveElement? nTerminalModificationElement,
/// [cTerminalModificationId] Unique identifier for molecular fragment
/// modification based on the ISO 11238 Substance ID.

    @JsonKey(name: 'cTerminalModificationId') Identifier? cTerminalModificationId,
/// [cTerminalModification] The modification at the C-terminal shall be
/// specified.

    @JsonKey(name: 'cTerminalModification') String? cTerminalModification,
/// [_cTerminalModification] Extensions for cTerminalModification

    @JsonKey(name: '_cTerminalModification') PrimitiveElement? cTerminalModificationElement,
  }) = _$SubstanceProtein_Subunit;

  @override
  String get fhirType => 'SubstanceProtein_Subunit';

  factory SubstanceProtein_Subunit.fromJson(Map<String, dynamic> json) =>
      _$SubstanceProtein_SubunitFromJson(json);

  factory SubstanceProtein_Subunit.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceProtein_Subunit.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceProtein_Subunit.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceProtein_Subunit cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstanceProtein_Subunit.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceProtein_SubunitFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
