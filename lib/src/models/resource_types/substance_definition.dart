import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [SubstanceDefinition]
/// The detailed description of a substance, typically at a level beyond
/// what is used for prescribing.
class SubstanceDefinition extends DomainResource {
  /// Primary constructor for
  /// [SubstanceDefinition]

  const SubstanceDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.version,
    this.status,
    this.classification,
    this.domain,
    this.grade,
    this.description,
    this.informationSource,
    this.note,
    this.manufacturer,
    this.supplier,
    this.moiety,
    this.property,
    this.molecularWeight,
    this.structure,
    this.code,
    this.name,
    this.relationship,
    this.sourceMaterial,
  }) : super(
          objectPath: 'SubstanceDefinition',
          resourceType: R4ResourceType.SubstanceDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceDefinition';
    return SubstanceDefinition(
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
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.contained'}),
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.identifier'}),
            ),
          )
          .toList(),
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
        '$objectPath.version',
      ),
      status: JsonParser.parseObject<CodeableConcept>(
        json,
        'status',
        CodeableConcept.fromJson,
        '$objectPath.status',
      ),
      classification: (json['classification'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.classification'}),
            ),
          )
          .toList(),
      domain: JsonParser.parseObject<CodeableConcept>(
        json,
        'domain',
        CodeableConcept.fromJson,
        '$objectPath.domain',
      ),
      grade: (json['grade'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.grade'}),
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
        '$objectPath.description',
      ),
      informationSource: (json['informationSource'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.informationSource'}),
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.note'}),
            ),
          )
          .toList(),
      manufacturer: (json['manufacturer'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.manufacturer'}),
            ),
          )
          .toList(),
      supplier: (json['supplier'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.supplier'}),
            ),
          )
          .toList(),
      moiety: (json['moiety'] as List<dynamic>?)
          ?.map<SubstanceDefinitionMoiety>(
            (v) => SubstanceDefinitionMoiety.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.moiety'}),
            ),
          )
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map<SubstanceDefinitionProperty>(
            (v) => SubstanceDefinitionProperty.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.property'}),
            ),
          )
          .toList(),
      molecularWeight: (json['molecularWeight'] as List<dynamic>?)
          ?.map<SubstanceDefinitionMolecularWeight>(
            (v) => SubstanceDefinitionMolecularWeight.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.molecularWeight'}),
            ),
          )
          .toList(),
      structure: JsonParser.parseObject<SubstanceDefinitionStructure>(
        json,
        'structure',
        SubstanceDefinitionStructure.fromJson,
        '$objectPath.structure',
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<SubstanceDefinitionCode>(
            (v) => SubstanceDefinitionCode.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.code'}),
            ),
          )
          .toList(),
      name: (json['name'] as List<dynamic>?)
          ?.map<SubstanceDefinitionName>(
            (v) => SubstanceDefinitionName.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.name'}),
            ),
          )
          .toList(),
      relationship: (json['relationship'] as List<dynamic>?)
          ?.map<SubstanceDefinitionRelationship>(
            (v) => SubstanceDefinitionRelationship.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.relationship'}),
            ),
          )
          .toList(),
      sourceMaterial: JsonParser.parseObject<SubstanceDefinitionSourceMaterial>(
        json,
        'sourceMaterial',
        SubstanceDefinitionSourceMaterial.fromJson,
        '$objectPath.sourceMaterial',
      ),
    );
  }

  /// Deserialize [SubstanceDefinition]
  /// from a [String] or [YamlMap] object
  factory SubstanceDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubstanceDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SubstanceDefinition';

  /// [identifier]
  /// Identifier by which this substance is known.
  final List<Identifier>? identifier;

  /// [version]
  /// A business level version identifier of the substance.
  final FhirString? version;

  /// [status]
  /// Status of substance within the catalogue e.g. active, retired.
  final CodeableConcept? status;

  /// [classification]
  /// A high level categorization, e.g. polymer or nucleic acid, or food,
  /// chemical, biological, or a lower level such as the general types of
  /// polymer (linear or branch chain) or type of impurity (process related
  /// or contaminant).
  final List<CodeableConcept>? classification;

  /// [domain]
  /// If the substance applies to human or veterinary use.
  final CodeableConcept? domain;

  /// [grade]
  /// The quality standard, established benchmark, to which substance
  /// complies (e.g. USP/NF, Ph. Eur, JP, BP, Company Standard).
  final List<CodeableConcept>? grade;

  /// [description]
  /// Textual description of the substance.
  final FhirMarkdown? description;

  /// [informationSource]
  /// Supporting literature.
  final List<Reference>? informationSource;

  /// [note]
  /// Textual comment about the substance's catalogue or registry record.
  final List<Annotation>? note;

  /// [manufacturer]
  /// The entity that creates, makes, produces or fabricates the substance.
  /// This is a set of potential manufacturers but is not necessarily
  /// comprehensive.
  final List<Reference>? manufacturer;

  /// [supplier]
  /// An entity that is the source for the substance. It may be different
  /// from the manufacturer. Supplier is synonymous to a distributor.
  final List<Reference>? supplier;

  /// [moiety]
  /// Moiety, for structural modifications.
  final List<SubstanceDefinitionMoiety>? moiety;

  /// [property]
  /// General specifications for this substance.
  final List<SubstanceDefinitionProperty>? property;

  /// [molecularWeight]
  /// The molecular weight or weight range (for proteins, polymers or nucleic
  /// acids).
  final List<SubstanceDefinitionMolecularWeight>? molecularWeight;

  /// [structure]
  /// Structural information.
  final SubstanceDefinitionStructure? structure;

  /// [code]
  /// Codes associated with the substance.
  final List<SubstanceDefinitionCode>? code;

  /// [name]
  /// Names applicable to this substance.
  final List<SubstanceDefinitionName>? name;

  /// [relationship]
  /// A link between this substance and another, with details of the
  /// relationship.
  final List<SubstanceDefinitionRelationship>? relationship;

  /// [sourceMaterial]
  /// Material or taxonomic/anatomical source for the substance.
  final SubstanceDefinitionSourceMaterial? sourceMaterial;
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
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('version', version);
    addField('status', status);
    addField('classification', classification);
    addField('domain', domain);
    addField('grade', grade);
    addField('description', description);
    addField('informationSource', informationSource);
    addField('note', note);
    addField('manufacturer', manufacturer);
    addField('supplier', supplier);
    addField('moiety', moiety);
    addField('property', property);
    addField('molecularWeight', molecularWeight);
    addField('structure', structure);
    addField('code', code);
    addField('name', name);
    addField('relationship', relationship);
    addField('sourceMaterial', sourceMaterial);
    return json;
  }

  @override
  SubstanceDefinition clone() => throw UnimplementedError();
  @override
  SubstanceDefinition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirString? version,
    CodeableConcept? status,
    List<CodeableConcept>? classification,
    CodeableConcept? domain,
    List<CodeableConcept>? grade,
    FhirMarkdown? description,
    List<Reference>? informationSource,
    List<Annotation>? note,
    List<Reference>? manufacturer,
    List<Reference>? supplier,
    List<SubstanceDefinitionMoiety>? moiety,
    List<SubstanceDefinitionProperty>? property,
    List<SubstanceDefinitionMolecularWeight>? molecularWeight,
    SubstanceDefinitionStructure? structure,
    List<SubstanceDefinitionCode>? code,
    List<SubstanceDefinitionName>? name,
    List<SubstanceDefinitionRelationship>? relationship,
    SubstanceDefinitionSourceMaterial? sourceMaterial,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return SubstanceDefinition(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      version: version ?? this.version,
      status: status ?? this.status,
      classification: classification ?? this.classification,
      domain: domain ?? this.domain,
      grade: grade ?? this.grade,
      description: description ?? this.description,
      informationSource: informationSource ?? this.informationSource,
      note: note ?? this.note,
      manufacturer: manufacturer ?? this.manufacturer,
      supplier: supplier ?? this.supplier,
      moiety: moiety ?? this.moiety,
      property: property ?? this.property,
      molecularWeight: molecularWeight ?? this.molecularWeight,
      structure: structure ?? this.structure,
      code: code ?? this.code,
      name: name ?? this.name,
      relationship: relationship ?? this.relationship,
      sourceMaterial: sourceMaterial ?? this.sourceMaterial,
    );
  }
}

