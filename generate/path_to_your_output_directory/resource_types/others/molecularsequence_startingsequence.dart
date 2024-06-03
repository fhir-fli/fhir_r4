/// /// [MolecularSequence_StartingSequence] Representation of a molecular
/// sequence.

@freezed
class MolecularSequence_StartingSequence with _$MolecularSequence_StartingSequence {
  const MolecularSequence_StartingSequence._();

  const factory MolecularSequence_StartingSequence({
/// /// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
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
/// /// [genomeAssembly] The genome assembly used for starting sequence, e.g.
/// GRCh38.

    @JsonKey(name: 'genomeAssembly') CodeableConcept? genomeAssembly,
/// /// [chromosome] Structural unit composed of a nucleic acid molecule which
/// controls its own replication through the interaction of specific proteins
/// at one or more origins of replication
/// ([SO:0000340](http://www.sequenceontology.org/browser/current_svn/term/SO:0000340)).

    @JsonKey(name: 'chromosome') CodeableConcept? chromosome,
/// /// [sequenceCodeableConcept] The reference sequence that represents the
/// starting sequence.

    @JsonKey(name: 'sequenceCodeableConcept') CodeableConcept? sequenceCodeableConcept,
/// /// [sequenceString] The reference sequence that represents the starting
/// sequence.

    @JsonKey(name: 'sequenceString') String? sequenceString,
/// /// [_sequenceString] Extensions for sequenceString

    @JsonKey(name: '_sequenceString') FhirElement? sequenceStringElement,
/// /// [sequenceReference] The reference sequence that represents the starting
/// sequence.

    @JsonKey(name: 'sequenceReference') Reference? sequenceReference,
/// /// [windowStart] Start position of the window on the starting sequence.
/// This value should honor the rules of the coordinateSystem.

    @JsonKey(name: 'windowStart') FhirInteger? windowStart,
/// /// [_windowStart] Extensions for windowStart

    @JsonKey(name: '_windowStart') FhirElement? windowStartElement,
/// /// [windowEnd] End position of the window on the starting sequence. This
/// value should honor the rules of the  coordinateSystem.

    @JsonKey(name: 'windowEnd') FhirInteger? windowEnd,
/// /// [_windowEnd] Extensions for windowEnd

    @JsonKey(name: '_windowEnd') FhirElement? windowEndElement,
/// /// [orientation] A relative reference to a DNA strand based on gene
/// orientation. The strand that contains the open reading frame of the gene is
/// the "sense" strand, and the opposite complementary strand is the
/// "antisense" strand.

    @JsonKey(name: 'orientation') FhirCode? orientation,
/// /// [_orientation] Extensions for orientation

    @JsonKey(name: '_orientation') FhirElement? orientationElement,
/// /// [strand] An absolute reference to a strand. The Watson strand is the
/// strand whose 5'-end is on the short arm of the chromosome, and the Crick
/// strand as the one whose 5'-end is on the long arm.

    @JsonKey(name: 'strand') FhirCode? strand,
/// /// [_strand] Extensions for strand

    @JsonKey(name: '_strand') FhirElement? strandElement,
  }) = _$MolecularSequence_StartingSequence;

  @override
  String get fhirType => 'MolecularSequence_StartingSequence';

  factory MolecularSequence_StartingSequence.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequence_StartingSequenceFromJson(json);

  factory MolecularSequence_StartingSequence.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequence_StartingSequence.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MolecularSequence_StartingSequence.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MolecularSequence_StartingSequence cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MolecularSequence_StartingSequence.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MolecularSequence_StartingSequenceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
