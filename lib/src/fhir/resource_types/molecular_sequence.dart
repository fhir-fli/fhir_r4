import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [MolecularSequence]
/// Raw data describing a biological sequence.
class MolecularSequence extends DomainResource {
  /// Primary constructor for [MolecularSequence]

  MolecularSequence({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
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
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.MolecularSequence,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequence.fromJson(Map<String, dynamic> json) {
    return MolecularSequence(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
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
      type: json['type'] != null
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
      observedSeq: json['observedSeq'] != null
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
      readCoverage: json['readCoverage'] != null
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

  /// Deserialize [MolecularSequence] from a [String]
  /// or [YamlMap] object
  factory MolecularSequence.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequence.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MolecularSequence.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('MolecularSequence cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MolecularSequence]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequence.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson8 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (type != null) {
      final fieldJson9 = type!.toJson();
      json['type'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_type'] = fieldJson9['_value'];
      }
    }

    final fieldJson10 = coordinateSystem.toJson();
    json['coordinateSystem'] = fieldJson10['value'];
    if (fieldJson10['_value'] != null) {
      json['_coordinateSystem'] = fieldJson10['_value'];
    }

    if (patient != null) {
      final fieldJson11 = patient!.toJson();
      json['patient'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_patient'] = fieldJson11['_value'];
      }
    }

    if (specimen != null) {
      final fieldJson12 = specimen!.toJson();
      json['specimen'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_specimen'] = fieldJson12['_value'];
      }
    }

    if (device != null) {
      final fieldJson13 = device!.toJson();
      json['device'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_device'] = fieldJson13['_value'];
      }
    }

    if (performer != null) {
      final fieldJson14 = performer!.toJson();
      json['performer'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_performer'] = fieldJson14['_value'];
      }
    }

    if (quantity != null) {
      final fieldJson15 = quantity!.toJson();
      json['quantity'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_quantity'] = fieldJson15['_value'];
      }
    }

    if (referenceSeq != null) {
      final fieldJson16 = referenceSeq!.toJson();
      json['referenceSeq'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_referenceSeq'] = fieldJson16['_value'];
      }
    }

    if (variant != null && variant!.isNotEmpty) {
      final fieldJson17 = variant!.map((e) => e.toJson()).toList();
      json['variant'] = fieldJson17.map((e) => e['value']).toList();
      if (fieldJson17.any((e) => e['_value'] != null)) {
        json['_variant'] = fieldJson17.map((e) => e['_value']).toList();
      }
    }

    if (observedSeq != null) {
      final fieldJson18 = observedSeq!.toJson();
      json['observedSeq'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_observedSeq'] = fieldJson18['_value'];
      }
    }

    if (quality != null && quality!.isNotEmpty) {
      final fieldJson19 = quality!.map((e) => e.toJson()).toList();
      json['quality'] = fieldJson19.map((e) => e['value']).toList();
      if (fieldJson19.any((e) => e['_value'] != null)) {
        json['_quality'] = fieldJson19.map((e) => e['_value']).toList();
      }
    }

    if (readCoverage != null) {
      final fieldJson20 = readCoverage!.toJson();
      json['readCoverage'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_readCoverage'] = fieldJson20['_value'];
      }
    }

    if (repository != null && repository!.isNotEmpty) {
      final fieldJson21 = repository!.map((e) => e.toJson()).toList();
      json['repository'] = fieldJson21.map((e) => e['value']).toList();
      if (fieldJson21.any((e) => e['_value'] != null)) {
        json['_repository'] = fieldJson21.map((e) => e['_value']).toList();
      }
    }

    if (pointer != null && pointer!.isNotEmpty) {
      final fieldJson22 = pointer!.map((e) => e.toJson()).toList();
      json['pointer'] = fieldJson22.map((e) => e['value']).toList();
      if (fieldJson22.any((e) => e['_value'] != null)) {
        json['_pointer'] = fieldJson22.map((e) => e['_value']).toList();
      }
    }

    if (structureVariant != null && structureVariant!.isNotEmpty) {
      final fieldJson23 = structureVariant!.map((e) => e.toJson()).toList();
      json['structureVariant'] = fieldJson23.map((e) => e['value']).toList();
      if (fieldJson23.any((e) => e['_value'] != null)) {
        json['_structureVariant'] =
            fieldJson23.map((e) => e['_value']).toList();
      }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MolecularSequenceReferenceSeq]
/// A sequence that is used as a reference to describe variants that are
/// present in a sequence analyzed.
class MolecularSequenceReferenceSeq extends BackboneElement {
  /// Primary constructor for [MolecularSequenceReferenceSeq]

  MolecularSequenceReferenceSeq({
    super.id,
    this.extension_,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceReferenceSeq.fromJson(Map<String, dynamic> json) {
    return MolecularSequenceReferenceSeq(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      genomeBuild: json['genomeBuild'] != null
          ? FhirString.fromJson({
              'value': json['genomeBuild'],
              '_value': json['_genomeBuild'],
            })
          : null,
      orientation: json['orientation'] != null
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
      referenceSeqString: json['referenceSeqString'] != null
          ? FhirString.fromJson({
              'value': json['referenceSeqString'],
              '_value': json['_referenceSeqString'],
            })
          : null,
      strand: json['strand'] != null
          ? StrandType.fromJson({
              'value': json['strand'],
              '_value': json['_strand'],
            })
          : null,
      windowStart: json['windowStart'] != null
          ? FhirInteger.fromJson({
              'value': json['windowStart'],
              '_value': json['_windowStart'],
            })
          : null,
      windowEnd: json['windowEnd'] != null
          ? FhirInteger.fromJson({
              'value': json['windowEnd'],
              '_value': json['_windowEnd'],
            })
          : null,
    );
  }

  /// Deserialize [MolecularSequenceReferenceSeq] from a [String]
  /// or [YamlMap] object
  factory MolecularSequenceReferenceSeq.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequenceReferenceSeq.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MolecularSequenceReferenceSeq.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MolecularSequenceReferenceSeq cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MolecularSequenceReferenceSeq]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceReferenceSeq.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (chromosome != null) {
      final fieldJson3 = chromosome!.toJson();
      json['chromosome'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_chromosome'] = fieldJson3['_value'];
      }
    }

    if (genomeBuild != null) {
      final fieldJson4 = genomeBuild!.toJson();
      json['genomeBuild'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_genomeBuild'] = fieldJson4['_value'];
      }
    }

    if (orientation != null) {
      final fieldJson5 = orientation!.toJson();
      json['orientation'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_orientation'] = fieldJson5['_value'];
      }
    }

    if (referenceSeqId != null) {
      final fieldJson6 = referenceSeqId!.toJson();
      json['referenceSeqId'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_referenceSeqId'] = fieldJson6['_value'];
      }
    }

    if (referenceSeqPointer != null) {
      final fieldJson7 = referenceSeqPointer!.toJson();
      json['referenceSeqPointer'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_referenceSeqPointer'] = fieldJson7['_value'];
      }
    }

    if (referenceSeqString != null) {
      final fieldJson8 = referenceSeqString!.toJson();
      json['referenceSeqString'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_referenceSeqString'] = fieldJson8['_value'];
      }
    }

    if (strand != null) {
      final fieldJson9 = strand!.toJson();
      json['strand'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_strand'] = fieldJson9['_value'];
      }
    }

    if (windowStart != null) {
      final fieldJson10 = windowStart!.toJson();
      json['windowStart'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_windowStart'] = fieldJson10['_value'];
      }
    }

    if (windowEnd != null) {
      final fieldJson11 = windowEnd!.toJson();
      json['windowEnd'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_windowEnd'] = fieldJson11['_value'];
      }
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
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
  /// Primary constructor for [MolecularSequenceVariant]

  MolecularSequenceVariant({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.start,
    this.end,
    this.observedAllele,
    this.referenceAllele,
    this.cigar,
    this.variantPointer,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceVariant.fromJson(Map<String, dynamic> json) {
    return MolecularSequenceVariant(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      start: json['start'] != null
          ? FhirInteger.fromJson({
              'value': json['start'],
              '_value': json['_start'],
            })
          : null,
      end: json['end'] != null
          ? FhirInteger.fromJson({
              'value': json['end'],
              '_value': json['_end'],
            })
          : null,
      observedAllele: json['observedAllele'] != null
          ? FhirString.fromJson({
              'value': json['observedAllele'],
              '_value': json['_observedAllele'],
            })
          : null,
      referenceAllele: json['referenceAllele'] != null
          ? FhirString.fromJson({
              'value': json['referenceAllele'],
              '_value': json['_referenceAllele'],
            })
          : null,
      cigar: json['cigar'] != null
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

  /// Deserialize [MolecularSequenceVariant] from a [String]
  /// or [YamlMap] object
  factory MolecularSequenceVariant.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequenceVariant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MolecularSequenceVariant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MolecularSequenceVariant cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MolecularSequenceVariant]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceVariant.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (start != null) {
      final fieldJson3 = start!.toJson();
      json['start'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_start'] = fieldJson3['_value'];
      }
    }

    if (end != null) {
      final fieldJson4 = end!.toJson();
      json['end'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_end'] = fieldJson4['_value'];
      }
    }

    if (observedAllele != null) {
      final fieldJson5 = observedAllele!.toJson();
      json['observedAllele'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_observedAllele'] = fieldJson5['_value'];
      }
    }

    if (referenceAllele != null) {
      final fieldJson6 = referenceAllele!.toJson();
      json['referenceAllele'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_referenceAllele'] = fieldJson6['_value'];
      }
    }

    if (cigar != null) {
      final fieldJson7 = cigar!.toJson();
      json['cigar'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_cigar'] = fieldJson7['_value'];
      }
    }

    if (variantPointer != null) {
      final fieldJson8 = variantPointer!.toJson();
      json['variantPointer'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_variantPointer'] = fieldJson8['_value'];
      }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MolecularSequenceQuality]
/// An experimental feature attribute that defines the quality of the
/// feature in a quantitative way, such as a phred quality score
/// ([SO:0001686](http://www.sequenceontology.org/browser/current_svn/term/SO:0001686)).
class MolecularSequenceQuality extends BackboneElement {
  /// Primary constructor for [MolecularSequenceQuality]

  MolecularSequenceQuality({
    super.id,
    this.extension_,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceQuality.fromJson(Map<String, dynamic> json) {
    return MolecularSequenceQuality(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      start: json['start'] != null
          ? FhirInteger.fromJson({
              'value': json['start'],
              '_value': json['_start'],
            })
          : null,
      end: json['end'] != null
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
      truthTP: json['truthTP'] != null
          ? FhirDecimal.fromJson({
              'value': json['truthTP'],
              '_value': json['_truthTP'],
            })
          : null,
      queryTP: json['queryTP'] != null
          ? FhirDecimal.fromJson({
              'value': json['queryTP'],
              '_value': json['_queryTP'],
            })
          : null,
      truthFN: json['truthFN'] != null
          ? FhirDecimal.fromJson({
              'value': json['truthFN'],
              '_value': json['_truthFN'],
            })
          : null,
      queryFP: json['queryFP'] != null
          ? FhirDecimal.fromJson({
              'value': json['queryFP'],
              '_value': json['_queryFP'],
            })
          : null,
      gtFP: json['gtFP'] != null
          ? FhirDecimal.fromJson({
              'value': json['gtFP'],
              '_value': json['_gtFP'],
            })
          : null,
      precision: json['precision'] != null
          ? FhirDecimal.fromJson({
              'value': json['precision'],
              '_value': json['_precision'],
            })
          : null,
      recall: json['recall'] != null
          ? FhirDecimal.fromJson({
              'value': json['recall'],
              '_value': json['_recall'],
            })
          : null,
      fScore: json['fScore'] != null
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

  /// Deserialize [MolecularSequenceQuality] from a [String]
  /// or [YamlMap] object
  factory MolecularSequenceQuality.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequenceQuality.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MolecularSequenceQuality.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MolecularSequenceQuality cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MolecularSequenceQuality]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceQuality.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = type.toJson();
    json['type'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_type'] = fieldJson3['_value'];
    }

    if (standardSequence != null) {
      final fieldJson4 = standardSequence!.toJson();
      json['standardSequence'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_standardSequence'] = fieldJson4['_value'];
      }
    }

    if (start != null) {
      final fieldJson5 = start!.toJson();
      json['start'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_start'] = fieldJson5['_value'];
      }
    }

    if (end != null) {
      final fieldJson6 = end!.toJson();
      json['end'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_end'] = fieldJson6['_value'];
      }
    }

    if (score != null) {
      final fieldJson7 = score!.toJson();
      json['score'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_score'] = fieldJson7['_value'];
      }
    }

    if (method != null) {
      final fieldJson8 = method!.toJson();
      json['method'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_method'] = fieldJson8['_value'];
      }
    }

    if (truthTP != null) {
      final fieldJson9 = truthTP!.toJson();
      json['truthTP'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_truthTP'] = fieldJson9['_value'];
      }
    }

    if (queryTP != null) {
      final fieldJson10 = queryTP!.toJson();
      json['queryTP'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_queryTP'] = fieldJson10['_value'];
      }
    }

    if (truthFN != null) {
      final fieldJson11 = truthFN!.toJson();
      json['truthFN'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_truthFN'] = fieldJson11['_value'];
      }
    }

    if (queryFP != null) {
      final fieldJson12 = queryFP!.toJson();
      json['queryFP'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_queryFP'] = fieldJson12['_value'];
      }
    }

    if (gtFP != null) {
      final fieldJson13 = gtFP!.toJson();
      json['gtFP'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_gtFP'] = fieldJson13['_value'];
      }
    }

    if (precision != null) {
      final fieldJson14 = precision!.toJson();
      json['precision'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_precision'] = fieldJson14['_value'];
      }
    }

    if (recall != null) {
      final fieldJson15 = recall!.toJson();
      json['recall'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_recall'] = fieldJson15['_value'];
      }
    }

    if (fScore != null) {
      final fieldJson16 = fScore!.toJson();
      json['fScore'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_fScore'] = fieldJson16['_value'];
      }
    }

    if (roc != null) {
      final fieldJson17 = roc!.toJson();
      json['roc'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_roc'] = fieldJson17['_value'];
      }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MolecularSequenceRoc]
/// Receiver Operator Characteristic (ROC) Curve to give
/// sensitivity/specificity tradeoff.
class MolecularSequenceRoc extends BackboneElement {
  /// Primary constructor for [MolecularSequenceRoc]

  MolecularSequenceRoc({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.score,
    this.numTP,
    this.numFP,
    this.numFN,
    this.precision,
    this.sensitivity,
    this.fMeasure,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceRoc.fromJson(Map<String, dynamic> json) {
    return MolecularSequenceRoc(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
          json['score'] as List<dynamic>?, json['_score'] as List<dynamic>?,
          fromJson: FhirInteger.fromJson),
      numTP: parsePrimitiveList<FhirInteger>(
          json['numTP'] as List<dynamic>?, json['_numTP'] as List<dynamic>?,
          fromJson: FhirInteger.fromJson),
      numFP: parsePrimitiveList<FhirInteger>(
          json['numFP'] as List<dynamic>?, json['_numFP'] as List<dynamic>?,
          fromJson: FhirInteger.fromJson),
      numFN: parsePrimitiveList<FhirInteger>(
          json['numFN'] as List<dynamic>?, json['_numFN'] as List<dynamic>?,
          fromJson: FhirInteger.fromJson),
      precision: parsePrimitiveList<FhirDecimal>(
          json['precision'] as List<dynamic>?,
          json['_precision'] as List<dynamic>?,
          fromJson: FhirDecimal.fromJson),
      sensitivity: parsePrimitiveList<FhirDecimal>(
          json['sensitivity'] as List<dynamic>?,
          json['_sensitivity'] as List<dynamic>?,
          fromJson: FhirDecimal.fromJson),
      fMeasure: parsePrimitiveList<FhirDecimal>(
          json['fMeasure'] as List<dynamic>?,
          json['_fMeasure'] as List<dynamic>?,
          fromJson: FhirDecimal.fromJson),
    );
  }

  /// Deserialize [MolecularSequenceRoc] from a [String]
  /// or [YamlMap] object
  factory MolecularSequenceRoc.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequenceRoc.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MolecularSequenceRoc.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MolecularSequenceRoc cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MolecularSequenceRoc]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceRoc.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (score != null && score!.isNotEmpty) {
      final fieldJson3 = score!.map((e) => e.toJson()).toList();
      json['score'] = fieldJson3.map((e) => e['value']).toList();
      if (fieldJson3.any((e) => e['_value'] != null)) {
        json['_score'] = fieldJson3.map((e) => e['_value']).toList();
      }
    }

    if (numTP != null && numTP!.isNotEmpty) {
      final fieldJson4 = numTP!.map((e) => e.toJson()).toList();
      json['numTP'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_numTP'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    if (numFP != null && numFP!.isNotEmpty) {
      final fieldJson5 = numFP!.map((e) => e.toJson()).toList();
      json['numFP'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_numFP'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (numFN != null && numFN!.isNotEmpty) {
      final fieldJson6 = numFN!.map((e) => e.toJson()).toList();
      json['numFN'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_numFN'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (precision != null && precision!.isNotEmpty) {
      final fieldJson7 = precision!.map((e) => e.toJson()).toList();
      json['precision'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_precision'] = fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (sensitivity != null && sensitivity!.isNotEmpty) {
      final fieldJson8 = sensitivity!.map((e) => e.toJson()).toList();
      json['sensitivity'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_sensitivity'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (fMeasure != null && fMeasure!.isNotEmpty) {
      final fieldJson9 = fMeasure!.map((e) => e.toJson()).toList();
      json['fMeasure'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_fMeasure'] = fieldJson9.map((e) => e['_value']).toList();
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MolecularSequenceRepository]
/// Configurations of the external repository. The repository shall store
/// target's observedSeq or records related with target's observedSeq.
class MolecularSequenceRepository extends BackboneElement {
  /// Primary constructor for [MolecularSequenceRepository]

  MolecularSequenceRepository({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.type,
    this.url,
    this.name,
    this.datasetId,
    this.variantsetId,
    this.readsetId,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceRepository.fromJson(Map<String, dynamic> json) {
    return MolecularSequenceRepository(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      url: json['url'] != null
          ? FhirUri.fromJson({
              'value': json['url'],
              '_value': json['_url'],
            })
          : null,
      name: json['name'] != null
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      datasetId: json['datasetId'] != null
          ? FhirString.fromJson({
              'value': json['datasetId'],
              '_value': json['_datasetId'],
            })
          : null,
      variantsetId: json['variantsetId'] != null
          ? FhirString.fromJson({
              'value': json['variantsetId'],
              '_value': json['_variantsetId'],
            })
          : null,
      readsetId: json['readsetId'] != null
          ? FhirString.fromJson({
              'value': json['readsetId'],
              '_value': json['_readsetId'],
            })
          : null,
    );
  }

  /// Deserialize [MolecularSequenceRepository] from a [String]
  /// or [YamlMap] object
  factory MolecularSequenceRepository.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequenceRepository.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MolecularSequenceRepository.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MolecularSequenceRepository cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MolecularSequenceRepository]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceRepository.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = type.toJson();
    json['type'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_type'] = fieldJson3['_value'];
    }

    if (url != null) {
      final fieldJson4 = url!.toJson();
      json['url'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_url'] = fieldJson4['_value'];
      }
    }

    if (name != null) {
      final fieldJson5 = name!.toJson();
      json['name'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_name'] = fieldJson5['_value'];
      }
    }

    if (datasetId != null) {
      final fieldJson6 = datasetId!.toJson();
      json['datasetId'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_datasetId'] = fieldJson6['_value'];
      }
    }

    if (variantsetId != null) {
      final fieldJson7 = variantsetId!.toJson();
      json['variantsetId'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_variantsetId'] = fieldJson7['_value'];
      }
    }

    if (readsetId != null) {
      final fieldJson8 = readsetId!.toJson();
      json['readsetId'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_readsetId'] = fieldJson8['_value'];
      }
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MolecularSequenceStructureVariant]
/// Information about chromosome structure variation.
class MolecularSequenceStructureVariant extends BackboneElement {
  /// Primary constructor for [MolecularSequenceStructureVariant]

  MolecularSequenceStructureVariant({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.variantType,
    this.exact,
    this.length,
    this.outer,
    this.inner,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceStructureVariant.fromJson(
      Map<String, dynamic> json) {
    return MolecularSequenceStructureVariant(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      exact: json['exact'] != null
          ? FhirBoolean.fromJson({
              'value': json['exact'],
              '_value': json['_exact'],
            })
          : null,
      length: json['length'] != null
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

  /// Deserialize [MolecularSequenceStructureVariant] from a [String]
  /// or [YamlMap] object
  factory MolecularSequenceStructureVariant.fromYaml(dynamic yaml) => yaml
          is String
      ? MolecularSequenceStructureVariant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MolecularSequenceStructureVariant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MolecularSequenceStructureVariant cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MolecularSequenceStructureVariant]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceStructureVariant.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (variantType != null) {
      final fieldJson3 = variantType!.toJson();
      json['variantType'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_variantType'] = fieldJson3['_value'];
      }
    }

    if (exact != null) {
      final fieldJson4 = exact!.toJson();
      json['exact'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_exact'] = fieldJson4['_value'];
      }
    }

    if (length != null) {
      final fieldJson5 = length!.toJson();
      json['length'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_length'] = fieldJson5['_value'];
      }
    }

    if (outer != null) {
      final fieldJson6 = outer!.toJson();
      json['outer'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_outer'] = fieldJson6['_value'];
      }
    }

    if (inner != null) {
      final fieldJson7 = inner!.toJson();
      json['inner'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_inner'] = fieldJson7['_value'];
      }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MolecularSequenceOuter]
/// Structural variant outer.
class MolecularSequenceOuter extends BackboneElement {
  /// Primary constructor for [MolecularSequenceOuter]

  MolecularSequenceOuter({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.start,
    this.end,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceOuter.fromJson(Map<String, dynamic> json) {
    return MolecularSequenceOuter(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      start: json['start'] != null
          ? FhirInteger.fromJson({
              'value': json['start'],
              '_value': json['_start'],
            })
          : null,
      end: json['end'] != null
          ? FhirInteger.fromJson({
              'value': json['end'],
              '_value': json['_end'],
            })
          : null,
    );
  }

  /// Deserialize [MolecularSequenceOuter] from a [String]
  /// or [YamlMap] object
  factory MolecularSequenceOuter.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequenceOuter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MolecularSequenceOuter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MolecularSequenceOuter cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MolecularSequenceOuter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceOuter.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (start != null) {
      final fieldJson3 = start!.toJson();
      json['start'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_start'] = fieldJson3['_value'];
      }
    }

    if (end != null) {
      final fieldJson4 = end!.toJson();
      json['end'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_end'] = fieldJson4['_value'];
      }
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MolecularSequenceInner]
/// Structural variant inner.
class MolecularSequenceInner extends BackboneElement {
  /// Primary constructor for [MolecularSequenceInner]

  MolecularSequenceInner({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.start,
    this.end,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceInner.fromJson(Map<String, dynamic> json) {
    return MolecularSequenceInner(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      start: json['start'] != null
          ? FhirInteger.fromJson({
              'value': json['start'],
              '_value': json['_start'],
            })
          : null,
      end: json['end'] != null
          ? FhirInteger.fromJson({
              'value': json['end'],
              '_value': json['_end'],
            })
          : null,
    );
  }

  /// Deserialize [MolecularSequenceInner] from a [String]
  /// or [YamlMap] object
  factory MolecularSequenceInner.fromYaml(dynamic yaml) => yaml is String
      ? MolecularSequenceInner.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MolecularSequenceInner.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MolecularSequenceInner cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MolecularSequenceInner]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceInner.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (start != null) {
      final fieldJson3 = start!.toJson();
      json['start'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_start'] = fieldJson3['_value'];
      }
    }

    if (end != null) {
      final fieldJson4 = end!.toJson();
      json['end'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_end'] = fieldJson4['_value'];
      }
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