/// [SubstanceDefinitionMoiety]
/// Moiety, for structural modifications.
class SubstanceDefinitionMoiety extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceDefinitionMoiety]

  const SubstanceDefinitionMoiety({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    this.identifier,
    this.name,
    this.stereochemistry,
    this.opticalActivity,
    this.molecularFormula,
    this.amountX,
    this.measurementType,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstanceDefinition.moiety',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionMoiety.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceDefinition.moiety';
    return SubstanceDefinitionMoiety(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      role: JsonParser.parseObject<CodeableConcept>(
        json,
        'role',
        CodeableConcept.fromJson,
        '$objectPath.role',
      ),
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
        '$objectPath.identifier',
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      stereochemistry: JsonParser.parseObject<CodeableConcept>(
        json,
        'stereochemistry',
        CodeableConcept.fromJson,
        '$objectPath.stereochemistry',
      ),
      opticalActivity: JsonParser.parseObject<CodeableConcept>(
        json,
        'opticalActivity',
        CodeableConcept.fromJson,
        '$objectPath.opticalActivity',
      ),
      molecularFormula: JsonParser.parsePrimitive<FhirString>(
        json,
        'molecularFormula',
        FhirString.fromJson,
        '$objectPath.molecularFormula',
      ),
      amountX: JsonParser.parsePolymorphic<AmountXSubstanceDefinitionMoiety>(
        json,
        {
          'amountQuantity': Quantity.fromJson,
          'amountString': FhirString.fromJson,
        },
        objectPath,
      ),
      measurementType: JsonParser.parseObject<CodeableConcept>(
        json,
        'measurementType',
        CodeableConcept.fromJson,
        '$objectPath.measurementType',
      ),
    );
  }

  /// Deserialize [SubstanceDefinitionMoiety]
  /// from a [String] or [YamlMap] object
  factory SubstanceDefinitionMoiety.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceDefinitionMoiety.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceDefinitionMoiety.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceDefinitionMoiety '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceDefinitionMoiety]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceDefinitionMoiety.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubstanceDefinitionMoiety.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SubstanceDefinitionMoiety';

  /// [role]
  /// Role that the moiety is playing.
  final CodeableConcept? role;

  /// [identifier]
  /// Identifier by which this moiety substance is known.
  final Identifier? identifier;

  /// [name]
  /// Textual name for this moiety substance.
  final FhirString? name;

  /// [stereochemistry]
  /// Stereochemistry type.
  final CodeableConcept? stereochemistry;

  /// [opticalActivity]
  /// Optical activity type.
  final CodeableConcept? opticalActivity;

  /// [molecularFormula]
  /// Molecular formula for this moiety of this substance, typically using
  /// the Hill system.
  final FhirString? molecularFormula;

  /// [amountX]
  /// Quantitative value for this moiety.
  final AmountXSubstanceDefinitionMoiety? amountX;

  /// [measurementType]
  /// The measurement type of the quantitative value. In capturing the actual
  /// relative amounts of substances or molecular fragments it may be
  /// necessary to indicate whether the amount refers to, for example, a mole
  /// ratio or weight ratio.
  final CodeableConcept? measurementType;
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('role', role);
    addField('identifier', identifier);
    addField('name', name);
    addField('stereochemistry', stereochemistry);
    addField('opticalActivity', opticalActivity);
    addField('molecularFormula', molecularFormula);
    if (amountX != null) {
      final fhirType = amountX!.fhirType;
      addField('amount${fhirType.capitalize()}', amountX);
    }

    addField('measurementType', measurementType);
    return json;
  }

  @override
  SubstanceDefinitionMoiety clone() => throw UnimplementedError();
  @override
  SubstanceDefinitionMoiety copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? role,
    Identifier? identifier,
    FhirString? name,
    CodeableConcept? stereochemistry,
    CodeableConcept? opticalActivity,
    FhirString? molecularFormula,
    AmountXSubstanceDefinitionMoiety? amountX,
    CodeableConcept? measurementType,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return SubstanceDefinitionMoiety(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      identifier: identifier ?? this.identifier,
      name: name ?? this.name,
      stereochemistry: stereochemistry ?? this.stereochemistry,
      opticalActivity: opticalActivity ?? this.opticalActivity,
      molecularFormula: molecularFormula ?? this.molecularFormula,
      amountX: amountX ?? this.amountX,
      measurementType: measurementType ?? this.measurementType,
    );
  }
}

