import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'molecular_sequence.g.dart';

/// [MolecularSequence] /// Raw data describing a biological sequence.
@JsonSerializable()
class MolecularSequence extends DomainResource {
  MolecularSequence({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.typeElement,
    required this.coordinateSystem,
    this.coordinateSystemElement,
    this.patient,
    this.specimen,
    this.device,
    this.performer,
    this.quantity,
    this.referenceSeq,
    this.variant,
    this.observedSeq,
    this.observedSeqElement,
    this.quality,
    this.readCoverage,
    this.readCoverageElement,
    this.repository,
    this.pointer,
    this.structureVariant,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.MolecularSequence);
  @override
  String get fhirType => 'MolecularSequence';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A unique identifier for this particular sequence instance. This is a
  /// FHIR-defined id.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [type] /// Amino Acid Sequence/ DNA Sequence / RNA Sequence.
  @JsonKey(name: 'type')
  final SequenceType? type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [coordinateSystem] /// Whether the sequence is numbered starting at 0 (0-based numbering or
  /// coordinates, inclusive start, exclusive end) or starting at 1 (1-based
  /// numbering, inclusive start and inclusive end).
  @JsonKey(name: 'coordinateSystem')
  final FhirInteger coordinateSystem;
  @JsonKey(name: '_coordinateSystem')
  final Element? coordinateSystemElement;

  /// [patient] /// The patient whose sequencing results are described by this resource.
  @JsonKey(name: 'patient')
  final Reference? patient;

  /// [specimen] /// Specimen used for sequencing.
  @JsonKey(name: 'specimen')
  final Reference? specimen;

  /// [device] /// The method for sequencing, for example, chip information.
  @JsonKey(name: 'device')
  final Reference? device;

  /// [performer] /// The organization or lab that should be responsible for this result.
  @JsonKey(name: 'performer')
  final Reference? performer;

  /// [quantity] /// The number of copies of the sequence of interest. (RNASeq).
  @JsonKey(name: 'quantity')
  final Quantity? quantity;

  /// [referenceSeq] /// A sequence that is used as a reference to describe variants that are
  /// present in a sequence analyzed.
  @JsonKey(name: 'referenceSeq')
  final MolecularSequenceReferenceSeq? referenceSeq;

  /// [variant] /// The definition of variant here originates from Sequence ontology
  /// ([variant_of](http://www.sequenceontology.org/browser/current_svn/term/variant_of)).
  /// This element can represent amino acid or nucleic sequence change(including
  /// insertion,deletion,SNP,etc.) It can represent some complex mutation or
  /// segment variation with the assist of CIGAR string.
  @JsonKey(name: 'variant')
  final List<MolecularSequenceVariant>? variant;

  /// [observedSeq] /// Sequence that was observed. It is the result marked by referenceSeq along
  /// with variant records on referenceSeq. This shall start from
  /// referenceSeq.windowStart and end by referenceSeq.windowEnd.
  @JsonKey(name: 'observedSeq')
  final FhirString? observedSeq;
  @JsonKey(name: '_observedSeq')
  final Element? observedSeqElement;

  /// [quality] /// An experimental feature attribute that defines the quality of the feature
  /// in a quantitative way, such as a phred quality score
  /// ([SO:0001686](http://www.sequenceontology.org/browser/current_svn/term/SO:0001686)).
  @JsonKey(name: 'quality')
  final List<MolecularSequenceQuality>? quality;

  /// [readCoverage] /// Coverage (read depth or depth) is the average number of reads representing
  /// a given nucleotide in the reconstructed sequence.
  @JsonKey(name: 'readCoverage')
  final FhirInteger? readCoverage;
  @JsonKey(name: '_readCoverage')
  final Element? readCoverageElement;

  /// [repository] /// Configurations of the external repository. The repository shall store
  /// target's observedSeq or records related with target's observedSeq.
  @JsonKey(name: 'repository')
  final List<MolecularSequenceRepository>? repository;

  /// [pointer] /// Pointer to next atomic sequence which at most contains one variant.
  @JsonKey(name: 'pointer')
  final List<Reference>? pointer;

  /// [structureVariant] /// Information about chromosome structure variation.
  @JsonKey(name: 'structureVariant')
  final List<MolecularSequenceStructureVariant>? structureVariant;
  factory MolecularSequence.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequenceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MolecularSequenceToJson(this);

  @override
  MolecularSequence clone() => throw UnimplementedError();
  @override
  MolecularSequence copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    SequenceType? type,
    Element? typeElement,
    FhirInteger? coordinateSystem,
    Element? coordinateSystemElement,
    Reference? patient,
    Reference? specimen,
    Reference? device,
    Reference? performer,
    Quantity? quantity,
    MolecularSequenceReferenceSeq? referenceSeq,
    List<MolecularSequenceVariant>? variant,
    FhirString? observedSeq,
    Element? observedSeqElement,
    List<MolecularSequenceQuality>? quality,
    FhirInteger? readCoverage,
    Element? readCoverageElement,
    List<MolecularSequenceRepository>? repository,
    List<Reference>? pointer,
    List<MolecularSequenceStructureVariant>? structureVariant,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MolecularSequence(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      coordinateSystem: coordinateSystem ?? this.coordinateSystem,
      coordinateSystemElement:
          coordinateSystemElement ?? this.coordinateSystemElement,
      patient: patient ?? this.patient,
      specimen: specimen ?? this.specimen,
      device: device ?? this.device,
      performer: performer ?? this.performer,
      quantity: quantity ?? this.quantity,
      referenceSeq: referenceSeq ?? this.referenceSeq,
      variant: variant ?? this.variant,
      observedSeq: observedSeq ?? this.observedSeq,
      observedSeqElement: observedSeqElement ?? this.observedSeqElement,
      quality: quality ?? this.quality,
      readCoverage: readCoverage ?? this.readCoverage,
      readCoverageElement: readCoverageElement ?? this.readCoverageElement,
      repository: repository ?? this.repository,
      pointer: pointer ?? this.pointer,
      structureVariant: structureVariant ?? this.structureVariant,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MolecularSequence.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequence.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MolecularSequence.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MolecularSequence cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MolecularSequence.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MolecularSequence.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MolecularSequenceReferenceSeq] /// A sequence that is used as a reference to describe variants that are
/// present in a sequence analyzed.
@JsonSerializable()
class MolecularSequenceReferenceSeq extends BackboneElement {
  MolecularSequenceReferenceSeq({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.chromosome,
    this.genomeBuild,
    this.genomeBuildElement,
    this.orientation,
    this.orientationElement,
    this.referenceSeqId,
    this.referenceSeqPointer,
    this.referenceSeqString,
    this.referenceSeqStringElement,
    this.strand,
    this.strandElement,
    this.windowStart,
    this.windowStartElement,
    this.windowEnd,
    this.windowEndElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'MolecularSequenceReferenceSeq';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [chromosome] /// Structural unit composed of a nucleic acid molecule which controls its own
  /// replication through the interaction of specific proteins at one or more
  /// origins of replication
  /// ([SO:0000340](http://www.sequenceontology.org/browser/current_svn/term/SO:0000340)).
  @JsonKey(name: 'chromosome')
  final ChromosomeHuman? chromosome;

  /// [genomeBuild] /// The Genome Build used for reference, following GRCh build versions e.g.
  /// 'GRCh 37'. Version number must be included if a versioned release of a
  /// primary build was used.
  @JsonKey(name: 'genomeBuild')
  final FhirString? genomeBuild;
  @JsonKey(name: '_genomeBuild')
  final Element? genomeBuildElement;

  /// [orientation] /// A relative reference to a DNA strand based on gene orientation. The strand
  /// that contains the open reading frame of the gene is the "sense" strand, and
  /// the opposite complementary strand is the "antisense" strand.
  @JsonKey(name: 'orientation')
  final OrientationType? orientation;
  @JsonKey(name: '_orientation')
  final Element? orientationElement;

  /// [referenceSeqId] /// Reference identifier of reference sequence submitted to NCBI. It must match
  /// the type in the MolecularSequence.type field. For example, the prefix,
  /// “NG_” identifies reference sequence for genes, “NM_” for messenger RNA
  /// transcripts, and “NP_” for amino acid sequences.
  @JsonKey(name: 'referenceSeqId')
  final CodeableConcept? referenceSeqId;

  /// [referenceSeqPointer] /// A pointer to another MolecularSequence entity as reference sequence.
  @JsonKey(name: 'referenceSeqPointer')
  final Reference? referenceSeqPointer;

  /// [referenceSeqString] /// A string like "ACGT".
  @JsonKey(name: 'referenceSeqString')
  final FhirString? referenceSeqString;
  @JsonKey(name: '_referenceSeqString')
  final Element? referenceSeqStringElement;

  /// [strand] /// An absolute reference to a strand. The Watson strand is the strand whose
  /// 5'-end is on the short arm of the chromosome, and the Crick strand as the
  /// one whose 5'-end is on the long arm.
  @JsonKey(name: 'strand')
  final StrandType? strand;
  @JsonKey(name: '_strand')
  final Element? strandElement;

  /// [windowStart] /// Start position of the window on the reference sequence. If the coordinate
  /// system is either 0-based or 1-based, then start position is inclusive.
  @JsonKey(name: 'windowStart')
  final FhirInteger? windowStart;
  @JsonKey(name: '_windowStart')
  final Element? windowStartElement;

  /// [windowEnd] /// End position of the window on the reference sequence. If the coordinate
  /// system is 0-based then end is exclusive and does not include the last
  /// position. If the coordinate system is 1-base, then end is inclusive and
  /// includes the last position.
  @JsonKey(name: 'windowEnd')
  final FhirInteger? windowEnd;
  @JsonKey(name: '_windowEnd')
  final Element? windowEndElement;
  factory MolecularSequenceReferenceSeq.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequenceReferenceSeqFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MolecularSequenceReferenceSeqToJson(this);

  @override
  MolecularSequenceReferenceSeq clone() => throw UnimplementedError();
  @override
  MolecularSequenceReferenceSeq copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ChromosomeHuman? chromosome,
    FhirString? genomeBuild,
    Element? genomeBuildElement,
    OrientationType? orientation,
    Element? orientationElement,
    CodeableConcept? referenceSeqId,
    Reference? referenceSeqPointer,
    FhirString? referenceSeqString,
    Element? referenceSeqStringElement,
    StrandType? strand,
    Element? strandElement,
    FhirInteger? windowStart,
    Element? windowStartElement,
    FhirInteger? windowEnd,
    Element? windowEndElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MolecularSequenceReferenceSeq(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      chromosome: chromosome ?? this.chromosome,
      genomeBuild: genomeBuild ?? this.genomeBuild,
      genomeBuildElement: genomeBuildElement ?? this.genomeBuildElement,
      orientation: orientation ?? this.orientation,
      orientationElement: orientationElement ?? this.orientationElement,
      referenceSeqId: referenceSeqId ?? this.referenceSeqId,
      referenceSeqPointer: referenceSeqPointer ?? this.referenceSeqPointer,
      referenceSeqString: referenceSeqString ?? this.referenceSeqString,
      referenceSeqStringElement:
          referenceSeqStringElement ?? this.referenceSeqStringElement,
      strand: strand ?? this.strand,
      strandElement: strandElement ?? this.strandElement,
      windowStart: windowStart ?? this.windowStart,
      windowStartElement: windowStartElement ?? this.windowStartElement,
      windowEnd: windowEnd ?? this.windowEnd,
      windowEndElement: windowEndElement ?? this.windowEndElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MolecularSequenceReferenceSeq.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequenceReferenceSeq.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MolecularSequenceReferenceSeq.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MolecularSequenceReferenceSeq cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MolecularSequenceReferenceSeq.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MolecularSequenceReferenceSeq.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MolecularSequenceVariant] /// The definition of variant here originates from Sequence ontology
/// ([variant_of](http://www.sequenceontology.org/browser/current_svn/term/variant_of)).
/// This element can represent amino acid or nucleic sequence change(including
/// insertion,deletion,SNP,etc.) It can represent some complex mutation or
/// segment variation with the assist of CIGAR string.
@JsonSerializable()
class MolecularSequenceVariant extends BackboneElement {
  MolecularSequenceVariant({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.start,
    this.startElement,
    this.end,
    this.endElement,
    this.observedAllele,
    this.observedAlleleElement,
    this.referenceAllele,
    this.referenceAlleleElement,
    this.cigar,
    this.cigarElement,
    this.variantPointer,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'MolecularSequenceVariant';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [start] /// Start position of the variant on the reference sequence. If the coordinate
  /// system is either 0-based or 1-based, then start position is inclusive.
  @JsonKey(name: 'start')
  final FhirInteger? start;
  @JsonKey(name: '_start')
  final Element? startElement;

  /// [end] /// End position of the variant on the reference sequence. If the coordinate
  /// system is 0-based then end is exclusive and does not include the last
  /// position. If the coordinate system is 1-base, then end is inclusive and
  /// includes the last position.
  @JsonKey(name: 'end')
  final FhirInteger? end;
  @JsonKey(name: '_end')
  final Element? endElement;

  /// [observedAllele] /// An allele is one of a set of coexisting sequence variants of a gene
  /// ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)).
  /// Nucleotide(s)/amino acids from start position of sequence to stop position
  /// of sequence on the positive (+) strand of the observed sequence. When the
  /// sequence type is DNA, it should be the sequence on the positive (+) strand.
  /// This will lay in the range between variant.start and variant.end.
  @JsonKey(name: 'observedAllele')
  final FhirString? observedAllele;
  @JsonKey(name: '_observedAllele')
  final Element? observedAlleleElement;

  /// [referenceAllele] /// An allele is one of a set of coexisting sequence variants of a gene
  /// ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)).
  /// Nucleotide(s)/amino acids from start position of sequence to stop position
  /// of sequence on the positive (+) strand of the reference sequence. When the
  /// sequence type is DNA, it should be the sequence on the positive (+) strand.
  /// This will lay in the range between variant.start and variant.end.
  @JsonKey(name: 'referenceAllele')
  final FhirString? referenceAllele;
  @JsonKey(name: '_referenceAllele')
  final Element? referenceAlleleElement;

  /// [cigar] /// Extended CIGAR string for aligning the sequence with reference bases. See
  /// detailed documentation
  /// [here](http://support.illumina.com/help/SequencingAnalysisWorkflow/Content/Vault/Informatics/Sequencing_Analysis/CASAVA/swSEQ_mCA_ExtendedCIGARFormat.htm).
  @JsonKey(name: 'cigar')
  final FhirString? cigar;
  @JsonKey(name: '_cigar')
  final Element? cigarElement;

  /// [variantPointer] /// A pointer to an Observation containing variant information.
  @JsonKey(name: 'variantPointer')
  final Reference? variantPointer;
  factory MolecularSequenceVariant.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequenceVariantFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MolecularSequenceVariantToJson(this);

  @override
  MolecularSequenceVariant clone() => throw UnimplementedError();
  @override
  MolecularSequenceVariant copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? start,
    Element? startElement,
    FhirInteger? end,
    Element? endElement,
    FhirString? observedAllele,
    Element? observedAlleleElement,
    FhirString? referenceAllele,
    Element? referenceAlleleElement,
    FhirString? cigar,
    Element? cigarElement,
    Reference? variantPointer,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MolecularSequenceVariant(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      start: start ?? this.start,
      startElement: startElement ?? this.startElement,
      end: end ?? this.end,
      endElement: endElement ?? this.endElement,
      observedAllele: observedAllele ?? this.observedAllele,
      observedAlleleElement:
          observedAlleleElement ?? this.observedAlleleElement,
      referenceAllele: referenceAllele ?? this.referenceAllele,
      referenceAlleleElement:
          referenceAlleleElement ?? this.referenceAlleleElement,
      cigar: cigar ?? this.cigar,
      cigarElement: cigarElement ?? this.cigarElement,
      variantPointer: variantPointer ?? this.variantPointer,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MolecularSequenceVariant.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequenceVariant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MolecularSequenceVariant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MolecularSequenceVariant cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MolecularSequenceVariant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MolecularSequenceVariant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MolecularSequenceQuality] /// An experimental feature attribute that defines the quality of the feature
/// in a quantitative way, such as a phred quality score
/// ([SO:0001686](http://www.sequenceontology.org/browser/current_svn/term/SO:0001686)).
@JsonSerializable()
class MolecularSequenceQuality extends BackboneElement {
  MolecularSequenceQuality({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.typeElement,
    this.standardSequence,
    this.start,
    this.startElement,
    this.end,
    this.endElement,
    this.score,
    this.method,
    this.truthTP,
    this.truthTPElement,
    this.queryTP,
    this.queryTPElement,
    this.truthFN,
    this.truthFNElement,
    this.queryFP,
    this.queryFPElement,
    this.gtFP,
    this.gtFPElement,
    this.precision,
    this.precisionElement,
    this.recall,
    this.recallElement,
    this.fScore,
    this.fScoreElement,
    this.roc,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'MolecularSequenceQuality';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// INDEL / SNP / Undefined variant.
  @JsonKey(name: 'type')
  final QualityType type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [standardSequence] /// Gold standard sequence used for comparing against.
  @JsonKey(name: 'standardSequence')
  final CodeableConcept? standardSequence;

  /// [start] /// Start position of the sequence. If the coordinate system is either 0-based
  /// or 1-based, then start position is inclusive.
  @JsonKey(name: 'start')
  final FhirInteger? start;
  @JsonKey(name: '_start')
  final Element? startElement;

  /// [end] /// End position of the sequence. If the coordinate system is 0-based then end
  /// is exclusive and does not include the last position. If the coordinate
  /// system is 1-base, then end is inclusive and includes the last position.
  @JsonKey(name: 'end')
  final FhirInteger? end;
  @JsonKey(name: '_end')
  final Element? endElement;

  /// [score] /// The score of an experimentally derived feature such as a p-value
  /// ([SO:0001685](http://www.sequenceontology.org/browser/current_svn/term/SO:0001685)).
  @JsonKey(name: 'score')
  final Quantity? score;

  /// [method] /// Which method is used to get sequence quality.
  @JsonKey(name: 'method')
  final CodeableConcept? method;

  /// [truthTP] /// True positives, from the perspective of the truth data, i.e. the number of
  /// sites in the Truth Call Set for which there are paths through the Query
  /// Call Set that are consistent with all of the alleles at this site, and for
  /// which there is an accurate genotype call for the event.
  @JsonKey(name: 'truthTP')
  final FhirDecimal? truthTP;
  @JsonKey(name: '_truthTP')
  final Element? truthTPElement;

  /// [queryTP] /// True positives, from the perspective of the query data, i.e. the number of
  /// sites in the Query Call Set for which there are paths through the Truth
  /// Call Set that are consistent with all of the alleles at this site, and for
  /// which there is an accurate genotype call for the event.
  @JsonKey(name: 'queryTP')
  final FhirDecimal? queryTP;
  @JsonKey(name: '_queryTP')
  final Element? queryTPElement;

  /// [truthFN] /// False negatives, i.e. the number of sites in the Truth Call Set for which
  /// there is no path through the Query Call Set that is consistent with all of
  /// the alleles at this site, or sites for which there is an inaccurate
  /// genotype call for the event. Sites with correct variant but incorrect
  /// genotype are counted here.
  @JsonKey(name: 'truthFN')
  final FhirDecimal? truthFN;
  @JsonKey(name: '_truthFN')
  final Element? truthFNElement;

  /// [queryFP] /// False positives, i.e. the number of sites in the Query Call Set for which
  /// there is no path through the Truth Call Set that is consistent with this
  /// site. Sites with correct variant but incorrect genotype are counted here.
  @JsonKey(name: 'queryFP')
  final FhirDecimal? queryFP;
  @JsonKey(name: '_queryFP')
  final Element? queryFPElement;

  /// [gtFP] /// The number of false positives where the non-REF alleles in the Truth and
  /// Query Call Sets match (i.e. cases where the truth is 1/1 and the query is
  /// 0/1 or similar).
  @JsonKey(name: 'gtFP')
  final FhirDecimal? gtFP;
  @JsonKey(name: '_gtFP')
  final Element? gtFPElement;

  /// [precision] /// QUERY.TP / (QUERY.TP + QUERY.FP).
  @JsonKey(name: 'precision')
  final FhirDecimal? precision;
  @JsonKey(name: '_precision')
  final Element? precisionElement;

  /// [recall] /// TRUTH.TP / (TRUTH.TP + TRUTH.FN).
  @JsonKey(name: 'recall')
  final FhirDecimal? recall;
  @JsonKey(name: '_recall')
  final Element? recallElement;

  /// [fScore] /// Harmonic mean of Recall and Precision, computed as: 2 * precision * recall
  /// / (precision + recall).
  @JsonKey(name: 'fScore')
  final FhirDecimal? fScore;
  @JsonKey(name: '_fScore')
  final Element? fScoreElement;

  /// [roc] /// Receiver Operator Characteristic (ROC) Curve to give
  /// sensitivity/specificity tradeoff.
  @JsonKey(name: 'roc')
  final MolecularSequenceRoc? roc;
  factory MolecularSequenceQuality.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequenceQualityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MolecularSequenceQualityToJson(this);

  @override
  MolecularSequenceQuality clone() => throw UnimplementedError();
  @override
  MolecularSequenceQuality copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    QualityType? type,
    Element? typeElement,
    CodeableConcept? standardSequence,
    FhirInteger? start,
    Element? startElement,
    FhirInteger? end,
    Element? endElement,
    Quantity? score,
    CodeableConcept? method,
    FhirDecimal? truthTP,
    Element? truthTPElement,
    FhirDecimal? queryTP,
    Element? queryTPElement,
    FhirDecimal? truthFN,
    Element? truthFNElement,
    FhirDecimal? queryFP,
    Element? queryFPElement,
    FhirDecimal? gtFP,
    Element? gtFPElement,
    FhirDecimal? precision,
    Element? precisionElement,
    FhirDecimal? recall,
    Element? recallElement,
    FhirDecimal? fScore,
    Element? fScoreElement,
    MolecularSequenceRoc? roc,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MolecularSequenceQuality(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      standardSequence: standardSequence ?? this.standardSequence,
      start: start ?? this.start,
      startElement: startElement ?? this.startElement,
      end: end ?? this.end,
      endElement: endElement ?? this.endElement,
      score: score ?? this.score,
      method: method ?? this.method,
      truthTP: truthTP ?? this.truthTP,
      truthTPElement: truthTPElement ?? this.truthTPElement,
      queryTP: queryTP ?? this.queryTP,
      queryTPElement: queryTPElement ?? this.queryTPElement,
      truthFN: truthFN ?? this.truthFN,
      truthFNElement: truthFNElement ?? this.truthFNElement,
      queryFP: queryFP ?? this.queryFP,
      queryFPElement: queryFPElement ?? this.queryFPElement,
      gtFP: gtFP ?? this.gtFP,
      gtFPElement: gtFPElement ?? this.gtFPElement,
      precision: precision ?? this.precision,
      precisionElement: precisionElement ?? this.precisionElement,
      recall: recall ?? this.recall,
      recallElement: recallElement ?? this.recallElement,
      fScore: fScore ?? this.fScore,
      fScoreElement: fScoreElement ?? this.fScoreElement,
      roc: roc ?? this.roc,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MolecularSequenceQuality.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequenceQuality.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MolecularSequenceQuality.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MolecularSequenceQuality cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MolecularSequenceQuality.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MolecularSequenceQuality.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MolecularSequenceRoc] /// Receiver Operator Characteristic (ROC) Curve to give
/// sensitivity/specificity tradeoff.
@JsonSerializable()
class MolecularSequenceRoc extends BackboneElement {
  MolecularSequenceRoc({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.score,
    this.scoreElement,
    this.numTP,
    this.numTPElement,
    this.numFP,
    this.numFPElement,
    this.numFN,
    this.numFNElement,
    this.precision,
    this.precisionElement,
    this.sensitivity,
    this.sensitivityElement,
    this.fMeasure,
    this.fMeasureElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'MolecularSequenceRoc';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [score] /// Invidual data point representing the GQ (genotype quality) score threshold.
  @JsonKey(name: 'score')
  final List<FhirInteger>? score;
  @JsonKey(name: '_score')
  final List<Element>? scoreElement;

  /// [numTP] /// The number of true positives if the GQ score threshold was set to "score"
  /// field value.
  @JsonKey(name: 'numTP')
  final List<FhirInteger>? numTP;
  @JsonKey(name: '_numTP')
  final List<Element>? numTPElement;

  /// [numFP] /// The number of false positives if the GQ score threshold was set to "score"
  /// field value.
  @JsonKey(name: 'numFP')
  final List<FhirInteger>? numFP;
  @JsonKey(name: '_numFP')
  final List<Element>? numFPElement;

  /// [numFN] /// The number of false negatives if the GQ score threshold was set to "score"
  /// field value.
  @JsonKey(name: 'numFN')
  final List<FhirInteger>? numFN;
  @JsonKey(name: '_numFN')
  final List<Element>? numFNElement;

  /// [precision] /// Calculated precision if the GQ score threshold was set to "score" field
  /// value.
  @JsonKey(name: 'precision')
  final List<FhirDecimal>? precision;
  @JsonKey(name: '_precision')
  final List<Element>? precisionElement;

  /// [sensitivity] /// Calculated sensitivity if the GQ score threshold was set to "score" field
  /// value.
  @JsonKey(name: 'sensitivity')
  final List<FhirDecimal>? sensitivity;
  @JsonKey(name: '_sensitivity')
  final List<Element>? sensitivityElement;

  /// [fMeasure] /// Calculated fScore if the GQ score threshold was set to "score" field value.
  @JsonKey(name: 'fMeasure')
  final List<FhirDecimal>? fMeasure;
  @JsonKey(name: '_fMeasure')
  final List<Element>? fMeasureElement;
  factory MolecularSequenceRoc.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequenceRocFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MolecularSequenceRocToJson(this);

  @override
  MolecularSequenceRoc clone() => throw UnimplementedError();
  @override
  MolecularSequenceRoc copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirInteger>? score,
    List<Element>? scoreElement,
    List<FhirInteger>? numTP,
    List<Element>? numTPElement,
    List<FhirInteger>? numFP,
    List<Element>? numFPElement,
    List<FhirInteger>? numFN,
    List<Element>? numFNElement,
    List<FhirDecimal>? precision,
    List<Element>? precisionElement,
    List<FhirDecimal>? sensitivity,
    List<Element>? sensitivityElement,
    List<FhirDecimal>? fMeasure,
    List<Element>? fMeasureElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MolecularSequenceRoc(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      score: score ?? this.score,
      scoreElement: scoreElement ?? this.scoreElement,
      numTP: numTP ?? this.numTP,
      numTPElement: numTPElement ?? this.numTPElement,
      numFP: numFP ?? this.numFP,
      numFPElement: numFPElement ?? this.numFPElement,
      numFN: numFN ?? this.numFN,
      numFNElement: numFNElement ?? this.numFNElement,
      precision: precision ?? this.precision,
      precisionElement: precisionElement ?? this.precisionElement,
      sensitivity: sensitivity ?? this.sensitivity,
      sensitivityElement: sensitivityElement ?? this.sensitivityElement,
      fMeasure: fMeasure ?? this.fMeasure,
      fMeasureElement: fMeasureElement ?? this.fMeasureElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MolecularSequenceRoc.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequenceRoc.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MolecularSequenceRoc.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MolecularSequenceRoc cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MolecularSequenceRoc.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MolecularSequenceRoc.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MolecularSequenceRepository] /// Configurations of the external repository. The repository shall store
/// target's observedSeq or records related with target's observedSeq.
@JsonSerializable()
class MolecularSequenceRepository extends BackboneElement {
  MolecularSequenceRepository({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.typeElement,
    this.url,
    this.urlElement,
    this.name,
    this.nameElement,
    this.datasetId,
    this.datasetIdElement,
    this.variantsetId,
    this.variantsetIdElement,
    this.readsetId,
    this.readsetIdElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'MolecularSequenceRepository';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Click and see / RESTful API / Need login to see / RESTful API with
  /// authentication / Other ways to see resource.
  @JsonKey(name: 'type')
  final RepositoryType type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [url] /// URI of an external repository which contains further details about the
  /// genetics data.
  @JsonKey(name: 'url')
  final FhirUri? url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [name] /// URI of an external repository which contains further details about the
  /// genetics data.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [datasetId] /// Id of the variant in this external repository. The server will understand
  /// how to use this id to call for more info about datasets in external
  /// repository.
  @JsonKey(name: 'datasetId')
  final FhirString? datasetId;
  @JsonKey(name: '_datasetId')
  final Element? datasetIdElement;

  /// [variantsetId] /// Id of the variantset in this external repository. The server will
  /// understand how to use this id to call for more info about variantsets in
  /// external repository.
  @JsonKey(name: 'variantsetId')
  final FhirString? variantsetId;
  @JsonKey(name: '_variantsetId')
  final Element? variantsetIdElement;

  /// [readsetId] /// Id of the read in this external repository.
  @JsonKey(name: 'readsetId')
  final FhirString? readsetId;
  @JsonKey(name: '_readsetId')
  final Element? readsetIdElement;
  factory MolecularSequenceRepository.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequenceRepositoryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MolecularSequenceRepositoryToJson(this);

  @override
  MolecularSequenceRepository clone() => throw UnimplementedError();
  @override
  MolecularSequenceRepository copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    RepositoryType? type,
    Element? typeElement,
    FhirUri? url,
    Element? urlElement,
    FhirString? name,
    Element? nameElement,
    FhirString? datasetId,
    Element? datasetIdElement,
    FhirString? variantsetId,
    Element? variantsetIdElement,
    FhirString? readsetId,
    Element? readsetIdElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MolecularSequenceRepository(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      datasetId: datasetId ?? this.datasetId,
      datasetIdElement: datasetIdElement ?? this.datasetIdElement,
      variantsetId: variantsetId ?? this.variantsetId,
      variantsetIdElement: variantsetIdElement ?? this.variantsetIdElement,
      readsetId: readsetId ?? this.readsetId,
      readsetIdElement: readsetIdElement ?? this.readsetIdElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MolecularSequenceRepository.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequenceRepository.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MolecularSequenceRepository.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MolecularSequenceRepository cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MolecularSequenceRepository.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MolecularSequenceRepository.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MolecularSequenceStructureVariant] /// Information about chromosome structure variation.
@JsonSerializable()
class MolecularSequenceStructureVariant extends BackboneElement {
  MolecularSequenceStructureVariant({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.variantType,
    this.exact,
    this.exactElement,
    this.length,
    this.lengthElement,
    this.outer,
    this.inner,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'MolecularSequenceStructureVariant';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [variantType] /// Information about chromosome structure variation DNA change type.
  @JsonKey(name: 'variantType')
  final CodeableConcept? variantType;

  /// [exact] /// Used to indicate if the outer and inner start-end values have the same
  /// meaning.
  @JsonKey(name: 'exact')
  final FhirBoolean? exact;
  @JsonKey(name: '_exact')
  final Element? exactElement;

  /// [length] /// Length of the variant chromosome.
  @JsonKey(name: 'length')
  final FhirInteger? length;
  @JsonKey(name: '_length')
  final Element? lengthElement;

  /// [outer] /// Structural variant outer.
  @JsonKey(name: 'outer')
  final MolecularSequenceOuter? outer;

  /// [inner] /// Structural variant inner.
  @JsonKey(name: 'inner')
  final MolecularSequenceInner? inner;
  factory MolecularSequenceStructureVariant.fromJson(
          Map<String, dynamic> json) =>
      _$MolecularSequenceStructureVariantFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$MolecularSequenceStructureVariantToJson(this);

  @override
  MolecularSequenceStructureVariant clone() => throw UnimplementedError();
  @override
  MolecularSequenceStructureVariant copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? variantType,
    FhirBoolean? exact,
    Element? exactElement,
    FhirInteger? length,
    Element? lengthElement,
    MolecularSequenceOuter? outer,
    MolecularSequenceInner? inner,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MolecularSequenceStructureVariant(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      variantType: variantType ?? this.variantType,
      exact: exact ?? this.exact,
      exactElement: exactElement ?? this.exactElement,
      length: length ?? this.length,
      lengthElement: lengthElement ?? this.lengthElement,
      outer: outer ?? this.outer,
      inner: inner ?? this.inner,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MolecularSequenceStructureVariant.fromYaml(dynamic yaml) => yaml
          is String
      ? MolecularSequenceStructureVariant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MolecularSequenceStructureVariant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MolecularSequenceStructureVariant cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MolecularSequenceStructureVariant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MolecularSequenceStructureVariant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MolecularSequenceOuter] /// Structural variant outer.
@JsonSerializable()
class MolecularSequenceOuter extends BackboneElement {
  MolecularSequenceOuter({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.start,
    this.startElement,
    this.end,
    this.endElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'MolecularSequenceOuter';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [start] /// Structural variant outer start. If the coordinate system is either 0-based
  /// or 1-based, then start position is inclusive.
  @JsonKey(name: 'start')
  final FhirInteger? start;
  @JsonKey(name: '_start')
  final Element? startElement;

  /// [end] /// Structural variant outer end. If the coordinate system is 0-based then end
  /// is exclusive and does not include the last position. If the coordinate
  /// system is 1-base, then end is inclusive and includes the last position.
  @JsonKey(name: 'end')
  final FhirInteger? end;
  @JsonKey(name: '_end')
  final Element? endElement;
  factory MolecularSequenceOuter.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequenceOuterFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MolecularSequenceOuterToJson(this);

  @override
  MolecularSequenceOuter clone() => throw UnimplementedError();
  @override
  MolecularSequenceOuter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? start,
    Element? startElement,
    FhirInteger? end,
    Element? endElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MolecularSequenceOuter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      start: start ?? this.start,
      startElement: startElement ?? this.startElement,
      end: end ?? this.end,
      endElement: endElement ?? this.endElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MolecularSequenceOuter.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequenceOuter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MolecularSequenceOuter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MolecularSequenceOuter cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MolecularSequenceOuter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MolecularSequenceOuter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MolecularSequenceInner] /// Structural variant inner.
@JsonSerializable()
class MolecularSequenceInner extends BackboneElement {
  MolecularSequenceInner({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.start,
    this.startElement,
    this.end,
    this.endElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'MolecularSequenceInner';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [start] /// Structural variant inner start. If the coordinate system is either 0-based
  /// or 1-based, then start position is inclusive.
  @JsonKey(name: 'start')
  final FhirInteger? start;
  @JsonKey(name: '_start')
  final Element? startElement;

  /// [end] /// Structural variant inner end. If the coordinate system is 0-based then end
  /// is exclusive and does not include the last position. If the coordinate
  /// system is 1-base, then end is inclusive and includes the last position.
  @JsonKey(name: 'end')
  final FhirInteger? end;
  @JsonKey(name: '_end')
  final Element? endElement;
  factory MolecularSequenceInner.fromJson(Map<String, dynamic> json) =>
      _$MolecularSequenceInnerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MolecularSequenceInnerToJson(this);

  @override
  MolecularSequenceInner clone() => throw UnimplementedError();
  @override
  MolecularSequenceInner copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? start,
    Element? startElement,
    FhirInteger? end,
    Element? endElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MolecularSequenceInner(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      start: start ?? this.start,
      startElement: startElement ?? this.startElement,
      end: end ?? this.end,
      endElement: endElement ?? this.endElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MolecularSequenceInner.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequenceInner.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MolecularSequenceInner.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MolecularSequenceInner cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MolecularSequenceInner.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MolecularSequenceInner.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
