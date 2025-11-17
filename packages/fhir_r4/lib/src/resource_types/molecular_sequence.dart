import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'molecular_sequence.g.dart';

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
  }) : super(
          resourceType: R4ResourceType.MolecularSequence,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequence.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequence(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<SequenceType>(
        json,
        'type',
        SequenceType.fromJson,
      ),
      coordinateSystem: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'coordinateSystem',
        FhirInteger.fromJson,
      )!,
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
      ),
      specimen: JsonParser.parseObject<Reference>(
        json,
        'specimen',
        Reference.fromJson,
      ),
      device: JsonParser.parseObject<Reference>(
        json,
        'device',
        Reference.fromJson,
      ),
      performer: JsonParser.parseObject<Reference>(
        json,
        'performer',
        Reference.fromJson,
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      ),
      referenceSeq: JsonParser.parseObject<MolecularSequenceReferenceSeq>(
        json,
        'referenceSeq',
        MolecularSequenceReferenceSeq.fromJson,
      ),
      variant: (json['variant'] as List<dynamic>?)
          ?.map<MolecularSequenceVariant>(
            (v) => MolecularSequenceVariant.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      observedSeq: JsonParser.parsePrimitive<FhirString>(
        json,
        'observedSeq',
        FhirString.fromJson,
      ),
      quality: (json['quality'] as List<dynamic>?)
          ?.map<MolecularSequenceQuality>(
            (v) => MolecularSequenceQuality.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      readCoverage: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'readCoverage',
        FhirInteger.fromJson,
      ),
      repository: (json['repository'] as List<dynamic>?)
          ?.map<MolecularSequenceRepository>(
            (v) => MolecularSequenceRepository.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      pointer: (json['pointer'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      structureVariant: (json['structureVariant'] as List<dynamic>?)
          ?.map<MolecularSequenceStructureVariant>(
            (v) => MolecularSequenceStructureVariant.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
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
    if (json is Map<String, dynamic>) {
      return MolecularSequence.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'type',
      type,
    );
    addField(
      'coordinateSystem',
      coordinateSystem,
    );
    addField(
      'patient',
      patient,
    );
    addField(
      'specimen',
      specimen,
    );
    addField(
      'device',
      device,
    );
    addField(
      'performer',
      performer,
    );
    addField(
      'quantity',
      quantity,
    );
    addField(
      'referenceSeq',
      referenceSeq,
    );
    addField(
      'variant',
      variant,
    );
    addField(
      'observedSeq',
      observedSeq,
    );
    addField(
      'quality',
      quality,
    );
    addField(
      'readCoverage',
      readCoverage,
    );
    addField(
      'repository',
      repository,
    );
    addField(
      'pointer',
      pointer,
    );
    addField(
      'structureVariant',
      structureVariant,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'type',
      'coordinateSystem',
      'patient',
      'specimen',
      'device',
      'performer',
      'quantity',
      'referenceSeq',
      'variant',
      'observedSeq',
      'quality',
      'readCoverage',
      'repository',
      'pointer',
      'structureVariant',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'coordinateSystem':
        fields.add(coordinateSystem);
      case 'patient':
        if (patient != null) {
          fields.add(patient!);
        }
      case 'specimen':
        if (specimen != null) {
          fields.add(specimen!);
        }
      case 'device':
        if (device != null) {
          fields.add(device!);
        }
      case 'performer':
        if (performer != null) {
          fields.add(performer!);
        }
      case 'quantity':
        if (quantity != null) {
          fields.add(quantity!);
        }
      case 'referenceSeq':
        if (referenceSeq != null) {
          fields.add(referenceSeq!);
        }
      case 'variant':
        if (variant != null) {
          fields.addAll(variant!);
        }
      case 'observedSeq':
        if (observedSeq != null) {
          fields.add(observedSeq!);
        }
      case 'quality':
        if (quality != null) {
          fields.addAll(quality!);
        }
      case 'readCoverage':
        if (readCoverage != null) {
          fields.add(readCoverage!);
        }
      case 'repository':
        if (repository != null) {
          fields.addAll(repository!);
        }
      case 'pointer':
        if (pointer != null) {
          fields.addAll(pointer!);
        }
      case 'structureVariant':
        if (structureVariant != null) {
          fields.addAll(structureVariant!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  MolecularSequence clone() => copyWith();

  /// Copy function for [MolecularSequence]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularSequenceCopyWith<MolecularSequence> get copyWith =>
      _$MolecularSequenceCopyWithImpl<MolecularSequence>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequence) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      coordinateSystem,
      o.coordinateSystem,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      patient,
      o.patient,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      specimen,
      o.specimen,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      device,
      o.device,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      referenceSeq,
      o.referenceSeq,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<MolecularSequenceVariant>(
      variant,
      o.variant,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      observedSeq,
      o.observedSeq,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<MolecularSequenceQuality>(
      quality,
      o.quality,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      readCoverage,
      o.readCoverage,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<MolecularSequenceRepository>(
      repository,
      o.repository,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      pointer,
      o.pointer,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<MolecularSequenceStructureVariant>(
      structureVariant,
      o.structureVariant,
    )) {
      return false;
    }
    return true;
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceReferenceSeq.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequenceReferenceSeq(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      chromosome: JsonParser.parseObject<CodeableConcept>(
        json,
        'chromosome',
        CodeableConcept.fromJson,
      ),
      genomeBuild: JsonParser.parsePrimitive<FhirString>(
        json,
        'genomeBuild',
        FhirString.fromJson,
      ),
      orientation: JsonParser.parsePrimitive<OrientationType>(
        json,
        'orientation',
        OrientationType.fromJson,
      ),
      referenceSeqId: JsonParser.parseObject<CodeableConcept>(
        json,
        'referenceSeqId',
        CodeableConcept.fromJson,
      ),
      referenceSeqPointer: JsonParser.parseObject<Reference>(
        json,
        'referenceSeqPointer',
        Reference.fromJson,
      ),
      referenceSeqString: JsonParser.parsePrimitive<FhirString>(
        json,
        'referenceSeqString',
        FhirString.fromJson,
      ),
      strand: JsonParser.parsePrimitive<StrandType>(
        json,
        'strand',
        StrandType.fromJson,
      ),
      windowStart: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'windowStart',
        FhirInteger.fromJson,
      ),
      windowEnd: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'windowEnd',
        FhirInteger.fromJson,
      ),
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
    if (json is Map<String, dynamic>) {
      return MolecularSequenceReferenceSeq.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'chromosome',
      chromosome,
    );
    addField(
      'genomeBuild',
      genomeBuild,
    );
    addField(
      'orientation',
      orientation,
    );
    addField(
      'referenceSeqId',
      referenceSeqId,
    );
    addField(
      'referenceSeqPointer',
      referenceSeqPointer,
    );
    addField(
      'referenceSeqString',
      referenceSeqString,
    );
    addField(
      'strand',
      strand,
    );
    addField(
      'windowStart',
      windowStart,
    );
    addField(
      'windowEnd',
      windowEnd,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'chromosome',
      'genomeBuild',
      'orientation',
      'referenceSeqId',
      'referenceSeqPointer',
      'referenceSeqString',
      'strand',
      'windowStart',
      'windowEnd',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'chromosome':
        if (chromosome != null) {
          fields.add(chromosome!);
        }
      case 'genomeBuild':
        if (genomeBuild != null) {
          fields.add(genomeBuild!);
        }
      case 'orientation':
        if (orientation != null) {
          fields.add(orientation!);
        }
      case 'referenceSeqId':
        if (referenceSeqId != null) {
          fields.add(referenceSeqId!);
        }
      case 'referenceSeqPointer':
        if (referenceSeqPointer != null) {
          fields.add(referenceSeqPointer!);
        }
      case 'referenceSeqString':
        if (referenceSeqString != null) {
          fields.add(referenceSeqString!);
        }
      case 'strand':
        if (strand != null) {
          fields.add(strand!);
        }
      case 'windowStart':
        if (windowStart != null) {
          fields.add(windowStart!);
        }
      case 'windowEnd':
        if (windowEnd != null) {
          fields.add(windowEnd!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  MolecularSequenceReferenceSeq clone() => copyWith();

  /// Copy function for [MolecularSequenceReferenceSeq]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularSequenceReferenceSeqCopyWith<MolecularSequenceReferenceSeq>
      get copyWith => _$MolecularSequenceReferenceSeqCopyWithImpl<
              MolecularSequenceReferenceSeq>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequenceReferenceSeq) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      chromosome,
      o.chromosome,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      genomeBuild,
      o.genomeBuild,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      orientation,
      o.orientation,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      referenceSeqId,
      o.referenceSeqId,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      referenceSeqPointer,
      o.referenceSeqPointer,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      referenceSeqString,
      o.referenceSeqString,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      strand,
      o.strand,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      windowStart,
      o.windowStart,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      windowEnd,
      o.windowEnd,
    )) {
      return false;
    }
    return true;
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceVariant.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequenceVariant(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      start: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'start',
        FhirInteger.fromJson,
      ),
      end: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'end',
        FhirInteger.fromJson,
      ),
      observedAllele: JsonParser.parsePrimitive<FhirString>(
        json,
        'observedAllele',
        FhirString.fromJson,
      ),
      referenceAllele: JsonParser.parsePrimitive<FhirString>(
        json,
        'referenceAllele',
        FhirString.fromJson,
      ),
      cigar: JsonParser.parsePrimitive<FhirString>(
        json,
        'cigar',
        FhirString.fromJson,
      ),
      variantPointer: JsonParser.parseObject<Reference>(
        json,
        'variantPointer',
        Reference.fromJson,
      ),
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
    if (json is Map<String, dynamic>) {
      return MolecularSequenceVariant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'start',
      start,
    );
    addField(
      'end',
      end,
    );
    addField(
      'observedAllele',
      observedAllele,
    );
    addField(
      'referenceAllele',
      referenceAllele,
    );
    addField(
      'cigar',
      cigar,
    );
    addField(
      'variantPointer',
      variantPointer,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'start',
      'end',
      'observedAllele',
      'referenceAllele',
      'cigar',
      'variantPointer',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'start':
        if (start != null) {
          fields.add(start!);
        }
      case 'end':
        if (end != null) {
          fields.add(end!);
        }
      case 'observedAllele':
        if (observedAllele != null) {
          fields.add(observedAllele!);
        }
      case 'referenceAllele':
        if (referenceAllele != null) {
          fields.add(referenceAllele!);
        }
      case 'cigar':
        if (cigar != null) {
          fields.add(cigar!);
        }
      case 'variantPointer':
        if (variantPointer != null) {
          fields.add(variantPointer!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  MolecularSequenceVariant clone() => copyWith();

  /// Copy function for [MolecularSequenceVariant]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularSequenceVariantCopyWith<MolecularSequenceVariant> get copyWith =>
      _$MolecularSequenceVariantCopyWithImpl<MolecularSequenceVariant>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequenceVariant) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      start,
      o.start,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      end,
      o.end,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      observedAllele,
      o.observedAllele,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      referenceAllele,
      o.referenceAllele,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      cigar,
      o.cigar,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      variantPointer,
      o.variantPointer,
    )) {
      return false;
    }
    return true;
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceQuality.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequenceQuality(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<QualityType>(
        json,
        'type',
        QualityType.fromJson,
      )!,
      standardSequence: JsonParser.parseObject<CodeableConcept>(
        json,
        'standardSequence',
        CodeableConcept.fromJson,
      ),
      start: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'start',
        FhirInteger.fromJson,
      ),
      end: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'end',
        FhirInteger.fromJson,
      ),
      score: JsonParser.parseObject<Quantity>(
        json,
        'score',
        Quantity.fromJson,
      ),
      method: JsonParser.parseObject<CodeableConcept>(
        json,
        'method',
        CodeableConcept.fromJson,
      ),
      truthTP: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'truthTP',
        FhirDecimal.fromJson,
      ),
      queryTP: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'queryTP',
        FhirDecimal.fromJson,
      ),
      truthFN: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'truthFN',
        FhirDecimal.fromJson,
      ),
      queryFP: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'queryFP',
        FhirDecimal.fromJson,
      ),
      gtFP: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'gtFP',
        FhirDecimal.fromJson,
      ),
      precision: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'precision',
        FhirDecimal.fromJson,
      ),
      recall: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'recall',
        FhirDecimal.fromJson,
      ),
      fScore: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'fScore',
        FhirDecimal.fromJson,
      ),
      roc: JsonParser.parseObject<MolecularSequenceRoc>(
        json,
        'roc',
        MolecularSequenceRoc.fromJson,
      ),
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
    if (json is Map<String, dynamic>) {
      return MolecularSequenceQuality.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'type',
      type,
    );
    addField(
      'standardSequence',
      standardSequence,
    );
    addField(
      'start',
      start,
    );
    addField(
      'end',
      end,
    );
    addField(
      'score',
      score,
    );
    addField(
      'method',
      method,
    );
    addField(
      'truthTP',
      truthTP,
    );
    addField(
      'queryTP',
      queryTP,
    );
    addField(
      'truthFN',
      truthFN,
    );
    addField(
      'queryFP',
      queryFP,
    );
    addField(
      'gtFP',
      gtFP,
    );
    addField(
      'precision',
      precision,
    );
    addField(
      'recall',
      recall,
    );
    addField(
      'fScore',
      fScore,
    );
    addField(
      'roc',
      roc,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'standardSequence',
      'start',
      'end',
      'score',
      'method',
      'truthTP',
      'queryTP',
      'truthFN',
      'queryFP',
      'gtFP',
      'precision',
      'recall',
      'fScore',
      'roc',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        fields.add(type);
      case 'standardSequence':
        if (standardSequence != null) {
          fields.add(standardSequence!);
        }
      case 'start':
        if (start != null) {
          fields.add(start!);
        }
      case 'end':
        if (end != null) {
          fields.add(end!);
        }
      case 'score':
        if (score != null) {
          fields.add(score!);
        }
      case 'method':
        if (method != null) {
          fields.add(method!);
        }
      case 'truthTP':
        if (truthTP != null) {
          fields.add(truthTP!);
        }
      case 'queryTP':
        if (queryTP != null) {
          fields.add(queryTP!);
        }
      case 'truthFN':
        if (truthFN != null) {
          fields.add(truthFN!);
        }
      case 'queryFP':
        if (queryFP != null) {
          fields.add(queryFP!);
        }
      case 'gtFP':
        if (gtFP != null) {
          fields.add(gtFP!);
        }
      case 'precision':
        if (precision != null) {
          fields.add(precision!);
        }
      case 'recall':
        if (recall != null) {
          fields.add(recall!);
        }
      case 'fScore':
        if (fScore != null) {
          fields.add(fScore!);
        }
      case 'roc':
        if (roc != null) {
          fields.add(roc!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  MolecularSequenceQuality clone() => copyWith();

  /// Copy function for [MolecularSequenceQuality]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularSequenceQualityCopyWith<MolecularSequenceQuality> get copyWith =>
      _$MolecularSequenceQualityCopyWithImpl<MolecularSequenceQuality>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequenceQuality) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      standardSequence,
      o.standardSequence,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      start,
      o.start,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      end,
      o.end,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      score,
      o.score,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      method,
      o.method,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      truthTP,
      o.truthTP,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      queryTP,
      o.queryTP,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      truthFN,
      o.truthFN,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      queryFP,
      o.queryFP,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      gtFP,
      o.gtFP,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      precision,
      o.precision,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      recall,
      o.recall,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      fScore,
      o.fScore,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      roc,
      o.roc,
    )) {
      return false;
    }
    return true;
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceRoc.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequenceRoc(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      score: JsonParser.parsePrimitiveList<FhirInteger>(
        json,
        'score',
        FhirInteger.fromJson,
      ),
      numTP: JsonParser.parsePrimitiveList<FhirInteger>(
        json,
        'numTP',
        FhirInteger.fromJson,
      ),
      numFP: JsonParser.parsePrimitiveList<FhirInteger>(
        json,
        'numFP',
        FhirInteger.fromJson,
      ),
      numFN: JsonParser.parsePrimitiveList<FhirInteger>(
        json,
        'numFN',
        FhirInteger.fromJson,
      ),
      precision: JsonParser.parsePrimitiveList<FhirDecimal>(
        json,
        'precision',
        FhirDecimal.fromJson,
      ),
      sensitivity: JsonParser.parsePrimitiveList<FhirDecimal>(
        json,
        'sensitivity',
        FhirDecimal.fromJson,
      ),
      fMeasure: JsonParser.parsePrimitiveList<FhirDecimal>(
        json,
        'fMeasure',
        FhirDecimal.fromJson,
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
    if (json is Map<String, dynamic>) {
      return MolecularSequenceRoc.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'score',
      score,
    );
    addField(
      'numTP',
      numTP,
    );
    addField(
      'numFP',
      numFP,
    );
    addField(
      'numFN',
      numFN,
    );
    addField(
      'precision',
      precision,
    );
    addField(
      'sensitivity',
      sensitivity,
    );
    addField(
      'fMeasure',
      fMeasure,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'score',
      'numTP',
      'numFP',
      'numFN',
      'precision',
      'sensitivity',
      'fMeasure',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'score':
        if (score != null) {
          fields.addAll(score!);
        }
      case 'numTP':
        if (numTP != null) {
          fields.addAll(numTP!);
        }
      case 'numFP':
        if (numFP != null) {
          fields.addAll(numFP!);
        }
      case 'numFN':
        if (numFN != null) {
          fields.addAll(numFN!);
        }
      case 'precision':
        if (precision != null) {
          fields.addAll(precision!);
        }
      case 'sensitivity':
        if (sensitivity != null) {
          fields.addAll(sensitivity!);
        }
      case 'fMeasure':
        if (fMeasure != null) {
          fields.addAll(fMeasure!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  MolecularSequenceRoc clone() => copyWith();

  /// Copy function for [MolecularSequenceRoc]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularSequenceRocCopyWith<MolecularSequenceRoc> get copyWith =>
      _$MolecularSequenceRocCopyWithImpl<MolecularSequenceRoc>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequenceRoc) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirInteger>(
      score,
      o.score,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirInteger>(
      numTP,
      o.numTP,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirInteger>(
      numFP,
      o.numFP,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirInteger>(
      numFN,
      o.numFN,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirDecimal>(
      precision,
      o.precision,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirDecimal>(
      sensitivity,
      o.sensitivity,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirDecimal>(
      fMeasure,
      o.fMeasure,
    )) {
      return false;
    }
    return true;
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceRepository.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequenceRepository(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<RepositoryType>(
        json,
        'type',
        RepositoryType.fromJson,
      )!,
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      datasetId: JsonParser.parsePrimitive<FhirString>(
        json,
        'datasetId',
        FhirString.fromJson,
      ),
      variantsetId: JsonParser.parsePrimitive<FhirString>(
        json,
        'variantsetId',
        FhirString.fromJson,
      ),
      readsetId: JsonParser.parsePrimitive<FhirString>(
        json,
        'readsetId',
        FhirString.fromJson,
      ),
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
    if (json is Map<String, dynamic>) {
      return MolecularSequenceRepository.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'type',
      type,
    );
    addField(
      'url',
      url,
    );
    addField(
      'name',
      name,
    );
    addField(
      'datasetId',
      datasetId,
    );
    addField(
      'variantsetId',
      variantsetId,
    );
    addField(
      'readsetId',
      readsetId,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'url',
      'name',
      'datasetId',
      'variantsetId',
      'readsetId',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        fields.add(type);
      case 'url':
        if (url != null) {
          fields.add(url!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'datasetId':
        if (datasetId != null) {
          fields.add(datasetId!);
        }
      case 'variantsetId':
        if (variantsetId != null) {
          fields.add(variantsetId!);
        }
      case 'readsetId':
        if (readsetId != null) {
          fields.add(readsetId!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  MolecularSequenceRepository clone() => copyWith();

  /// Copy function for [MolecularSequenceRepository]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularSequenceRepositoryCopyWith<MolecularSequenceRepository>
      get copyWith => _$MolecularSequenceRepositoryCopyWithImpl<
              MolecularSequenceRepository>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequenceRepository) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      datasetId,
      o.datasetId,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      variantsetId,
      o.variantsetId,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      readsetId,
      o.readsetId,
    )) {
      return false;
    }
    return true;
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceStructureVariant.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequenceStructureVariant(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      variantType: JsonParser.parseObject<CodeableConcept>(
        json,
        'variantType',
        CodeableConcept.fromJson,
      ),
      exact: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'exact',
        FhirBoolean.fromJson,
      ),
      length: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'length',
        FhirInteger.fromJson,
      ),
      outer: JsonParser.parseObject<MolecularSequenceOuter>(
        json,
        'outer',
        MolecularSequenceOuter.fromJson,
      ),
      inner: JsonParser.parseObject<MolecularSequenceInner>(
        json,
        'inner',
        MolecularSequenceInner.fromJson,
      ),
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
    if (json is Map<String, dynamic>) {
      return MolecularSequenceStructureVariant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'variantType',
      variantType,
    );
    addField(
      'exact',
      exact,
    );
    addField(
      'length',
      length,
    );
    addField(
      'outer',
      outer,
    );
    addField(
      'inner',
      inner,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'variantType',
      'exact',
      'length',
      'outer',
      'inner',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'variantType':
        if (variantType != null) {
          fields.add(variantType!);
        }
      case 'exact':
        if (exact != null) {
          fields.add(exact!);
        }
      case 'length':
        if (length != null) {
          fields.add(length!);
        }
      case 'outer':
        if (outer != null) {
          fields.add(outer!);
        }
      case 'inner':
        if (inner != null) {
          fields.add(inner!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  MolecularSequenceStructureVariant clone() => copyWith();

  /// Copy function for [MolecularSequenceStructureVariant]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularSequenceStructureVariantCopyWith<MolecularSequenceStructureVariant>
      get copyWith => _$MolecularSequenceStructureVariantCopyWithImpl<
              MolecularSequenceStructureVariant>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequenceStructureVariant) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      variantType,
      o.variantType,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      exact,
      o.exact,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      length,
      o.length,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      outer,
      o.outer,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      inner,
      o.inner,
    )) {
      return false;
    }
    return true;
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceOuter.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequenceOuter(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      start: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'start',
        FhirInteger.fromJson,
      ),
      end: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'end',
        FhirInteger.fromJson,
      ),
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
    if (json is Map<String, dynamic>) {
      return MolecularSequenceOuter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'start',
      start,
    );
    addField(
      'end',
      end,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'start',
      'end',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'start':
        if (start != null) {
          fields.add(start!);
        }
      case 'end':
        if (end != null) {
          fields.add(end!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  MolecularSequenceOuter clone() => copyWith();

  /// Copy function for [MolecularSequenceOuter]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularSequenceOuterCopyWith<MolecularSequenceOuter> get copyWith =>
      _$MolecularSequenceOuterCopyWithImpl<MolecularSequenceOuter>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequenceOuter) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      start,
      o.start,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      end,
      o.end,
    )) {
      return false;
    }
    return true;
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceInner.fromJson(
    Map<String, dynamic> json,
  ) {
    return MolecularSequenceInner(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      start: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'start',
        FhirInteger.fromJson,
      ),
      end: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'end',
        FhirInteger.fromJson,
      ),
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
    if (json is Map<String, dynamic>) {
      return MolecularSequenceInner.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'start',
      start,
    );
    addField(
      'end',
      end,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'start',
      'end',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'start':
        if (start != null) {
          fields.add(start!);
        }
      case 'end':
        if (end != null) {
          fields.add(end!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  MolecularSequenceInner clone() => copyWith();

  /// Copy function for [MolecularSequenceInner]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $MolecularSequenceInnerCopyWith<MolecularSequenceInner> get copyWith =>
      _$MolecularSequenceInnerCopyWithImpl<MolecularSequenceInner>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequenceInner) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      start,
      o.start,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      end,
      o.end,
    )) {
      return false;
    }
    return true;
  }
}