/// [SubstanceDefinitionProperty]
/// General specifications for this substance.
class SubstanceDefinitionProperty extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceDefinitionProperty]

  const SubstanceDefinitionProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstanceDefinition.property',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceDefinition.property';
    return SubstanceDefinitionProperty(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      )!,
      valueX: JsonParser.parsePolymorphic<ValueXSubstanceDefinitionProperty>(
        json,
        {
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueDate': FhirDate.fromJson,
          'valueBoolean': FhirBoolean.fromJson,
          'valueAttachment': Attachment.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [SubstanceDefinitionProperty]
  /// from a [String] or [YamlMap] object
  factory SubstanceDefinitionProperty.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceDefinitionProperty.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceDefinitionProperty.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceDefinitionProperty '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceDefinitionProperty]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceDefinitionProperty.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubstanceDefinitionProperty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SubstanceDefinitionProperty';

  /// [type]
  /// A code expressing the type of property.
  final CodeableConcept type;

  /// [valueX]
  /// A value for the property.
  final ValueXSubstanceDefinitionProperty? valueX;
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalize()}', valueX);
    }

    return json;
  }

  @override
  SubstanceDefinitionProperty clone() => throw UnimplementedError();
  @override
  SubstanceDefinitionProperty copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    ValueXSubstanceDefinitionProperty? valueX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return SubstanceDefinitionProperty(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueX: valueX ?? this.valueX,
    );
  }
}

