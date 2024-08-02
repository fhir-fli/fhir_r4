// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'molecular_sequence.freezed.dart';
part 'molecular_sequence.g.dart';

/// [MolecularSequence] Raw data describing a biological sequence.
@freezed
class MolecularSequence with _$MolecularSequence implements DomainResource {
  /// [MolecularSequence] Raw data describing a biological sequence.
  const MolecularSequence._();

  /// [MolecularSequence] Raw data describing a biological sequence.
  ///
  /// [resourceType] This is a MolecularSequence resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [identifier] A unique identifier for this particular sequence instance.
  ///  This is a FHIR-defined id.
  ///
  /// [type] Amino Acid Sequence/ DNA Sequence / RNA Sequence.
  ///
  /// [typeElement] Extensions for type
  ///
  /// [coordinateSystem] Whether the sequence is numbered starting at 0
  /// (0-based numbering or coordinates, inclusive start, exclusive end) or
  ///  starting at 1 (1-based numbering, inclusive start and inclusive end).
  ///
  /// [coordinateSystemElement] Extensions for coordinateSystem
  ///
  /// [patient] The patient whose sequencing results are described by this
  ///  resource.
  ///
  /// [specimen] Specimen used for sequencing.
  ///
  /// [device] The method for sequencing, for example, chip information.
  ///
  /// [performer] The organization or lab that should be responsible for this
  ///  result.
  ///
  /// [quantity] The number of copies of the sequence of interest. (RNASeq).
  ///
  /// [referenceSeq] A sequence that is used as a reference to describe
  ///  variants that are present in a sequence analyzed.
  ///
  /// [variant] The definition of variant here originates from Sequence
  /// ontology
  /// ([variant_of](http://www.sequenceontology.org/browser/current_svn/term/variant_of)). This
  /// element can represent amino acid or nucleic sequence change(including
  /// insertion,deletion,SNP,etc.)  It can represent some complex mutation or
  ///  segment variation with the assist of CIGAR string.
  ///
  /// [observedSeq] Sequence that was observed. It is the result marked by
  /// referenceSeq along with variant records on referenceSeq. This shall start
  ///  from referenceSeq.windowStart and end by referenceSeq.windowEnd.
  ///
  /// [observedSeqElement] Extensions for observedSeq
  ///
  /// [quality] An experimental feature attribute that defines the quality of
  /// the feature in a quantitative way, such as a phred quality score
  /// ([SO:0001686](http://www.sequenceontology.org/browser/current_svn/term/SO:0001686)).
  ///
  /// [readCoverage] Coverage (read depth or depth) is the average number of
  ///  reads representing a given nucleotide in the reconstructed sequence.
  ///
  /// [readCoverageElement] Extensions for readCoverage
  ///
  /// [repository] Configurations of the external repository. The repository
  /// shall store target's observedSeq or records related with target's
  ///  observedSeq.
  ///
  /// [pointer] Pointer to next atomic sequence which at most contains one
  ///  variant.
  ///
  /// [structureVariant] Information about chromosome structure variation.
  const factory MolecularSequence({
    @Default(R4ResourceType.MolecularSequence)
    @JsonKey(unknownEnumValue: R4ResourceType.MolecularSequence)

    /// [resourceType] This is a MolecularSequence resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the resource and that modifies the
    /// understanding of the element that contains it and/or the understanding of
    /// the containing element's descendants. Usually modifier elements provide
    /// negation or qualification. To make the use of extensions safe and
    /// manageable, there is a strict set of governance applied to the definition
    /// and use of extensions. Though any implementer is allowed to define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [identifier] A unique identifier for this particular sequence instance.
    ///  This is a FHIR-defined id.
    List<Identifier>? identifier,

    /// [type] Amino Acid Sequence/ DNA Sequence / RNA Sequence.
    FhirCode? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,

    /// [coordinateSystem] Whether the sequence is numbered starting at 0
    /// (0-based numbering or coordinates, inclusive start, exclusive end) or
    ///  starting at 1 (1-based numbering, inclusive start and inclusive end).
    FhirInteger? coordinateSystem,

    /// [coordinateSystemElement] Extensions for coordinateSystem
    @JsonKey(name: '_coordinateSystem')
    PrimitiveElement? coordinateSystemElement,

    /// [patient] The patient whose sequencing results are described by this
    ///  resource.
    Reference? patient,

    /// [specimen] Specimen used for sequencing.
    Reference? specimen,

    /// [device] The method for sequencing, for example, chip information.
    Reference? device,

    /// [performer] The organization or lab that should be responsible for this
    ///  result.
    Reference? performer,

    /// [quantity] The number of copies of the sequence of interest. (RNASeq).
    Quantity? quantity,

    /// [referenceSeq] A sequence that is used as a reference to describe
    ///  variants that are present in a sequence analyzed.
    MolecularSequenceReferenceSeq? referenceSeq,

    /// [variant] The definition of variant here originates from Sequence
    /// ontology
    /// ([variant_of](http://www.sequenceontology.org/browser/current_svn/term/variant_of)). This
    /// element can represent amino acid or nucleic sequence change(including
    /// insertion,deletion,SNP,etc.)  It can represent some complex mutation or
    ///  segment variation with the assist of CIGAR string.
    List<MolecularSequenceVariant>? variant,

    /// [observedSeq] Sequence that was observed. It is the result marked by
    /// referenceSeq along with variant records on referenceSeq. This shall start
    ///  from referenceSeq.windowStart and end by referenceSeq.windowEnd.
    String? observedSeq,

    /// [observedSeqElement] Extensions for observedSeq
    @JsonKey(name: '_observedSeq') PrimitiveElement? observedSeqElement,

    /// [quality] An experimental feature attribute that defines the quality of
    /// the feature in a quantitative way, such as a phred quality score
    /// ([SO:0001686](http://www.sequenceontology.org/browser/current_svn/term/SO:0001686)).
    List<MolecularSequenceQuality>? quality,

    /// [readCoverage] Coverage (read depth or depth) is the average number of
    ///  reads representing a given nucleotide in the reconstructed sequence.
    FhirInteger? readCoverage,

    /// [readCoverageElement] Extensions for readCoverage
    @JsonKey(name: '_readCoverage') PrimitiveElement? readCoverageElement,

    /// [repository] Configurations of the external repository. The repository
    /// shall store target's observedSeq or records related with target's
    ///  observedSeq.
    List<MolecularSequenceRepository>? repository,

    /// [pointer] Pointer to next atomic sequence which at most contains one
    ///  variant.
    List<Reference>? pointer,

    /// [structureVariant] Information about chromosome structure variation.
    List<MolecularSequenceStructureVariant>? structureVariant,
  }) = _MolecularSequence;

