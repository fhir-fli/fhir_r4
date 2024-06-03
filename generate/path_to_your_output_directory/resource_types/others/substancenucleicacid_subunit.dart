import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SubstanceNucleicAcid_Subunit] Nucleic acids are defined by three
/// distinct elements: the base, sugar and linkage. Individual substance/moiety
/// IDs will be created for each of these elements. The nucleotide sequence
/// will be always entered in the 5’-3’ direction.

@freezed
class SubstanceNucleicAcid_Subunit with _$SubstanceNucleicAcid_Subunit {
  const SubstanceNucleicAcid_Subunit._();

  const factory SubstanceNucleicAcid_Subunit({
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
/// [subunit] Index of linear sequences of nucleic acids in order of
/// decreasing length. Sequences of the same length will be ordered by
/// molecular weight. Subunits that have identical sequences will be repeated
/// and have sequential subscripts.

    @JsonKey(name: 'subunit') FhirInteger? subunit,
/// [_subunit] Extensions for subunit

    @JsonKey(name: '_subunit') PrimitiveElement? subunitElement,
/// [sequence] Actual nucleotide sequence notation from 5' to 3' end using
/// standard single letter codes. In addition to the base sequence, sugar and
/// type of phosphate or non-phosphate linkage should also be captured.

    @JsonKey(name: 'sequence') String? sequence,
/// [_sequence] Extensions for sequence

    @JsonKey(name: '_sequence') PrimitiveElement? sequenceElement,
/// [length] The length of the sequence shall be captured.

    @JsonKey(name: 'length') FhirInteger? length,
/// [_length] Extensions for length

    @JsonKey(name: '_length') PrimitiveElement? lengthElement,
/// [sequenceAttachment] (TBC).

    @JsonKey(name: 'sequenceAttachment') Attachment? sequenceAttachment,
/// [fivePrime] The nucleotide present at the 5’ terminal shall be
/// specified based on a controlled vocabulary. Since the sequence is
/// represented from the 5' to the 3' end, the 5’ prime nucleotide is the
/// letter at the first position in the sequence. A separate representation
/// would be redundant.

    @JsonKey(name: 'fivePrime') CodeableConcept? fivePrime,
/// [threePrime] The nucleotide present at the 3’ terminal shall be
/// specified based on a controlled vocabulary. Since the sequence is
/// represented from the 5' to the 3' end, the 5’ prime nucleotide is the
/// letter at the last position in the sequence. A separate representation
/// would be redundant.

    @JsonKey(name: 'threePrime') CodeableConcept? threePrime,
/// [linkage] The linkages between sugar residues will also be captured.

    @JsonKey(name: 'linkage') List<List<SubstanceNucleicAcid_Linkage>>? linkage,
/// [sugar] 5.3.6.8.1 Sugar ID (Mandatory).

    @JsonKey(name: 'sugar') List<List<SubstanceNucleicAcid_Sugar>>? sugar,
  }) = _$SubstanceNucleicAcid_Subunit;

  @override
  String get fhirType => 'SubstanceNucleicAcid_Subunit';

  factory SubstanceNucleicAcid_Subunit.fromJson(Map<String, dynamic> json) =>
      _$SubstanceNucleicAcid_SubunitFromJson(json);

  factory SubstanceNucleicAcid_Subunit.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceNucleicAcid_Subunit.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceNucleicAcid_Subunit.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceNucleicAcid_Subunit cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstanceNucleicAcid_Subunit.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceNucleicAcid_SubunitFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