/// [SubstanceDefinitionMolecularWeight]
/// The molecular weight or weight range (for proteins, polymers or nucleic
/// acids).
class SubstanceDefinitionMolecularWeight extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceDefinitionMolecularWeight]

  const SubstanceDefinitionMolecularWeight({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.method,
    this.type,
    required this.amount,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstanceDefinition.molecularWeight',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionMolecularWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceDefinition.molecularWeight';
    return SubstanceDefinitionMolecularWeight(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      method: JsonParser.parseObject<CodeableConcept>(
        json,
        'method',
        CodeableConcept.fromJson,
        '$objectPath.method',
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      amount: JsonParser.parseObject<Quantity>(
        json,
        'amount',
        Quantity.fromJson,
        '$objectPath.amount',
      )!,
    );
  }

  /// Deserialize [SubstanceDefinitionMolecularWeight]
  /// from a [String] or [YamlMap] object
  factory SubstanceDefinitionMolecularWeight.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceDefinitionMolecularWeight.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceDefinitionMolecularWeight.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceDefinitionMolecularWeight '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceDefinitionMolecularWeight]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceDefinitionMolecularWeight.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubstanceDefinitionMolecularWeight.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SubstanceDefinitionMolecularWeight';

  /// [method]
  /// The method by which the molecular weight was determined.
  final CodeableConcept? method;

  /// [type]
  /// Type of molecular weight such as exact, average (also known as. number
  /// average), weight average.
  final CodeableConcept? type;

  /// [amount]
  /// Used to capture quantitative values for a variety of elements. If only
  /// limits are given, the arithmetic mean would be the average. If only a
  /// single definite value for a given element is given, it would be
  /// captured in this field.
  final Quantity amount;
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('method', method);
    addField('type', type);
    addField('amount', amount);
    return json;
  }

  @override
  SubstanceDefinitionMolecularWeight clone() => throw UnimplementedError();
  @override
  SubstanceDefinitionMolecularWeight copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? method,
    CodeableConcept? type,
    Quantity? amount,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return SubstanceDefinitionMolecularWeight(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      method: method ?? this.method,
      type: type ?? this.type,
      amount: amount ?? this.amount,
    );
  }
}

/// [SubstanceDefinitionStructure]
/// Structural information.
class SubstanceDefinitionStructure extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceDefinitionStructure]

  const SubstanceDefinitionStructure({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.stereochemistry,
    this.opticalActivity,
    this.molecularFormula,
    this.molecularFormulaByMoiety,
    this.molecularWeight,
    this.technique,
    this.sourceDocument,
    this.representation,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstanceDefinition.structure',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionStructure.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceDefinition.structure';
    return SubstanceDefinitionStructure(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      stereochemistry: JsonParser.parseObject<CodeableConcept>(
        json,
        'stereochemistry',
        CodeableConcept.fromJson,
        '$objectPath.stereochemistry',
      ),
      opticalActivity: JsonParser.parseObject<CodeableConcept>(
        json,
        'opticalActivity',
        CodeableConcept.fromJson,
        '$objectPath.opticalActivity',
      ),
      molecularFormula: JsonParser.parsePrimitive<FhirString>(
        json,
        'molecularFormula',
        FhirString.fromJson,
        '$objectPath.molecularFormula',
      ),
      molecularFormulaByMoiety: JsonParser.parsePrimitive<FhirString>(
        json,
        'molecularFormulaByMoiety',
        FhirString.fromJson,
        '$objectPath.molecularFormulaByMoiety',
      ),
      molecularWeight:
          JsonParser.parseObject<SubstanceDefinitionMolecularWeight>(
        json,
        'molecularWeight',
        SubstanceDefinitionMolecularWeight.fromJson,
        '$objectPath.molecularWeight',
      ),
      technique: (json['technique'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.technique'}),
            ),
          )
          .toList(),
      sourceDocument: (json['sourceDocument'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.sourceDocument'}),
            ),
          )
          .toList(),
      representation: (json['representation'] as List<dynamic>?)
          ?.map<SubstanceDefinitionRepresentation>(
            (v) => SubstanceDefinitionRepresentation.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.representation'}),
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceDefinitionStructure]
  /// from a [String] or [YamlMap] object
  factory SubstanceDefinitionStructure.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceDefinitionStructure.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceDefinitionStructure.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceDefinitionStructure '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceDefinitionStructure]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceDefinitionStructure.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubstanceDefinitionStructure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SubstanceDefinitionStructure';

  /// [stereochemistry]
  /// Stereochemistry type.
  final CodeableConcept? stereochemistry;

  /// [opticalActivity]
  /// Optical activity type.
  final CodeableConcept? opticalActivity;

  /// [molecularFormula]
  /// Molecular formula of this substance, typically using the Hill system.
  final FhirString? molecularFormula;

  /// [molecularFormulaByMoiety]
  /// Specified per moiety according to the Hill system, i.e. first C, then
  /// H, then alphabetical, each moiety separated by a dot.
  final FhirString? molecularFormulaByMoiety;

  /// [molecularWeight]
  /// The molecular weight or weight range (for proteins, polymers or nucleic
  /// acids).
  final SubstanceDefinitionMolecularWeight? molecularWeight;

  /// [technique]
  /// The method used to elucidate the structure or characterization of the
  /// drug substance. Examples: X-ray, HPLC, NMR, Peptide mapping, Ligand
  /// binding assay.
  final List<CodeableConcept>? technique;

  /// [sourceDocument]
  /// The source of information about the structure.
  final List<Reference>? sourceDocument;

  /// [representation]
  /// A depiction of the structure or characterization of the substance.
  final List<SubstanceDefinitionRepresentation>? representation;
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('stereochemistry', stereochemistry);
    addField('opticalActivity', opticalActivity);
    addField('molecularFormula', molecularFormula);
    addField('molecularFormulaByMoiety', molecularFormulaByMoiety);
    addField('molecularWeight', molecularWeight);
    addField('technique', technique);
    addField('sourceDocument', sourceDocument);
    addField('representation', representation);
    return json;
  }

  @override
  SubstanceDefinitionStructure clone() => throw UnimplementedError();
  @override
  SubstanceDefinitionStructure copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? stereochemistry,
    CodeableConcept? opticalActivity,
    FhirString? molecularFormula,
    FhirString? molecularFormulaByMoiety,
    SubstanceDefinitionMolecularWeight? molecularWeight,
    List<CodeableConcept>? technique,
    List<Reference>? sourceDocument,
    List<SubstanceDefinitionRepresentation>? representation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return SubstanceDefinitionStructure(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      stereochemistry: stereochemistry ?? this.stereochemistry,
      opticalActivity: opticalActivity ?? this.opticalActivity,
      molecularFormula: molecularFormula ?? this.molecularFormula,
      molecularFormulaByMoiety:
          molecularFormulaByMoiety ?? this.molecularFormulaByMoiety,
      molecularWeight: molecularWeight ?? this.molecularWeight,
      technique: technique ?? this.technique,
      sourceDocument: sourceDocument ?? this.sourceDocument,
      representation: representation ?? this.representation,
    );
  }
}