  @override
  String get fhirType => 'MolecularSequence';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MolecularSequence.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequence.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MolecularSequence.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MolecularSequence cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MolecularSequence.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequenceFromJson(json);

  /// Acts like a constructor, returns a [MolecularSequence], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MolecularSequence.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MolecularSequenceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta, versionIdAsTime));
}

/// [MolecularSequenceReferenceSeq] Raw data describing a biological
@freezed

/// [MolecularSequenceReferenceSeq] Raw data describing a biological
@freezed
class MolecularSequenceReferenceSeq
    with _$MolecularSequenceReferenceSeq
    implements BackboneElement {
  /// [MolecularSequenceReferenceSeq] Raw data describing a biological
  const MolecularSequenceReferenceSeq._();

  /// [MolecularSequenceReferenceSeq] Raw data describing a biological
  ///  sequence.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [chromosome] Structural unit composed of a nucleic acid molecule which
  /// controls its own replication through the interaction of specific proteins
  /// at one or more origins of replication
  /// ([SO:0000340](http://www.sequenceontology.org/browser/current_svn/term/SO:0000340)).
  ///
  /// [genomeBuild] The Genome Build used for reference, following GRCh build
  /// versions e.g. 'GRCh 37'.  Version number must be included if a versioned
  ///  release of a primary build was used.
  ///
  /// [genomeBuildElement] Extensions for genomeBuild
  ///
  /// [orientation] A relative reference to a DNA strand based on gene
  /// orientation. The strand that contains the open reading frame of the gene
  /// is the "sense" strand, and the opposite complementary strand is the
  ///  "antisense" strand.
  ///
  /// [orientationElement] Extensions for orientation
  ///
  /// [referenceSeqId] Reference identifier of reference sequence submitted to
  /// NCBI. It must match the type in the MolecularSequence.type field. For
  /// example, the prefix, “NG_” identifies reference sequence for genes, “NM_”
  ///  for messenger RNA transcripts, and “NP_” for amino acid sequences.
  ///
  /// [referenceSeqPointer] A pointer to another MolecularSequence entity as
  ///  reference sequence.
  ///
  /// [referenceSeqString] A string like "ACGT".
  ///
  /// [referenceSeqStringElement] Extensions for referenceSeqString
  ///
  /// [strand] An absolute reference to a strand. The Watson strand is the
  /// strand whose 5'-end is on the short arm of the chromosome, and the Crick
  ///  strand as the one whose 5'-end is on the long arm.
  ///
  /// [strandElement] Extensions for strand
  ///
  /// [windowStart] Start position of the window on the reference sequence. If
  /// the coordinate system is either 0-based or 1-based, then start position is
  ///  inclusive.
  ///
  /// [windowStartElement] Extensions for windowStart
  ///
  /// [windowEnd] End position of the window on the reference sequence. If the
  /// coordinate system is 0-based then end is exclusive and does not include
  /// the last position. If the coordinate system is 1-base, then end is
  ///  inclusive and includes the last position.
  ///
  /// [windowEndElement] Extensions for windowEnd
  const factory MolecularSequenceReferenceSeq({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [chromosome] Structural unit composed of a nucleic acid molecule which
    /// controls its own replication through the interaction of specific proteins
    /// at one or more origins of replication
    /// ([SO:0000340](http://www.sequenceontology.org/browser/current_svn/term/SO:0000340)).
    CodeableConcept? chromosome,

    /// [genomeBuild] The Genome Build used for reference, following GRCh build
    /// versions e.g. 'GRCh 37'.  Version number must be included if a versioned
    ///  release of a primary build was used.
    String? genomeBuild,

    /// [genomeBuildElement] Extensions for genomeBuild
    @JsonKey(name: '_genomeBuild') PrimitiveElement? genomeBuildElement,

    /// [orientation] A relative reference to a DNA strand based on gene
    /// orientation. The strand that contains the open reading frame of the gene
    /// is the "sense" strand, and the opposite complementary strand is the
    ///  "antisense" strand.
    FhirCode? orientation,

    /// [orientationElement] Extensions for orientation
    @JsonKey(name: '_orientation') PrimitiveElement? orientationElement,

    /// [referenceSeqId] Reference identifier of reference sequence submitted to
    /// NCBI. It must match the type in the MolecularSequence.type field. For
    /// example, the prefix, “NG_” identifies reference sequence for genes, “NM_”
    ///  for messenger RNA transcripts, and “NP_” for amino acid sequences.
    CodeableConcept? referenceSeqId,

    /// [referenceSeqPointer] A pointer to another MolecularSequence entity as
    ///  reference sequence.
    Reference? referenceSeqPointer,

    /// [referenceSeqString] A string like "ACGT".
    String? referenceSeqString,

    /// [referenceSeqStringElement] Extensions for referenceSeqString
    @JsonKey(name: '_referenceSeqString')
    PrimitiveElement? referenceSeqStringElement,

    /// [strand] An absolute reference to a strand. The Watson strand is the
    /// strand whose 5'-end is on the short arm of the chromosome, and the Crick
    ///  strand as the one whose 5'-end is on the long arm.
    FhirCode? strand,

    /// [strandElement] Extensions for strand
    @JsonKey(name: '_strand') PrimitiveElement? strandElement,

    /// [windowStart] Start position of the window on the reference sequence. If
    /// the coordinate system is either 0-based or 1-based, then start position is
    ///  inclusive.
    FhirInteger? windowStart,

    /// [windowStartElement] Extensions for windowStart
    @JsonKey(name: '_windowStart') PrimitiveElement? windowStartElement,

    /// [windowEnd] End position of the window on the reference sequence. If the
    /// coordinate system is 0-based then end is exclusive and does not include
    /// the last position. If the coordinate system is 1-base, then end is
    ///  inclusive and includes the last position.
    FhirInteger? windowEnd,

    /// [windowEndElement] Extensions for windowEnd
    @JsonKey(name: '_windowEnd') PrimitiveElement? windowEndElement,
  }) = _MolecularSequenceReferenceSeq;

  @override
  String get fhirType => 'MolecularSequenceReferenceSeq';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MolecularSequenceReferenceSeq.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequenceReferenceSeq.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MolecularSequenceReferenceSeq.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MolecularSequenceReferenceSeq cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceReferenceSeq.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequenceReferenceSeqFromJson(json);

  /// Acts like a constructor, returns a [MolecularSequenceReferenceSeq], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MolecularSequenceReferenceSeq.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MolecularSequenceReferenceSeqFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [MolecularSequenceVariant] Raw data describing a biological sequence.
@freezed

/// [MolecularSequenceVariant] Raw data describing a biological sequence.
@freezed
class MolecularSequenceVariant
    with _$MolecularSequenceVariant
    implements BackboneElement {
  /// [MolecularSequenceVariant] Raw data describing a biological sequence.
  const MolecularSequenceVariant._();

  /// [MolecularSequenceVariant] Raw data describing a biological sequence.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [start] Start position of the variant on the  reference sequence. If the
  /// coordinate system is either 0-based or 1-based, then start position is
  ///  inclusive.
  ///
  /// [startElement] Extensions for start
  ///
  /// [end] End position of the variant on the reference sequence. If the
  /// coordinate system is 0-based then end is exclusive and does not include
  /// the last position. If the coordinate system is 1-base, then end is
  ///  inclusive and includes the last position.
  ///
  /// [endElement] Extensions for end
  ///
  /// [observedAllele] An allele is one of a set of coexisting sequence
  /// variants of a gene
  /// ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)).
  /// Nucleotide(s)/amino acids from start position of sequence to stop position
  /// of sequence on the positive (+) strand of the observed  sequence. When the
  /// sequence  type is DNA, it should be the sequence on the positive (+)
  ///  strand. This will lay in the range between variant.start and variant.end.
  ///
  /// [observedAlleleElement] Extensions for observedAllele
  ///
  /// [referenceAllele] An allele is one of a set of coexisting sequence
  /// variants of a gene
  /// ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)).
  /// Nucleotide(s)/amino acids from start position of sequence to stop position
  /// of sequence on the positive (+) strand of the reference sequence. When the
  /// sequence  type is DNA, it should be the sequence on the positive (+)
  ///  strand. This will lay in the range between variant.start and variant.end.
  ///
  /// [referenceAlleleElement] Extensions for referenceAllele
  ///
  /// [cigar] Extended CIGAR string for aligning the sequence with reference
  /// bases. See detailed documentation
  /// (http://support.illumina.com/help/SequencingAnalysisWorkflow/Content/Vault/Informatics/Sequencing_Analysis/CASAVA/swSEQ_mCA_ExtendedCIGARFormat.htm).
  ///
  /// [cigarElement] Extensions for cigar
  ///
  /// [variantPointer] A pointer to an Observation containing variant
  ///  information.
  const factory MolecularSequenceVariant({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [start] Start position of the variant on the  reference sequence. If the
    /// coordinate system is either 0-based or 1-based, then start position is
    ///  inclusive.
    FhirInteger? start,

    /// [startElement] Extensions for start
    @JsonKey(name: '_start') PrimitiveElement? startElement,

    /// [end] End position of the variant on the reference sequence. If the
    /// coordinate system is 0-based then end is exclusive and does not include
    /// the last position. If the coordinate system is 1-base, then end is
    ///  inclusive and includes the last position.
    FhirInteger? end,

    /// [endElement] Extensions for end
    @JsonKey(name: '_end') PrimitiveElement? endElement,

    /// [observedAllele] An allele is one of a set of coexisting sequence
    /// variants of a gene
    /// ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)).
    /// Nucleotide(s)/amino acids from start position of sequence to stop position
    /// of sequence on the positive (+) strand of the observed  sequence. When the
    /// sequence  type is DNA, it should be the sequence on the positive (+)
    ///  strand. This will lay in the range between variant.start and variant.end.
    String? observedAllele,

    /// [observedAlleleElement] Extensions for observedAllele
    @JsonKey(name: '_observedAllele') PrimitiveElement? observedAlleleElement,

    /// [referenceAllele] An allele is one of a set of coexisting sequence
    /// variants of a gene
    /// ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)).
    /// Nucleotide(s)/amino acids from start position of sequence to stop position
    /// of sequence on the positive (+) strand of the reference sequence. When the
    /// sequence  type is DNA, it should be the sequence on the positive (+)
    ///  strand. This will lay in the range between variant.start and variant.end.
    String? referenceAllele,

    /// [referenceAlleleElement] Extensions for referenceAllele
    @JsonKey(name: '_referenceAllele') PrimitiveElement? referenceAlleleElement,

    /// [cigar] Extended CIGAR string for aligning the sequence with reference
    /// bases. See detailed documentation
    /// (http://support.illumina.com/help/SequencingAnalysisWorkflow/Content/Vault/Informatics/Sequencing_Analysis/CASAVA/swSEQ_mCA_ExtendedCIGARFormat.htm).
    String? cigar,

    /// [cigarElement] Extensions for cigar
    @JsonKey(name: '_cigar') PrimitiveElement? cigarElement,

    /// [variantPointer] A pointer to an Observation containing variant
    ///  information.
    Reference? variantPointer,
  }) = _MolecularSequenceVariant;

  @override
  String get fhirType => 'MolecularSequenceVariant';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MolecularSequenceVariant.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequenceVariant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MolecularSequenceVariant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MolecularSequenceVariant cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceVariant.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequenceVariantFromJson(json);

  /// Acts like a constructor, returns a [MolecularSequenceVariant], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MolecularSequenceVariant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MolecularSequenceVariantFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [MolecularSequenceQuality] Raw data describing a biological sequence.
@freezed

/// [MolecularSequenceQuality] Raw data describing a biological sequence.
@freezed
class MolecularSequenceQuality
    with _$MolecularSequenceQuality
    implements BackboneElement {
  /// [MolecularSequenceQuality] Raw data describing a biological sequence.
  const MolecularSequenceQuality._();

  /// [MolecularSequenceQuality] Raw data describing a biological sequence.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [type] INDEL / SNP / Undefined variant.
  ///
  /// [typeElement] Extensions for type
  ///
  /// [standardSequence] Gold standard sequence used for comparing against.
  ///
  /// [start] Start position of the sequence. If the coordinate system is
  ///  either 0-based or 1-based, then start position is inclusive.
  ///
  /// [startElement] Extensions for start
  ///
  /// [end] End position of the sequence. If the coordinate system is 0-based
  /// then end is exclusive and does not include the last position. If the
  /// coordinate system is 1-base, then end is inclusive and includes the last
  ///  position.
  ///
  /// [endElement] Extensions for end
  ///
  /// [score] The score of an experimentally derived feature such as a p-value
  /// ([SO:0001685](http://www.sequenceontology.org/browser/current_svn/term/SO:0001685)).
  ///
  /// [method] Which method is used to get sequence quality.
  ///
  /// [truthTP] True positives, from the perspective of the truth data, i.e.
  /// the number of sites in the Truth Call Set for which there are paths
  /// through the Query Call Set that are consistent with all of the alleles at
  /// this site, and for which there is an accurate genotype call for the
  ///  event.
  ///
  /// [truthTPElement] Extensions for truthTP
  ///
  /// [queryTP] True positives, from the perspective of the query data, i.e.
  /// the number of sites in the Query Call Set for which there are paths
  /// through the Truth Call Set that are consistent with all of the alleles at
  /// this site, and for which there is an accurate genotype call for the
  ///  event.
  ///
  /// [queryTPElement] Extensions for queryTP
  ///
  /// [truthFN] False negatives, i.e. the number of sites in the Truth Call Set
  /// for which there is no path through the Query Call Set that is consistent
  /// with all of the alleles at this site, or sites for which there is an
  /// inaccurate genotype call for the event. Sites with correct variant but
  ///  incorrect genotype are counted here.
  ///
  /// [truthFNElement] Extensions for truthFN
  ///
  /// [queryFP] False positives, i.e. the number of sites in the Query Call Set
  /// for which there is no path through the Truth Call Set that is consistent
  /// with this site. Sites with correct variant but incorrect genotype are
  ///  counted here.
  ///
  /// [queryFPElement] Extensions for queryFP
  ///
  /// [gtFP] The number of false positives where the non-REF alleles in the
  /// Truth and Query Call Sets match (i.e. cases where the truth is 1/1 and the
  ///  query is 0/1 or similar).
  ///
  /// [gtFPElement] Extensions for gtFP
  ///
  /// [precision] QUERY.TP / (QUERY.TP + QUERY.FP).
  ///
  /// [precisionElement] Extensions for precision
  ///
  /// [recall] TRUTH.TP / (TRUTH.TP + TRUTH.FN).
  ///
  /// [recallElement] Extensions for recall
  ///
  /// [fScore] Harmonic mean of Recall and Precision, computed as: 2 *
  ///  precision * recall / (precision + recall).
  ///
  /// [fScoreElement] Extensions for fScore
  ///
  /// [roc] Receiver Operator Characteristic (ROC) Curve  to give
  ///  sensitivity/specificity tradeoff.
  const factory MolecularSequenceQuality({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] INDEL / SNP / Undefined variant.
    FhirCode? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,

    /// [standardSequence] Gold standard sequence used for comparing against.
    CodeableConcept? standardSequence,

    /// [start] Start position of the sequence. If the coordinate system is
    ///  either 0-based or 1-based, then start position is inclusive.
    FhirInteger? start,

    /// [startElement] Extensions for start
    @JsonKey(name: '_start') PrimitiveElement? startElement,

    /// [end] End position of the sequence. If the coordinate system is 0-based
    /// then end is exclusive and does not include the last position. If the
    /// coordinate system is 1-base, then end is inclusive and includes the last
    ///  position.
    FhirInteger? end,

    /// [endElement] Extensions for end
    @JsonKey(name: '_end') PrimitiveElement? endElement,

    /// [score] The score of an experimentally derived feature such as a p-value
    /// ([SO:0001685](http://www.sequenceontology.org/browser/current_svn/term/SO:0001685)).
    Quantity? score,

    /// [method] Which method is used to get sequence quality.
    CodeableConcept? method,

    /// [truthTP] True positives, from the perspective of the truth data, i.e.
    /// the number of sites in the Truth Call Set for which there are paths
    /// through the Query Call Set that are consistent with all of the alleles at
    /// this site, and for which there is an accurate genotype call for the
    ///  event.
    FhirDecimal? truthTP,

    /// [truthTPElement] Extensions for truthTP
    @JsonKey(name: '_truthTP') PrimitiveElement? truthTPElement,

    /// [queryTP] True positives, from the perspective of the query data, i.e.
    /// the number of sites in the Query Call Set for which there are paths
    /// through the Truth Call Set that are consistent with all of the alleles at
    /// this site, and for which there is an accurate genotype call for the
    ///  event.
    FhirDecimal? queryTP,

    /// [queryTPElement] Extensions for queryTP
    @JsonKey(name: '_queryTP') PrimitiveElement? queryTPElement,

    /// [truthFN] False negatives, i.e. the number of sites in the Truth Call Set
    /// for which there is no path through the Query Call Set that is consistent
    /// with all of the alleles at this site, or sites for which there is an
    /// inaccurate genotype call for the event. Sites with correct variant but
    ///  incorrect genotype are counted here.
    FhirDecimal? truthFN,

    /// [truthFNElement] Extensions for truthFN
    @JsonKey(name: '_truthFN') PrimitiveElement? truthFNElement,

    /// [queryFP] False positives, i.e. the number of sites in the Query Call Set
    /// for which there is no path through the Truth Call Set that is consistent
    /// with this site. Sites with correct variant but incorrect genotype are
    ///  counted here.
    FhirDecimal? queryFP,

    /// [queryFPElement] Extensions for queryFP
    @JsonKey(name: '_queryFP') PrimitiveElement? queryFPElement,

    /// [gtFP] The number of false positives where the non-REF alleles in the
    /// Truth and Query Call Sets match (i.e. cases where the truth is 1/1 and the
    ///  query is 0/1 or similar).
    FhirDecimal? gtFP,

    /// [gtFPElement] Extensions for gtFP
    @JsonKey(name: '_gtFP') PrimitiveElement? gtFPElement,

    /// [precision] QUERY.TP / (QUERY.TP + QUERY.FP).
    FhirDecimal? precision,

    /// [precisionElement] Extensions for precision
    @JsonKey(name: '_precision') PrimitiveElement? precisionElement,

    /// [recall] TRUTH.TP / (TRUTH.TP + TRUTH.FN).
    FhirDecimal? recall,

    /// [recallElement] Extensions for recall
    @JsonKey(name: '_recall') PrimitiveElement? recallElement,

    /// [fScore] Harmonic mean of Recall and Precision, computed as: 2 *
    ///  precision * recall / (precision + recall).
    FhirDecimal? fScore,

    /// [fScoreElement] Extensions for fScore
    @JsonKey(name: '_fScore') PrimitiveElement? fScoreElement,

    /// [roc] Receiver Operator Characteristic (ROC) Curve  to give
    ///  sensitivity/specificity tradeoff.
    MolecularSequenceRoc? roc,
  }) = _MolecularSequenceQuality;

  @override
  String get fhirType => 'MolecularSequenceQuality';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MolecularSequenceQuality.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequenceQuality.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MolecularSequenceQuality.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MolecularSequenceQuality cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceQuality.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequenceQualityFromJson(json);

  /// Acts like a constructor, returns a [MolecularSequenceQuality], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MolecularSequenceQuality.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MolecularSequenceQualityFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [MolecularSequenceRoc] Raw data describing a biological sequence.
@freezed

/// [MolecularSequenceRoc] Raw data describing a biological sequence.
@freezed
class MolecularSequenceRoc
    with _$MolecularSequenceRoc
    implements BackboneElement {
  /// [MolecularSequenceRoc] Raw data describing a biological sequence.
  const MolecularSequenceRoc._();

  /// [MolecularSequenceRoc] Raw data describing a biological sequence.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [score] Invidual data point representing the GQ (genotype quality) score
  ///  threshold.
  ///
  /// [scoreElement] Extensions for score
  ///
  /// [numTP] The number of true positives if the GQ score threshold was set to
  ///  "score" field value.
  ///
  /// [numTPElement] Extensions for numTP
  ///
  /// [numFP] The number of false positives if the GQ score threshold was set
  ///  to "score" field value.
  ///
  /// [numFPElement] Extensions for numFP
  ///
  /// [numFN] The number of false negatives if the GQ score threshold was set
  ///  to "score" field value.
  ///
  /// [numFNElement] Extensions for numFN
  ///
  /// [precision] Calculated precision if the GQ score threshold was set to
  ///  "score" field value.
  ///
  /// [precisionElement] Extensions for precision
  ///
  /// [sensitivity] Calculated sensitivity if the GQ score threshold was set to
  ///  "score" field value.
  ///
  /// [sensitivityElement] Extensions for sensitivity
  ///
  /// [fMeasure] Calculated fScore if the GQ score threshold was set to "score"
  ///  field value.
  ///
  /// [fMeasureElement] Extensions for fMeasure
  const factory MolecularSequenceRoc({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [score] Invidual data point representing the GQ (genotype quality) score
    ///  threshold.
    List<FhirInteger>? score,

    /// [scoreElement] Extensions for score
    @JsonKey(name: '_score') List<PrimitiveElement>? scoreElement,

    /// [numTP] The number of true positives if the GQ score threshold was set to
    ///  "score" field value.
    List<FhirInteger>? numTP,

    /// [numTPElement] Extensions for numTP
    @JsonKey(name: '_numTP') List<PrimitiveElement>? numTPElement,

    /// [numFP] The number of false positives if the GQ score threshold was set
    ///  to "score" field value.
    List<FhirInteger>? numFP,

    /// [numFPElement] Extensions for numFP
    @JsonKey(name: '_numFP') List<PrimitiveElement>? numFPElement,

    /// [numFN] The number of false negatives if the GQ score threshold was set
    ///  to "score" field value.
    List<FhirInteger>? numFN,

    /// [numFNElement] Extensions for numFN
    @JsonKey(name: '_numFN') List<PrimitiveElement>? numFNElement,

    /// [precision] Calculated precision if the GQ score threshold was set to
    ///  "score" field value.
    List<FhirDecimal>? precision,

    /// [precisionElement] Extensions for precision
    @JsonKey(name: '_precision') List<PrimitiveElement>? precisionElement,

    /// [sensitivity] Calculated sensitivity if the GQ score threshold was set to
    ///  "score" field value.
    List<FhirDecimal>? sensitivity,

    /// [sensitivityElement] Extensions for sensitivity
    @JsonKey(name: '_sensitivity') List<PrimitiveElement>? sensitivityElement,

    /// [fMeasure] Calculated fScore if the GQ score threshold was set to "score"
    ///  field value.
    List<FhirDecimal>? fMeasure,

    /// [fMeasureElement] Extensions for fMeasure
    @JsonKey(name: '_fMeasure') List<PrimitiveElement>? fMeasureElement,
  }) = _MolecularSequenceRoc;

  @override
  String get fhirType => 'MolecularSequenceRoc';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MolecularSequenceRoc.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequenceRoc.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MolecularSequenceRoc.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MolecularSequenceRoc cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceRoc.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequenceRocFromJson(json);

  /// Acts like a constructor, returns a [MolecularSequenceRoc], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MolecularSequenceRoc.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MolecularSequenceRocFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [MolecularSequenceRepository] Raw data describing a biological sequence.
@freezed

/// [MolecularSequenceRepository] Raw data describing a biological sequence.
@freezed
class MolecularSequenceRepository
    with _$MolecularSequenceRepository
    implements BackboneElement {
  /// [MolecularSequenceRepository] Raw data describing a biological sequence.
  const MolecularSequenceRepository._();

  /// [MolecularSequenceRepository] Raw data describing a biological sequence.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [type] Click and see / RESTful API / Need login to see / RESTful API with
  ///  authentication / Other ways to see resource.
  ///
  /// [typeElement] Extensions for type
  ///
  /// [url] URI of an external repository which contains further details about
  ///  the genetics data.
  ///
  /// [urlElement] Extensions for url
  ///
  /// [name] URI of an external repository which contains further details about
  ///  the genetics data.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [datasetId] Id of the variant in this external repository. The server
  /// will understand how to use this id to call for more info about datasets in
  ///  external repository.
  ///
  /// [datasetIdElement] Extensions for datasetId
  ///
  /// [variantsetId] Id of the variantset in this external repository. The
  /// server will understand how to use this id to call for more info about
  ///  variantsets in external repository.
  ///
  /// [variantsetIdElement] Extensions for variantsetId
  ///
  /// [readsetId] Id of the read in this external repository.
  ///
  /// [readsetIdElement] Extensions for readsetId
  const factory MolecularSequenceRepository({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] Click and see / RESTful API / Need login to see / RESTful API with
    ///  authentication / Other ways to see resource.
    FhirCode? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,

    /// [url] URI of an external repository which contains further details about
    ///  the genetics data.
    FhirUri? url,

    /// [urlElement] Extensions for url
    @JsonKey(name: '_url') PrimitiveElement? urlElement,

    /// [name] URI of an external repository which contains further details about
    ///  the genetics data.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [datasetId] Id of the variant in this external repository. The server
    /// will understand how to use this id to call for more info about datasets in
    ///  external repository.
    String? datasetId,

    /// [datasetIdElement] Extensions for datasetId
    @JsonKey(name: '_datasetId') PrimitiveElement? datasetIdElement,

    /// [variantsetId] Id of the variantset in this external repository. The
    /// server will understand how to use this id to call for more info about
    ///  variantsets in external repository.
    String? variantsetId,

    /// [variantsetIdElement] Extensions for variantsetId
    @JsonKey(name: '_variantsetId') PrimitiveElement? variantsetIdElement,

    /// [readsetId] Id of the read in this external repository.
    String? readsetId,

    /// [readsetIdElement] Extensions for readsetId
    @JsonKey(name: '_readsetId') PrimitiveElement? readsetIdElement,
  }) = _MolecularSequenceRepository;

  @override
  String get fhirType => 'MolecularSequenceRepository';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MolecularSequenceRepository.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequenceRepository.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MolecularSequenceRepository.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MolecularSequenceRepository cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceRepository.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequenceRepositoryFromJson(json);

  /// Acts like a constructor, returns a [MolecularSequenceRepository], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MolecularSequenceRepository.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MolecularSequenceRepositoryFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

@freezed
@freezed
class MolecularSequenceStructureVariant
    with _$MolecularSequenceStructureVariant
    implements BackboneElement {
  const MolecularSequenceStructureVariant._();

  /// [MolecularSequenceStructureVariant] Raw data describing a biological
  ///  sequence.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [variantType] Information about chromosome structure variation DNA change
  ///  type.
  ///
  /// [exact] Used to indicate if the outer and inner start-end values have the
  ///  same meaning.
  ///
  /// [exactElement] Extensions for exact
  ///
  /// [length] Length of the variant chromosome.
  ///
  /// [lengthElement] Extensions for length
  ///
  /// [outer] Structural variant outer.
  ///
  /// [inner] Structural variant inner.
  const factory MolecularSequenceStructureVariant({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [variantType] Information about chromosome structure variation DNA change
    ///  type.
    CodeableConcept? variantType,

    /// [exact] Used to indicate if the outer and inner start-end values have the
    ///  same meaning.
    FhirBoolean? exact,

    /// [exactElement] Extensions for exact
    @JsonKey(name: '_exact') PrimitiveElement? exactElement,

    /// [length] Length of the variant chromosome.
    FhirInteger? length,

    /// [lengthElement] Extensions for length
    @JsonKey(name: '_length') PrimitiveElement? lengthElement,

    /// [outer] Structural variant outer.
    MolecularSequenceOuter? outer,

    /// [inner] Structural variant inner.
    MolecularSequenceInner? inner,
  }) = _MolecularSequenceStructureVariant;

  @override
  String get fhirType => 'MolecularSequenceStructureVariant';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MolecularSequenceStructureVariant.fromYaml(dynamic yaml) => yaml
          is String
      ? MolecularSequenceStructureVariant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MolecularSequenceStructureVariant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MolecularSequenceStructureVariant cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory MolecularSequenceStructureVariant.fromJson(
          Map<String, dynamic> json) =>
      _$MolecularSequenceStructureVariantFromJson(json);

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [MolecularSequenceOuter] Raw data describing a biological sequence.
@freezed

/// [MolecularSequenceOuter] Raw data describing a biological sequence.
@freezed
class MolecularSequenceOuter
    with _$MolecularSequenceOuter
    implements BackboneElement {
  /// [MolecularSequenceOuter] Raw data describing a biological sequence.
  const MolecularSequenceOuter._();

  /// [MolecularSequenceOuter] Raw data describing a biological sequence.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [start] Structural variant outer start. If the coordinate system is
  ///  either 0-based or 1-based, then start position is inclusive.
  ///
  /// [startElement] Extensions for start
  ///
  /// [end] Structural variant outer end. If the coordinate system is 0-based
  /// then end is exclusive and does not include the last position. If the
  /// coordinate system is 1-base, then end is inclusive and includes the last
  ///  position.
  ///
  /// [endElement] Extensions for end
  const factory MolecularSequenceOuter({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [start] Structural variant outer start. If the coordinate system is
    ///  either 0-based or 1-based, then start position is inclusive.
    FhirInteger? start,

    /// [startElement] Extensions for start
    @JsonKey(name: '_start') PrimitiveElement? startElement,

    /// [end] Structural variant outer end. If the coordinate system is 0-based
    /// then end is exclusive and does not include the last position. If the
    /// coordinate system is 1-base, then end is inclusive and includes the last
    ///  position.
    FhirInteger? end,

    /// [endElement] Extensions for end
    @JsonKey(name: '_end') PrimitiveElement? endElement,
  }) = _MolecularSequenceOuter;

  @override
  String get fhirType => 'MolecularSequenceOuter';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MolecularSequenceOuter.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequenceOuter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MolecularSequenceOuter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MolecularSequenceOuter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceOuter.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequenceOuterFromJson(json);

  /// Acts like a constructor, returns a [MolecularSequenceOuter], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MolecularSequenceOuter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MolecularSequenceOuterFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [MolecularSequenceInner] Raw data describing a biological sequence.
@freezed

/// [MolecularSequenceInner] Raw data describing a biological sequence.
@freezed
class MolecularSequenceInner
    with _$MolecularSequenceInner
    implements BackboneElement {
  /// [MolecularSequenceInner] Raw data describing a biological sequence.
  const MolecularSequenceInner._();

  /// [MolecularSequenceInner] Raw data describing a biological sequence.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [start] Structural variant inner start. If the coordinate system is
  ///  either 0-based or 1-based, then start position is inclusive.
  ///
  /// [startElement] Extensions for start
  ///
  /// [end] Structural variant inner end. If the coordinate system is 0-based
  /// then end is exclusive and does not include the last position. If the
  /// coordinate system is 1-base, then end is inclusive and includes the last
  ///  position.
  ///
  /// [endElement] Extensions for end
  const factory MolecularSequenceInner({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [start] Structural variant inner start. If the coordinate system is
    ///  either 0-based or 1-based, then start position is inclusive.
    FhirInteger? start,

    /// [startElement] Extensions for start
    @JsonKey(name: '_start') PrimitiveElement? startElement,

    /// [end] Structural variant inner end. If the coordinate system is 0-based
    /// then end is exclusive and does not include the last position. If the
    /// coordinate system is 1-base, then end is inclusive and includes the last
    ///  position.
    FhirInteger? end,

    /// [endElement] Extensions for end
    @JsonKey(name: '_end') PrimitiveElement? endElement,
  }) = _MolecularSequenceInner;

  @override
  String get fhirType => 'MolecularSequenceInner';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MolecularSequenceInner.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequenceInner.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MolecularSequenceInner.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MolecularSequenceInner cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceInner.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequenceInnerFromJson(json);

  /// Acts like a constructor, returns a [MolecularSequenceInner], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MolecularSequenceInner.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MolecularSequenceInnerFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
