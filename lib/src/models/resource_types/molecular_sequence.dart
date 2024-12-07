import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [MolecularSequence]
/// Raw data describing a biological sequence.
class MolecularSequence extends DomainResource {
  /// Primary constructor for
  /// [MolecularSequence]

  const MolecularSequence({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    required this.coordinateSystem,
    this.patient,
    this.specimen,
    this.device,
    this.performer,
    this.quantity,
    this.referenceSeq,
    this.variant,
    this.observedSeq,
    this.quality,
    this.readCoverage,
    this.repository,
    this.pointer,
    this.structureVariant,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  }) : super(
          resourceType: R4ResourceType.MolecularSequence,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequence.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequence(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: (json['type'] != null || json['_type'] != null)
          ? SequenceType.fromJson({
              'value': json['type'],
              '_value': json['_type'],
            })
          : null,
      coordinateSystem: FhirInteger.fromJson({
        'value': json['coordinateSystem'],
        '_value': json['_coordinateSystem'],
      }),
      patient: json['patient'] != null
          ? Reference.fromJson(
              json['patient'] as Map<String, dynamic>,
            )
          : null,
      specimen: json['specimen'] != null
          ? Reference.fromJson(
              json['specimen'] as Map<String, dynamic>,
            )
          : null,
      device: json['device'] != null
          ? Reference.fromJson(
              json['device'] as Map<String, dynamic>,
            )
          : null,
      performer: json['performer'] != null
          ? Reference.fromJson(
              json['performer'] as Map<String, dynamic>,
            )
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
          : null,
      referenceSeq: json['referenceSeq'] != null
          ? MolecularSequenceReferenceSeq.fromJson(
              json['referenceSeq'] as Map<String, dynamic>,
            )
          : null,
      variant: json['variant'] != null
          ? (json['variant'] as List<dynamic>)
              .map<MolecularSequenceVariant>(
                (v) => MolecularSequenceVariant.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      observedSeq: (json['observedSeq'] != null || json['_observedSeq'] != null)
          ? FhirString.fromJson({
              'value': json['observedSeq'],
              '_value': json['_observedSeq'],
            })
          : null,
      quality: json['quality'] != null
          ? (json['quality'] as List<dynamic>)
              .map<MolecularSequenceQuality>(
                (v) => MolecularSequenceQuality.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      readCoverage:
          (json['readCoverage'] != null || json['_readCoverage'] != null)
              ? FhirInteger.fromJson({
                  'value': json['readCoverage'],
                  '_value': json['_readCoverage'],
                })
              : null,
      repository: json['repository'] != null
          ? (json['repository'] as List<dynamic>)
              .map<MolecularSequenceRepository>(
                (v) => MolecularSequenceRepository.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      pointer: json['pointer'] != null
          ? (json['pointer'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      structureVariant: json['structureVariant'] != null
          ? (json['structureVariant'] as List<dynamic>)
              .map<MolecularSequenceStructureVariant>(
                (v) => MolecularSequenceStructureVariant.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [MolecularSequence]
  /// from a [String] or [YamlMap] object
  factory MolecularSequence.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequence.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequence.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequence '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequence]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequence.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MolecularSequence.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequence';

  /// [identifier]
  /// A unique identifier for this particular sequence instance. This is a
  /// FHIR-defined id.
  final List<Identifier>? identifier;

  /// [type]
  /// Amino Acid Sequence/ DNA Sequence / RNA Sequence.
  final SequenceType? type;

  /// [coordinateSystem]
  /// Whether the sequence is numbered starting at 0 (0-based numbering or
  /// coordinates, inclusive start, exclusive end) or starting at 1 (1-based
  /// numbering, inclusive start and inclusive end).
  final FhirInteger coordinateSystem;

  /// [patient]
  /// The patient whose sequencing results are described by this resource.
  final Reference? patient;

  /// [specimen]
  /// Specimen used for sequencing.
  final Reference? specimen;

  /// [device]
  /// The method for sequencing, for example, chip information.
  final Reference? device;

  /// [performer]
  /// The organization or lab that should be responsible for this result.
  final Reference? performer;

  /// [quantity]
  /// The number of copies of the sequence of interest. (RNASeq).
  final Quantity? quantity;

  /// [referenceSeq]
  /// A sequence that is used as a reference to describe variants that are
  /// present in a sequence analyzed.
  final MolecularSequenceReferenceSeq? referenceSeq;

  /// [variant]
  /// The definition of variant here originates from Sequence ontology
  /// ([variant_of](http://www.sequenceontology.org/browser/current_svn/term/variant_of)).
  /// This element can represent amino acid or nucleic sequence
  /// change(including insertion,deletion,SNP,etc.) It can represent some
  /// complex mutation or segment variation with the assist of CIGAR string.
  final List<MolecularSequenceVariant>? variant;

  /// [observedSeq]
  /// Sequence that was observed. It is the result marked by referenceSeq
  /// along with variant records on referenceSeq. This shall start from
  /// referenceSeq.windowStart and end by referenceSeq.windowEnd.
  final FhirString? observedSeq;

  /// [quality]
  /// An experimental feature attribute that defines the quality of the
  /// feature in a quantitative way, such as a phred quality score
  /// ([SO:0001686](http://www.sequenceontology.org/browser/current_svn/term/SO:0001686)).
  final List<MolecularSequenceQuality>? quality;

  /// [readCoverage]
  /// Coverage (read depth or depth) is the average number of reads
  /// representing a given nucleotide in the reconstructed sequence.
  final FhirInteger? readCoverage;

  /// [repository]
  /// Configurations of the external repository. The repository shall store
  /// target's observedSeq or records related with target's observedSeq.
  final List<MolecularSequenceRepository>? repository;

  /// [pointer]
  /// Pointer to next atomic sequence which at most contains one variant.
  final List<Reference>? pointer;

  /// [structureVariant]
  /// Information about chromosome structure variation.
  final List<MolecularSequenceStructureVariant>? structureVariant;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    addField('type', type);
    addField('coordinateSystem', coordinateSystem);
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
      json['variant'] = variant!.map((e) => e.toJson()).toList();
    }

    addField('observedSeq', observedSeq);
    if (quality != null && quality!.isNotEmpty) {
      json['quality'] = quality!.map((e) => e.toJson()).toList();
    }

    addField('readCoverage', readCoverage);
    if (repository != null && repository!.isNotEmpty) {
      json['repository'] = repository!.map((e) => e.toJson()).toList();
    }

    if (pointer != null && pointer!.isNotEmpty) {
      json['pointer'] = pointer!.map((e) => e.toJson()).toList();
    }

    if (structureVariant != null && structureVariant!.isNotEmpty) {
      json['structureVariant'] =
          structureVariant!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  MolecularSequence clone() => throw UnimplementedError();
  @override
  MolecularSequence copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    SequenceType? type,
    FhirInteger? coordinateSystem,
    Reference? patient,
    Reference? specimen,
    Reference? device,
    Reference? performer,
    Quantity? quantity,
    MolecularSequenceReferenceSeq? referenceSeq,
    List<MolecularSequenceVariant>? variant,
    FhirString? observedSeq,
    List<MolecularSequenceQuality>? quality,
    FhirInteger? readCoverage,
    List<MolecularSequenceRepository>? repository,
    List<Reference>? pointer,
    List<MolecularSequenceStructureVariant>? structureVariant,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MolecularSequence(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
      coordinateSystem: coordinateSystem ?? this.coordinateSystem,
      patient: patient ?? this.patient,
      specimen: specimen ?? this.specimen,
      device: device ?? this.device,
      performer: performer ?? this.performer,
      quantity: quantity ?? this.quantity,
      referenceSeq: referenceSeq ?? this.referenceSeq,
      variant: variant ?? this.variant,
      observedSeq: observedSeq ?? this.observedSeq,
      quality: quality ?? this.quality,
      readCoverage: readCoverage ?? this.readCoverage,
      repository: repository ?? this.repository,
      pointer: pointer ?? this.pointer,
      structureVariant: structureVariant ?? this.structureVariant,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [MolecularSequenceReferenceSeq]
/// A sequence that is used as a reference to describe variants that are
/// present in a sequence analyzed.
class MolecularSequenceReferenceSeq extends BackboneElement {
  /// Primary constructor for
  /// [MolecularSequenceReferenceSeq]

  const MolecularSequenceReferenceSeq({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.chromosome,
    this.genomeBuild,
    this.orientation,
    this.referenceSeqId,
    this.referenceSeqPointer,
    this.referenceSeqString,
    this.strand,
    this.windowStart,
    this.windowEnd,
    super.disallowExtensions,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceReferenceSeq.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequenceReferenceSeq(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      chromosome: json['chromosome'] != null
          ? CodeableConcept.fromJson(
              json['chromosome'] as Map<String, dynamic>,
            )
          : null,
      genomeBuild: (json['genomeBuild'] != null || json['_genomeBuild'] != null)
          ? FhirString.fromJson({
              'value': json['genomeBuild'],
              '_value': json['_genomeBuild'],
            })
          : null,
      orientation: (json['orientation'] != null || json['_orientation'] != null)
          ? OrientationType.fromJson({
              'value': json['orientation'],
              '_value': json['_orientation'],
            })
          : null,
      referenceSeqId: json['referenceSeqId'] != null
          ? CodeableConcept.fromJson(
              json['referenceSeqId'] as Map<String, dynamic>,
            )
          : null,
      referenceSeqPointer: json['referenceSeqPointer'] != null
          ? Reference.fromJson(
              json['referenceSeqPointer'] as Map<String, dynamic>,
            )
          : null,
      referenceSeqString: (json['referenceSeqString'] != null ||
              json['_referenceSeqString'] != null)
          ? FhirString.fromJson({
              'value': json['referenceSeqString'],
              '_value': json['_referenceSeqString'],
            })
          : null,
      strand: (json['strand'] != null || json['_strand'] != null)
          ? StrandType.fromJson({
              'value': json['strand'],
              '_value': json['_strand'],
            })
          : null,
      windowStart: (json['windowStart'] != null || json['_windowStart'] != null)
          ? FhirInteger.fromJson({
              'value': json['windowStart'],
              '_value': json['_windowStart'],
            })
          : null,
      windowEnd: (json['windowEnd'] != null || json['_windowEnd'] != null)
          ? FhirInteger.fromJson({
              'value': json['windowEnd'],
              '_value': json['_windowEnd'],
            })
          : null,
    );
  }

  /// Deserialize [MolecularSequenceReferenceSeq]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceReferenceSeq.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceReferenceSeq.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceReferenceSeq.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceReferenceSeq '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceReferenceSeq]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceReferenceSeq.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MolecularSequenceReferenceSeq.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceReferenceSeq';

  /// [chromosome]
  /// Structural unit composed of a nucleic acid molecule which controls its
  /// own replication through the interaction of specific proteins at one or
  /// more origins of replication
  /// ([SO:0000340](http://www.sequenceontology.org/browser/current_svn/term/SO:0000340)).
  final CodeableConcept? chromosome;

  /// [genomeBuild]
  /// The Genome Build used for reference, following GRCh build versions e.g.
  /// 'GRCh 37'. Version number must be included if a versioned release of a
  /// primary build was used.
  final FhirString? genomeBuild;

  /// [orientation]
  /// A relative reference to a DNA strand based on gene orientation. The
  /// strand that contains the open reading frame of the gene is the "sense"
  /// strand, and the opposite complementary strand is the "antisense"
  /// strand.
  final OrientationType? orientation;

  /// [referenceSeqId]
  /// Reference identifier of reference sequence submitted to NCBI. It must
  /// match the type in the MolecularSequence.type field. For example, the
  /// prefix, “NG_” identifies reference sequence for genes, “NM_” for
  /// messenger RNA transcripts, and “NP_” for amino acid sequences.
  final CodeableConcept? referenceSeqId;

  /// [referenceSeqPointer]
  /// A pointer to another MolecularSequence entity as reference sequence.
  final Reference? referenceSeqPointer;

  /// [referenceSeqString]
  /// A string like "ACGT".
  final FhirString? referenceSeqString;

  /// [strand]
  /// An absolute reference to a strand. The Watson strand is the strand
  /// whose 5'-end is on the short arm of the chromosome, and the Crick
  /// strand as the one whose 5'-end is on the long arm.
  final StrandType? strand;

  /// [windowStart]
  /// Start position of the window on the reference sequence. If the
  /// coordinate system is either 0-based or 1-based, then start position is
  /// inclusive.
  final FhirInteger? windowStart;

  /// [windowEnd]
  /// End position of the window on the reference sequence. If the coordinate
  /// system is 0-based then end is exclusive and does not include the last
  /// position. If the coordinate system is 1-base, then end is inclusive and
  /// includes the last position.
  final FhirInteger? windowEnd;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (chromosome != null) {
      json['chromosome'] = chromosome!.toJson();
    }

    addField('genomeBuild', genomeBuild);
    addField('orientation', orientation);
    if (referenceSeqId != null) {
      json['referenceSeqId'] = referenceSeqId!.toJson();
    }

    if (referenceSeqPointer != null) {
      json['referenceSeqPointer'] = referenceSeqPointer!.toJson();
    }

    addField('referenceSeqString', referenceSeqString);
    addField('strand', strand);
    addField('windowStart', windowStart);
    addField('windowEnd', windowEnd);
    return json;
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
    OrientationType? orientation,
    CodeableConcept? referenceSeqId,
    Reference? referenceSeqPointer,
    FhirString? referenceSeqString,
    StrandType? strand,
    FhirInteger? windowStart,
    FhirInteger? windowEnd,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MolecularSequenceReferenceSeq(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      chromosome: chromosome ?? this.chromosome,
      genomeBuild: genomeBuild ?? this.genomeBuild,
      orientation: orientation ?? this.orientation,
      referenceSeqId: referenceSeqId ?? this.referenceSeqId,
      referenceSeqPointer: referenceSeqPointer ?? this.referenceSeqPointer,
      referenceSeqString: referenceSeqString ?? this.referenceSeqString,
      strand: strand ?? this.strand,
      windowStart: windowStart ?? this.windowStart,
      windowEnd: windowEnd ?? this.windowEnd,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [MolecularSequenceVariant]
/// The definition of variant here originates from Sequence ontology
/// ([variant_of](http://www.sequenceontology.org/browser/current_svn/term/variant_of)).
/// This element can represent amino acid or nucleic sequence
/// change(including insertion,deletion,SNP,etc.) It can represent some
/// complex mutation or segment variation with the assist of CIGAR string.
class MolecularSequenceVariant extends BackboneElement {
  /// Primary constructor for
  /// [MolecularSequenceVariant]

  const MolecularSequenceVariant({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.start,
    this.end,
    this.observedAllele,
    this.referenceAllele,
    this.cigar,
    this.variantPointer,
    super.disallowExtensions,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceVariant.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequenceVariant(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      start: (json['start'] != null || json['_start'] != null)
          ? FhirInteger.fromJson({
              'value': json['start'],
              '_value': json['_start'],
            })
          : null,
      end: (json['end'] != null || json['_end'] != null)
          ? FhirInteger.fromJson({
              'value': json['end'],
              '_value': json['_end'],
            })
          : null,
      observedAllele:
          (json['observedAllele'] != null || json['_observedAllele'] != null)
              ? FhirString.fromJson({
                  'value': json['observedAllele'],
                  '_value': json['_observedAllele'],
                })
              : null,
      referenceAllele:
          (json['referenceAllele'] != null || json['_referenceAllele'] != null)
              ? FhirString.fromJson({
                  'value': json['referenceAllele'],
                  '_value': json['_referenceAllele'],
                })
              : null,
      cigar: (json['cigar'] != null || json['_cigar'] != null)
          ? FhirString.fromJson({
              'value': json['cigar'],
              '_value': json['_cigar'],
            })
          : null,
      variantPointer: json['variantPointer'] != null
          ? Reference.fromJson(
              json['variantPointer'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [MolecularSequenceVariant]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceVariant.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceVariant.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceVariant.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceVariant '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceVariant]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceVariant.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MolecularSequenceVariant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceVariant';

  /// [start]
  /// Start position of the variant on the reference sequence. If the
  /// coordinate system is either 0-based or 1-based, then start position is
  /// inclusive.
  final FhirInteger? start;

  /// [end]
  /// End position of the variant on the reference sequence. If the
  /// coordinate system is 0-based then end is exclusive and does not include
  /// the last position. If the coordinate system is 1-base, then end is
  /// inclusive and includes the last position.
  final FhirInteger? end;

  /// [observedAllele]
  /// An allele is one of a set of coexisting sequence variants of a gene
  /// ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)).
  /// Nucleotide(s)/amino acids from start position of sequence to stop
  /// position of sequence on the positive (+) strand of the observed
  /// sequence. When the sequence type is DNA, it should be the sequence on
  /// the positive (+) strand. This will lay in the range between
  /// variant.start and variant.end.
  final FhirString? observedAllele;

  /// [referenceAllele]
  /// An allele is one of a set of coexisting sequence variants of a gene
  /// ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)).
  /// Nucleotide(s)/amino acids from start position of sequence to stop
  /// position of sequence on the positive (+) strand of the reference
  /// sequence. When the sequence type is DNA, it should be the sequence on
  /// the positive (+) strand. This will lay in the range between
  /// variant.start and variant.end.
  final FhirString? referenceAllele;

  /// [cigar]
  /// Extended CIGAR string for aligning the sequence with reference bases.
  /// See detailed documentation
  /// [here](http://support.illumina.com/help/SequencingAnalysisWorkflow/Content/Vault/Informatics/Sequencing_Analysis/CASAVA/swSEQ_mCA_ExtendedCIGARFormat.htm).
  final FhirString? cigar;

  /// [variantPointer]
  /// A pointer to an Observation containing variant information.
  final Reference? variantPointer;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('start', start);
    addField('end', end);
    addField('observedAllele', observedAllele);
    addField('referenceAllele', referenceAllele);
    addField('cigar', cigar);
    if (variantPointer != null) {
      json['variantPointer'] = variantPointer!.toJson();
    }

    return json;
  }

  @override
  MolecularSequenceVariant clone() => throw UnimplementedError();
  @override
  MolecularSequenceVariant copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? start,
    FhirInteger? end,
    FhirString? observedAllele,
    FhirString? referenceAllele,
    FhirString? cigar,
    Reference? variantPointer,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MolecularSequenceVariant(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      start: start ?? this.start,
      end: end ?? this.end,
      observedAllele: observedAllele ?? this.observedAllele,
      referenceAllele: referenceAllele ?? this.referenceAllele,
      cigar: cigar ?? this.cigar,
      variantPointer: variantPointer ?? this.variantPointer,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [MolecularSequenceQuality]
/// An experimental feature attribute that defines the quality of the
/// feature in a quantitative way, such as a phred quality score
/// ([SO:0001686](http://www.sequenceontology.org/browser/current_svn/term/SO:0001686)).
class MolecularSequenceQuality extends BackboneElement {
  /// Primary constructor for
  /// [MolecularSequenceQuality]

  const MolecularSequenceQuality({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.standardSequence,
    this.start,
    this.end,
    this.score,
    this.method,
    this.truthTP,
    this.queryTP,
    this.truthFN,
    this.queryFP,
    this.gtFP,
    this.precision,
    this.recall,
    this.fScore,
    this.roc,
    super.disallowExtensions,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceQuality.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequenceQuality(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: QualityType.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      standardSequence: json['standardSequence'] != null
          ? CodeableConcept.fromJson(
              json['standardSequence'] as Map<String, dynamic>,
            )
          : null,
      start: (json['start'] != null || json['_start'] != null)
          ? FhirInteger.fromJson({
              'value': json['start'],
              '_value': json['_start'],
            })
          : null,
      end: (json['end'] != null || json['_end'] != null)
          ? FhirInteger.fromJson({
              'value': json['end'],
              '_value': json['_end'],
            })
          : null,
      score: json['score'] != null
          ? Quantity.fromJson(
              json['score'] as Map<String, dynamic>,
            )
          : null,
      method: json['method'] != null
          ? CodeableConcept.fromJson(
              json['method'] as Map<String, dynamic>,
            )
          : null,
      truthTP: (json['truthTP'] != null || json['_truthTP'] != null)
          ? FhirDecimal.fromJson({
              'value': json['truthTP'],
              '_value': json['_truthTP'],
            })
          : null,
      queryTP: (json['queryTP'] != null || json['_queryTP'] != null)
          ? FhirDecimal.fromJson({
              'value': json['queryTP'],
              '_value': json['_queryTP'],
            })
          : null,
      truthFN: (json['truthFN'] != null || json['_truthFN'] != null)
          ? FhirDecimal.fromJson({
              'value': json['truthFN'],
              '_value': json['_truthFN'],
            })
          : null,
      queryFP: (json['queryFP'] != null || json['_queryFP'] != null)
          ? FhirDecimal.fromJson({
              'value': json['queryFP'],
              '_value': json['_queryFP'],
            })
          : null,
      gtFP: (json['gtFP'] != null || json['_gtFP'] != null)
          ? FhirDecimal.fromJson({
              'value': json['gtFP'],
              '_value': json['_gtFP'],
            })
          : null,
      precision: (json['precision'] != null || json['_precision'] != null)
          ? FhirDecimal.fromJson({
              'value': json['precision'],
              '_value': json['_precision'],
            })
          : null,
      recall: (json['recall'] != null || json['_recall'] != null)
          ? FhirDecimal.fromJson({
              'value': json['recall'],
              '_value': json['_recall'],
            })
          : null,
      fScore: (json['fScore'] != null || json['_fScore'] != null)
          ? FhirDecimal.fromJson({
              'value': json['fScore'],
              '_value': json['_fScore'],
            })
          : null,
      roc: json['roc'] != null
          ? MolecularSequenceRoc.fromJson(
              json['roc'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [MolecularSequenceQuality]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceQuality.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceQuality.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceQuality.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceQuality '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceQuality]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceQuality.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MolecularSequenceQuality.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceQuality';

  /// [type]
  /// INDEL / SNP / Undefined variant.
  final QualityType type;

  /// [standardSequence]
  /// Gold standard sequence used for comparing against.
  final CodeableConcept? standardSequence;

  /// [start]
  /// Start position of the sequence. If the coordinate system is either
  /// 0-based or 1-based, then start position is inclusive.
  final FhirInteger? start;

  /// [end]
  /// End position of the sequence. If the coordinate system is 0-based then
  /// end is exclusive and does not include the last position. If the
  /// coordinate system is 1-base, then end is inclusive and includes the
  /// last position.
  final FhirInteger? end;

  /// [score]
  /// The score of an experimentally derived feature such as a p-value
  /// ([SO:0001685](http://www.sequenceontology.org/browser/current_svn/term/SO:0001685)).
  final Quantity? score;

  /// [method]
  /// Which method is used to get sequence quality.
  final CodeableConcept? method;

  /// [truthTP]
  /// True positives, from the perspective of the truth data, i.e. the number
  /// of sites in the Truth Call Set for which there are paths through the
  /// Query Call Set that are consistent with all of the alleles at this
  /// site, and for which there is an accurate genotype call for the event.
  final FhirDecimal? truthTP;

  /// [queryTP]
  /// True positives, from the perspective of the query data, i.e. the number
  /// of sites in the Query Call Set for which there are paths through the
  /// Truth Call Set that are consistent with all of the alleles at this
  /// site, and for which there is an accurate genotype call for the event.
  final FhirDecimal? queryTP;

  /// [truthFN]
  /// False negatives, i.e. the number of sites in the Truth Call Set for
  /// which there is no path through the Query Call Set that is consistent
  /// with all of the alleles at this site, or sites for which there is an
  /// inaccurate genotype call for the event. Sites with correct variant but
  /// incorrect genotype are counted here.
  final FhirDecimal? truthFN;

  /// [queryFP]
  /// False positives, i.e. the number of sites in the Query Call Set for
  /// which there is no path through the Truth Call Set that is consistent
  /// with this site. Sites with correct variant but incorrect genotype are
  /// counted here.
  final FhirDecimal? queryFP;

  /// [gtFP]
  /// The number of false positives where the non-REF alleles in the Truth
  /// and Query Call Sets match (i.e. cases where the truth is 1/1 and the
  /// query is 0/1 or similar).
  final FhirDecimal? gtFP;

  /// [precision]
  /// QUERY.TP / (QUERY.TP + QUERY.FP).
  final FhirDecimal? precision;

  /// [recall]
  /// TRUTH.TP / (TRUTH.TP + TRUTH.FN).
  final FhirDecimal? recall;

  /// [fScore]
  /// Harmonic mean of Recall and Precision, computed as: 2 * precision *
  /// recall / (precision + recall).
  final FhirDecimal? fScore;

  /// [roc]
  /// Receiver Operator Characteristic (ROC) Curve to give
  /// sensitivity/specificity tradeoff.
  final MolecularSequenceRoc? roc;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('type', type);
    if (standardSequence != null) {
      json['standardSequence'] = standardSequence!.toJson();
    }

    addField('start', start);
    addField('end', end);
    if (score != null) {
      json['score'] = score!.toJson();
    }

    if (method != null) {
      json['method'] = method!.toJson();
    }

    addField('truthTP', truthTP);
    addField('queryTP', queryTP);
    addField('truthFN', truthFN);
    addField('queryFP', queryFP);
    addField('gtFP', gtFP);
    addField('precision', precision);
    addField('recall', recall);
    addField('fScore', fScore);
    if (roc != null) {
      json['roc'] = roc!.toJson();
    }

    return json;
  }

  @override
  MolecularSequenceQuality clone() => throw UnimplementedError();
  @override
  MolecularSequenceQuality copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    QualityType? type,
    CodeableConcept? standardSequence,
    FhirInteger? start,
    FhirInteger? end,
    Quantity? score,
    CodeableConcept? method,
    FhirDecimal? truthTP,
    FhirDecimal? queryTP,
    FhirDecimal? truthFN,
    FhirDecimal? queryFP,
    FhirDecimal? gtFP,
    FhirDecimal? precision,
    FhirDecimal? recall,
    FhirDecimal? fScore,
    MolecularSequenceRoc? roc,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MolecularSequenceQuality(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      standardSequence: standardSequence ?? this.standardSequence,
      start: start ?? this.start,
      end: end ?? this.end,
      score: score ?? this.score,
      method: method ?? this.method,
      truthTP: truthTP ?? this.truthTP,
      queryTP: queryTP ?? this.queryTP,
      truthFN: truthFN ?? this.truthFN,
      queryFP: queryFP ?? this.queryFP,
      gtFP: gtFP ?? this.gtFP,
      precision: precision ?? this.precision,
      recall: recall ?? this.recall,
      fScore: fScore ?? this.fScore,
      roc: roc ?? this.roc,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [MolecularSequenceRoc]
/// Receiver Operator Characteristic (ROC) Curve to give
/// sensitivity/specificity tradeoff.
class MolecularSequenceRoc extends BackboneElement {
  /// Primary constructor for
  /// [MolecularSequenceRoc]

  const MolecularSequenceRoc({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.score,
    this.numTP,
    this.numFP,
    this.numFN,
    this.precision,
    this.sensitivity,
    this.fMeasure,
    super.disallowExtensions,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceRoc.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequenceRoc(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      score: parsePrimitiveList<FhirInteger>(
        json['score'] as List<dynamic>?,
        json['_score'] as List<dynamic>?,
        fromJson: FhirInteger.fromJson,
      ),
      numTP: parsePrimitiveList<FhirInteger>(
        json['numTP'] as List<dynamic>?,
        json['_numTP'] as List<dynamic>?,
        fromJson: FhirInteger.fromJson,
      ),
      numFP: parsePrimitiveList<FhirInteger>(
        json['numFP'] as List<dynamic>?,
        json['_numFP'] as List<dynamic>?,
        fromJson: FhirInteger.fromJson,
      ),
      numFN: parsePrimitiveList<FhirInteger>(
        json['numFN'] as List<dynamic>?,
        json['_numFN'] as List<dynamic>?,
        fromJson: FhirInteger.fromJson,
      ),
      precision: parsePrimitiveList<FhirDecimal>(
        json['precision'] as List<dynamic>?,
        json['_precision'] as List<dynamic>?,
        fromJson: FhirDecimal.fromJson,
      ),
      sensitivity: parsePrimitiveList<FhirDecimal>(
        json['sensitivity'] as List<dynamic>?,
        json['_sensitivity'] as List<dynamic>?,
        fromJson: FhirDecimal.fromJson,
      ),
      fMeasure: parsePrimitiveList<FhirDecimal>(
        json['fMeasure'] as List<dynamic>?,
        json['_fMeasure'] as List<dynamic>?,
        fromJson: FhirDecimal.fromJson,
      ),
    );
  }

  /// Deserialize [MolecularSequenceRoc]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceRoc.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceRoc.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceRoc.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceRoc '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceRoc]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceRoc.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MolecularSequenceRoc.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceRoc';

  /// [score]
  /// Invidual data point representing the GQ (genotype quality) score
  /// threshold.
  final List<FhirInteger>? score;

  /// [numTP]
  /// The number of true positives if the GQ score threshold was set to
  /// "score" field value.
  final List<FhirInteger>? numTP;

  /// [numFP]
  /// The number of false positives if the GQ score threshold was set to
  /// "score" field value.
  final List<FhirInteger>? numFP;

  /// [numFN]
  /// The number of false negatives if the GQ score threshold was set to
  /// "score" field value.
  final List<FhirInteger>? numFN;

  /// [precision]
  /// Calculated precision if the GQ score threshold was set to "score" field
  /// value.
  final List<FhirDecimal>? precision;

  /// [sensitivity]
  /// Calculated sensitivity if the GQ score threshold was set to "score"
  /// field value.
  final List<FhirDecimal>? sensitivity;

  /// [fMeasure]
  /// Calculated fScore if the GQ score threshold was set to "score" field
  /// value.
  final List<FhirDecimal>? fMeasure;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (score != null && score!.isNotEmpty) {
      final fieldJson0 = score!.map((e) => e.toJson()).toList();
      json['score'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_score'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (numTP != null && numTP!.isNotEmpty) {
      final fieldJson1 = numTP!.map((e) => e.toJson()).toList();
      json['numTP'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_numTP'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (numFP != null && numFP!.isNotEmpty) {
      final fieldJson2 = numFP!.map((e) => e.toJson()).toList();
      json['numFP'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_numFP'] = fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (numFN != null && numFN!.isNotEmpty) {
      final fieldJson3 = numFN!.map((e) => e.toJson()).toList();
      json['numFN'] = fieldJson3.map((e) => e['value']).toList();
      if (fieldJson3.any((e) => e['_value'] != null)) {
        json['_numFN'] = fieldJson3.map((e) => e['_value']).toList();
      }
    }

    if (precision != null && precision!.isNotEmpty) {
      final fieldJson4 = precision!.map((e) => e.toJson()).toList();
      json['precision'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_precision'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    if (sensitivity != null && sensitivity!.isNotEmpty) {
      final fieldJson5 = sensitivity!.map((e) => e.toJson()).toList();
      json['sensitivity'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_sensitivity'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (fMeasure != null && fMeasure!.isNotEmpty) {
      final fieldJson6 = fMeasure!.map((e) => e.toJson()).toList();
      json['fMeasure'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_fMeasure'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  MolecularSequenceRoc clone() => throw UnimplementedError();
  @override
  MolecularSequenceRoc copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirInteger>? score,
    List<FhirInteger>? numTP,
    List<FhirInteger>? numFP,
    List<FhirInteger>? numFN,
    List<FhirDecimal>? precision,
    List<FhirDecimal>? sensitivity,
    List<FhirDecimal>? fMeasure,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MolecularSequenceRoc(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      score: score ?? this.score,
      numTP: numTP ?? this.numTP,
      numFP: numFP ?? this.numFP,
      numFN: numFN ?? this.numFN,
      precision: precision ?? this.precision,
      sensitivity: sensitivity ?? this.sensitivity,
      fMeasure: fMeasure ?? this.fMeasure,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [MolecularSequenceRepository]
/// Configurations of the external repository. The repository shall store
/// target's observedSeq or records related with target's observedSeq.
class MolecularSequenceRepository extends BackboneElement {
  /// Primary constructor for
  /// [MolecularSequenceRepository]

  const MolecularSequenceRepository({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.url,
    this.name,
    this.datasetId,
    this.variantsetId,
    this.readsetId,
    super.disallowExtensions,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceRepository.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequenceRepository(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: RepositoryType.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      url: (json['url'] != null || json['_url'] != null)
          ? FhirUri.fromJson({
              'value': json['url'],
              '_value': json['_url'],
            })
          : null,
      name: (json['name'] != null || json['_name'] != null)
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      datasetId: (json['datasetId'] != null || json['_datasetId'] != null)
          ? FhirString.fromJson({
              'value': json['datasetId'],
              '_value': json['_datasetId'],
            })
          : null,
      variantsetId:
          (json['variantsetId'] != null || json['_variantsetId'] != null)
              ? FhirString.fromJson({
                  'value': json['variantsetId'],
                  '_value': json['_variantsetId'],
                })
              : null,
      readsetId: (json['readsetId'] != null || json['_readsetId'] != null)
          ? FhirString.fromJson({
              'value': json['readsetId'],
              '_value': json['_readsetId'],
            })
          : null,
    );
  }

  /// Deserialize [MolecularSequenceRepository]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceRepository.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceRepository.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceRepository.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceRepository '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceRepository]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceRepository.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MolecularSequenceRepository.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceRepository';

  /// [type]
  /// Click and see / RESTful API / Need login to see / RESTful API with
  /// authentication / Other ways to see resource.
  final RepositoryType type;

  /// [url]
  /// URI of an external repository which contains further details about the
  /// genetics data.
  final FhirUri? url;

  /// [name]
  /// URI of an external repository which contains further details about the
  /// genetics data.
  final FhirString? name;

  /// [datasetId]
  /// Id of the variant in this external repository. The server will
  /// understand how to use this id to call for more info about datasets in
  /// external repository.
  final FhirString? datasetId;

  /// [variantsetId]
  /// Id of the variantset in this external repository. The server will
  /// understand how to use this id to call for more info about variantsets
  /// in external repository.
  final FhirString? variantsetId;

  /// [readsetId]
  /// Id of the read in this external repository.
  final FhirString? readsetId;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('type', type);
    addField('url', url);
    addField('name', name);
    addField('datasetId', datasetId);
    addField('variantsetId', variantsetId);
    addField('readsetId', readsetId);
    return json;
  }

  @override
  MolecularSequenceRepository clone() => throw UnimplementedError();
  @override
  MolecularSequenceRepository copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    RepositoryType? type,
    FhirUri? url,
    FhirString? name,
    FhirString? datasetId,
    FhirString? variantsetId,
    FhirString? readsetId,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MolecularSequenceRepository(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      url: url ?? this.url,
      name: name ?? this.name,
      datasetId: datasetId ?? this.datasetId,
      variantsetId: variantsetId ?? this.variantsetId,
      readsetId: readsetId ?? this.readsetId,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [MolecularSequenceStructureVariant]
/// Information about chromosome structure variation.
class MolecularSequenceStructureVariant extends BackboneElement {
  /// Primary constructor for
  /// [MolecularSequenceStructureVariant]

  const MolecularSequenceStructureVariant({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.variantType,
    this.exact,
    this.length,
    this.outer,
    this.inner,
    super.disallowExtensions,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceStructureVariant.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequenceStructureVariant(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      variantType: json['variantType'] != null
          ? CodeableConcept.fromJson(
              json['variantType'] as Map<String, dynamic>,
            )
          : null,
      exact: (json['exact'] != null || json['_exact'] != null)
          ? FhirBoolean.fromJson({
              'value': json['exact'],
              '_value': json['_exact'],
            })
          : null,
      length: (json['length'] != null || json['_length'] != null)
          ? FhirInteger.fromJson({
              'value': json['length'],
              '_value': json['_length'],
            })
          : null,
      outer: json['outer'] != null
          ? MolecularSequenceOuter.fromJson(
              json['outer'] as Map<String, dynamic>,
            )
          : null,
      inner: json['inner'] != null
          ? MolecularSequenceInner.fromJson(
              json['inner'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [MolecularSequenceStructureVariant]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceStructureVariant.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceStructureVariant.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceStructureVariant.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceStructureVariant '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceStructureVariant]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceStructureVariant.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MolecularSequenceStructureVariant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceStructureVariant';

  /// [variantType]
  /// Information about chromosome structure variation DNA change type.
  final CodeableConcept? variantType;

  /// [exact]
  /// Used to indicate if the outer and inner start-end values have the same
  /// meaning.
  final FhirBoolean? exact;

  /// [length]
  /// Length of the variant chromosome.
  final FhirInteger? length;

  /// [outer]
  /// Structural variant outer.
  final MolecularSequenceOuter? outer;

  /// [inner]
  /// Structural variant inner.
  final MolecularSequenceInner? inner;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (variantType != null) {
      json['variantType'] = variantType!.toJson();
    }

    addField('exact', exact);
    addField('length', length);
    if (outer != null) {
      json['outer'] = outer!.toJson();
    }

    if (inner != null) {
      json['inner'] = inner!.toJson();
    }

    return json;
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
    FhirInteger? length,
    MolecularSequenceOuter? outer,
    MolecularSequenceInner? inner,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MolecularSequenceStructureVariant(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      variantType: variantType ?? this.variantType,
      exact: exact ?? this.exact,
      length: length ?? this.length,
      outer: outer ?? this.outer,
      inner: inner ?? this.inner,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [MolecularSequenceOuter]
/// Structural variant outer.
class MolecularSequenceOuter extends BackboneElement {
  /// Primary constructor for
  /// [MolecularSequenceOuter]

  const MolecularSequenceOuter({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.start,
    this.end,
    super.disallowExtensions,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceOuter.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequenceOuter(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      start: (json['start'] != null || json['_start'] != null)
          ? FhirInteger.fromJson({
              'value': json['start'],
              '_value': json['_start'],
            })
          : null,
      end: (json['end'] != null || json['_end'] != null)
          ? FhirInteger.fromJson({
              'value': json['end'],
              '_value': json['_end'],
            })
          : null,
    );
  }

  /// Deserialize [MolecularSequenceOuter]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceOuter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceOuter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceOuter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceOuter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceOuter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceOuter.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MolecularSequenceOuter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceOuter';

  /// [start]
  /// Structural variant outer start. If the coordinate system is either
  /// 0-based or 1-based, then start position is inclusive.
  final FhirInteger? start;

  /// [end]
  /// Structural variant outer end. If the coordinate system is 0-based then
  /// end is exclusive and does not include the last position. If the
  /// coordinate system is 1-base, then end is inclusive and includes the
  /// last position.
  final FhirInteger? end;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('start', start);
    addField('end', end);
    return json;
  }

  @override
  MolecularSequenceOuter clone() => throw UnimplementedError();
  @override
  MolecularSequenceOuter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? start,
    FhirInteger? end,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MolecularSequenceOuter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      start: start ?? this.start,
      end: end ?? this.end,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}

/// [MolecularSequenceInner]
/// Structural variant inner.
class MolecularSequenceInner extends BackboneElement {
  /// Primary constructor for
  /// [MolecularSequenceInner]

  const MolecularSequenceInner({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.start,
    this.end,
    super.disallowExtensions,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceInner.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequenceInner(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      start: (json['start'] != null || json['_start'] != null)
          ? FhirInteger.fromJson({
              'value': json['start'],
              '_value': json['_start'],
            })
          : null,
      end: (json['end'] != null || json['_end'] != null)
          ? FhirInteger.fromJson({
              'value': json['end'],
              '_value': json['_end'],
            })
          : null,
    );
  }

  /// Deserialize [MolecularSequenceInner]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceInner.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceInner.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceInner.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceInner '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceInner]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceInner.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MolecularSequenceInner.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceInner';

  /// [start]
  /// Structural variant inner start. If the coordinate system is either
  /// 0-based or 1-based, then start position is inclusive.
  final FhirInteger? start;

  /// [end]
  /// Structural variant inner end. If the coordinate system is 0-based then
  /// end is exclusive and does not include the last position. If the
  /// coordinate system is 1-base, then end is inclusive and includes the
  /// last position.
  final FhirInteger? end;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('start', start);
    addField('end', end);
    return json;
  }

  @override
  MolecularSequenceInner clone() => throw UnimplementedError();
  @override
  MolecularSequenceInner copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? start,
    FhirInteger? end,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return MolecularSequenceInner(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      start: start ?? this.start,
      end: end ?? this.end,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }
}