/// [SubstanceDefinitionRepresentation]
/// A depiction of the structure or characterization of the substance.
class SubstanceDefinitionRepresentation extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceDefinitionRepresentation]

  const SubstanceDefinitionRepresentation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.representation,
    this.format,
    this.document,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstanceDefinition.structure.representation',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionRepresentation.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceDefinition.structure.representation';
    return SubstanceDefinitionRepresentation(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      representation: JsonParser.parsePrimitive<FhirString>(
        json,
        'representation',
        FhirString.fromJson,
        '$objectPath.representation',
      ),
      format: JsonParser.parseObject<CodeableConcept>(
        json,
        'format',
        CodeableConcept.fromJson,
        '$objectPath.format',
      ),
      document: JsonParser.parseObject<Reference>(
        json,
        'document',
        Reference.fromJson,
        '$objectPath.document',
      ),
    );
  }

  /// Deserialize [SubstanceDefinitionRepresentation]
  /// from a [String] or [YamlMap] object
  factory SubstanceDefinitionRepresentation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceDefinitionRepresentation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceDefinitionRepresentation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceDefinitionRepresentation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceDefinitionRepresentation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceDefinitionRepresentation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubstanceDefinitionRepresentation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SubstanceDefinitionRepresentation';

  /// [type]
  /// The kind of structural representation (e.g. full, partial).
  final CodeableConcept? type;

  /// [representation]
  /// The structural representation or characterization as a text string in a
  /// standard format.
  final FhirString? representation;

  /// [format]
  /// The format of the representation e.g. InChI, SMILES, MOLFILE, CDX, SDF,
  /// PDB, mmCIF. The logical content type rather than the physical file
  /// format of a document.
  final CodeableConcept? format;

  /// [document]
  /// An attached file with the structural representation or characterization
  /// e.g. a molecular structure graphic of the substance, a JCAMP or AnIML
  /// file.
  final Reference? document;
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('representation', representation);
    addField('format', format);
    addField('document', document);
    return json;
  }

  @override
  SubstanceDefinitionRepresentation clone() => throw UnimplementedError();
  @override
  SubstanceDefinitionRepresentation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? representation,
    CodeableConcept? format,
    Reference? document,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return SubstanceDefinitionRepresentation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      representation: representation ?? this.representation,
      format: format ?? this.format,
      document: document ?? this.document,
    );
  }
}

