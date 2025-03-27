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
  }) : super(
          objectPath: 'MolecularSequence',
          resourceType: R4ResourceType.MolecularSequence,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MolecularSequence.empty() => MolecularSequence(
        coordinateSystem: FhirInteger.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequence.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence';
    return MolecularSequence(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<SequenceType>(
        json,
        'type',
        SequenceType.fromJson,
        '$objectPath.type',
      ),
      coordinateSystem: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'coordinateSystem',
        FhirInteger.fromJson,
        '$objectPath.coordinateSystem',
      )!,
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
        '$objectPath.patient',
      ),
      specimen: JsonParser.parseObject<Reference>(
        json,
        'specimen',
        Reference.fromJson,
        '$objectPath.specimen',
      ),
      device: JsonParser.parseObject<Reference>(
        json,
        'device',
        Reference.fromJson,
        '$objectPath.device',
      ),
      performer: JsonParser.parseObject<Reference>(
        json,
        'performer',
        Reference.fromJson,
        '$objectPath.performer',
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
        '$objectPath.quantity',
      ),
      referenceSeq: JsonParser.parseObject<MolecularSequenceReferenceSeq>(
        json,
        'referenceSeq',
        MolecularSequenceReferenceSeq.fromJson,
        '$objectPath.referenceSeq',
      ),
      variant: (json['variant'] as List<dynamic>?)
          ?.map<MolecularSequenceVariant>(
            (v) => MolecularSequenceVariant.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.variant',
              },
            ),
          )
          .toList(),
      observedSeq: JsonParser.parsePrimitive<FhirString>(
        json,
        'observedSeq',
        FhirString.fromJson,
        '$objectPath.observedSeq',
      ),
      quality: (json['quality'] as List<dynamic>?)
          ?.map<MolecularSequenceQuality>(
            (v) => MolecularSequenceQuality.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.quality',
              },
            ),
          )
          .toList(),
      readCoverage: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'readCoverage',
        FhirInteger.fromJson,
        '$objectPath.readCoverage',
      ),
      repository: (json['repository'] as List<dynamic>?)
          ?.map<MolecularSequenceRepository>(
            (v) => MolecularSequenceRepository.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.repository',
              },
            ),
          )
          .toList(),
      pointer: (json['pointer'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.pointer',
              },
            ),
          )
          .toList(),
      structureVariant: (json['structureVariant'] as List<dynamic>?)
          ?.map<MolecularSequenceStructureVariant>(
            (v) => MolecularSequenceStructureVariant.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.structureVariant',
              },
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            // Add all elements from passed list
            final newList = [...?contained, ...child];
            return copyWith(contained: newList);
          } else if (child is Resource) {
            // Add single element to existing list or create new list
            final newList = [...?contained, child];
            return copyWith(contained: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            // Add all elements from passed list
            final newList = [...?identifier, ...child];
            return copyWith(identifier: newList);
          } else if (child is Identifier) {
            // Add single element to existing list or create new list
            final newList = [...?identifier, child];
            return copyWith(identifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is SequenceType) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'coordinateSystem':
        {
          if (child is FhirInteger) {
            return copyWith(coordinateSystem: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patient':
        {
          if (child is Reference) {
            return copyWith(patient: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'specimen':
        {
          if (child is Reference) {
            return copyWith(specimen: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'device':
        {
          if (child is Reference) {
            return copyWith(device: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'performer':
        {
          if (child is Reference) {
            return copyWith(performer: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is Quantity) {
            return copyWith(quantity: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'referenceSeq':
        {
          if (child is MolecularSequenceReferenceSeq) {
            return copyWith(referenceSeq: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'variant':
        {
          if (child is List<MolecularSequenceVariant>) {
            // Add all elements from passed list
            final newList = [...?variant, ...child];
            return copyWith(variant: newList);
          } else if (child is MolecularSequenceVariant) {
            // Add single element to existing list or create new list
            final newList = [...?variant, child];
            return copyWith(variant: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'observedSeq':
        {
          if (child is FhirString) {
            return copyWith(observedSeq: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quality':
        {
          if (child is List<MolecularSequenceQuality>) {
            // Add all elements from passed list
            final newList = [...?quality, ...child];
            return copyWith(quality: newList);
          } else if (child is MolecularSequenceQuality) {
            // Add single element to existing list or create new list
            final newList = [...?quality, child];
            return copyWith(quality: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'readCoverage':
        {
          if (child is FhirInteger) {
            return copyWith(readCoverage: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'repository':
        {
          if (child is List<MolecularSequenceRepository>) {
            // Add all elements from passed list
            final newList = [...?repository, ...child];
            return copyWith(repository: newList);
          } else if (child is MolecularSequenceRepository) {
            // Add single element to existing list or create new list
            final newList = [...?repository, child];
            return copyWith(repository: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'pointer':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?pointer, ...child];
            return copyWith(pointer: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?pointer, child];
            return copyWith(pointer: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'structureVariant':
        {
          if (child is List<MolecularSequenceStructureVariant>) {
            // Add all elements from passed list
            final newList = [...?structureVariant, ...child];
            return copyWith(structureVariant: newList);
          } else if (child is MolecularSequenceStructureVariant) {
            // Add single element to existing list or create new list
            final newList = [...?structureVariant, child];
            return copyWith(structureVariant: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'identifier':
        return ['Identifier'];
      case 'type':
        return ['FhirCode'];
      case 'coordinateSystem':
        return ['FhirInteger'];
      case 'patient':
        return ['Reference'];
      case 'specimen':
        return ['Reference'];
      case 'device':
        return ['Reference'];
      case 'performer':
        return ['Reference'];
      case 'quantity':
        return ['Quantity'];
      case 'referenceSeq':
        return ['MolecularSequenceReferenceSeq'];
      case 'variant':
        return ['MolecularSequenceVariant'];
      case 'observedSeq':
        return ['FhirString'];
      case 'quality':
        return ['MolecularSequenceQuality'];
      case 'readCoverage':
        return ['FhirInteger'];
      case 'repository':
        return ['MolecularSequenceRepository'];
      case 'pointer':
        return ['Reference'];
      case 'structureVariant':
        return ['MolecularSequenceStructureVariant'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularSequence]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MolecularSequence createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'meta':
        {
          return copyWith(
            meta: FhirMeta.empty(),
          );
        }
      case 'implicitRules':
        {
          return copyWith(
            implicitRules: FhirUri.empty(),
          );
        }
      case 'language':
        {
          return copyWith(
            language: CommonLanguages.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: Narrative.empty(),
          );
        }
      case 'contained':
        {
          return copyWith(
            contained: <Resource>[],
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: <Identifier>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: SequenceType.empty(),
          );
        }
      case 'coordinateSystem':
        {
          return copyWith(
            coordinateSystem: FhirInteger.empty(),
          );
        }
      case 'patient':
        {
          return copyWith(
            patient: Reference.empty(),
          );
        }
      case 'specimen':
        {
          return copyWith(
            specimen: Reference.empty(),
          );
        }
      case 'device':
        {
          return copyWith(
            device: Reference.empty(),
          );
        }
      case 'performer':
        {
          return copyWith(
            performer: Reference.empty(),
          );
        }
      case 'quantity':
        {
          return copyWith(
            quantity: Quantity.empty(),
          );
        }
      case 'referenceSeq':
        {
          return copyWith(
            referenceSeq: MolecularSequenceReferenceSeq.empty(),
          );
        }
      case 'variant':
        {
          return copyWith(
            variant: <MolecularSequenceVariant>[],
          );
        }
      case 'observedSeq':
        {
          return copyWith(
            observedSeq: FhirString.empty(),
          );
        }
      case 'quality':
        {
          return copyWith(
            quality: <MolecularSequenceQuality>[],
          );
        }
      case 'readCoverage':
        {
          return copyWith(
            readCoverage: FhirInteger.empty(),
          );
        }
      case 'repository':
        {
          return copyWith(
            repository: <MolecularSequenceRepository>[],
          );
        }
      case 'pointer':
        {
          return copyWith(
            pointer: <Reference>[],
          );
        }
      case 'structureVariant':
        {
          return copyWith(
            structureVariant: <MolecularSequenceStructureVariant>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MolecularSequence clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool type = false,
    bool patient = false,
    bool specimen = false,
    bool device = false,
    bool performer = false,
    bool quantity = false,
    bool referenceSeq = false,
    bool variant = false,
    bool observedSeq = false,
    bool quality = false,
    bool readCoverage = false,
    bool repository = false,
    bool pointer = false,
    bool structureVariant = false,
  }) {
    return MolecularSequence(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      type: type ? null : this.type,
      coordinateSystem: coordinateSystem,
      patient: patient ? null : this.patient,
      specimen: specimen ? null : this.specimen,
      device: device ? null : this.device,
      performer: performer ? null : this.performer,
      quantity: quantity ? null : this.quantity,
      referenceSeq: referenceSeq ? null : this.referenceSeq,
      variant: variant ? null : this.variant,
      observedSeq: observedSeq ? null : this.observedSeq,
      quality: quality ? null : this.quality,
      readCoverage: readCoverage ? null : this.readCoverage,
      repository: repository ? null : this.repository,
      pointer: pointer ? null : this.pointer,
      structureVariant: structureVariant ? null : this.structureVariant,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return MolecularSequence(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      coordinateSystem: coordinateSystem?.copyWith(
            objectPath: '$newObjectPath.coordinateSystem',
          ) ??
          this.coordinateSystem,
      patient: patient?.copyWith(
            objectPath: '$newObjectPath.patient',
          ) ??
          this.patient,
      specimen: specimen?.copyWith(
            objectPath: '$newObjectPath.specimen',
          ) ??
          this.specimen,
      device: device?.copyWith(
            objectPath: '$newObjectPath.device',
          ) ??
          this.device,
      performer: performer?.copyWith(
            objectPath: '$newObjectPath.performer',
          ) ??
          this.performer,
      quantity: quantity?.copyWith(
            objectPath: '$newObjectPath.quantity',
          ) ??
          this.quantity,
      referenceSeq: referenceSeq?.copyWith(
            objectPath: '$newObjectPath.referenceSeq',
          ) ??
          this.referenceSeq,
      variant: variant
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.variant',
                ),
              )
              .toList() ??
          this.variant,
      observedSeq: observedSeq?.copyWith(
            objectPath: '$newObjectPath.observedSeq',
          ) ??
          this.observedSeq,
      quality: quality
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.quality',
                ),
              )
              .toList() ??
          this.quality,
      readCoverage: readCoverage?.copyWith(
            objectPath: '$newObjectPath.readCoverage',
          ) ??
          this.readCoverage,
      repository: repository
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.repository',
                ),
              )
              .toList() ??
          this.repository,
      pointer: pointer
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.pointer',
                ),
              )
              .toList() ??
          this.pointer,
      structureVariant: structureVariant
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.structureVariant',
                ),
              )
              .toList() ??
          this.structureVariant,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequence) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      coordinateSystem,
      o.coordinateSystem,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      patient,
      o.patient,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      specimen,
      o.specimen,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      device,
      o.device,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      quantity,
      o.quantity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      referenceSeq,
      o.referenceSeq,
    )) {
      return false;
    }
    if (!listEquals<MolecularSequenceVariant>(
      variant,
      o.variant,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      observedSeq,
      o.observedSeq,
    )) {
      return false;
    }
    if (!listEquals<MolecularSequenceQuality>(
      quality,
      o.quality,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      readCoverage,
      o.readCoverage,
    )) {
      return false;
    }
    if (!listEquals<MolecularSequenceRepository>(
      repository,
      o.repository,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      pointer,
      o.pointer,
    )) {
      return false;
    }
    if (!listEquals<MolecularSequenceStructureVariant>(
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
  }) : super(
          objectPath: 'MolecularSequence.referenceSeq',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MolecularSequenceReferenceSeq.empty() =>
      const MolecularSequenceReferenceSeq();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceReferenceSeq.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence.referenceSeq';
    return MolecularSequenceReferenceSeq(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      chromosome: JsonParser.parseObject<CodeableConcept>(
        json,
        'chromosome',
        CodeableConcept.fromJson,
        '$objectPath.chromosome',
      ),
      genomeBuild: JsonParser.parsePrimitive<FhirString>(
        json,
        'genomeBuild',
        FhirString.fromJson,
        '$objectPath.genomeBuild',
      ),
      orientation: JsonParser.parsePrimitive<OrientationType>(
        json,
        'orientation',
        OrientationType.fromJson,
        '$objectPath.orientation',
      ),
      referenceSeqId: JsonParser.parseObject<CodeableConcept>(
        json,
        'referenceSeqId',
        CodeableConcept.fromJson,
        '$objectPath.referenceSeqId',
      ),
      referenceSeqPointer: JsonParser.parseObject<Reference>(
        json,
        'referenceSeqPointer',
        Reference.fromJson,
        '$objectPath.referenceSeqPointer',
      ),
      referenceSeqString: JsonParser.parsePrimitive<FhirString>(
        json,
        'referenceSeqString',
        FhirString.fromJson,
        '$objectPath.referenceSeqString',
      ),
      strand: JsonParser.parsePrimitive<StrandType>(
        json,
        'strand',
        StrandType.fromJson,
        '$objectPath.strand',
      ),
      windowStart: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'windowStart',
        FhirInteger.fromJson,
        '$objectPath.windowStart',
      ),
      windowEnd: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'windowEnd',
        FhirInteger.fromJson,
        '$objectPath.windowEnd',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'chromosome':
        {
          if (child is CodeableConcept) {
            return copyWith(chromosome: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'genomeBuild':
        {
          if (child is FhirString) {
            return copyWith(genomeBuild: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'orientation':
        {
          if (child is OrientationType) {
            return copyWith(orientation: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'referenceSeqId':
        {
          if (child is CodeableConcept) {
            return copyWith(referenceSeqId: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'referenceSeqPointer':
        {
          if (child is Reference) {
            return copyWith(referenceSeqPointer: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'referenceSeqString':
        {
          if (child is FhirString) {
            return copyWith(referenceSeqString: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'strand':
        {
          if (child is StrandType) {
            return copyWith(strand: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'windowStart':
        {
          if (child is FhirInteger) {
            return copyWith(windowStart: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'windowEnd':
        {
          if (child is FhirInteger) {
            return copyWith(windowEnd: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'chromosome':
        return ['CodeableConcept'];
      case 'genomeBuild':
        return ['FhirString'];
      case 'orientation':
        return ['FhirCode'];
      case 'referenceSeqId':
        return ['CodeableConcept'];
      case 'referenceSeqPointer':
        return ['Reference'];
      case 'referenceSeqString':
        return ['FhirString'];
      case 'strand':
        return ['FhirCode'];
      case 'windowStart':
        return ['FhirInteger'];
      case 'windowEnd':
        return ['FhirInteger'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularSequenceReferenceSeq]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MolecularSequenceReferenceSeq createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'chromosome':
        {
          return copyWith(
            chromosome: CodeableConcept.empty(),
          );
        }
      case 'genomeBuild':
        {
          return copyWith(
            genomeBuild: FhirString.empty(),
          );
        }
      case 'orientation':
        {
          return copyWith(
            orientation: OrientationType.empty(),
          );
        }
      case 'referenceSeqId':
        {
          return copyWith(
            referenceSeqId: CodeableConcept.empty(),
          );
        }
      case 'referenceSeqPointer':
        {
          return copyWith(
            referenceSeqPointer: Reference.empty(),
          );
        }
      case 'referenceSeqString':
        {
          return copyWith(
            referenceSeqString: FhirString.empty(),
          );
        }
      case 'strand':
        {
          return copyWith(
            strand: StrandType.empty(),
          );
        }
      case 'windowStart':
        {
          return copyWith(
            windowStart: FhirInteger.empty(),
          );
        }
      case 'windowEnd':
        {
          return copyWith(
            windowEnd: FhirInteger.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MolecularSequenceReferenceSeq clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool chromosome = false,
    bool genomeBuild = false,
    bool orientation = false,
    bool referenceSeqId = false,
    bool referenceSeqPointer = false,
    bool referenceSeqString = false,
    bool strand = false,
    bool windowStart = false,
    bool windowEnd = false,
  }) {
    return MolecularSequenceReferenceSeq(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      chromosome: chromosome ? null : this.chromosome,
      genomeBuild: genomeBuild ? null : this.genomeBuild,
      orientation: orientation ? null : this.orientation,
      referenceSeqId: referenceSeqId ? null : this.referenceSeqId,
      referenceSeqPointer:
          referenceSeqPointer ? null : this.referenceSeqPointer,
      referenceSeqString: referenceSeqString ? null : this.referenceSeqString,
      strand: strand ? null : this.strand,
      windowStart: windowStart ? null : this.windowStart,
      windowEnd: windowEnd ? null : this.windowEnd,
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
    OrientationType? orientation,
    CodeableConcept? referenceSeqId,
    Reference? referenceSeqPointer,
    FhirString? referenceSeqString,
    StrandType? strand,
    FhirInteger? windowStart,
    FhirInteger? windowEnd,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MolecularSequenceReferenceSeq(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      chromosome: chromosome?.copyWith(
            objectPath: '$newObjectPath.chromosome',
          ) ??
          this.chromosome,
      genomeBuild: genomeBuild?.copyWith(
            objectPath: '$newObjectPath.genomeBuild',
          ) ??
          this.genomeBuild,
      orientation: orientation?.copyWith(
            objectPath: '$newObjectPath.orientation',
          ) ??
          this.orientation,
      referenceSeqId: referenceSeqId?.copyWith(
            objectPath: '$newObjectPath.referenceSeqId',
          ) ??
          this.referenceSeqId,
      referenceSeqPointer: referenceSeqPointer?.copyWith(
            objectPath: '$newObjectPath.referenceSeqPointer',
          ) ??
          this.referenceSeqPointer,
      referenceSeqString: referenceSeqString?.copyWith(
            objectPath: '$newObjectPath.referenceSeqString',
          ) ??
          this.referenceSeqString,
      strand: strand?.copyWith(
            objectPath: '$newObjectPath.strand',
          ) ??
          this.strand,
      windowStart: windowStart?.copyWith(
            objectPath: '$newObjectPath.windowStart',
          ) ??
          this.windowStart,
      windowEnd: windowEnd?.copyWith(
            objectPath: '$newObjectPath.windowEnd',
          ) ??
          this.windowEnd,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequenceReferenceSeq) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      chromosome,
      o.chromosome,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      genomeBuild,
      o.genomeBuild,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      orientation,
      o.orientation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      referenceSeqId,
      o.referenceSeqId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      referenceSeqPointer,
      o.referenceSeqPointer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      referenceSeqString,
      o.referenceSeqString,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      strand,
      o.strand,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      windowStart,
      o.windowStart,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
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
  }) : super(
          objectPath: 'MolecularSequence.variant',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MolecularSequenceVariant.empty() => const MolecularSequenceVariant();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceVariant.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence.variant';
    return MolecularSequenceVariant(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      start: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'start',
        FhirInteger.fromJson,
        '$objectPath.start',
      ),
      end: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'end',
        FhirInteger.fromJson,
        '$objectPath.end',
      ),
      observedAllele: JsonParser.parsePrimitive<FhirString>(
        json,
        'observedAllele',
        FhirString.fromJson,
        '$objectPath.observedAllele',
      ),
      referenceAllele: JsonParser.parsePrimitive<FhirString>(
        json,
        'referenceAllele',
        FhirString.fromJson,
        '$objectPath.referenceAllele',
      ),
      cigar: JsonParser.parsePrimitive<FhirString>(
        json,
        'cigar',
        FhirString.fromJson,
        '$objectPath.cigar',
      ),
      variantPointer: JsonParser.parseObject<Reference>(
        json,
        'variantPointer',
        Reference.fromJson,
        '$objectPath.variantPointer',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'start':
        {
          if (child is FhirInteger) {
            return copyWith(start: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'end':
        {
          if (child is FhirInteger) {
            return copyWith(end: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'observedAllele':
        {
          if (child is FhirString) {
            return copyWith(observedAllele: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'referenceAllele':
        {
          if (child is FhirString) {
            return copyWith(referenceAllele: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'cigar':
        {
          if (child is FhirString) {
            return copyWith(cigar: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'variantPointer':
        {
          if (child is Reference) {
            return copyWith(variantPointer: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'start':
        return ['FhirInteger'];
      case 'end':
        return ['FhirInteger'];
      case 'observedAllele':
        return ['FhirString'];
      case 'referenceAllele':
        return ['FhirString'];
      case 'cigar':
        return ['FhirString'];
      case 'variantPointer':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularSequenceVariant]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MolecularSequenceVariant createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'start':
        {
          return copyWith(
            start: FhirInteger.empty(),
          );
        }
      case 'end':
        {
          return copyWith(
            end: FhirInteger.empty(),
          );
        }
      case 'observedAllele':
        {
          return copyWith(
            observedAllele: FhirString.empty(),
          );
        }
      case 'referenceAllele':
        {
          return copyWith(
            referenceAllele: FhirString.empty(),
          );
        }
      case 'cigar':
        {
          return copyWith(
            cigar: FhirString.empty(),
          );
        }
      case 'variantPointer':
        {
          return copyWith(
            variantPointer: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MolecularSequenceVariant clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool start = false,
    bool end = false,
    bool observedAllele = false,
    bool referenceAllele = false,
    bool cigar = false,
    bool variantPointer = false,
  }) {
    return MolecularSequenceVariant(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      start: start ? null : this.start,
      end: end ? null : this.end,
      observedAllele: observedAllele ? null : this.observedAllele,
      referenceAllele: referenceAllele ? null : this.referenceAllele,
      cigar: cigar ? null : this.cigar,
      variantPointer: variantPointer ? null : this.variantPointer,
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
    FhirInteger? end,
    FhirString? observedAllele,
    FhirString? referenceAllele,
    FhirString? cigar,
    Reference? variantPointer,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MolecularSequenceVariant(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      start: start?.copyWith(
            objectPath: '$newObjectPath.start',
          ) ??
          this.start,
      end: end?.copyWith(
            objectPath: '$newObjectPath.end',
          ) ??
          this.end,
      observedAllele: observedAllele?.copyWith(
            objectPath: '$newObjectPath.observedAllele',
          ) ??
          this.observedAllele,
      referenceAllele: referenceAllele?.copyWith(
            objectPath: '$newObjectPath.referenceAllele',
          ) ??
          this.referenceAllele,
      cigar: cigar?.copyWith(
            objectPath: '$newObjectPath.cigar',
          ) ??
          this.cigar,
      variantPointer: variantPointer?.copyWith(
            objectPath: '$newObjectPath.variantPointer',
          ) ??
          this.variantPointer,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequenceVariant) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      start,
      o.start,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      end,
      o.end,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      observedAllele,
      o.observedAllele,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      referenceAllele,
      o.referenceAllele,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      cigar,
      o.cigar,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
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
  }) : super(
          objectPath: 'MolecularSequence.quality',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MolecularSequenceQuality.empty() => MolecularSequenceQuality(
        type: QualityType.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceQuality.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence.quality';
    return MolecularSequenceQuality(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<QualityType>(
        json,
        'type',
        QualityType.fromJson,
        '$objectPath.type',
      )!,
      standardSequence: JsonParser.parseObject<CodeableConcept>(
        json,
        'standardSequence',
        CodeableConcept.fromJson,
        '$objectPath.standardSequence',
      ),
      start: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'start',
        FhirInteger.fromJson,
        '$objectPath.start',
      ),
      end: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'end',
        FhirInteger.fromJson,
        '$objectPath.end',
      ),
      score: JsonParser.parseObject<Quantity>(
        json,
        'score',
        Quantity.fromJson,
        '$objectPath.score',
      ),
      method: JsonParser.parseObject<CodeableConcept>(
        json,
        'method',
        CodeableConcept.fromJson,
        '$objectPath.method',
      ),
      truthTP: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'truthTP',
        FhirDecimal.fromJson,
        '$objectPath.truthTP',
      ),
      queryTP: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'queryTP',
        FhirDecimal.fromJson,
        '$objectPath.queryTP',
      ),
      truthFN: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'truthFN',
        FhirDecimal.fromJson,
        '$objectPath.truthFN',
      ),
      queryFP: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'queryFP',
        FhirDecimal.fromJson,
        '$objectPath.queryFP',
      ),
      gtFP: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'gtFP',
        FhirDecimal.fromJson,
        '$objectPath.gtFP',
      ),
      precision: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'precision',
        FhirDecimal.fromJson,
        '$objectPath.precision',
      ),
      recall: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'recall',
        FhirDecimal.fromJson,
        '$objectPath.recall',
      ),
      fScore: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'fScore',
        FhirDecimal.fromJson,
        '$objectPath.fScore',
      ),
      roc: JsonParser.parseObject<MolecularSequenceRoc>(
        json,
        'roc',
        MolecularSequenceRoc.fromJson,
        '$objectPath.roc',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is QualityType) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'standardSequence':
        {
          if (child is CodeableConcept) {
            return copyWith(standardSequence: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'start':
        {
          if (child is FhirInteger) {
            return copyWith(start: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'end':
        {
          if (child is FhirInteger) {
            return copyWith(end: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'score':
        {
          if (child is Quantity) {
            return copyWith(score: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'method':
        {
          if (child is CodeableConcept) {
            return copyWith(method: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'truthTP':
        {
          if (child is FhirDecimal) {
            return copyWith(truthTP: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'queryTP':
        {
          if (child is FhirDecimal) {
            return copyWith(queryTP: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'truthFN':
        {
          if (child is FhirDecimal) {
            return copyWith(truthFN: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'queryFP':
        {
          if (child is FhirDecimal) {
            return copyWith(queryFP: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'gtFP':
        {
          if (child is FhirDecimal) {
            return copyWith(gtFP: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'precision':
        {
          if (child is FhirDecimal) {
            return copyWith(precision: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'recall':
        {
          if (child is FhirDecimal) {
            return copyWith(recall: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fScore':
        {
          if (child is FhirDecimal) {
            return copyWith(fScore: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'roc':
        {
          if (child is MolecularSequenceRoc) {
            return copyWith(roc: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['FhirCode'];
      case 'standardSequence':
        return ['CodeableConcept'];
      case 'start':
        return ['FhirInteger'];
      case 'end':
        return ['FhirInteger'];
      case 'score':
        return ['Quantity'];
      case 'method':
        return ['CodeableConcept'];
      case 'truthTP':
        return ['FhirDecimal'];
      case 'queryTP':
        return ['FhirDecimal'];
      case 'truthFN':
        return ['FhirDecimal'];
      case 'queryFP':
        return ['FhirDecimal'];
      case 'gtFP':
        return ['FhirDecimal'];
      case 'precision':
        return ['FhirDecimal'];
      case 'recall':
        return ['FhirDecimal'];
      case 'fScore':
        return ['FhirDecimal'];
      case 'roc':
        return ['MolecularSequenceRoc'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularSequenceQuality]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MolecularSequenceQuality createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: QualityType.empty(),
          );
        }
      case 'standardSequence':
        {
          return copyWith(
            standardSequence: CodeableConcept.empty(),
          );
        }
      case 'start':
        {
          return copyWith(
            start: FhirInteger.empty(),
          );
        }
      case 'end':
        {
          return copyWith(
            end: FhirInteger.empty(),
          );
        }
      case 'score':
        {
          return copyWith(
            score: Quantity.empty(),
          );
        }
      case 'method':
        {
          return copyWith(
            method: CodeableConcept.empty(),
          );
        }
      case 'truthTP':
        {
          return copyWith(
            truthTP: FhirDecimal.empty(),
          );
        }
      case 'queryTP':
        {
          return copyWith(
            queryTP: FhirDecimal.empty(),
          );
        }
      case 'truthFN':
        {
          return copyWith(
            truthFN: FhirDecimal.empty(),
          );
        }
      case 'queryFP':
        {
          return copyWith(
            queryFP: FhirDecimal.empty(),
          );
        }
      case 'gtFP':
        {
          return copyWith(
            gtFP: FhirDecimal.empty(),
          );
        }
      case 'precision':
        {
          return copyWith(
            precision: FhirDecimal.empty(),
          );
        }
      case 'recall':
        {
          return copyWith(
            recall: FhirDecimal.empty(),
          );
        }
      case 'fScore':
        {
          return copyWith(
            fScore: FhirDecimal.empty(),
          );
        }
      case 'roc':
        {
          return copyWith(
            roc: MolecularSequenceRoc.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MolecularSequenceQuality clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool standardSequence = false,
    bool start = false,
    bool end = false,
    bool score = false,
    bool method = false,
    bool truthTP = false,
    bool queryTP = false,
    bool truthFN = false,
    bool queryFP = false,
    bool gtFP = false,
    bool precision = false,
    bool recall = false,
    bool fScore = false,
    bool roc = false,
  }) {
    return MolecularSequenceQuality(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type,
      standardSequence: standardSequence ? null : this.standardSequence,
      start: start ? null : this.start,
      end: end ? null : this.end,
      score: score ? null : this.score,
      method: method ? null : this.method,
      truthTP: truthTP ? null : this.truthTP,
      queryTP: queryTP ? null : this.queryTP,
      truthFN: truthFN ? null : this.truthFN,
      queryFP: queryFP ? null : this.queryFP,
      gtFP: gtFP ? null : this.gtFP,
      precision: precision ? null : this.precision,
      recall: recall ? null : this.recall,
      fScore: fScore ? null : this.fScore,
      roc: roc ? null : this.roc,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MolecularSequenceQuality(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      standardSequence: standardSequence?.copyWith(
            objectPath: '$newObjectPath.standardSequence',
          ) ??
          this.standardSequence,
      start: start?.copyWith(
            objectPath: '$newObjectPath.start',
          ) ??
          this.start,
      end: end?.copyWith(
            objectPath: '$newObjectPath.end',
          ) ??
          this.end,
      score: score?.copyWith(
            objectPath: '$newObjectPath.score',
          ) ??
          this.score,
      method: method?.copyWith(
            objectPath: '$newObjectPath.method',
          ) ??
          this.method,
      truthTP: truthTP?.copyWith(
            objectPath: '$newObjectPath.truthTP',
          ) ??
          this.truthTP,
      queryTP: queryTP?.copyWith(
            objectPath: '$newObjectPath.queryTP',
          ) ??
          this.queryTP,
      truthFN: truthFN?.copyWith(
            objectPath: '$newObjectPath.truthFN',
          ) ??
          this.truthFN,
      queryFP: queryFP?.copyWith(
            objectPath: '$newObjectPath.queryFP',
          ) ??
          this.queryFP,
      gtFP: gtFP?.copyWith(
            objectPath: '$newObjectPath.gtFP',
          ) ??
          this.gtFP,
      precision: precision?.copyWith(
            objectPath: '$newObjectPath.precision',
          ) ??
          this.precision,
      recall: recall?.copyWith(
            objectPath: '$newObjectPath.recall',
          ) ??
          this.recall,
      fScore: fScore?.copyWith(
            objectPath: '$newObjectPath.fScore',
          ) ??
          this.fScore,
      roc: roc?.copyWith(
            objectPath: '$newObjectPath.roc',
          ) ??
          this.roc,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequenceQuality) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      standardSequence,
      o.standardSequence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      start,
      o.start,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      end,
      o.end,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      score,
      o.score,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      method,
      o.method,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      truthTP,
      o.truthTP,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      queryTP,
      o.queryTP,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      truthFN,
      o.truthFN,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      queryFP,
      o.queryFP,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      gtFP,
      o.gtFP,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      precision,
      o.precision,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recall,
      o.recall,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      fScore,
      o.fScore,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
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
  }) : super(
          objectPath: 'MolecularSequence.quality.roc',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MolecularSequenceRoc.empty() => const MolecularSequenceRoc();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceRoc.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence.quality.roc';
    return MolecularSequenceRoc(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      score: JsonParser.parsePrimitiveList<FhirInteger>(
        json,
        'score',
        FhirInteger.fromJson,
        '$objectPath.score',
      ),
      numTP: JsonParser.parsePrimitiveList<FhirInteger>(
        json,
        'numTP',
        FhirInteger.fromJson,
        '$objectPath.numTP',
      ),
      numFP: JsonParser.parsePrimitiveList<FhirInteger>(
        json,
        'numFP',
        FhirInteger.fromJson,
        '$objectPath.numFP',
      ),
      numFN: JsonParser.parsePrimitiveList<FhirInteger>(
        json,
        'numFN',
        FhirInteger.fromJson,
        '$objectPath.numFN',
      ),
      precision: JsonParser.parsePrimitiveList<FhirDecimal>(
        json,
        'precision',
        FhirDecimal.fromJson,
        '$objectPath.precision',
      ),
      sensitivity: JsonParser.parsePrimitiveList<FhirDecimal>(
        json,
        'sensitivity',
        FhirDecimal.fromJson,
        '$objectPath.sensitivity',
      ),
      fMeasure: JsonParser.parsePrimitiveList<FhirDecimal>(
        json,
        'fMeasure',
        FhirDecimal.fromJson,
        '$objectPath.fMeasure',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'score':
        {
          if (child is List<FhirInteger>) {
            // Add all elements from passed list
            final newList = [...?score, ...child];
            return copyWith(score: newList);
          } else if (child is FhirInteger) {
            // Add single element to existing list or create new list
            final newList = [...?score, child];
            return copyWith(score: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'numTP':
        {
          if (child is List<FhirInteger>) {
            // Add all elements from passed list
            final newList = [...?numTP, ...child];
            return copyWith(numTP: newList);
          } else if (child is FhirInteger) {
            // Add single element to existing list or create new list
            final newList = [...?numTP, child];
            return copyWith(numTP: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'numFP':
        {
          if (child is List<FhirInteger>) {
            // Add all elements from passed list
            final newList = [...?numFP, ...child];
            return copyWith(numFP: newList);
          } else if (child is FhirInteger) {
            // Add single element to existing list or create new list
            final newList = [...?numFP, child];
            return copyWith(numFP: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'numFN':
        {
          if (child is List<FhirInteger>) {
            // Add all elements from passed list
            final newList = [...?numFN, ...child];
            return copyWith(numFN: newList);
          } else if (child is FhirInteger) {
            // Add single element to existing list or create new list
            final newList = [...?numFN, child];
            return copyWith(numFN: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'precision':
        {
          if (child is List<FhirDecimal>) {
            // Add all elements from passed list
            final newList = [...?precision, ...child];
            return copyWith(precision: newList);
          } else if (child is FhirDecimal) {
            // Add single element to existing list or create new list
            final newList = [...?precision, child];
            return copyWith(precision: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sensitivity':
        {
          if (child is List<FhirDecimal>) {
            // Add all elements from passed list
            final newList = [...?sensitivity, ...child];
            return copyWith(sensitivity: newList);
          } else if (child is FhirDecimal) {
            // Add single element to existing list or create new list
            final newList = [...?sensitivity, child];
            return copyWith(sensitivity: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fMeasure':
        {
          if (child is List<FhirDecimal>) {
            // Add all elements from passed list
            final newList = [...?fMeasure, ...child];
            return copyWith(fMeasure: newList);
          } else if (child is FhirDecimal) {
            // Add single element to existing list or create new list
            final newList = [...?fMeasure, child];
            return copyWith(fMeasure: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'score':
        return ['FhirInteger'];
      case 'numTP':
        return ['FhirInteger'];
      case 'numFP':
        return ['FhirInteger'];
      case 'numFN':
        return ['FhirInteger'];
      case 'precision':
        return ['FhirDecimal'];
      case 'sensitivity':
        return ['FhirDecimal'];
      case 'fMeasure':
        return ['FhirDecimal'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularSequenceRoc]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MolecularSequenceRoc createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'score':
        {
          return copyWith(
            score: <FhirInteger>[],
          );
        }
      case 'numTP':
        {
          return copyWith(
            numTP: <FhirInteger>[],
          );
        }
      case 'numFP':
        {
          return copyWith(
            numFP: <FhirInteger>[],
          );
        }
      case 'numFN':
        {
          return copyWith(
            numFN: <FhirInteger>[],
          );
        }
      case 'precision':
        {
          return copyWith(
            precision: <FhirDecimal>[],
          );
        }
      case 'sensitivity':
        {
          return copyWith(
            sensitivity: <FhirDecimal>[],
          );
        }
      case 'fMeasure':
        {
          return copyWith(
            fMeasure: <FhirDecimal>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MolecularSequenceRoc clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool score = false,
    bool numTP = false,
    bool numFP = false,
    bool numFN = false,
    bool precision = false,
    bool sensitivity = false,
    bool fMeasure = false,
  }) {
    return MolecularSequenceRoc(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      score: score ? null : this.score,
      numTP: numTP ? null : this.numTP,
      numFP: numFP ? null : this.numFP,
      numFN: numFN ? null : this.numFN,
      precision: precision ? null : this.precision,
      sensitivity: sensitivity ? null : this.sensitivity,
      fMeasure: fMeasure ? null : this.fMeasure,
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
    List<FhirInteger>? numTP,
    List<FhirInteger>? numFP,
    List<FhirInteger>? numFN,
    List<FhirDecimal>? precision,
    List<FhirDecimal>? sensitivity,
    List<FhirDecimal>? fMeasure,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MolecularSequenceRoc(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      score: score
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.score',
                ),
              )
              .toList() ??
          this.score,
      numTP: numTP
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.numTP',
                ),
              )
              .toList() ??
          this.numTP,
      numFP: numFP
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.numFP',
                ),
              )
              .toList() ??
          this.numFP,
      numFN: numFN
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.numFN',
                ),
              )
              .toList() ??
          this.numFN,
      precision: precision
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.precision',
                ),
              )
              .toList() ??
          this.precision,
      sensitivity: sensitivity
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.sensitivity',
                ),
              )
              .toList() ??
          this.sensitivity,
      fMeasure: fMeasure
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.fMeasure',
                ),
              )
              .toList() ??
          this.fMeasure,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequenceRoc) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<FhirInteger>(
      score,
      o.score,
    )) {
      return false;
    }
    if (!listEquals<FhirInteger>(
      numTP,
      o.numTP,
    )) {
      return false;
    }
    if (!listEquals<FhirInteger>(
      numFP,
      o.numFP,
    )) {
      return false;
    }
    if (!listEquals<FhirInteger>(
      numFN,
      o.numFN,
    )) {
      return false;
    }
    if (!listEquals<FhirDecimal>(
      precision,
      o.precision,
    )) {
      return false;
    }
    if (!listEquals<FhirDecimal>(
      sensitivity,
      o.sensitivity,
    )) {
      return false;
    }
    if (!listEquals<FhirDecimal>(
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
  }) : super(
          objectPath: 'MolecularSequence.repository',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MolecularSequenceRepository.empty() => MolecularSequenceRepository(
        type: RepositoryType.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceRepository.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence.repository';
    return MolecularSequenceRepository(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<RepositoryType>(
        json,
        'type',
        RepositoryType.fromJson,
        '$objectPath.type',
      )!,
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
        '$objectPath.url',
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      datasetId: JsonParser.parsePrimitive<FhirString>(
        json,
        'datasetId',
        FhirString.fromJson,
        '$objectPath.datasetId',
      ),
      variantsetId: JsonParser.parsePrimitive<FhirString>(
        json,
        'variantsetId',
        FhirString.fromJson,
        '$objectPath.variantsetId',
      ),
      readsetId: JsonParser.parsePrimitive<FhirString>(
        json,
        'readsetId',
        FhirString.fromJson,
        '$objectPath.readsetId',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is RepositoryType) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'url':
        {
          if (child is FhirUri) {
            return copyWith(url: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'datasetId':
        {
          if (child is FhirString) {
            return copyWith(datasetId: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'variantsetId':
        {
          if (child is FhirString) {
            return copyWith(variantsetId: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'readsetId':
        {
          if (child is FhirString) {
            return copyWith(readsetId: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['FhirCode'];
      case 'url':
        return ['FhirUri'];
      case 'name':
        return ['FhirString'];
      case 'datasetId':
        return ['FhirString'];
      case 'variantsetId':
        return ['FhirString'];
      case 'readsetId':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularSequenceRepository]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MolecularSequenceRepository createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: RepositoryType.empty(),
          );
        }
      case 'url':
        {
          return copyWith(
            url: FhirUri.empty(),
          );
        }
      case 'name':
        {
          return copyWith(
            name: FhirString.empty(),
          );
        }
      case 'datasetId':
        {
          return copyWith(
            datasetId: FhirString.empty(),
          );
        }
      case 'variantsetId':
        {
          return copyWith(
            variantsetId: FhirString.empty(),
          );
        }
      case 'readsetId':
        {
          return copyWith(
            readsetId: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MolecularSequenceRepository clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool url = false,
    bool name = false,
    bool datasetId = false,
    bool variantsetId = false,
    bool readsetId = false,
  }) {
    return MolecularSequenceRepository(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type,
      url: url ? null : this.url,
      name: name ? null : this.name,
      datasetId: datasetId ? null : this.datasetId,
      variantsetId: variantsetId ? null : this.variantsetId,
      readsetId: readsetId ? null : this.readsetId,
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
    FhirUri? url,
    FhirString? name,
    FhirString? datasetId,
    FhirString? variantsetId,
    FhirString? readsetId,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MolecularSequenceRepository(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      url: url?.copyWith(
            objectPath: '$newObjectPath.url',
          ) ??
          this.url,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      datasetId: datasetId?.copyWith(
            objectPath: '$newObjectPath.datasetId',
          ) ??
          this.datasetId,
      variantsetId: variantsetId?.copyWith(
            objectPath: '$newObjectPath.variantsetId',
          ) ??
          this.variantsetId,
      readsetId: readsetId?.copyWith(
            objectPath: '$newObjectPath.readsetId',
          ) ??
          this.readsetId,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequenceRepository) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      datasetId,
      o.datasetId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      variantsetId,
      o.variantsetId,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
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
  }) : super(
          objectPath: 'MolecularSequence.structureVariant',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MolecularSequenceStructureVariant.empty() =>
      const MolecularSequenceStructureVariant();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceStructureVariant.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence.structureVariant';
    return MolecularSequenceStructureVariant(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      variantType: JsonParser.parseObject<CodeableConcept>(
        json,
        'variantType',
        CodeableConcept.fromJson,
        '$objectPath.variantType',
      ),
      exact: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'exact',
        FhirBoolean.fromJson,
        '$objectPath.exact',
      ),
      length: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'length',
        FhirInteger.fromJson,
        '$objectPath.length',
      ),
      outer: JsonParser.parseObject<MolecularSequenceOuter>(
        json,
        'outer',
        MolecularSequenceOuter.fromJson,
        '$objectPath.outer',
      ),
      inner: JsonParser.parseObject<MolecularSequenceInner>(
        json,
        'inner',
        MolecularSequenceInner.fromJson,
        '$objectPath.inner',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'variantType':
        {
          if (child is CodeableConcept) {
            return copyWith(variantType: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'exact':
        {
          if (child is FhirBoolean) {
            return copyWith(exact: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'length':
        {
          if (child is FhirInteger) {
            return copyWith(length: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'outer':
        {
          if (child is MolecularSequenceOuter) {
            return copyWith(outer: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'inner':
        {
          if (child is MolecularSequenceInner) {
            return copyWith(inner: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'variantType':
        return ['CodeableConcept'];
      case 'exact':
        return ['FhirBoolean'];
      case 'length':
        return ['FhirInteger'];
      case 'outer':
        return ['MolecularSequenceOuter'];
      case 'inner':
        return ['MolecularSequenceInner'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularSequenceStructureVariant]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MolecularSequenceStructureVariant createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'variantType':
        {
          return copyWith(
            variantType: CodeableConcept.empty(),
          );
        }
      case 'exact':
        {
          return copyWith(
            exact: FhirBoolean.empty(),
          );
        }
      case 'length':
        {
          return copyWith(
            length: FhirInteger.empty(),
          );
        }
      case 'outer':
        {
          return copyWith(
            outer: MolecularSequenceOuter.empty(),
          );
        }
      case 'inner':
        {
          return copyWith(
            inner: MolecularSequenceInner.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MolecularSequenceStructureVariant clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool variantType = false,
    bool exact = false,
    bool length = false,
    bool outer = false,
    bool inner = false,
  }) {
    return MolecularSequenceStructureVariant(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      variantType: variantType ? null : this.variantType,
      exact: exact ? null : this.exact,
      length: length ? null : this.length,
      outer: outer ? null : this.outer,
      inner: inner ? null : this.inner,
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
    FhirInteger? length,
    MolecularSequenceOuter? outer,
    MolecularSequenceInner? inner,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MolecularSequenceStructureVariant(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      variantType: variantType?.copyWith(
            objectPath: '$newObjectPath.variantType',
          ) ??
          this.variantType,
      exact: exact?.copyWith(
            objectPath: '$newObjectPath.exact',
          ) ??
          this.exact,
      length: length?.copyWith(
            objectPath: '$newObjectPath.length',
          ) ??
          this.length,
      outer: outer?.copyWith(
            objectPath: '$newObjectPath.outer',
          ) ??
          this.outer,
      inner: inner?.copyWith(
            objectPath: '$newObjectPath.inner',
          ) ??
          this.inner,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequenceStructureVariant) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      variantType,
      o.variantType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      exact,
      o.exact,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      length,
      o.length,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      outer,
      o.outer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
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
  }) : super(
          objectPath: 'MolecularSequence.structureVariant.outer',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MolecularSequenceOuter.empty() => const MolecularSequenceOuter();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceOuter.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence.structureVariant.outer';
    return MolecularSequenceOuter(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      start: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'start',
        FhirInteger.fromJson,
        '$objectPath.start',
      ),
      end: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'end',
        FhirInteger.fromJson,
        '$objectPath.end',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'start':
        {
          if (child is FhirInteger) {
            return copyWith(start: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'end':
        {
          if (child is FhirInteger) {
            return copyWith(end: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'start':
        return ['FhirInteger'];
      case 'end':
        return ['FhirInteger'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularSequenceOuter]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MolecularSequenceOuter createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'start':
        {
          return copyWith(
            start: FhirInteger.empty(),
          );
        }
      case 'end':
        {
          return copyWith(
            end: FhirInteger.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MolecularSequenceOuter clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool start = false,
    bool end = false,
  }) {
    return MolecularSequenceOuter(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      start: start ? null : this.start,
      end: end ? null : this.end,
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
    FhirInteger? end,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MolecularSequenceOuter(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      start: start?.copyWith(
            objectPath: '$newObjectPath.start',
          ) ??
          this.start,
      end: end?.copyWith(
            objectPath: '$newObjectPath.end',
          ) ??
          this.end,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequenceOuter) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      start,
      o.start,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
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
  }) : super(
          objectPath: 'MolecularSequence.structureVariant.inner',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MolecularSequenceInner.empty() => const MolecularSequenceInner();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceInner.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence.structureVariant.inner';
    return MolecularSequenceInner(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      start: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'start',
        FhirInteger.fromJson,
        '$objectPath.start',
      ),
      end: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'end',
        FhirInteger.fromJson,
        '$objectPath.end',
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'start':
        {
          if (child is FhirInteger) {
            return copyWith(start: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'end':
        {
          if (child is FhirInteger) {
            return copyWith(end: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'start':
        return ['FhirInteger'];
      case 'end':
        return ['FhirInteger'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularSequenceInner]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  MolecularSequenceInner createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'start':
        {
          return copyWith(
            start: FhirInteger.empty(),
          );
        }
      case 'end':
        {
          return copyWith(
            end: FhirInteger.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  MolecularSequenceInner clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool start = false,
    bool end = false,
  }) {
    return MolecularSequenceInner(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      start: start ? null : this.start,
      end: end ? null : this.end,
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
    FhirInteger? end,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MolecularSequenceInner(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      start: start?.copyWith(
            objectPath: '$newObjectPath.start',
          ) ??
          this.start,
      end: end?.copyWith(
            objectPath: '$newObjectPath.end',
          ) ??
          this.end,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MolecularSequenceInner) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      start,
      o.start,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      end,
      o.end,
    )) {
      return false;
    }
    return true;
  }
}
