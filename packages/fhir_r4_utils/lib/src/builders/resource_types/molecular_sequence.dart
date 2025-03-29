import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show yamlMapToJson, yamlToJson, R4ResourceType, StringExtensionForFHIR;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [MolecularSequenceBuilder]
/// Raw data describing a biological sequence.
class MolecularSequenceBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [MolecularSequenceBuilder]

  MolecularSequenceBuilder({
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
    this.coordinateSystem,
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
  /// For Builder classes, no fields are required
  factory MolecularSequenceBuilder.empty() => MolecularSequenceBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence';
    return MolecularSequenceBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<SequenceTypeBuilder>(
        json,
        'type',
        SequenceTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      coordinateSystem: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'coordinateSystem',
        FhirIntegerBuilder.fromJson,
        '$objectPath.coordinateSystem',
      ),
      patient: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'patient',
        ReferenceBuilder.fromJson,
        '$objectPath.patient',
      ),
      specimen: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'specimen',
        ReferenceBuilder.fromJson,
        '$objectPath.specimen',
      ),
      device: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'device',
        ReferenceBuilder.fromJson,
        '$objectPath.device',
      ),
      performer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'performer',
        ReferenceBuilder.fromJson,
        '$objectPath.performer',
      ),
      quantity: JsonParser.parseObject<QuantityBuilder>(
        json,
        'quantity',
        QuantityBuilder.fromJson,
        '$objectPath.quantity',
      ),
      referenceSeq:
          JsonParser.parseObject<MolecularSequenceReferenceSeqBuilder>(
        json,
        'referenceSeq',
        MolecularSequenceReferenceSeqBuilder.fromJson,
        '$objectPath.referenceSeq',
      ),
      variant: (json['variant'] as List<dynamic>?)
          ?.map<MolecularSequenceVariantBuilder>(
            (v) => MolecularSequenceVariantBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.variant',
              },
            ),
          )
          .toList(),
      observedSeq: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'observedSeq',
        FhirStringBuilder.fromJson,
        '$objectPath.observedSeq',
      ),
      quality: (json['quality'] as List<dynamic>?)
          ?.map<MolecularSequenceQualityBuilder>(
            (v) => MolecularSequenceQualityBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.quality',
              },
            ),
          )
          .toList(),
      readCoverage: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'readCoverage',
        FhirIntegerBuilder.fromJson,
        '$objectPath.readCoverage',
      ),
      repository: (json['repository'] as List<dynamic>?)
          ?.map<MolecularSequenceRepositoryBuilder>(
            (v) => MolecularSequenceRepositoryBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.repository',
              },
            ),
          )
          .toList(),
      pointer: (json['pointer'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.pointer',
              },
            ),
          )
          .toList(),
      structureVariant: (json['structureVariant'] as List<dynamic>?)
          ?.map<MolecularSequenceStructureVariantBuilder>(
            (v) => MolecularSequenceStructureVariantBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.structureVariant',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [MolecularSequenceBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceBuilder.fromJson(json);
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
  List<IdentifierBuilder>? identifier;

  /// [type]
  /// Amino Acid Sequence/ DNA Sequence / RNA Sequence.
  SequenceTypeBuilder? type;

  /// [coordinateSystem]
  /// Whether the sequence is numbered starting at 0 (0-based numbering or
  /// coordinates, inclusive start, exclusive end) or starting at 1 (1-based
  /// numbering, inclusive start and inclusive end).
  FhirIntegerBuilder? coordinateSystem;

  /// [patient]
  /// The patient whose sequencing results are described by this resource.
  ReferenceBuilder? patient;

  /// [specimen]
  /// Specimen used for sequencing.
  ReferenceBuilder? specimen;

  /// [device]
  /// The method for sequencing, for example, chip information.
  ReferenceBuilder? device;

  /// [performer]
  /// The organization or lab that should be responsible for this result.
  ReferenceBuilder? performer;

  /// [quantity]
  /// The number of copies of the sequence of interest. (RNASeq).
  QuantityBuilder? quantity;

  /// [referenceSeq]
  /// A sequence that is used as a reference to describe variants that are
  /// present in a sequence analyzed.
  MolecularSequenceReferenceSeqBuilder? referenceSeq;

  /// [variant]
  /// The definition of variant here originates from Sequence ontology
  /// ([variant_of](http://www.sequenceontology.org/browser/current_svn/term/variant_of)).
  /// This element can represent amino acid or nucleic sequence
  /// change(including insertion,deletion,SNP,etc.) It can represent some
  /// complex mutation or segment variation with the assist of CIGAR string.
  List<MolecularSequenceVariantBuilder>? variant;

  /// [observedSeq]
  /// Sequence that was observed. It is the result marked by referenceSeq
  /// along with variant records on referenceSeq. This shall start from
  /// referenceSeq.windowStart and end by referenceSeq.windowEnd.
  FhirStringBuilder? observedSeq;

  /// [quality]
  /// An experimental feature attribute that defines the quality of the
  /// feature in a quantitative way, such as a phred quality score
  /// ([SO:0001686](http://www.sequenceontology.org/browser/current_svn/term/SO:0001686)).
  List<MolecularSequenceQualityBuilder>? quality;

  /// [readCoverage]
  /// Coverage (read depth or depth) is the average number of reads
  /// representing a given nucleotide in the reconstructed sequence.
  FhirIntegerBuilder? readCoverage;

  /// [repository]
  /// Configurations of the external repository. The repository shall store
  /// target's observedSeq or records related with target's observedSeq.
  List<MolecularSequenceRepositoryBuilder>? repository;

  /// [pointer]
  /// Pointer to next atomic sequence which at most contains one variant.
  List<ReferenceBuilder>? pointer;

  /// [structureVariant]
  /// Information about chromosome structure variation.
  List<MolecularSequenceStructureVariantBuilder>? structureVariant;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('type', type);
    addField('coordinateSystem', coordinateSystem);
    addField('patient', patient);
    addField('specimen', specimen);
    addField('device', device);
    addField('performer', performer);
    addField('quantity', quantity);
    addField('referenceSeq', referenceSeq);
    addField('variant', variant);
    addField('observedSeq', observedSeq);
    addField('quality', quality);
    addField('readCoverage', readCoverage);
    addField('repository', repository);
    addField('pointer', pointer);
    addField('structureVariant', structureVariant);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (coordinateSystem != null) {
          fields.add(coordinateSystem!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [...(contained ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [...(identifier ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is SequenceTypeBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'coordinateSystem':
        {
          if (child is FhirIntegerBuilder) {
            coordinateSystem = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patient':
        {
          if (child is ReferenceBuilder) {
            patient = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'specimen':
        {
          if (child is ReferenceBuilder) {
            specimen = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'device':
        {
          if (child is ReferenceBuilder) {
            device = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'performer':
        {
          if (child is ReferenceBuilder) {
            performer = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quantity':
        {
          if (child is QuantityBuilder) {
            quantity = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'referenceSeq':
        {
          if (child is MolecularSequenceReferenceSeqBuilder) {
            referenceSeq = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'variant':
        {
          if (child is List<MolecularSequenceVariantBuilder>) {
            // Replace or create new list
            variant = child;
            return;
          } else if (child is MolecularSequenceVariantBuilder) {
            // Add single element to existing list or create new list
            variant = [...(variant ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'observedSeq':
        {
          if (child is FhirStringBuilder) {
            observedSeq = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'quality':
        {
          if (child is List<MolecularSequenceQualityBuilder>) {
            // Replace or create new list
            quality = child;
            return;
          } else if (child is MolecularSequenceQualityBuilder) {
            // Add single element to existing list or create new list
            quality = [...(quality ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'readCoverage':
        {
          if (child is FhirIntegerBuilder) {
            readCoverage = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'repository':
        {
          if (child is List<MolecularSequenceRepositoryBuilder>) {
            // Replace or create new list
            repository = child;
            return;
          } else if (child is MolecularSequenceRepositoryBuilder) {
            // Add single element to existing list or create new list
            repository = [...(repository ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'pointer':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            pointer = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            pointer = [...(pointer ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'structureVariant':
        {
          if (child is List<MolecularSequenceStructureVariantBuilder>) {
            // Replace or create new list
            structureVariant = child;
            return;
          } else if (child is MolecularSequenceStructureVariantBuilder) {
            // Add single element to existing list or create new list
            structureVariant = [...(structureVariant ?? []), child];
            return;
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
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'coordinateSystem':
        return ['FhirIntegerBuilder'];
      case 'patient':
        return ['ReferenceBuilder'];
      case 'specimen':
        return ['ReferenceBuilder'];
      case 'device':
        return ['ReferenceBuilder'];
      case 'performer':
        return ['ReferenceBuilder'];
      case 'quantity':
        return ['QuantityBuilder'];
      case 'referenceSeq':
        return ['MolecularSequenceReferenceSeqBuilder'];
      case 'variant':
        return ['MolecularSequenceVariantBuilder'];
      case 'observedSeq':
        return ['FhirStringBuilder'];
      case 'quality':
        return ['MolecularSequenceQualityBuilder'];
      case 'readCoverage':
        return ['FhirIntegerBuilder'];
      case 'repository':
        return ['MolecularSequenceRepositoryBuilder'];
      case 'pointer':
        return ['ReferenceBuilder'];
      case 'structureVariant':
        return ['MolecularSequenceStructureVariantBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularSequenceBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'type':
        {
          type = SequenceTypeBuilder.empty();
          return;
        }
      case 'coordinateSystem':
        {
          coordinateSystem = FhirIntegerBuilder.empty();
          return;
        }
      case 'patient':
        {
          patient = ReferenceBuilder.empty();
          return;
        }
      case 'specimen':
        {
          specimen = ReferenceBuilder.empty();
          return;
        }
      case 'device':
        {
          device = ReferenceBuilder.empty();
          return;
        }
      case 'performer':
        {
          performer = ReferenceBuilder.empty();
          return;
        }
      case 'quantity':
        {
          quantity = QuantityBuilder.empty();
          return;
        }
      case 'referenceSeq':
        {
          referenceSeq = MolecularSequenceReferenceSeqBuilder.empty();
          return;
        }
      case 'variant':
        {
          variant = <MolecularSequenceVariantBuilder>[];
          return;
        }
      case 'observedSeq':
        {
          observedSeq = FhirStringBuilder.empty();
          return;
        }
      case 'quality':
        {
          quality = <MolecularSequenceQualityBuilder>[];
          return;
        }
      case 'readCoverage':
        {
          readCoverage = FhirIntegerBuilder.empty();
          return;
        }
      case 'repository':
        {
          repository = <MolecularSequenceRepositoryBuilder>[];
          return;
        }
      case 'pointer':
        {
          pointer = <ReferenceBuilder>[];
          return;
        }
      case 'structureVariant':
        {
          structureVariant = <MolecularSequenceStructureVariantBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
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
    bool coordinateSystem = false,
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
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (identifier) this.identifier = null;
    if (type) this.type = null;
    if (coordinateSystem) this.coordinateSystem = null;
    if (patient) this.patient = null;
    if (specimen) this.specimen = null;
    if (device) this.device = null;
    if (performer) this.performer = null;
    if (quantity) this.quantity = null;
    if (referenceSeq) this.referenceSeq = null;
    if (variant) this.variant = null;
    if (observedSeq) this.observedSeq = null;
    if (quality) this.quality = null;
    if (readCoverage) this.readCoverage = null;
    if (repository) this.repository = null;
    if (pointer) this.pointer = null;
    if (structureVariant) this.structureVariant = null;
  }

  @override
  MolecularSequenceBuilder clone() => throw UnimplementedError();
  @override
  MolecularSequenceBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    SequenceTypeBuilder? type,
    FhirIntegerBuilder? coordinateSystem,
    ReferenceBuilder? patient,
    ReferenceBuilder? specimen,
    ReferenceBuilder? device,
    ReferenceBuilder? performer,
    QuantityBuilder? quantity,
    MolecularSequenceReferenceSeqBuilder? referenceSeq,
    List<MolecularSequenceVariantBuilder>? variant,
    FhirStringBuilder? observedSeq,
    List<MolecularSequenceQualityBuilder>? quality,
    FhirIntegerBuilder? readCoverage,
    List<MolecularSequenceRepositoryBuilder>? repository,
    List<ReferenceBuilder>? pointer,
    List<MolecularSequenceStructureVariantBuilder>? structureVariant,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = MolecularSequenceBuilder(
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
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! MolecularSequenceBuilder) {
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
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
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
    if (!listEquals<MolecularSequenceVariantBuilder>(
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
    if (!listEquals<MolecularSequenceQualityBuilder>(
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
    if (!listEquals<MolecularSequenceRepositoryBuilder>(
      repository,
      o.repository,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      pointer,
      o.pointer,
    )) {
      return false;
    }
    if (!listEquals<MolecularSequenceStructureVariantBuilder>(
      structureVariant,
      o.structureVariant,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularSequenceReferenceSeqBuilder]
/// A sequence that is used as a reference to describe variants that are
/// present in a sequence analyzed.
class MolecularSequenceReferenceSeqBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularSequenceReferenceSeqBuilder]

  MolecularSequenceReferenceSeqBuilder({
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
  /// For Builder classes, no fields are required
  factory MolecularSequenceReferenceSeqBuilder.empty() =>
      MolecularSequenceReferenceSeqBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceReferenceSeqBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence.referenceSeq';
    return MolecularSequenceReferenceSeqBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      chromosome: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'chromosome',
        CodeableConceptBuilder.fromJson,
        '$objectPath.chromosome',
      ),
      genomeBuild: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'genomeBuild',
        FhirStringBuilder.fromJson,
        '$objectPath.genomeBuild',
      ),
      orientation: JsonParser.parsePrimitive<OrientationTypeBuilder>(
        json,
        'orientation',
        OrientationTypeBuilder.fromJson,
        '$objectPath.orientation',
      ),
      referenceSeqId: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'referenceSeqId',
        CodeableConceptBuilder.fromJson,
        '$objectPath.referenceSeqId',
      ),
      referenceSeqPointer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'referenceSeqPointer',
        ReferenceBuilder.fromJson,
        '$objectPath.referenceSeqPointer',
      ),
      referenceSeqString: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'referenceSeqString',
        FhirStringBuilder.fromJson,
        '$objectPath.referenceSeqString',
      ),
      strand: JsonParser.parsePrimitive<StrandTypeBuilder>(
        json,
        'strand',
        StrandTypeBuilder.fromJson,
        '$objectPath.strand',
      ),
      windowStart: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'windowStart',
        FhirIntegerBuilder.fromJson,
        '$objectPath.windowStart',
      ),
      windowEnd: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'windowEnd',
        FhirIntegerBuilder.fromJson,
        '$objectPath.windowEnd',
      ),
    );
  }

  /// Deserialize [MolecularSequenceReferenceSeqBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceReferenceSeqBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceReferenceSeqBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceReferenceSeqBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceReferenceSeqBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceReferenceSeqBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceReferenceSeqBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceReferenceSeqBuilder.fromJson(json);
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
  CodeableConceptBuilder? chromosome;

  /// [genomeBuild]
  /// The Genome Build used for reference, following GRCh build versions e.g.
  /// 'GRCh 37'. Version number must be included if a versioned release of a
  /// primary build was used.
  FhirStringBuilder? genomeBuild;

  /// [orientation]
  /// A relative reference to a DNA strand based on gene orientation. The
  /// strand that contains the open reading frame of the gene is the "sense"
  /// strand, and the opposite complementary strand is the "antisense"
  /// strand.
  OrientationTypeBuilder? orientation;

  /// [referenceSeqId]
  /// Reference identifier of reference sequence submitted to NCBI. It must
  /// match the type in the MolecularSequence.type field. For example, the
  /// prefix, “NG_” identifies reference sequence for genes, “NM_” for
  /// messenger RNA transcripts, and “NP_” for amino acid sequences.
  CodeableConceptBuilder? referenceSeqId;

  /// [referenceSeqPointer]
  /// A pointer to another MolecularSequence entity as reference sequence.
  ReferenceBuilder? referenceSeqPointer;

  /// [referenceSeqString]
  /// A string like "ACGT".
  FhirStringBuilder? referenceSeqString;

  /// [strand]
  /// An absolute reference to a strand. The Watson strand is the strand
  /// whose 5'-end is on the short arm of the chromosome, and the Crick
  /// strand as the one whose 5'-end is on the long arm.
  StrandTypeBuilder? strand;

  /// [windowStart]
  /// Start position of the window on the reference sequence. If the
  /// coordinate system is either 0-based or 1-based, then start position is
  /// inclusive.
  FhirIntegerBuilder? windowStart;

  /// [windowEnd]
  /// End position of the window on the reference sequence. If the coordinate
  /// system is 0-based then end is exclusive and does not include the last
  /// position. If the coordinate system is 1-base, then end is inclusive and
  /// includes the last position.
  FhirIntegerBuilder? windowEnd;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('chromosome', chromosome);
    addField('genomeBuild', genomeBuild);
    addField('orientation', orientation);
    addField('referenceSeqId', referenceSeqId);
    addField('referenceSeqPointer', referenceSeqPointer);
    addField('referenceSeqString', referenceSeqString);
    addField('strand', strand);
    addField('windowStart', windowStart);
    addField('windowEnd', windowEnd);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'chromosome':
        {
          if (child is CodeableConceptBuilder) {
            chromosome = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'genomeBuild':
        {
          if (child is FhirStringBuilder) {
            genomeBuild = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'orientation':
        {
          if (child is OrientationTypeBuilder) {
            orientation = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'referenceSeqId':
        {
          if (child is CodeableConceptBuilder) {
            referenceSeqId = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'referenceSeqPointer':
        {
          if (child is ReferenceBuilder) {
            referenceSeqPointer = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'referenceSeqString':
        {
          if (child is FhirStringBuilder) {
            referenceSeqString = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'strand':
        {
          if (child is StrandTypeBuilder) {
            strand = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'windowStart':
        {
          if (child is FhirIntegerBuilder) {
            windowStart = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'windowEnd':
        {
          if (child is FhirIntegerBuilder) {
            windowEnd = child;
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'chromosome':
        return ['CodeableConceptBuilder'];
      case 'genomeBuild':
        return ['FhirStringBuilder'];
      case 'orientation':
        return ['FhirCodeEnumBuilder'];
      case 'referenceSeqId':
        return ['CodeableConceptBuilder'];
      case 'referenceSeqPointer':
        return ['ReferenceBuilder'];
      case 'referenceSeqString':
        return ['FhirStringBuilder'];
      case 'strand':
        return ['FhirCodeEnumBuilder'];
      case 'windowStart':
        return ['FhirIntegerBuilder'];
      case 'windowEnd':
        return ['FhirIntegerBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularSequenceReferenceSeqBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'chromosome':
        {
          chromosome = CodeableConceptBuilder.empty();
          return;
        }
      case 'genomeBuild':
        {
          genomeBuild = FhirStringBuilder.empty();
          return;
        }
      case 'orientation':
        {
          orientation = OrientationTypeBuilder.empty();
          return;
        }
      case 'referenceSeqId':
        {
          referenceSeqId = CodeableConceptBuilder.empty();
          return;
        }
      case 'referenceSeqPointer':
        {
          referenceSeqPointer = ReferenceBuilder.empty();
          return;
        }
      case 'referenceSeqString':
        {
          referenceSeqString = FhirStringBuilder.empty();
          return;
        }
      case 'strand':
        {
          strand = StrandTypeBuilder.empty();
          return;
        }
      case 'windowStart':
        {
          windowStart = FhirIntegerBuilder.empty();
          return;
        }
      case 'windowEnd':
        {
          windowEnd = FhirIntegerBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
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
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (chromosome) this.chromosome = null;
    if (genomeBuild) this.genomeBuild = null;
    if (orientation) this.orientation = null;
    if (referenceSeqId) this.referenceSeqId = null;
    if (referenceSeqPointer) this.referenceSeqPointer = null;
    if (referenceSeqString) this.referenceSeqString = null;
    if (strand) this.strand = null;
    if (windowStart) this.windowStart = null;
    if (windowEnd) this.windowEnd = null;
  }

  @override
  MolecularSequenceReferenceSeqBuilder clone() => throw UnimplementedError();
  @override
  MolecularSequenceReferenceSeqBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? chromosome,
    FhirStringBuilder? genomeBuild,
    OrientationTypeBuilder? orientation,
    CodeableConceptBuilder? referenceSeqId,
    ReferenceBuilder? referenceSeqPointer,
    FhirStringBuilder? referenceSeqString,
    StrandTypeBuilder? strand,
    FhirIntegerBuilder? windowStart,
    FhirIntegerBuilder? windowEnd,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularSequenceReferenceSeqBuilder(
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
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! MolecularSequenceReferenceSeqBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [MolecularSequenceVariantBuilder]
/// The definition of variant here originates from Sequence ontology
/// ([variant_of](http://www.sequenceontology.org/browser/current_svn/term/variant_of)).
/// This element can represent amino acid or nucleic sequence
/// change(including insertion,deletion,SNP,etc.) It can represent some
/// complex mutation or segment variation with the assist of CIGAR string.
class MolecularSequenceVariantBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularSequenceVariantBuilder]

  MolecularSequenceVariantBuilder({
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
  /// For Builder classes, no fields are required
  factory MolecularSequenceVariantBuilder.empty() =>
      MolecularSequenceVariantBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceVariantBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence.variant';
    return MolecularSequenceVariantBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      start: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'start',
        FhirIntegerBuilder.fromJson,
        '$objectPath.start',
      ),
      end: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'end',
        FhirIntegerBuilder.fromJson,
        '$objectPath.end',
      ),
      observedAllele: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'observedAllele',
        FhirStringBuilder.fromJson,
        '$objectPath.observedAllele',
      ),
      referenceAllele: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'referenceAllele',
        FhirStringBuilder.fromJson,
        '$objectPath.referenceAllele',
      ),
      cigar: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'cigar',
        FhirStringBuilder.fromJson,
        '$objectPath.cigar',
      ),
      variantPointer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'variantPointer',
        ReferenceBuilder.fromJson,
        '$objectPath.variantPointer',
      ),
    );
  }

  /// Deserialize [MolecularSequenceVariantBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceVariantBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceVariantBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceVariantBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceVariantBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceVariantBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceVariantBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceVariantBuilder.fromJson(json);
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
  FhirIntegerBuilder? start;

  /// [end]
  /// End position of the variant on the reference sequence. If the
  /// coordinate system is 0-based then end is exclusive and does not include
  /// the last position. If the coordinate system is 1-base, then end is
  /// inclusive and includes the last position.
  FhirIntegerBuilder? end;

  /// [observedAllele]
  /// An allele is one of a set of coexisting sequence variants of a gene
  /// ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)).
  /// Nucleotide(s)/amino acids from start position of sequence to stop
  /// position of sequence on the positive (+) strand of the observed
  /// sequence. When the sequence type is DNA, it should be the sequence on
  /// the positive (+) strand. This will lay in the range between
  /// variant.start and variant.end.
  FhirStringBuilder? observedAllele;

  /// [referenceAllele]
  /// An allele is one of a set of coexisting sequence variants of a gene
  /// ([SO:0001023](http://www.sequenceontology.org/browser/current_svn/term/SO:0001023)).
  /// Nucleotide(s)/amino acids from start position of sequence to stop
  /// position of sequence on the positive (+) strand of the reference
  /// sequence. When the sequence type is DNA, it should be the sequence on
  /// the positive (+) strand. This will lay in the range between
  /// variant.start and variant.end.
  FhirStringBuilder? referenceAllele;

  /// [cigar]
  /// Extended CIGAR string for aligning the sequence with reference bases.
  /// See detailed documentation
  /// [here](http://support.illumina.com/help/SequencingAnalysisWorkflow/Content/Vault/Informatics/Sequencing_Analysis/CASAVA/swSEQ_mCA_ExtendedCIGARFormat.htm).
  FhirStringBuilder? cigar;

  /// [variantPointer]
  /// A pointer to an Observation containing variant information.
  ReferenceBuilder? variantPointer;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('start', start);
    addField('end', end);
    addField('observedAllele', observedAllele);
    addField('referenceAllele', referenceAllele);
    addField('cigar', cigar);
    addField('variantPointer', variantPointer);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'start':
        {
          if (child is FhirIntegerBuilder) {
            start = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'end':
        {
          if (child is FhirIntegerBuilder) {
            end = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'observedAllele':
        {
          if (child is FhirStringBuilder) {
            observedAllele = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'referenceAllele':
        {
          if (child is FhirStringBuilder) {
            referenceAllele = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'cigar':
        {
          if (child is FhirStringBuilder) {
            cigar = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'variantPointer':
        {
          if (child is ReferenceBuilder) {
            variantPointer = child;
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'start':
        return ['FhirIntegerBuilder'];
      case 'end':
        return ['FhirIntegerBuilder'];
      case 'observedAllele':
        return ['FhirStringBuilder'];
      case 'referenceAllele':
        return ['FhirStringBuilder'];
      case 'cigar':
        return ['FhirStringBuilder'];
      case 'variantPointer':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularSequenceVariantBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'start':
        {
          start = FhirIntegerBuilder.empty();
          return;
        }
      case 'end':
        {
          end = FhirIntegerBuilder.empty();
          return;
        }
      case 'observedAllele':
        {
          observedAllele = FhirStringBuilder.empty();
          return;
        }
      case 'referenceAllele':
        {
          referenceAllele = FhirStringBuilder.empty();
          return;
        }
      case 'cigar':
        {
          cigar = FhirStringBuilder.empty();
          return;
        }
      case 'variantPointer':
        {
          variantPointer = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
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
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (start) this.start = null;
    if (end) this.end = null;
    if (observedAllele) this.observedAllele = null;
    if (referenceAllele) this.referenceAllele = null;
    if (cigar) this.cigar = null;
    if (variantPointer) this.variantPointer = null;
  }

  @override
  MolecularSequenceVariantBuilder clone() => throw UnimplementedError();
  @override
  MolecularSequenceVariantBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirIntegerBuilder? start,
    FhirIntegerBuilder? end,
    FhirStringBuilder? observedAllele,
    FhirStringBuilder? referenceAllele,
    FhirStringBuilder? cigar,
    ReferenceBuilder? variantPointer,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularSequenceVariantBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      start: start ?? this.start,
      end: end ?? this.end,
      observedAllele: observedAllele ?? this.observedAllele,
      referenceAllele: referenceAllele ?? this.referenceAllele,
      cigar: cigar ?? this.cigar,
      variantPointer: variantPointer ?? this.variantPointer,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! MolecularSequenceVariantBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [MolecularSequenceQualityBuilder]
/// An experimental feature attribute that defines the quality of the
/// feature in a quantitative way, such as a phred quality score
/// ([SO:0001686](http://www.sequenceontology.org/browser/current_svn/term/SO:0001686)).
class MolecularSequenceQualityBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularSequenceQualityBuilder]

  MolecularSequenceQualityBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
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
  /// For Builder classes, no fields are required
  factory MolecularSequenceQualityBuilder.empty() =>
      MolecularSequenceQualityBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceQualityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence.quality';
    return MolecularSequenceQualityBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<QualityTypeBuilder>(
        json,
        'type',
        QualityTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      standardSequence: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'standardSequence',
        CodeableConceptBuilder.fromJson,
        '$objectPath.standardSequence',
      ),
      start: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'start',
        FhirIntegerBuilder.fromJson,
        '$objectPath.start',
      ),
      end: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'end',
        FhirIntegerBuilder.fromJson,
        '$objectPath.end',
      ),
      score: JsonParser.parseObject<QuantityBuilder>(
        json,
        'score',
        QuantityBuilder.fromJson,
        '$objectPath.score',
      ),
      method: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'method',
        CodeableConceptBuilder.fromJson,
        '$objectPath.method',
      ),
      truthTP: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'truthTP',
        FhirDecimalBuilder.fromJson,
        '$objectPath.truthTP',
      ),
      queryTP: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'queryTP',
        FhirDecimalBuilder.fromJson,
        '$objectPath.queryTP',
      ),
      truthFN: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'truthFN',
        FhirDecimalBuilder.fromJson,
        '$objectPath.truthFN',
      ),
      queryFP: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'queryFP',
        FhirDecimalBuilder.fromJson,
        '$objectPath.queryFP',
      ),
      gtFP: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'gtFP',
        FhirDecimalBuilder.fromJson,
        '$objectPath.gtFP',
      ),
      precision: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'precision',
        FhirDecimalBuilder.fromJson,
        '$objectPath.precision',
      ),
      recall: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'recall',
        FhirDecimalBuilder.fromJson,
        '$objectPath.recall',
      ),
      fScore: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'fScore',
        FhirDecimalBuilder.fromJson,
        '$objectPath.fScore',
      ),
      roc: JsonParser.parseObject<MolecularSequenceRocBuilder>(
        json,
        'roc',
        MolecularSequenceRocBuilder.fromJson,
        '$objectPath.roc',
      ),
    );
  }

  /// Deserialize [MolecularSequenceQualityBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceQualityBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceQualityBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceQualityBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceQualityBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceQualityBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceQualityBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceQualityBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceQuality';

  /// [type]
  /// INDEL / SNP / Undefined variant.
  QualityTypeBuilder? type;

  /// [standardSequence]
  /// Gold standard sequence used for comparing against.
  CodeableConceptBuilder? standardSequence;

  /// [start]
  /// Start position of the sequence. If the coordinate system is either
  /// 0-based or 1-based, then start position is inclusive.
  FhirIntegerBuilder? start;

  /// [end]
  /// End position of the sequence. If the coordinate system is 0-based then
  /// end is exclusive and does not include the last position. If the
  /// coordinate system is 1-base, then end is inclusive and includes the
  /// last position.
  FhirIntegerBuilder? end;

  /// [score]
  /// The score of an experimentally derived feature such as a p-value
  /// ([SO:0001685](http://www.sequenceontology.org/browser/current_svn/term/SO:0001685)).
  QuantityBuilder? score;

  /// [method]
  /// Which method is used to get sequence quality.
  CodeableConceptBuilder? method;

  /// [truthTP]
  /// True positives, from the perspective of the truth data, i.e. the number
  /// of sites in the Truth Call Set for which there are paths through the
  /// Query Call Set that are consistent with all of the alleles at this
  /// site, and for which there is an accurate genotype call for the event.
  FhirDecimalBuilder? truthTP;

  /// [queryTP]
  /// True positives, from the perspective of the query data, i.e. the number
  /// of sites in the Query Call Set for which there are paths through the
  /// Truth Call Set that are consistent with all of the alleles at this
  /// site, and for which there is an accurate genotype call for the event.
  FhirDecimalBuilder? queryTP;

  /// [truthFN]
  /// False negatives, i.e. the number of sites in the Truth Call Set for
  /// which there is no path through the Query Call Set that is consistent
  /// with all of the alleles at this site, or sites for which there is an
  /// inaccurate genotype call for the event. Sites with correct variant but
  /// incorrect genotype are counted here.
  FhirDecimalBuilder? truthFN;

  /// [queryFP]
  /// False positives, i.e. the number of sites in the Query Call Set for
  /// which there is no path through the Truth Call Set that is consistent
  /// with this site. Sites with correct variant but incorrect genotype are
  /// counted here.
  FhirDecimalBuilder? queryFP;

  /// [gtFP]
  /// The number of false positives where the non-REF alleles in the Truth
  /// and Query Call Sets match (i.e. cases where the truth is 1/1 and the
  /// query is 0/1 or similar).
  FhirDecimalBuilder? gtFP;

  /// [precision]
  /// QUERY.TP / (QUERY.TP + QUERY.FP).
  FhirDecimalBuilder? precision;

  /// [recall]
  /// TRUTH.TP / (TRUTH.TP + TRUTH.FN).
  FhirDecimalBuilder? recall;

  /// [fScore]
  /// Harmonic mean of Recall and Precision, computed as: 2 * precision *
  /// recall / (precision + recall).
  FhirDecimalBuilder? fScore;

  /// [roc]
  /// Receiver Operator Characteristic (ROC) Curve to give
  /// sensitivity/specificity tradeoff.
  MolecularSequenceRocBuilder? roc;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('standardSequence', standardSequence);
    addField('start', start);
    addField('end', end);
    addField('score', score);
    addField('method', method);
    addField('truthTP', truthTP);
    addField('queryTP', queryTP);
    addField('truthFN', truthFN);
    addField('queryFP', queryFP);
    addField('gtFP', gtFP);
    addField('precision', precision);
    addField('recall', recall);
    addField('fScore', fScore);
    addField('roc', roc);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (type != null) {
          fields.add(type!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is QualityTypeBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'standardSequence':
        {
          if (child is CodeableConceptBuilder) {
            standardSequence = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'start':
        {
          if (child is FhirIntegerBuilder) {
            start = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'end':
        {
          if (child is FhirIntegerBuilder) {
            end = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'score':
        {
          if (child is QuantityBuilder) {
            score = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'method':
        {
          if (child is CodeableConceptBuilder) {
            method = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'truthTP':
        {
          if (child is FhirDecimalBuilder) {
            truthTP = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'queryTP':
        {
          if (child is FhirDecimalBuilder) {
            queryTP = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'truthFN':
        {
          if (child is FhirDecimalBuilder) {
            truthFN = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'queryFP':
        {
          if (child is FhirDecimalBuilder) {
            queryFP = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'gtFP':
        {
          if (child is FhirDecimalBuilder) {
            gtFP = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'precision':
        {
          if (child is FhirDecimalBuilder) {
            precision = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'recall':
        {
          if (child is FhirDecimalBuilder) {
            recall = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fScore':
        {
          if (child is FhirDecimalBuilder) {
            fScore = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'roc':
        {
          if (child is MolecularSequenceRocBuilder) {
            roc = child;
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'standardSequence':
        return ['CodeableConceptBuilder'];
      case 'start':
        return ['FhirIntegerBuilder'];
      case 'end':
        return ['FhirIntegerBuilder'];
      case 'score':
        return ['QuantityBuilder'];
      case 'method':
        return ['CodeableConceptBuilder'];
      case 'truthTP':
        return ['FhirDecimalBuilder'];
      case 'queryTP':
        return ['FhirDecimalBuilder'];
      case 'truthFN':
        return ['FhirDecimalBuilder'];
      case 'queryFP':
        return ['FhirDecimalBuilder'];
      case 'gtFP':
        return ['FhirDecimalBuilder'];
      case 'precision':
        return ['FhirDecimalBuilder'];
      case 'recall':
        return ['FhirDecimalBuilder'];
      case 'fScore':
        return ['FhirDecimalBuilder'];
      case 'roc':
        return ['MolecularSequenceRocBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularSequenceQualityBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = QualityTypeBuilder.empty();
          return;
        }
      case 'standardSequence':
        {
          standardSequence = CodeableConceptBuilder.empty();
          return;
        }
      case 'start':
        {
          start = FhirIntegerBuilder.empty();
          return;
        }
      case 'end':
        {
          end = FhirIntegerBuilder.empty();
          return;
        }
      case 'score':
        {
          score = QuantityBuilder.empty();
          return;
        }
      case 'method':
        {
          method = CodeableConceptBuilder.empty();
          return;
        }
      case 'truthTP':
        {
          truthTP = FhirDecimalBuilder.empty();
          return;
        }
      case 'queryTP':
        {
          queryTP = FhirDecimalBuilder.empty();
          return;
        }
      case 'truthFN':
        {
          truthFN = FhirDecimalBuilder.empty();
          return;
        }
      case 'queryFP':
        {
          queryFP = FhirDecimalBuilder.empty();
          return;
        }
      case 'gtFP':
        {
          gtFP = FhirDecimalBuilder.empty();
          return;
        }
      case 'precision':
        {
          precision = FhirDecimalBuilder.empty();
          return;
        }
      case 'recall':
        {
          recall = FhirDecimalBuilder.empty();
          return;
        }
      case 'fScore':
        {
          fScore = FhirDecimalBuilder.empty();
          return;
        }
      case 'roc':
        {
          roc = MolecularSequenceRocBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
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
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (type) this.type = null;
    if (standardSequence) this.standardSequence = null;
    if (start) this.start = null;
    if (end) this.end = null;
    if (score) this.score = null;
    if (method) this.method = null;
    if (truthTP) this.truthTP = null;
    if (queryTP) this.queryTP = null;
    if (truthFN) this.truthFN = null;
    if (queryFP) this.queryFP = null;
    if (gtFP) this.gtFP = null;
    if (precision) this.precision = null;
    if (recall) this.recall = null;
    if (fScore) this.fScore = null;
    if (roc) this.roc = null;
  }

  @override
  MolecularSequenceQualityBuilder clone() => throw UnimplementedError();
  @override
  MolecularSequenceQualityBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    QualityTypeBuilder? type,
    CodeableConceptBuilder? standardSequence,
    FhirIntegerBuilder? start,
    FhirIntegerBuilder? end,
    QuantityBuilder? score,
    CodeableConceptBuilder? method,
    FhirDecimalBuilder? truthTP,
    FhirDecimalBuilder? queryTP,
    FhirDecimalBuilder? truthFN,
    FhirDecimalBuilder? queryFP,
    FhirDecimalBuilder? gtFP,
    FhirDecimalBuilder? precision,
    FhirDecimalBuilder? recall,
    FhirDecimalBuilder? fScore,
    MolecularSequenceRocBuilder? roc,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularSequenceQualityBuilder(
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
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! MolecularSequenceQualityBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [MolecularSequenceRocBuilder]
/// Receiver Operator Characteristic (ROC) Curve to give
/// sensitivity/specificity tradeoff.
class MolecularSequenceRocBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularSequenceRocBuilder]

  MolecularSequenceRocBuilder({
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
  /// For Builder classes, no fields are required
  factory MolecularSequenceRocBuilder.empty() => MolecularSequenceRocBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceRocBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence.quality.roc';
    return MolecularSequenceRocBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      score: JsonParser.parsePrimitiveList<FhirIntegerBuilder>(
        json,
        'score',
        FhirIntegerBuilder.fromJson,
        '$objectPath.score',
      ),
      numTP: JsonParser.parsePrimitiveList<FhirIntegerBuilder>(
        json,
        'numTP',
        FhirIntegerBuilder.fromJson,
        '$objectPath.numTP',
      ),
      numFP: JsonParser.parsePrimitiveList<FhirIntegerBuilder>(
        json,
        'numFP',
        FhirIntegerBuilder.fromJson,
        '$objectPath.numFP',
      ),
      numFN: JsonParser.parsePrimitiveList<FhirIntegerBuilder>(
        json,
        'numFN',
        FhirIntegerBuilder.fromJson,
        '$objectPath.numFN',
      ),
      precision: JsonParser.parsePrimitiveList<FhirDecimalBuilder>(
        json,
        'precision',
        FhirDecimalBuilder.fromJson,
        '$objectPath.precision',
      ),
      sensitivity: JsonParser.parsePrimitiveList<FhirDecimalBuilder>(
        json,
        'sensitivity',
        FhirDecimalBuilder.fromJson,
        '$objectPath.sensitivity',
      ),
      fMeasure: JsonParser.parsePrimitiveList<FhirDecimalBuilder>(
        json,
        'fMeasure',
        FhirDecimalBuilder.fromJson,
        '$objectPath.fMeasure',
      ),
    );
  }

  /// Deserialize [MolecularSequenceRocBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceRocBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceRocBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceRocBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceRocBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceRocBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceRocBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceRocBuilder.fromJson(json);
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
  List<FhirIntegerBuilder>? score;

  /// [numTP]
  /// The number of true positives if the GQ score threshold was set to
  /// "score" field value.
  List<FhirIntegerBuilder>? numTP;

  /// [numFP]
  /// The number of false positives if the GQ score threshold was set to
  /// "score" field value.
  List<FhirIntegerBuilder>? numFP;

  /// [numFN]
  /// The number of false negatives if the GQ score threshold was set to
  /// "score" field value.
  List<FhirIntegerBuilder>? numFN;

  /// [precision]
  /// Calculated precision if the GQ score threshold was set to "score" field
  /// value.
  List<FhirDecimalBuilder>? precision;

  /// [sensitivity]
  /// Calculated sensitivity if the GQ score threshold was set to "score"
  /// field value.
  List<FhirDecimalBuilder>? sensitivity;

  /// [fMeasure]
  /// Calculated fScore if the GQ score threshold was set to "score" field
  /// value.
  List<FhirDecimalBuilder>? fMeasure;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('score', score);
    addField('numTP', numTP);
    addField('numFP', numFP);
    addField('numFN', numFN);
    addField('precision', precision);
    addField('sensitivity', sensitivity);
    addField('fMeasure', fMeasure);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'score':
        {
          if (child is List<FhirIntegerBuilder>) {
            // Replace or create new list
            score = child;
            return;
          } else if (child is FhirIntegerBuilder) {
            // Add single element to existing list or create new list
            score = [...(score ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'numTP':
        {
          if (child is List<FhirIntegerBuilder>) {
            // Replace or create new list
            numTP = child;
            return;
          } else if (child is FhirIntegerBuilder) {
            // Add single element to existing list or create new list
            numTP = [...(numTP ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'numFP':
        {
          if (child is List<FhirIntegerBuilder>) {
            // Replace or create new list
            numFP = child;
            return;
          } else if (child is FhirIntegerBuilder) {
            // Add single element to existing list or create new list
            numFP = [...(numFP ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'numFN':
        {
          if (child is List<FhirIntegerBuilder>) {
            // Replace or create new list
            numFN = child;
            return;
          } else if (child is FhirIntegerBuilder) {
            // Add single element to existing list or create new list
            numFN = [...(numFN ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'precision':
        {
          if (child is List<FhirDecimalBuilder>) {
            // Replace or create new list
            precision = child;
            return;
          } else if (child is FhirDecimalBuilder) {
            // Add single element to existing list or create new list
            precision = [...(precision ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sensitivity':
        {
          if (child is List<FhirDecimalBuilder>) {
            // Replace or create new list
            sensitivity = child;
            return;
          } else if (child is FhirDecimalBuilder) {
            // Add single element to existing list or create new list
            sensitivity = [...(sensitivity ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'fMeasure':
        {
          if (child is List<FhirDecimalBuilder>) {
            // Replace or create new list
            fMeasure = child;
            return;
          } else if (child is FhirDecimalBuilder) {
            // Add single element to existing list or create new list
            fMeasure = [...(fMeasure ?? []), child];
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'score':
        return ['FhirIntegerBuilder'];
      case 'numTP':
        return ['FhirIntegerBuilder'];
      case 'numFP':
        return ['FhirIntegerBuilder'];
      case 'numFN':
        return ['FhirIntegerBuilder'];
      case 'precision':
        return ['FhirDecimalBuilder'];
      case 'sensitivity':
        return ['FhirDecimalBuilder'];
      case 'fMeasure':
        return ['FhirDecimalBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularSequenceRocBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'score':
        {
          score = <FhirIntegerBuilder>[];
          return;
        }
      case 'numTP':
        {
          numTP = <FhirIntegerBuilder>[];
          return;
        }
      case 'numFP':
        {
          numFP = <FhirIntegerBuilder>[];
          return;
        }
      case 'numFN':
        {
          numFN = <FhirIntegerBuilder>[];
          return;
        }
      case 'precision':
        {
          precision = <FhirDecimalBuilder>[];
          return;
        }
      case 'sensitivity':
        {
          sensitivity = <FhirDecimalBuilder>[];
          return;
        }
      case 'fMeasure':
        {
          fMeasure = <FhirDecimalBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
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
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (score) this.score = null;
    if (numTP) this.numTP = null;
    if (numFP) this.numFP = null;
    if (numFN) this.numFN = null;
    if (precision) this.precision = null;
    if (sensitivity) this.sensitivity = null;
    if (fMeasure) this.fMeasure = null;
  }

  @override
  MolecularSequenceRocBuilder clone() => throw UnimplementedError();
  @override
  MolecularSequenceRocBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<FhirIntegerBuilder>? score,
    List<FhirIntegerBuilder>? numTP,
    List<FhirIntegerBuilder>? numFP,
    List<FhirIntegerBuilder>? numFN,
    List<FhirDecimalBuilder>? precision,
    List<FhirDecimalBuilder>? sensitivity,
    List<FhirDecimalBuilder>? fMeasure,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularSequenceRocBuilder(
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
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! MolecularSequenceRocBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<FhirIntegerBuilder>(
      score,
      o.score,
    )) {
      return false;
    }
    if (!listEquals<FhirIntegerBuilder>(
      numTP,
      o.numTP,
    )) {
      return false;
    }
    if (!listEquals<FhirIntegerBuilder>(
      numFP,
      o.numFP,
    )) {
      return false;
    }
    if (!listEquals<FhirIntegerBuilder>(
      numFN,
      o.numFN,
    )) {
      return false;
    }
    if (!listEquals<FhirDecimalBuilder>(
      precision,
      o.precision,
    )) {
      return false;
    }
    if (!listEquals<FhirDecimalBuilder>(
      sensitivity,
      o.sensitivity,
    )) {
      return false;
    }
    if (!listEquals<FhirDecimalBuilder>(
      fMeasure,
      o.fMeasure,
    )) {
      return false;
    }
    return true;
  }
}

/// [MolecularSequenceRepositoryBuilder]
/// Configurations of the external repository. The repository shall store
/// target's observedSeq or records related with target's observedSeq.
class MolecularSequenceRepositoryBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularSequenceRepositoryBuilder]

  MolecularSequenceRepositoryBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
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
  /// For Builder classes, no fields are required
  factory MolecularSequenceRepositoryBuilder.empty() =>
      MolecularSequenceRepositoryBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceRepositoryBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence.repository';
    return MolecularSequenceRepositoryBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<RepositoryTypeBuilder>(
        json,
        'type',
        RepositoryTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      url: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'url',
        FhirUriBuilder.fromJson,
        '$objectPath.url',
      ),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      datasetId: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'datasetId',
        FhirStringBuilder.fromJson,
        '$objectPath.datasetId',
      ),
      variantsetId: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'variantsetId',
        FhirStringBuilder.fromJson,
        '$objectPath.variantsetId',
      ),
      readsetId: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'readsetId',
        FhirStringBuilder.fromJson,
        '$objectPath.readsetId',
      ),
    );
  }

  /// Deserialize [MolecularSequenceRepositoryBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceRepositoryBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceRepositoryBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceRepositoryBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceRepositoryBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceRepositoryBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceRepositoryBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceRepositoryBuilder.fromJson(json);
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
  RepositoryTypeBuilder? type;

  /// [url]
  /// URI of an external repository which contains further details about the
  /// genetics data.
  FhirUriBuilder? url;

  /// [name]
  /// URI of an external repository which contains further details about the
  /// genetics data.
  FhirStringBuilder? name;

  /// [datasetId]
  /// Id of the variant in this external repository. The server will
  /// understand how to use this id to call for more info about datasets in
  /// external repository.
  FhirStringBuilder? datasetId;

  /// [variantsetId]
  /// Id of the variantset in this external repository. The server will
  /// understand how to use this id to call for more info about variantsets
  /// in external repository.
  FhirStringBuilder? variantsetId;

  /// [readsetId]
  /// Id of the read in this external repository.
  FhirStringBuilder? readsetId;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('url', url);
    addField('name', name);
    addField('datasetId', datasetId);
    addField('variantsetId', variantsetId);
    addField('readsetId', readsetId);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (type != null) {
          fields.add(type!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is RepositoryTypeBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'url':
        {
          if (child is FhirUriBuilder) {
            url = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'datasetId':
        {
          if (child is FhirStringBuilder) {
            datasetId = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'variantsetId':
        {
          if (child is FhirStringBuilder) {
            variantsetId = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'readsetId':
        {
          if (child is FhirStringBuilder) {
            readsetId = child;
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'url':
        return ['FhirUriBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'datasetId':
        return ['FhirStringBuilder'];
      case 'variantsetId':
        return ['FhirStringBuilder'];
      case 'readsetId':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularSequenceRepositoryBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = RepositoryTypeBuilder.empty();
          return;
        }
      case 'url':
        {
          url = FhirUriBuilder.empty();
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'datasetId':
        {
          datasetId = FhirStringBuilder.empty();
          return;
        }
      case 'variantsetId':
        {
          variantsetId = FhirStringBuilder.empty();
          return;
        }
      case 'readsetId':
        {
          readsetId = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool url = false,
    bool name = false,
    bool datasetId = false,
    bool variantsetId = false,
    bool readsetId = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (type) this.type = null;
    if (url) this.url = null;
    if (name) this.name = null;
    if (datasetId) this.datasetId = null;
    if (variantsetId) this.variantsetId = null;
    if (readsetId) this.readsetId = null;
  }

  @override
  MolecularSequenceRepositoryBuilder clone() => throw UnimplementedError();
  @override
  MolecularSequenceRepositoryBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    RepositoryTypeBuilder? type,
    FhirUriBuilder? url,
    FhirStringBuilder? name,
    FhirStringBuilder? datasetId,
    FhirStringBuilder? variantsetId,
    FhirStringBuilder? readsetId,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularSequenceRepositoryBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      url: url ?? this.url,
      name: name ?? this.name,
      datasetId: datasetId ?? this.datasetId,
      variantsetId: variantsetId ?? this.variantsetId,
      readsetId: readsetId ?? this.readsetId,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! MolecularSequenceRepositoryBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [MolecularSequenceStructureVariantBuilder]
/// Information about chromosome structure variation.
class MolecularSequenceStructureVariantBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularSequenceStructureVariantBuilder]

  MolecularSequenceStructureVariantBuilder({
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
  /// For Builder classes, no fields are required
  factory MolecularSequenceStructureVariantBuilder.empty() =>
      MolecularSequenceStructureVariantBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceStructureVariantBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence.structureVariant';
    return MolecularSequenceStructureVariantBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      variantType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'variantType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.variantType',
      ),
      exact: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'exact',
        FhirBooleanBuilder.fromJson,
        '$objectPath.exact',
      ),
      length: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'length',
        FhirIntegerBuilder.fromJson,
        '$objectPath.length',
      ),
      outer: JsonParser.parseObject<MolecularSequenceOuterBuilder>(
        json,
        'outer',
        MolecularSequenceOuterBuilder.fromJson,
        '$objectPath.outer',
      ),
      inner: JsonParser.parseObject<MolecularSequenceInnerBuilder>(
        json,
        'inner',
        MolecularSequenceInnerBuilder.fromJson,
        '$objectPath.inner',
      ),
    );
  }

  /// Deserialize [MolecularSequenceStructureVariantBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceStructureVariantBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceStructureVariantBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceStructureVariantBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceStructureVariantBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceStructureVariantBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceStructureVariantBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceStructureVariantBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MolecularSequenceStructureVariant';

  /// [variantType]
  /// Information about chromosome structure variation DNA change type.
  CodeableConceptBuilder? variantType;

  /// [exact]
  /// Used to indicate if the outer and inner start-end values have the same
  /// meaning.
  FhirBooleanBuilder? exact;

  /// [length]
  /// Length of the variant chromosome.
  FhirIntegerBuilder? length;

  /// [outer]
  /// Structural variant outer.
  MolecularSequenceOuterBuilder? outer;

  /// [inner]
  /// Structural variant inner.
  MolecularSequenceInnerBuilder? inner;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('variantType', variantType);
    addField('exact', exact);
    addField('length', length);
    addField('outer', outer);
    addField('inner', inner);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'variantType':
        {
          if (child is CodeableConceptBuilder) {
            variantType = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'exact':
        {
          if (child is FhirBooleanBuilder) {
            exact = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'length':
        {
          if (child is FhirIntegerBuilder) {
            length = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'outer':
        {
          if (child is MolecularSequenceOuterBuilder) {
            outer = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'inner':
        {
          if (child is MolecularSequenceInnerBuilder) {
            inner = child;
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'variantType':
        return ['CodeableConceptBuilder'];
      case 'exact':
        return ['FhirBooleanBuilder'];
      case 'length':
        return ['FhirIntegerBuilder'];
      case 'outer':
        return ['MolecularSequenceOuterBuilder'];
      case 'inner':
        return ['MolecularSequenceInnerBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularSequenceStructureVariantBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'variantType':
        {
          variantType = CodeableConceptBuilder.empty();
          return;
        }
      case 'exact':
        {
          exact = FhirBooleanBuilder.empty();
          return;
        }
      case 'length':
        {
          length = FhirIntegerBuilder.empty();
          return;
        }
      case 'outer':
        {
          outer = MolecularSequenceOuterBuilder.empty();
          return;
        }
      case 'inner':
        {
          inner = MolecularSequenceInnerBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool variantType = false,
    bool exact = false,
    bool length = false,
    bool outer = false,
    bool inner = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (variantType) this.variantType = null;
    if (exact) this.exact = null;
    if (length) this.length = null;
    if (outer) this.outer = null;
    if (inner) this.inner = null;
  }

  @override
  MolecularSequenceStructureVariantBuilder clone() =>
      throw UnimplementedError();
  @override
  MolecularSequenceStructureVariantBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? variantType,
    FhirBooleanBuilder? exact,
    FhirIntegerBuilder? length,
    MolecularSequenceOuterBuilder? outer,
    MolecularSequenceInnerBuilder? inner,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularSequenceStructureVariantBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      variantType: variantType ?? this.variantType,
      exact: exact ?? this.exact,
      length: length ?? this.length,
      outer: outer ?? this.outer,
      inner: inner ?? this.inner,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! MolecularSequenceStructureVariantBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [MolecularSequenceOuterBuilder]
/// Structural variant outer.
class MolecularSequenceOuterBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularSequenceOuterBuilder]

  MolecularSequenceOuterBuilder({
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
  /// For Builder classes, no fields are required
  factory MolecularSequenceOuterBuilder.empty() =>
      MolecularSequenceOuterBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceOuterBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence.structureVariant.outer';
    return MolecularSequenceOuterBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      start: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'start',
        FhirIntegerBuilder.fromJson,
        '$objectPath.start',
      ),
      end: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'end',
        FhirIntegerBuilder.fromJson,
        '$objectPath.end',
      ),
    );
  }

  /// Deserialize [MolecularSequenceOuterBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceOuterBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceOuterBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceOuterBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceOuterBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceOuterBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceOuterBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceOuterBuilder.fromJson(json);
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
  FhirIntegerBuilder? start;

  /// [end]
  /// Structural variant outer end. If the coordinate system is 0-based then
  /// end is exclusive and does not include the last position. If the
  /// coordinate system is 1-base, then end is inclusive and includes the
  /// last position.
  FhirIntegerBuilder? end;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('start', start);
    addField('end', end);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'start':
        {
          if (child is FhirIntegerBuilder) {
            start = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'end':
        {
          if (child is FhirIntegerBuilder) {
            end = child;
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'start':
        return ['FhirIntegerBuilder'];
      case 'end':
        return ['FhirIntegerBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularSequenceOuterBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'start':
        {
          start = FhirIntegerBuilder.empty();
          return;
        }
      case 'end':
        {
          end = FhirIntegerBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool start = false,
    bool end = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (start) this.start = null;
    if (end) this.end = null;
  }

  @override
  MolecularSequenceOuterBuilder clone() => throw UnimplementedError();
  @override
  MolecularSequenceOuterBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirIntegerBuilder? start,
    FhirIntegerBuilder? end,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularSequenceOuterBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      start: start ?? this.start,
      end: end ?? this.end,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! MolecularSequenceOuterBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [MolecularSequenceInnerBuilder]
/// Structural variant inner.
class MolecularSequenceInnerBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [MolecularSequenceInnerBuilder]

  MolecularSequenceInnerBuilder({
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
  /// For Builder classes, no fields are required
  factory MolecularSequenceInnerBuilder.empty() =>
      MolecularSequenceInnerBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MolecularSequenceInnerBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'MolecularSequence.structureVariant.inner';
    return MolecularSequenceInnerBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      start: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'start',
        FhirIntegerBuilder.fromJson,
        '$objectPath.start',
      ),
      end: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'end',
        FhirIntegerBuilder.fromJson,
        '$objectPath.end',
      ),
    );
  }

  /// Deserialize [MolecularSequenceInnerBuilder]
  /// from a [String] or [YamlMap] object
  factory MolecularSequenceInnerBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MolecularSequenceInnerBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MolecularSequenceInnerBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MolecularSequenceInnerBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MolecularSequenceInnerBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MolecularSequenceInnerBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MolecularSequenceInnerBuilder.fromJson(json);
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
  FhirIntegerBuilder? start;

  /// [end]
  /// Structural variant inner end. If the coordinate system is 0-based then
  /// end is exclusive and does not include the last position. If the
  /// coordinate system is 1-base, then end is inclusive and includes the
  /// last position.
  FhirIntegerBuilder? end;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('start', start);
    addField('end', end);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'start':
        {
          if (child is FhirIntegerBuilder) {
            start = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'end':
        {
          if (child is FhirIntegerBuilder) {
            end = child;
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'start':
        return ['FhirIntegerBuilder'];
      case 'end':
        return ['FhirIntegerBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [MolecularSequenceInnerBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'start':
        {
          start = FhirIntegerBuilder.empty();
          return;
        }
      case 'end':
        {
          end = FhirIntegerBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool start = false,
    bool end = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (start) this.start = null;
    if (end) this.end = null;
  }

  @override
  MolecularSequenceInnerBuilder clone() => throw UnimplementedError();
  @override
  MolecularSequenceInnerBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirIntegerBuilder? start,
    FhirIntegerBuilder? end,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = MolecularSequenceInnerBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      start: start ?? this.start,
      end: end ?? this.end,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! MolecularSequenceInnerBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