/// [SubstanceDefinitionCode]
/// Codes associated with the substance.
class SubstanceDefinitionCode extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceDefinitionCode]

  const SubstanceDefinitionCode({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.status,
    this.statusDate,
    this.note,
    this.source,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstanceDefinition.code',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionCode.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceDefinition.code';
    return SubstanceDefinitionCode(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      status: JsonParser.parseObject<CodeableConcept>(
        json,
        'status',
        CodeableConcept.fromJson,
        '$objectPath.status',
      ),
      statusDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'statusDate',
        FhirDateTime.fromJson,
        '$objectPath.statusDate',
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.note'}),
            ),
          )
          .toList(),
      source: (json['source'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.source'}),
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceDefinitionCode]
  /// from a [String] or [YamlMap] object
  factory SubstanceDefinitionCode.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceDefinitionCode.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceDefinitionCode.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceDefinitionCode '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceDefinitionCode]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceDefinitionCode.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubstanceDefinitionCode.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SubstanceDefinitionCode';

  /// [code]
  /// The specific code.
  final CodeableConcept? code;

  /// [status]
  /// Status of the code assignment, for example 'provisional', 'approved'.
  final CodeableConcept? status;

  /// [statusDate]
  /// The date at which the code status was changed as part of the
  /// terminology maintenance.
  final FhirDateTime? statusDate;

  /// [note]
  /// Any comment can be provided in this field, if necessary.
  final List<Annotation>? note;

  /// [source]
  /// Supporting literature.
  final List<Reference>? source;
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('code', code);
    addField('status', status);
    addField('statusDate', statusDate);
    addField('note', note);
    addField('source', source);
    return json;
  }

  @override
  SubstanceDefinitionCode clone() => throw UnimplementedError();
  @override
  SubstanceDefinitionCode copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    CodeableConcept? status,
    FhirDateTime? statusDate,
    List<Annotation>? note,
    List<Reference>? source,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return SubstanceDefinitionCode(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      status: status ?? this.status,
      statusDate: statusDate ?? this.statusDate,
      note: note ?? this.note,
      source: source ?? this.source,
    );
  }
}

/// [SubstanceDefinitionName]
/// Names applicable to this substance.
class SubstanceDefinitionName extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceDefinitionName]

  const SubstanceDefinitionName({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.type,
    this.status,
    this.preferred,
    this.language,
    this.domain,
    this.jurisdiction,
    this.synonym,
    this.translation,
    this.official,
    this.source,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstanceDefinition.name',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionName.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceDefinition.name';
    return SubstanceDefinitionName(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      )!,
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      status: JsonParser.parseObject<CodeableConcept>(
        json,
        'status',
        CodeableConcept.fromJson,
        '$objectPath.status',
      ),
      preferred: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'preferred',
        FhirBoolean.fromJson,
        '$objectPath.preferred',
      ),
      language: (json['language'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.language'}),
            ),
          )
          .toList(),
      domain: (json['domain'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.domain'}),
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.jurisdiction'}),
            ),
          )
          .toList(),
      synonym: (json['synonym'] as List<dynamic>?)
          ?.map<SubstanceDefinitionName>(
            (v) => SubstanceDefinitionName.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.synonym'}),
            ),
          )
          .toList(),
      translation: (json['translation'] as List<dynamic>?)
          ?.map<SubstanceDefinitionName>(
            (v) => SubstanceDefinitionName.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.translation'}),
            ),
          )
          .toList(),
      official: (json['official'] as List<dynamic>?)
          ?.map<SubstanceDefinitionOfficial>(
            (v) => SubstanceDefinitionOfficial.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.official'}),
            ),
          )
          .toList(),
      source: (json['source'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.source'}),
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceDefinitionName]
  /// from a [String] or [YamlMap] object
  factory SubstanceDefinitionName.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceDefinitionName.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceDefinitionName.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceDefinitionName '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceDefinitionName]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceDefinitionName.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubstanceDefinitionName.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SubstanceDefinitionName';

  /// [name]
  /// The actual name.
  final FhirString name;

  /// [type]
  /// Name type, for example 'systematic', 'scientific, 'brand'.
  final CodeableConcept? type;

  /// [status]
  /// The status of the name, for example 'current', 'proposed'.
  final CodeableConcept? status;

  /// [preferred]
  /// If this is the preferred name for this substance.
  final FhirBoolean? preferred;

  /// [language]
  /// Human language that the name is written in.
  final List<CodeableConcept>? language;

  /// [domain]
  /// The use context of this name for example if there is a different name a
  /// drug active ingredient as opposed to a food colour additive.
  final List<CodeableConcept>? domain;

  /// [jurisdiction]
  /// The jurisdiction where this name applies.
  final List<CodeableConcept>? jurisdiction;

  /// [synonym]
  /// A synonym of this particular name, by which the substance is also
  /// known.
  final List<SubstanceDefinitionName>? synonym;

  /// [translation]
  /// A translation for this name into another human language.
  final List<SubstanceDefinitionName>? translation;

  /// [official]
  /// Details of the official nature of this name.
  final List<SubstanceDefinitionOfficial>? official;

  /// [source]
  /// Supporting literature.
  final List<Reference>? source;
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('name', name);
    addField('type', type);
    addField('status', status);
    addField('preferred', preferred);
    addField('language', language);
    addField('domain', domain);
    addField('jurisdiction', jurisdiction);
    addField('synonym', synonym);
    addField('translation', translation);
    addField('official', official);
    addField('source', source);
    return json;
  }

  @override
  SubstanceDefinitionName clone() => throw UnimplementedError();
  @override
  SubstanceDefinitionName copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    CodeableConcept? type,
    CodeableConcept? status,
    FhirBoolean? preferred,
    List<CodeableConcept>? language,
    List<CodeableConcept>? domain,
    List<CodeableConcept>? jurisdiction,
    List<SubstanceDefinitionName>? synonym,
    List<SubstanceDefinitionName>? translation,
    List<SubstanceDefinitionOfficial>? official,
    List<Reference>? source,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return SubstanceDefinitionName(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      type: type ?? this.type,
      status: status ?? this.status,
      preferred: preferred ?? this.preferred,
      language: language ?? this.language,
      domain: domain ?? this.domain,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      synonym: synonym ?? this.synonym,
      translation: translation ?? this.translation,
      official: official ?? this.official,
      source: source ?? this.source,
    );
  }
}

