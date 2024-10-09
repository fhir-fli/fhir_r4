import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [MolecularSequence] /// Raw data describing a biological sequence.
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
  }) : super(resourceType: R4ResourceType.MolecularSequence);

  @override
  String get fhirType => 'MolecularSequence';

  @Id()
  int dbId = 0;

  /// [identifier] /// A unique identifier for this particular sequence instance. This is a
  /// FHIR-defined id.
  final List<Identifier>? identifier;

  /// [type] /// Amino Acid Sequence/ DNA Sequence / RNA Sequence.
  final SequenceType? type;
  final Element? typeElement;

  /// [coordinateSystem] /// Whether the sequence is numbered starting at 0 (0-based numbering or
  /// coordinates, inclusive start, exclusive end) or starting at 1 (1-based
  /// numbering, inclusive start and inclusive end).
  final FhirInteger coordinateSystem;
  final Element? coordinateSystemElement;

  /// [patient] /// The patient whose sequencing results are described by this resource.
  final Reference? patient;

  /// [specimen] /// Specimen used for sequencing.
  final Reference? specimen;

  /// [device] /// The method for sequencing, for example, chip information.
  final Reference? device;

  /// [performer] /// The organization or lab that should be responsible for this result.
  final Reference? performer;

  /// [quantity] /// The number of copies of the sequence of interest. (RNASeq).
  final Quantity? quantity;

  /// [referenceSeq] /// A sequence that is used as a reference to describe variants that are
  /// present in a sequence analyzed.
  final MolecularSequenceReferenceSeq? referenceSeq;

  /// [variant] /// The definition of variant here originates from Sequence ontology
  /// ([variant_of](http://www.sequenceontology.org/browser/current_svn/term/variant_of)).
  /// This element can represent amino acid or nucleic sequence change(including
  /// insertion,deletion,SNP,etc.) It can represent some complex mutation or
  /// segment variation with the assist of CIGAR string.
  final List<MolecularSequenceVariant>? variant;

  /// [observedSeq] /// Sequence that was observed. It is the result marked by referenceSeq along
  /// with variant records on referenceSeq. This shall start from
  /// referenceSeq.windowStart and end by referenceSeq.windowEnd.
  final FhirString? observedSeq;
  final Element? observedSeqElement;

  /// [quality] /// An experimental feature attribute that defines the quality of the feature
  /// in a quantitative way, such as a phred quality score
  /// ([SO:0001686](http://www.sequenceontology.org/browser/current_svn/term/SO:0001686)).
  final List<MolecularSequenceQuality>? quality;

  /// [readCoverage] /// Coverage (read depth or depth) is the average number of reads representing
  /// a given nucleotide in the reconstructed sequence.
  final FhirInteger? readCoverage;
  final Element? readCoverageElement;

  /// [repository] /// Configurations of the external repository. The repository shall store
  /// target's observedSeq or records related with target's observedSeq.
  final List<MolecularSequenceRepository>? repository;

  /// [pointer] /// Pointer to next atomic sequence which at most contains one variant.
  final List<Reference>? pointer;

  /// [structureVariant] /// Information about chromosome structure variation.
  final List<MolecularSequenceStructureVariant>? structureVariant;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    json['coordinateSystem'] = coordinateSystem.value;
    if (coordinateSystemElement != null) {
      json['_coordinateSystem'] = coordinateSystemElement!.toJson();
    }
    if (patient != null) {
      json['patient'] = patient!.toJson();
    }
    if (specimen != null) {
      json['specimen'] = specimen!.toJson();
    }
    if (device != null) {
      json['device'] = device!.toJson();
    }
    if (performer != null) {
      json['performer'] = performer!.toJson();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (referenceSeq != null) {
      json['referenceSeq'] = referenceSeq!.toJson();
    }
    if (variant != null && variant!.isNotEmpty) {
      json['variant'] = variant!
          .map<dynamic>((MolecularSequenceVariant v) => v.toJson())
          .toList();
    }
    if (observedSeq?.value != null) {
      json['observedSeq'] = observedSeq!.value;
    }
    if (observedSeqElement != null) {
      json['_observedSeq'] = observedSeqElement!.toJson();
    }
    if (quality != null && quality!.isNotEmpty) {
      json['quality'] = quality!
          .map<dynamic>((MolecularSequenceQuality v) => v.toJson())
          .toList();
    }
    if (readCoverage?.value != null) {
      json['readCoverage'] = readCoverage!.value;
    }
    if (readCoverageElement != null) {
      json['_readCoverage'] = readCoverageElement!.toJson();
    }
    if (repository != null && repository!.isNotEmpty) {
      json['repository'] = repository!
          .map<dynamic>((MolecularSequenceRepository v) => v.toJson())
          .toList();
    }
    if (pointer != null && pointer!.isNotEmpty) {
      json['pointer'] =
          pointer!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (structureVariant != null && structureVariant!.isNotEmpty) {
      json['structureVariant'] = structureVariant!
          .map<dynamic>((MolecularSequenceStructureVariant v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory MolecularSequence.fromJson(Map<String, dynamic> json) {
    return MolecularSequence(
      id: json['id'] != null ? FhirString(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: json['type'] != null
          ? SequenceType.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      coordinateSystem: FhirInteger(json['coordinateSystem']),
      coordinateSystemElement: json['_coordinateSystem'] != null
          ? Element.fromJson(json['_coordinateSystem'] as Map<String, dynamic>)
          : null,
      patient: json['patient'] != null
          ? Reference.fromJson(json['patient'] as Map<String, dynamic>)
          : null,
      specimen: json['specimen'] != null
          ? Reference.fromJson(json['specimen'] as Map<String, dynamic>)
          : null,
      device: json['device'] != null
          ? Reference.fromJson(json['device'] as Map<String, dynamic>)
          : null,
      performer: json['performer'] != null
          ? Reference.fromJson(json['performer'] as Map<String, dynamic>)
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>)
          : null,
      referenceSeq: json['referenceSeq'] != null
          ? MolecularSequenceReferenceSeq.fromJson(
              json['referenceSeq'] as Map<String, dynamic>)
          : null,
      variant: json['variant'] != null
          ? (json['variant'] as List<dynamic>)
              .map<MolecularSequenceVariant>((dynamic v) =>
                  MolecularSequenceVariant.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      observedSeq:
          json['observedSeq'] != null ? FhirString(json['observedSeq']) : null,
      observedSeqElement: json['_observedSeq'] != null
          ? Element.fromJson(json['_observedSeq'] as Map<String, dynamic>)
          : null,
      quality: json['quality'] != null
          ? (json['quality'] as List<dynamic>)
              .map<MolecularSequenceQuality>((dynamic v) =>
                  MolecularSequenceQuality.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      readCoverage: json['readCoverage'] != null
          ? FhirInteger(json['readCoverage'])
          : null,
      readCoverageElement: json['_readCoverage'] != null
          ? Element.fromJson(json['_readCoverage'] as Map<String, dynamic>)
          : null,
      repository: json['repository'] != null
          ? (json['repository'] as List<dynamic>)
              .map<MolecularSequenceRepository>((dynamic v) =>
                  MolecularSequenceRepository.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      pointer: json['pointer'] != null
          ? (json['pointer'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      structureVariant: json['structureVariant'] != null
          ? (json['structureVariant'] as List<dynamic>)
              .map<MolecularSequenceStructureVariant>((dynamic v) =>
                  MolecularSequenceStructureVariant.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
  int dbId = 0;

  /// [chromosome] /// Structural unit composed of a nucleic acid molecule which controls its own
  /// replication through the interaction of specific proteins at one or more
  /// origins of replication
  /// ([SO:0000340](http://www.sequenceontology.org/browser/current_svn/term/SO:0000340)).
  final CodeableConcept? chromosome;

  /// [genomeBuild] /// The Genome Build used for reference, following GRCh build versions e.g.
  /// 'GRCh 37'. Version number must be included if a versioned release of a
  /// primary build was used.
  final FhirString? genomeBuild;
  final Element? genomeBuildElement;

  /// [orientation] /// A relative reference to a DNA strand based on gene orientation. The strand
  /// that contains the open reading frame of the gene is the "sense" strand, and
  /// the opposite complementary strand is the "antisense" strand.
  final OrientationType? orientation;
  final Element? orientationElement;

  /// [referenceSeqId] /// Reference identifier of reference sequence submitted to NCBI. It must match
  /// the type in the MolecularSequence.type field. For example, the prefix,
  /// “NG_” identifies reference sequence for genes, “NM_” for messenger RNA
  /// transcripts, and “NP_” for amino acid sequences.
  final CodeableConcept? referenceSeqId;

  /// [referenceSeqPointer] /// A pointer to another MolecularSequence entity as reference sequence.
  final Reference? referenceSeqPointer;

  /// [referenceSeqString] /// A string like "ACGT".
  final FhirString? referenceSeqString;
  final Element? referenceSeqStringElement;

  /// [strand] /// An absolute reference to a strand. The Watson strand is the strand whose
  /// 5'-end is on the short arm of the chromosome, and the Crick strand as the
  /// one whose 5'-end is on the long arm.
  final StrandType? strand;
  final Element? strandElement;

  /// [windowStart] /// Start position of the window on the reference sequence. If the coordinate
  /// system is either 0-based or 1-based, then start position is inclusive.
  final FhirInteger? windowStart;
  final Element? windowStartElement;

  /// [windowEnd] /// End position of the window on the reference sequence. If the coordinate
  /// system is 0-based then end is exclusive and does not include the last
  /// position. If the coordinate system is 1-base, then end is inclusive and
  /// includes the last position.
  final FhirInteger? windowEnd;
  final Element? windowEndElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (chromosome != null) {
      json['chromosome'] = chromosome!.toJson();
    }
    if (genomeBuild?.value != null) {
      json['genomeBuild'] = genomeBuild!.value;
    }
    if (genomeBuildElement != null) {
      json['_genomeBuild'] = genomeBuildElement!.toJson();
    }
    if (orientation != null) {
      json['orientation'] = orientation!.toJson();
    }
    if (referenceSeqId != null) {
      json['referenceSeqId'] = referenceSeqId!.toJson();
    }
    if (referenceSeqPointer != null) {
      json['referenceSeqPointer'] = referenceSeqPointer!.toJson();
    }
    if (referenceSeqString?.value != null) {
      json['referenceSeqString'] = referenceSeqString!.value;
    }
    if (referenceSeqStringElement != null) {
      json['_referenceSeqString'] = referenceSeqStringElement!.toJson();
    }
    if (strand != null) {
      json['strand'] = strand!.toJson();
    }
    if (windowStart?.value != null) {
      json['windowStart'] = windowStart!.value;
    }
    if (windowStartElement != null) {
      json['_windowStart'] = windowStartElement!.toJson();
    }
    if (windowEnd?.value != null) {
      json['windowEnd'] = windowEnd!.value;
    }
    if (windowEndElement != null) {
      json['_windowEnd'] = windowEndElement!.toJson();
    }
    return json;
  }

  factory MolecularSequenceReferenceSeq.fromJson(Map<String, dynamic> json) {
    return MolecularSequenceReferenceSeq(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      chromosome: json['chromosome'] != null
          ? CodeableConcept.fromJson(json['chromosome'] as Map<String, dynamic>)
          : null,
      genomeBuild:
          json['genomeBuild'] != null ? FhirString(json['genomeBuild']) : null,
      genomeBuildElement: json['_genomeBuild'] != null
          ? Element.fromJson(json['_genomeBuild'] as Map<String, dynamic>)
          : null,
      orientation: json['orientation'] != null
          ? OrientationType.fromJson(
              json['orientation'] as Map<String, dynamic>)
          : null,
      referenceSeqId: json['referenceSeqId'] != null
          ? CodeableConcept.fromJson(
              json['referenceSeqId'] as Map<String, dynamic>)
          : null,
      referenceSeqPointer: json['referenceSeqPointer'] != null
          ? Reference.fromJson(
              json['referenceSeqPointer'] as Map<String, dynamic>)
          : null,
      referenceSeqString: json['referenceSeqString'] != null
          ? FhirString(json['referenceSeqString'])
          : null,
      referenceSeqStringElement: json['_referenceSeqString'] != null
          ? Element.fromJson(
              json['_referenceSeqString'] as Map<String, dynamic>)
          : null,
      strand: json['strand'] != null
          ? StrandType.fromJson(json['strand'] as Map<String, dynamic>)
          : null,
      windowStart:
          json['windowStart'] != null ? FhirInteger(json['windowStart']) : null,
      windowStartElement: json['_windowStart'] != null
          ? Element.fromJson(json['_windowStart'] as Map<String, dynamic>)
          : null,
      windowEnd:
          json['windowEnd'] != null ? FhirInteger(json['windowEnd']) : null,
      windowEndElement: json['_windowEnd'] != null
          ? Element.fromJson(json['_windowEnd'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  MolecularSequenceReferenceSeq clone() => throw UnimplementedError();
  @override
  MolecularSequenceReferenceSeq copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? chromosome,
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
  int dbId = 0;

  /// [start] /// Start position of the variant on the reference sequence. If the coordinate
  /// system is either 0-based or 1-based, then start position is inclusive.
  final FhirInteger? start;
  final Element? startElement;

  /// [end] /// End position of the variant on the reference sequence. If the coordinate
  /// system is 0-based then end is exclusive and does not include the last
  /// position. If the coordinate system is 1-base, then end is inclusive and
  /// includes the last position.
  final FhirInteger? end;
  final Element? endElement;

  /// [observedAllele] /// An allele is one of a set of coexisting sequence variants of a gene
  /// ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)).
  /// Nucleotide(s)/amino acids from start position of sequence to stop position
  /// of sequence on the positive (+) strand of the observed sequence. When the
  /// sequence type is DNA, it should be the sequence on the positive (+) strand.
  /// This will lay in the range between variant.start and variant.end.
  final FhirString? observedAllele;
  final Element? observedAlleleElement;

  /// [referenceAllele] /// An allele is one of a set of coexisting sequence variants of a gene
  /// ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)).
  /// Nucleotide(s)/amino acids from start position of sequence to stop position
  /// of sequence on the positive (+) strand of the reference sequence. When the
  /// sequence type is DNA, it should be the sequence on the positive (+) strand.
  /// This will lay in the range between variant.start and variant.end.
  final FhirString? referenceAllele;
  final Element? referenceAlleleElement;

  /// [cigar] /// Extended CIGAR string for aligning the sequence with reference bases. See
  /// detailed documentation
  /// [here](http://support.illumina.com/help/SequencingAnalysisWorkflow/Content/Vault/Informatics/Sequencing_Analysis/CASAVA/swSEQ_mCA_ExtendedCIGARFormat.htm).
  final FhirString? cigar;
  final Element? cigarElement;

  /// [variantPointer] /// A pointer to an Observation containing variant information.
  final Reference? variantPointer;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (start?.value != null) {
      json['start'] = start!.value;
    }
    if (startElement != null) {
      json['_start'] = startElement!.toJson();
    }
    if (end?.value != null) {
      json['end'] = end!.value;
    }
    if (endElement != null) {
      json['_end'] = endElement!.toJson();
    }
    if (observedAllele?.value != null) {
      json['observedAllele'] = observedAllele!.value;
    }
    if (observedAlleleElement != null) {
      json['_observedAllele'] = observedAlleleElement!.toJson();
    }
    if (referenceAllele?.value != null) {
      json['referenceAllele'] = referenceAllele!.value;
    }
    if (referenceAlleleElement != null) {
      json['_referenceAllele'] = referenceAlleleElement!.toJson();
    }
    if (cigar?.value != null) {
      json['cigar'] = cigar!.value;
    }
    if (cigarElement != null) {
      json['_cigar'] = cigarElement!.toJson();
    }
    if (variantPointer != null) {
      json['variantPointer'] = variantPointer!.toJson();
    }
    return json;
  }

  factory MolecularSequenceVariant.fromJson(Map<String, dynamic> json) {
    return MolecularSequenceVariant(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      start: json['start'] != null ? FhirInteger(json['start']) : null,
      startElement: json['_start'] != null
          ? Element.fromJson(json['_start'] as Map<String, dynamic>)
          : null,
      end: json['end'] != null ? FhirInteger(json['end']) : null,
      endElement: json['_end'] != null
          ? Element.fromJson(json['_end'] as Map<String, dynamic>)
          : null,
      observedAllele: json['observedAllele'] != null
          ? FhirString(json['observedAllele'])
          : null,
      observedAlleleElement: json['_observedAllele'] != null
          ? Element.fromJson(json['_observedAllele'] as Map<String, dynamic>)
          : null,
      referenceAllele: json['referenceAllele'] != null
          ? FhirString(json['referenceAllele'])
          : null,
      referenceAlleleElement: json['_referenceAllele'] != null
          ? Element.fromJson(json['_referenceAllele'] as Map<String, dynamic>)
          : null,
      cigar: json['cigar'] != null ? FhirString(json['cigar']) : null,
      cigarElement: json['_cigar'] != null
          ? Element.fromJson(json['_cigar'] as Map<String, dynamic>)
          : null,
      variantPointer: json['variantPointer'] != null
          ? Reference.fromJson(json['variantPointer'] as Map<String, dynamic>)
          : null,
    );
  }
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
  int dbId = 0;

  /// [type] /// INDEL / SNP / Undefined variant.
  final QualityType type;
  final Element? typeElement;

  /// [standardSequence] /// Gold standard sequence used for comparing against.
  final CodeableConcept? standardSequence;

  /// [start] /// Start position of the sequence. If the coordinate system is either 0-based
  /// or 1-based, then start position is inclusive.
  final FhirInteger? start;
  final Element? startElement;

  /// [end] /// End position of the sequence. If the coordinate system is 0-based then end
  /// is exclusive and does not include the last position. If the coordinate
  /// system is 1-base, then end is inclusive and includes the last position.
  final FhirInteger? end;
  final Element? endElement;

  /// [score] /// The score of an experimentally derived feature such as a p-value
  /// ([SO:0001685](http://www.sequenceontology.org/browser/current_svn/term/SO:0001685)).
  final Quantity? score;

  /// [method] /// Which method is used to get sequence quality.
  final CodeableConcept? method;

  /// [truthTP] /// True positives, from the perspective of the truth data, i.e. the number of
  /// sites in the Truth Call Set for which there are paths through the Query
  /// Call Set that are consistent with all of the alleles at this site, and for
  /// which there is an accurate genotype call for the event.
  final FhirDecimal? truthTP;
  final Element? truthTPElement;

  /// [queryTP] /// True positives, from the perspective of the query data, i.e. the number of
  /// sites in the Query Call Set for which there are paths through the Truth
  /// Call Set that are consistent with all of the alleles at this site, and for
  /// which there is an accurate genotype call for the event.
  final FhirDecimal? queryTP;
  final Element? queryTPElement;

  /// [truthFN] /// False negatives, i.e. the number of sites in the Truth Call Set for which
  /// there is no path through the Query Call Set that is consistent with all of
  /// the alleles at this site, or sites for which there is an inaccurate
  /// genotype call for the event. Sites with correct variant but incorrect
  /// genotype are counted here.
  final FhirDecimal? truthFN;
  final Element? truthFNElement;

  /// [queryFP] /// False positives, i.e. the number of sites in the Query Call Set for which
  /// there is no path through the Truth Call Set that is consistent with this
  /// site. Sites with correct variant but incorrect genotype are counted here.
  final FhirDecimal? queryFP;
  final Element? queryFPElement;

  /// [gtFP] /// The number of false positives where the non-REF alleles in the Truth and
  /// Query Call Sets match (i.e. cases where the truth is 1/1 and the query is
  /// 0/1 or similar).
  final FhirDecimal? gtFP;
  final Element? gtFPElement;

  /// [precision] /// QUERY.TP / (QUERY.TP + QUERY.FP).
  final FhirDecimal? precision;
  final Element? precisionElement;

  /// [recall] /// TRUTH.TP / (TRUTH.TP + TRUTH.FN).
  final FhirDecimal? recall;
  final Element? recallElement;

  /// [fScore] /// Harmonic mean of Recall and Precision, computed as: 2 * precision * recall
  /// / (precision + recall).
  final FhirDecimal? fScore;
  final Element? fScoreElement;

  /// [roc] /// Receiver Operator Characteristic (ROC) Curve to give
  /// sensitivity/specificity tradeoff.
  final MolecularSequenceRoc? roc;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['type'] = type.toJson();
    if (standardSequence != null) {
      json['standardSequence'] = standardSequence!.toJson();
    }
    if (start?.value != null) {
      json['start'] = start!.value;
    }
    if (startElement != null) {
      json['_start'] = startElement!.toJson();
    }
    if (end?.value != null) {
      json['end'] = end!.value;
    }
    if (endElement != null) {
      json['_end'] = endElement!.toJson();
    }
    if (score != null) {
      json['score'] = score!.toJson();
    }
    if (method != null) {
      json['method'] = method!.toJson();
    }
    if (truthTP?.value != null) {
      json['truthTP'] = truthTP!.value;
    }
    if (truthTPElement != null) {
      json['_truthTP'] = truthTPElement!.toJson();
    }
    if (queryTP?.value != null) {
      json['queryTP'] = queryTP!.value;
    }
    if (queryTPElement != null) {
      json['_queryTP'] = queryTPElement!.toJson();
    }
    if (truthFN?.value != null) {
      json['truthFN'] = truthFN!.value;
    }
    if (truthFNElement != null) {
      json['_truthFN'] = truthFNElement!.toJson();
    }
    if (queryFP?.value != null) {
      json['queryFP'] = queryFP!.value;
    }
    if (queryFPElement != null) {
      json['_queryFP'] = queryFPElement!.toJson();
    }
    if (gtFP?.value != null) {
      json['gtFP'] = gtFP!.value;
    }
    if (gtFPElement != null) {
      json['_gtFP'] = gtFPElement!.toJson();
    }
    if (precision?.value != null) {
      json['precision'] = precision!.value;
    }
    if (precisionElement != null) {
      json['_precision'] = precisionElement!.toJson();
    }
    if (recall?.value != null) {
      json['recall'] = recall!.value;
    }
    if (recallElement != null) {
      json['_recall'] = recallElement!.toJson();
    }
    if (fScore?.value != null) {
      json['fScore'] = fScore!.value;
    }
    if (fScoreElement != null) {
      json['_fScore'] = fScoreElement!.toJson();
    }
    if (roc != null) {
      json['roc'] = roc!.toJson();
    }
    return json;
  }

  factory MolecularSequenceQuality.fromJson(Map<String, dynamic> json) {
    return MolecularSequenceQuality(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: QualityType.fromJson(json['type'] as Map<String, dynamic>),
      standardSequence: json['standardSequence'] != null
          ? CodeableConcept.fromJson(
              json['standardSequence'] as Map<String, dynamic>)
          : null,
      start: json['start'] != null ? FhirInteger(json['start']) : null,
      startElement: json['_start'] != null
          ? Element.fromJson(json['_start'] as Map<String, dynamic>)
          : null,
      end: json['end'] != null ? FhirInteger(json['end']) : null,
      endElement: json['_end'] != null
          ? Element.fromJson(json['_end'] as Map<String, dynamic>)
          : null,
      score: json['score'] != null
          ? Quantity.fromJson(json['score'] as Map<String, dynamic>)
          : null,
      method: json['method'] != null
          ? CodeableConcept.fromJson(json['method'] as Map<String, dynamic>)
          : null,
      truthTP: json['truthTP'] != null ? FhirDecimal(json['truthTP']) : null,
      truthTPElement: json['_truthTP'] != null
          ? Element.fromJson(json['_truthTP'] as Map<String, dynamic>)
          : null,
      queryTP: json['queryTP'] != null ? FhirDecimal(json['queryTP']) : null,
      queryTPElement: json['_queryTP'] != null
          ? Element.fromJson(json['_queryTP'] as Map<String, dynamic>)
          : null,
      truthFN: json['truthFN'] != null ? FhirDecimal(json['truthFN']) : null,
      truthFNElement: json['_truthFN'] != null
          ? Element.fromJson(json['_truthFN'] as Map<String, dynamic>)
          : null,
      queryFP: json['queryFP'] != null ? FhirDecimal(json['queryFP']) : null,
      queryFPElement: json['_queryFP'] != null
          ? Element.fromJson(json['_queryFP'] as Map<String, dynamic>)
          : null,
      gtFP: json['gtFP'] != null ? FhirDecimal(json['gtFP']) : null,
      gtFPElement: json['_gtFP'] != null
          ? Element.fromJson(json['_gtFP'] as Map<String, dynamic>)
          : null,
      precision:
          json['precision'] != null ? FhirDecimal(json['precision']) : null,
      precisionElement: json['_precision'] != null
          ? Element.fromJson(json['_precision'] as Map<String, dynamic>)
          : null,
      recall: json['recall'] != null ? FhirDecimal(json['recall']) : null,
      recallElement: json['_recall'] != null
          ? Element.fromJson(json['_recall'] as Map<String, dynamic>)
          : null,
      fScore: json['fScore'] != null ? FhirDecimal(json['fScore']) : null,
      fScoreElement: json['_fScore'] != null
          ? Element.fromJson(json['_fScore'] as Map<String, dynamic>)
          : null,
      roc: json['roc'] != null
          ? MolecularSequenceRoc.fromJson(json['roc'] as Map<String, dynamic>)
          : null,
    );
  }
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
  int dbId = 0;

  /// [score] /// Invidual data point representing the GQ (genotype quality) score threshold.
  final List<FhirInteger>? score;
  final List<Element>? scoreElement;

  /// [numTP] /// The number of true positives if the GQ score threshold was set to "score"
  /// field value.
  final List<FhirInteger>? numTP;
  final List<Element>? numTPElement;

  /// [numFP] /// The number of false positives if the GQ score threshold was set to "score"
  /// field value.
  final List<FhirInteger>? numFP;
  final List<Element>? numFPElement;

  /// [numFN] /// The number of false negatives if the GQ score threshold was set to "score"
  /// field value.
  final List<FhirInteger>? numFN;
  final List<Element>? numFNElement;

  /// [precision] /// Calculated precision if the GQ score threshold was set to "score" field
  /// value.
  final List<FhirDecimal>? precision;
  final List<Element>? precisionElement;

  /// [sensitivity] /// Calculated sensitivity if the GQ score threshold was set to "score" field
  /// value.
  final List<FhirDecimal>? sensitivity;
  final List<Element>? sensitivityElement;

  /// [fMeasure] /// Calculated fScore if the GQ score threshold was set to "score" field value.
  final List<FhirDecimal>? fMeasure;
  final List<Element>? fMeasureElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (score != null && score!.isNotEmpty) {
      json['score'] = score!.map((FhirInteger v) => v.value).toList();
    }
    if (scoreElement != null && scoreElement!.isNotEmpty) {
      json['_score'] = scoreElement!.map((Element v) => v.toJson()).toList();
    }
    if (numTP != null && numTP!.isNotEmpty) {
      json['numTP'] = numTP!.map((FhirInteger v) => v.value).toList();
    }
    if (numTPElement != null && numTPElement!.isNotEmpty) {
      json['_numTP'] = numTPElement!.map((Element v) => v.toJson()).toList();
    }
    if (numFP != null && numFP!.isNotEmpty) {
      json['numFP'] = numFP!.map((FhirInteger v) => v.value).toList();
    }
    if (numFPElement != null && numFPElement!.isNotEmpty) {
      json['_numFP'] = numFPElement!.map((Element v) => v.toJson()).toList();
    }
    if (numFN != null && numFN!.isNotEmpty) {
      json['numFN'] = numFN!.map((FhirInteger v) => v.value).toList();
    }
    if (numFNElement != null && numFNElement!.isNotEmpty) {
      json['_numFN'] = numFNElement!.map((Element v) => v.toJson()).toList();
    }
    if (precision != null && precision!.isNotEmpty) {
      json['precision'] = precision!.map((FhirDecimal v) => v.value).toList();
    }
    if (precisionElement != null && precisionElement!.isNotEmpty) {
      json['_precision'] =
          precisionElement!.map((Element v) => v.toJson()).toList();
    }
    if (sensitivity != null && sensitivity!.isNotEmpty) {
      json['sensitivity'] =
          sensitivity!.map((FhirDecimal v) => v.value).toList();
    }
    if (sensitivityElement != null && sensitivityElement!.isNotEmpty) {
      json['_sensitivity'] =
          sensitivityElement!.map((Element v) => v.toJson()).toList();
    }
    if (fMeasure != null && fMeasure!.isNotEmpty) {
      json['fMeasure'] = fMeasure!.map((FhirDecimal v) => v.value).toList();
    }
    if (fMeasureElement != null && fMeasureElement!.isNotEmpty) {
      json['_fMeasure'] =
          fMeasureElement!.map((Element v) => v.toJson()).toList();
    }
    return json;
  }

  factory MolecularSequenceRoc.fromJson(Map<String, dynamic> json) {
    return MolecularSequenceRoc(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      score: json['score'] != null
          ? (json['score'] as List<dynamic>)
              .map<FhirInteger>(
                  (dynamic v) => FhirInteger.fromJson(v as dynamic))
              .toList()
          : null,
      scoreElement: json['_score'] != null
          ? (json['_score'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      numTP: json['numTP'] != null
          ? (json['numTP'] as List<dynamic>)
              .map<FhirInteger>(
                  (dynamic v) => FhirInteger.fromJson(v as dynamic))
              .toList()
          : null,
      numTPElement: json['_numTP'] != null
          ? (json['_numTP'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      numFP: json['numFP'] != null
          ? (json['numFP'] as List<dynamic>)
              .map<FhirInteger>(
                  (dynamic v) => FhirInteger.fromJson(v as dynamic))
              .toList()
          : null,
      numFPElement: json['_numFP'] != null
          ? (json['_numFP'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      numFN: json['numFN'] != null
          ? (json['numFN'] as List<dynamic>)
              .map<FhirInteger>(
                  (dynamic v) => FhirInteger.fromJson(v as dynamic))
              .toList()
          : null,
      numFNElement: json['_numFN'] != null
          ? (json['_numFN'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      precision: json['precision'] != null
          ? (json['precision'] as List<dynamic>)
              .map<FhirDecimal>(
                  (dynamic v) => FhirDecimal.fromJson(v as dynamic))
              .toList()
          : null,
      precisionElement: json['_precision'] != null
          ? (json['_precision'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      sensitivity: json['sensitivity'] != null
          ? (json['sensitivity'] as List<dynamic>)
              .map<FhirDecimal>(
                  (dynamic v) => FhirDecimal.fromJson(v as dynamic))
              .toList()
          : null,
      sensitivityElement: json['_sensitivity'] != null
          ? (json['_sensitivity'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      fMeasure: json['fMeasure'] != null
          ? (json['fMeasure'] as List<dynamic>)
              .map<FhirDecimal>(
                  (dynamic v) => FhirDecimal.fromJson(v as dynamic))
              .toList()
          : null,
      fMeasureElement: json['_fMeasure'] != null
          ? (json['_fMeasure'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
  int dbId = 0;

  /// [type] /// Click and see / RESTful API / Need login to see / RESTful API with
  /// authentication / Other ways to see resource.
  final RepositoryType type;
  final Element? typeElement;

  /// [url] /// URI of an external repository which contains further details about the
  /// genetics data.
  final FhirUri? url;
  final Element? urlElement;

  /// [name] /// URI of an external repository which contains further details about the
  /// genetics data.
  final FhirString? name;
  final Element? nameElement;

  /// [datasetId] /// Id of the variant in this external repository. The server will understand
  /// how to use this id to call for more info about datasets in external
  /// repository.
  final FhirString? datasetId;
  final Element? datasetIdElement;

  /// [variantsetId] /// Id of the variantset in this external repository. The server will
  /// understand how to use this id to call for more info about variantsets in
  /// external repository.
  final FhirString? variantsetId;
  final Element? variantsetIdElement;

  /// [readsetId] /// Id of the read in this external repository.
  final FhirString? readsetId;
  final Element? readsetIdElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['type'] = type.toJson();
    if (url?.value != null) {
      json['url'] = url!.value;
    }
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    if (name?.value != null) {
      json['name'] = name!.value;
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (datasetId?.value != null) {
      json['datasetId'] = datasetId!.value;
    }
    if (datasetIdElement != null) {
      json['_datasetId'] = datasetIdElement!.toJson();
    }
    if (variantsetId?.value != null) {
      json['variantsetId'] = variantsetId!.value;
    }
    if (variantsetIdElement != null) {
      json['_variantsetId'] = variantsetIdElement!.toJson();
    }
    if (readsetId?.value != null) {
      json['readsetId'] = readsetId!.value;
    }
    if (readsetIdElement != null) {
      json['_readsetId'] = readsetIdElement!.toJson();
    }
    return json;
  }

  factory MolecularSequenceRepository.fromJson(Map<String, dynamic> json) {
    return MolecularSequenceRepository(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: RepositoryType.fromJson(json['type'] as Map<String, dynamic>),
      url: json['url'] != null ? FhirUri(json['url']) : null,
      urlElement: json['_url'] != null
          ? Element.fromJson(json['_url'] as Map<String, dynamic>)
          : null,
      name: json['name'] != null ? FhirString(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      datasetId:
          json['datasetId'] != null ? FhirString(json['datasetId']) : null,
      datasetIdElement: json['_datasetId'] != null
          ? Element.fromJson(json['_datasetId'] as Map<String, dynamic>)
          : null,
      variantsetId: json['variantsetId'] != null
          ? FhirString(json['variantsetId'])
          : null,
      variantsetIdElement: json['_variantsetId'] != null
          ? Element.fromJson(json['_variantsetId'] as Map<String, dynamic>)
          : null,
      readsetId:
          json['readsetId'] != null ? FhirString(json['readsetId']) : null,
      readsetIdElement: json['_readsetId'] != null
          ? Element.fromJson(json['_readsetId'] as Map<String, dynamic>)
          : null,
    );
  }
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
  int dbId = 0;

  /// [variantType] /// Information about chromosome structure variation DNA change type.
  final CodeableConcept? variantType;

  /// [exact] /// Used to indicate if the outer and inner start-end values have the same
  /// meaning.
  final FhirBoolean? exact;
  final Element? exactElement;

  /// [length] /// Length of the variant chromosome.
  final FhirInteger? length;
  final Element? lengthElement;

  /// [outer] /// Structural variant outer.
  final MolecularSequenceOuter? outer;

  /// [inner] /// Structural variant inner.
  final MolecularSequenceInner? inner;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (variantType != null) {
      json['variantType'] = variantType!.toJson();
    }
    if (exact?.value != null) {
      json['exact'] = exact!.value;
    }
    if (exactElement != null) {
      json['_exact'] = exactElement!.toJson();
    }
    if (length?.value != null) {
      json['length'] = length!.value;
    }
    if (lengthElement != null) {
      json['_length'] = lengthElement!.toJson();
    }
    if (outer != null) {
      json['outer'] = outer!.toJson();
    }
    if (inner != null) {
      json['inner'] = inner!.toJson();
    }
    return json;
  }

  factory MolecularSequenceStructureVariant.fromJson(
      Map<String, dynamic> json) {
    return MolecularSequenceStructureVariant(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      variantType: json['variantType'] != null
          ? CodeableConcept.fromJson(
              json['variantType'] as Map<String, dynamic>)
          : null,
      exact: json['exact'] != null ? FhirBoolean(json['exact']) : null,
      exactElement: json['_exact'] != null
          ? Element.fromJson(json['_exact'] as Map<String, dynamic>)
          : null,
      length: json['length'] != null ? FhirInteger(json['length']) : null,
      lengthElement: json['_length'] != null
          ? Element.fromJson(json['_length'] as Map<String, dynamic>)
          : null,
      outer: json['outer'] != null
          ? MolecularSequenceOuter.fromJson(
              json['outer'] as Map<String, dynamic>)
          : null,
      inner: json['inner'] != null
          ? MolecularSequenceInner.fromJson(
              json['inner'] as Map<String, dynamic>)
          : null,
    );
  }
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
  int dbId = 0;

  /// [start] /// Structural variant outer start. If the coordinate system is either 0-based
  /// or 1-based, then start position is inclusive.
  final FhirInteger? start;
  final Element? startElement;

  /// [end] /// Structural variant outer end. If the coordinate system is 0-based then end
  /// is exclusive and does not include the last position. If the coordinate
  /// system is 1-base, then end is inclusive and includes the last position.
  final FhirInteger? end;
  final Element? endElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (start?.value != null) {
      json['start'] = start!.value;
    }
    if (startElement != null) {
      json['_start'] = startElement!.toJson();
    }
    if (end?.value != null) {
      json['end'] = end!.value;
    }
    if (endElement != null) {
      json['_end'] = endElement!.toJson();
    }
    return json;
  }

  factory MolecularSequenceOuter.fromJson(Map<String, dynamic> json) {
    return MolecularSequenceOuter(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      start: json['start'] != null ? FhirInteger(json['start']) : null,
      startElement: json['_start'] != null
          ? Element.fromJson(json['_start'] as Map<String, dynamic>)
          : null,
      end: json['end'] != null ? FhirInteger(json['end']) : null,
      endElement: json['_end'] != null
          ? Element.fromJson(json['_end'] as Map<String, dynamic>)
          : null,
    );
  }
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
  int dbId = 0;

  /// [start] /// Structural variant inner start. If the coordinate system is either 0-based
  /// or 1-based, then start position is inclusive.
  final FhirInteger? start;
  final Element? startElement;

  /// [end] /// Structural variant inner end. If the coordinate system is 0-based then end
  /// is exclusive and does not include the last position. If the coordinate
  /// system is 1-base, then end is inclusive and includes the last position.
  final FhirInteger? end;
  final Element? endElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (start?.value != null) {
      json['start'] = start!.value;
    }
    if (startElement != null) {
      json['_start'] = startElement!.toJson();
    }
    if (end?.value != null) {
      json['end'] = end!.value;
    }
    if (endElement != null) {
      json['_end'] = endElement!.toJson();
    }
    return json;
  }

  factory MolecularSequenceInner.fromJson(Map<String, dynamic> json) {
    return MolecularSequenceInner(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      start: json['start'] != null ? FhirInteger(json['start']) : null,
      startElement: json['_start'] != null
          ? Element.fromJson(json['_start'] as Map<String, dynamic>)
          : null,
      end: json['end'] != null ? FhirInteger(json['end']) : null,
      endElement: json['_end'] != null
          ? Element.fromJson(json['_end'] as Map<String, dynamic>)
          : null,
    );
  }
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