/// [SubstanceDefinitionOfficial]
/// Details of the official nature of this name.
class SubstanceDefinitionOfficial extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceDefinitionOfficial]

  const SubstanceDefinitionOfficial({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.authority,
    this.status,
    this.date,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstanceDefinition.name.official',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionOfficial.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceDefinition.name.official';
    return SubstanceDefinitionOfficial(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      authority: JsonParser.parseObject<CodeableConcept>(
        json,
        'authority',
        CodeableConcept.fromJson,
        '$objectPath.authority',
      ),
      status: JsonParser.parseObject<CodeableConcept>(
        json,
        'status',
        CodeableConcept.fromJson,
        '$objectPath.status',
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
        '$objectPath.date',
      ),
    );
  }

  /// Deserialize [SubstanceDefinitionOfficial]
  /// from a [String] or [YamlMap] object
  factory SubstanceDefinitionOfficial.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceDefinitionOfficial.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceDefinitionOfficial.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceDefinitionOfficial '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceDefinitionOfficial]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceDefinitionOfficial.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubstanceDefinitionOfficial.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SubstanceDefinitionOfficial';

  /// [authority]
  /// Which authority uses this official name.
  final CodeableConcept? authority;

  /// [status]
  /// The status of the official name, for example 'draft', 'active',
  /// 'retired'.
  final CodeableConcept? status;

  /// [date]
  /// Date of the official name change.
  final FhirDateTime? date;
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('authority', authority);
    addField('status', status);
    addField('date', date);
    return json;
  }

  @override
  SubstanceDefinitionOfficial clone() => throw UnimplementedError();
  @override
  SubstanceDefinitionOfficial copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? authority,
    CodeableConcept? status,
    FhirDateTime? date,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return SubstanceDefinitionOfficial(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      authority: authority ?? this.authority,
      status: status ?? this.status,
      date: date ?? this.date,
    );
  }
}

/// [SubstanceDefinitionRelationship]
/// A link between this substance and another, with details of the
/// relationship.
class SubstanceDefinitionRelationship extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceDefinitionRelationship]

  const SubstanceDefinitionRelationship({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.substanceDefinitionX,
    required this.type,
    this.isDefining,
    this.amountX,
    this.ratioHighLimitAmount,
    this.comparator,
    this.source,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstanceDefinition.relationship',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionRelationship.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceDefinition.relationship';
    return SubstanceDefinitionRelationship(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      substanceDefinitionX: JsonParser.parsePolymorphic<
          SubstanceDefinitionXSubstanceDefinitionRelationship>(
        json,
        {
          'substanceDefinitionReference': Reference.fromJson,
          'substanceDefinitionCodeableConcept': CodeableConcept.fromJson,
        },
        objectPath,
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      )!,
      isDefining: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'isDefining',
        FhirBoolean.fromJson,
        '$objectPath.isDefining',
      ),
      amountX:
          JsonParser.parsePolymorphic<AmountXSubstanceDefinitionRelationship>(
        json,
        {
          'amountQuantity': Quantity.fromJson,
          'amountRatio': Ratio.fromJson,
          'amountString': FhirString.fromJson,
        },
        objectPath,
      ),
      ratioHighLimitAmount: JsonParser.parseObject<Ratio>(
        json,
        'ratioHighLimitAmount',
        Ratio.fromJson,
        '$objectPath.ratioHighLimitAmount',
      ),
      comparator: JsonParser.parseObject<CodeableConcept>(
        json,
        'comparator',
        CodeableConcept.fromJson,
        '$objectPath.comparator',
      ),
      source: (json['source'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.source'}),
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceDefinitionRelationship]
  /// from a [String] or [YamlMap] object
  factory SubstanceDefinitionRelationship.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceDefinitionRelationship.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceDefinitionRelationship.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceDefinitionRelationship '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceDefinitionRelationship]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceDefinitionRelationship.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubstanceDefinitionRelationship.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SubstanceDefinitionRelationship';

  /// [substanceDefinitionX]
  /// A pointer to another substance, as a resource or just a
  /// representational code.
  final SubstanceDefinitionXSubstanceDefinitionRelationship?
      substanceDefinitionX;

  /// [type]
  /// For example "salt to parent", "active moiety", "starting material",
  /// "polymorph", "impurity of".
  final CodeableConcept type;

  /// [isDefining]
  /// For example where an enzyme strongly bonds with a particular substance,
  /// this is a defining relationship for that enzyme, out of several
  /// possible substance relationships.
  final FhirBoolean? isDefining;

  /// [amountX]
  /// A numeric factor for the relationship, for instance to express that the
  /// salt of a substance has some percentage of the active substance in
  /// relation to some other.
  final AmountXSubstanceDefinitionRelationship? amountX;

  /// [ratioHighLimitAmount]
  /// For use when the numeric has an uncertain range.
  final Ratio? ratioHighLimitAmount;

  /// [comparator]
  /// An operator for the amount, for example "average", "approximately",
  /// "less than".
  final CodeableConcept? comparator;

  /// [source]
  /// Supporting literature.
  final List<Reference>? source;
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    if (substanceDefinitionX != null) {
      final fhirType = substanceDefinitionX!.fhirType;
      addField(
          'substanceDefinition${fhirType.capitalize()}', substanceDefinitionX);
    }

    addField('type', type);
    addField('isDefining', isDefining);
    if (amountX != null) {
      final fhirType = amountX!.fhirType;
      addField('amount${fhirType.capitalize()}', amountX);
    }

    addField('ratioHighLimitAmount', ratioHighLimitAmount);
    addField('comparator', comparator);
    addField('source', source);
    return json;
  }

  @override
  SubstanceDefinitionRelationship clone() => throw UnimplementedError();
  @override
  SubstanceDefinitionRelationship copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    SubstanceDefinitionXSubstanceDefinitionRelationship? substanceDefinitionX,
    CodeableConcept? type,
    FhirBoolean? isDefining,
    AmountXSubstanceDefinitionRelationship? amountX,
    Ratio? ratioHighLimitAmount,
    CodeableConcept? comparator,
    List<Reference>? source,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return SubstanceDefinitionRelationship(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      substanceDefinitionX: substanceDefinitionX ?? this.substanceDefinitionX,
      type: type ?? this.type,
      isDefining: isDefining ?? this.isDefining,
      amountX: amountX ?? this.amountX,
      ratioHighLimitAmount: ratioHighLimitAmount ?? this.ratioHighLimitAmount,
      comparator: comparator ?? this.comparator,
      source: source ?? this.source,
    );
  }
}

/// [SubstanceDefinitionSourceMaterial]
/// Material or taxonomic/anatomical source for the substance.
class SubstanceDefinitionSourceMaterial extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceDefinitionSourceMaterial]

  const SubstanceDefinitionSourceMaterial({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.genus,
    this.species,
    this.part_,
    this.countryOfOrigin,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstanceDefinition.sourceMaterial',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionSourceMaterial.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceDefinition.sourceMaterial';
    return SubstanceDefinitionSourceMaterial(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      genus: JsonParser.parseObject<CodeableConcept>(
        json,
        'genus',
        CodeableConcept.fromJson,
        '$objectPath.genus',
      ),
      species: JsonParser.parseObject<CodeableConcept>(
        json,
        'species',
        CodeableConcept.fromJson,
        '$objectPath.species',
      ),
      part_: JsonParser.parseObject<CodeableConcept>(
        json,
        'part',
        CodeableConcept.fromJson,
        '$objectPath.part',
      ),
      countryOfOrigin: (json['countryOfOrigin'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.countryOfOrigin'}),
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceDefinitionSourceMaterial]
  /// from a [String] or [YamlMap] object
  factory SubstanceDefinitionSourceMaterial.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceDefinitionSourceMaterial.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceDefinitionSourceMaterial.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceDefinitionSourceMaterial '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceDefinitionSourceMaterial]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceDefinitionSourceMaterial.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubstanceDefinitionSourceMaterial.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'SubstanceDefinitionSourceMaterial';

  /// [type]
  /// A classification that provides the origin of the raw material. Example:
  /// cat hair would be an Animal source type.
  final CodeableConcept? type;

  /// [genus]
  /// The genus of an organism, typically referring to the Latin epithet of
  /// the genus element of the plant/animal scientific name.
  final CodeableConcept? genus;

  /// [species]
  /// The species of an organism, typically referring to the Latin epithet of
  /// the species of the plant/animal.
  final CodeableConcept? species;

  /// [part_]
  /// An anatomical origin of the source material within an organism.
  final CodeableConcept? part_;

  /// [countryOfOrigin]
  /// The country or countries where the material is harvested.
  final List<CodeableConcept>? countryOfOrigin;
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('genus', genus);
    addField('species', species);
    addField('part', part_);
    addField('countryOfOrigin', countryOfOrigin);
    return json;
  }

  @override
  SubstanceDefinitionSourceMaterial clone() => throw UnimplementedError();
  @override
  SubstanceDefinitionSourceMaterial copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? genus,
    CodeableConcept? species,
    CodeableConcept? part_,
    List<CodeableConcept>? countryOfOrigin,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return SubstanceDefinitionSourceMaterial(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      genus: genus ?? this.genus,
      species: species ?? this.species,
      part_: part_ ?? this.part_,
      countryOfOrigin: countryOfOrigin ?? this.countryOfOrigin,
    );
  }
}
