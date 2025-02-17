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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SubstanceDefinition.empty() => const SubstanceDefinition();

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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.classification',
              },
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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.grade',
              },
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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.informationSource',
              },
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      manufacturer: (json['manufacturer'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.manufacturer',
              },
            ),
          )
          .toList(),
      supplier: (json['supplier'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supplier',
              },
            ),
          )
          .toList(),
      moiety: (json['moiety'] as List<dynamic>?)
          ?.map<SubstanceDefinitionMoiety>(
            (v) => SubstanceDefinitionMoiety.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.moiety',
              },
            ),
          )
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map<SubstanceDefinitionProperty>(
            (v) => SubstanceDefinitionProperty.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.property',
              },
            ),
          )
          .toList(),
      molecularWeight: (json['molecularWeight'] as List<dynamic>?)
          ?.map<SubstanceDefinitionMolecularWeight>(
            (v) => SubstanceDefinitionMolecularWeight.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.molecularWeight',
              },
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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.code',
              },
            ),
          )
          .toList(),
      name: (json['name'] as List<dynamic>?)
          ?.map<SubstanceDefinitionName>(
            (v) => SubstanceDefinitionName.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.name',
              },
            ),
          )
          .toList(),
      relationship: (json['relationship'] as List<dynamic>?)
          ?.map<SubstanceDefinitionRelationship>(
            (v) => SubstanceDefinitionRelationship.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relationship',
              },
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
    if (json is Map<String, dynamic>) {
      return SubstanceDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
      'version',
      'status',
      'classification',
      'domain',
      'grade',
      'description',
      'informationSource',
      'note',
      'manufacturer',
      'supplier',
      'moiety',
      'property',
      'molecularWeight',
      'structure',
      'code',
      'name',
      'relationship',
      'sourceMaterial',
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
      case 'version':
        if (version != null) {
          fields.add(version!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'classification':
        if (classification != null) {
          fields.addAll(classification!);
        }
      case 'domain':
        if (domain != null) {
          fields.add(domain!);
        }
      case 'grade':
        if (grade != null) {
          fields.addAll(grade!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'informationSource':
        if (informationSource != null) {
          fields.addAll(informationSource!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'manufacturer':
        if (manufacturer != null) {
          fields.addAll(manufacturer!);
        }
      case 'supplier':
        if (supplier != null) {
          fields.addAll(supplier!);
        }
      case 'moiety':
        if (moiety != null) {
          fields.addAll(moiety!);
        }
      case 'property':
        if (property != null) {
          fields.addAll(property!);
        }
      case 'molecularWeight':
        if (molecularWeight != null) {
          fields.addAll(molecularWeight!);
        }
      case 'structure':
        if (structure != null) {
          fields.add(structure!);
        }
      case 'code':
        if (code != null) {
          fields.addAll(code!);
        }
      case 'name':
        if (name != null) {
          fields.addAll(name!);
        }
      case 'relationship':
        if (relationship != null) {
          fields.addAll(relationship!);
        }
      case 'sourceMaterial':
        if (sourceMaterial != null) {
          fields.add(sourceMaterial!);
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return SubstanceDefinition(
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
      version: version?.copyWith(
            objectPath: '$newObjectPath.version',
          ) ??
          this.version,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      classification: classification
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.classification',
                ),
              )
              .toList() ??
          this.classification,
      domain: domain?.copyWith(
            objectPath: '$newObjectPath.domain',
          ) ??
          this.domain,
      grade: grade
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.grade',
                ),
              )
              .toList() ??
          this.grade,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      informationSource: informationSource
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.informationSource',
                ),
              )
              .toList() ??
          this.informationSource,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      manufacturer: manufacturer
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.manufacturer',
                ),
              )
              .toList() ??
          this.manufacturer,
      supplier: supplier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.supplier',
                ),
              )
              .toList() ??
          this.supplier,
      moiety: moiety
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.moiety',
                ),
              )
              .toList() ??
          this.moiety,
      property: property
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.property',
                ),
              )
              .toList() ??
          this.property,
      molecularWeight: molecularWeight
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.molecularWeight',
                ),
              )
              .toList() ??
          this.molecularWeight,
      structure: structure?.copyWith(
            objectPath: '$newObjectPath.structure',
          ) ??
          this.structure,
      code: code
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.code',
                ),
              )
              .toList() ??
          this.code,
      name: name
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.name',
                ),
              )
              .toList() ??
          this.name,
      relationship: relationship
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.relationship',
                ),
              )
              .toList() ??
          this.relationship,
      sourceMaterial: sourceMaterial?.copyWith(
            objectPath: '$newObjectPath.sourceMaterial',
          ) ??
          this.sourceMaterial,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceDefinition) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
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
    if (!equalsDeepWithNull(version, o.version)) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      classification,
      o.classification,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(domain, o.domain)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      grade,
      o.grade,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!listEquals<Reference>(
      informationSource,
      o.informationSource,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      manufacturer,
      o.manufacturer,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      supplier,
      o.supplier,
    )) {
      return false;
    }
    if (!listEquals<SubstanceDefinitionMoiety>(
      moiety,
      o.moiety,
    )) {
      return false;
    }
    if (!listEquals<SubstanceDefinitionProperty>(
      property,
      o.property,
    )) {
      return false;
    }
    if (!listEquals<SubstanceDefinitionMolecularWeight>(
      molecularWeight,
      o.molecularWeight,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(structure, o.structure)) {
      return false;
    }
    if (!listEquals<SubstanceDefinitionCode>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<SubstanceDefinitionName>(
      name,
      o.name,
    )) {
      return false;
    }
    if (!listEquals<SubstanceDefinitionRelationship>(
      relationship,
      o.relationship,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(sourceMaterial, o.sourceMaterial)) {
      return false;
    }
    return true;
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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SubstanceDefinitionMoiety.empty() => const SubstanceDefinitionMoiety();

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
    if (json is Map<String, dynamic>) {
      return SubstanceDefinitionMoiety.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [amountQuantity] as a Quantity
  Quantity? get amountQuantity => amountX?.isAs<Quantity>();

  /// Getter for [amountString] as a FhirString
  FhirString? get amountString => amountX?.isAs<FhirString>();

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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'role',
      'identifier',
      'name',
      'stereochemistry',
      'opticalActivity',
      'molecularFormula',
      'amountX',
      'measurementType',
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
      case 'role':
        if (role != null) {
          fields.add(role!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'stereochemistry':
        if (stereochemistry != null) {
          fields.add(stereochemistry!);
        }
      case 'opticalActivity':
        if (opticalActivity != null) {
          fields.add(opticalActivity!);
        }
      case 'molecularFormula':
        if (molecularFormula != null) {
          fields.add(molecularFormula!);
        }
      case 'amount':
        fields.add(amountX!);
      case 'amountX':
        fields.add(amountX!);
      case 'amountQuantity':
        if (amountX is Quantity) {
          fields.add(amountX!);
        }
      case 'amountString':
        if (amountX is FhirString) {
          fields.add(amountX!);
        }
      case 'measurementType':
        if (measurementType != null) {
          fields.add(measurementType!);
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SubstanceDefinitionMoiety(
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
      role: role?.copyWith(
            objectPath: '$newObjectPath.role',
          ) ??
          this.role,
      identifier: identifier?.copyWith(
            objectPath: '$newObjectPath.identifier',
          ) ??
          this.identifier,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      stereochemistry: stereochemistry?.copyWith(
            objectPath: '$newObjectPath.stereochemistry',
          ) ??
          this.stereochemistry,
      opticalActivity: opticalActivity?.copyWith(
            objectPath: '$newObjectPath.opticalActivity',
          ) ??
          this.opticalActivity,
      molecularFormula: molecularFormula?.copyWith(
            objectPath: '$newObjectPath.molecularFormula',
          ) ??
          this.molecularFormula,
      amountX: amountX?.copyWith(
            objectPath: '$newObjectPath.amountX',
          ) as AmountXSubstanceDefinitionMoiety? ??
          this.amountX,
      measurementType: measurementType?.copyWith(
            objectPath: '$newObjectPath.measurementType',
          ) ??
          this.measurementType,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceDefinitionMoiety) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(role, o.role)) {
      return false;
    }
    if (!equalsDeepWithNull(identifier, o.identifier)) {
      return false;
    }
    if (!equalsDeepWithNull(name, o.name)) {
      return false;
    }
    if (!equalsDeepWithNull(stereochemistry, o.stereochemistry)) {
      return false;
    }
    if (!equalsDeepWithNull(opticalActivity, o.opticalActivity)) {
      return false;
    }
    if (!equalsDeepWithNull(molecularFormula, o.molecularFormula)) {
      return false;
    }
    if (!equalsDeepWithNull(amountX, o.amountX)) {
      return false;
    }
    if (!equalsDeepWithNull(measurementType, o.measurementType)) {
      return false;
    }
    return true;
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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SubstanceDefinitionProperty.empty() => SubstanceDefinitionProperty(
        type: CodeableConcept.empty(),
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
    if (json is Map<String, dynamic>) {
      return SubstanceDefinitionProperty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX?.isAs<CodeableConcept>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX?.isAs<Quantity>();

  /// Getter for [valueDate] as a FhirDate
  FhirDate? get valueDate => valueX?.isAs<FhirDate>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX?.isAs<FhirBoolean>();

  /// Getter for [valueAttachment] as a Attachment
  Attachment? get valueAttachment => valueX?.isAs<Attachment>();
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'valueX',
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
      case 'value':
        fields.add(valueX!);
      case 'valueX':
        fields.add(valueX!);
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX!);
        }
      case 'valueDate':
        if (valueX is FhirDate) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX!);
        }
      case 'valueAttachment':
        if (valueX is Attachment) {
          fields.add(valueX!);
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
  SubstanceDefinitionProperty clone() => throw UnimplementedError();
  @override
  SubstanceDefinitionProperty copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    ValueXSubstanceDefinitionProperty? valueX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SubstanceDefinitionProperty(
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
      valueX: valueX?.copyWith(
            objectPath: '$newObjectPath.valueX',
          ) as ValueXSubstanceDefinitionProperty? ??
          this.valueX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceDefinitionProperty) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(valueX, o.valueX)) {
      return false;
    }
    return true;
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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SubstanceDefinitionMolecularWeight.empty() =>
      SubstanceDefinitionMolecularWeight(
        amount: Quantity.empty(),
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
    if (json is Map<String, dynamic>) {
      return SubstanceDefinitionMolecularWeight.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'method',
      'type',
      'amount',
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
      case 'method':
        if (method != null) {
          fields.add(method!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'amount':
        fields.add(amount);
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
  SubstanceDefinitionMolecularWeight clone() => throw UnimplementedError();
  @override
  SubstanceDefinitionMolecularWeight copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? method,
    CodeableConcept? type,
    Quantity? amount,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SubstanceDefinitionMolecularWeight(
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
      method: method?.copyWith(
            objectPath: '$newObjectPath.method',
          ) ??
          this.method,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      amount: amount?.copyWith(
            objectPath: '$newObjectPath.amount',
          ) ??
          this.amount,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceDefinitionMolecularWeight) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(method, o.method)) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(amount, o.amount)) {
      return false;
    }
    return true;
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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SubstanceDefinitionStructure.empty() =>
      const SubstanceDefinitionStructure();

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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.technique',
              },
            ),
          )
          .toList(),
      sourceDocument: (json['sourceDocument'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.sourceDocument',
              },
            ),
          )
          .toList(),
      representation: (json['representation'] as List<dynamic>?)
          ?.map<SubstanceDefinitionRepresentation>(
            (v) => SubstanceDefinitionRepresentation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.representation',
              },
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
    if (json is Map<String, dynamic>) {
      return SubstanceDefinitionStructure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'stereochemistry',
      'opticalActivity',
      'molecularFormula',
      'molecularFormulaByMoiety',
      'molecularWeight',
      'technique',
      'sourceDocument',
      'representation',
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
      case 'stereochemistry':
        if (stereochemistry != null) {
          fields.add(stereochemistry!);
        }
      case 'opticalActivity':
        if (opticalActivity != null) {
          fields.add(opticalActivity!);
        }
      case 'molecularFormula':
        if (molecularFormula != null) {
          fields.add(molecularFormula!);
        }
      case 'molecularFormulaByMoiety':
        if (molecularFormulaByMoiety != null) {
          fields.add(molecularFormulaByMoiety!);
        }
      case 'molecularWeight':
        if (molecularWeight != null) {
          fields.add(molecularWeight!);
        }
      case 'technique':
        if (technique != null) {
          fields.addAll(technique!);
        }
      case 'sourceDocument':
        if (sourceDocument != null) {
          fields.addAll(sourceDocument!);
        }
      case 'representation':
        if (representation != null) {
          fields.addAll(representation!);
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SubstanceDefinitionStructure(
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
      stereochemistry: stereochemistry?.copyWith(
            objectPath: '$newObjectPath.stereochemistry',
          ) ??
          this.stereochemistry,
      opticalActivity: opticalActivity?.copyWith(
            objectPath: '$newObjectPath.opticalActivity',
          ) ??
          this.opticalActivity,
      molecularFormula: molecularFormula?.copyWith(
            objectPath: '$newObjectPath.molecularFormula',
          ) ??
          this.molecularFormula,
      molecularFormulaByMoiety: molecularFormulaByMoiety?.copyWith(
            objectPath: '$newObjectPath.molecularFormulaByMoiety',
          ) ??
          this.molecularFormulaByMoiety,
      molecularWeight: molecularWeight?.copyWith(
            objectPath: '$newObjectPath.molecularWeight',
          ) ??
          this.molecularWeight,
      technique: technique
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.technique',
                ),
              )
              .toList() ??
          this.technique,
      sourceDocument: sourceDocument
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.sourceDocument',
                ),
              )
              .toList() ??
          this.sourceDocument,
      representation: representation
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.representation',
                ),
              )
              .toList() ??
          this.representation,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceDefinitionStructure) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(stereochemistry, o.stereochemistry)) {
      return false;
    }
    if (!equalsDeepWithNull(opticalActivity, o.opticalActivity)) {
      return false;
    }
    if (!equalsDeepWithNull(molecularFormula, o.molecularFormula)) {
      return false;
    }
    if (!equalsDeepWithNull(
        molecularFormulaByMoiety, o.molecularFormulaByMoiety,)) {
      return false;
    }
    if (!equalsDeepWithNull(molecularWeight, o.molecularWeight)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      technique,
      o.technique,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      sourceDocument,
      o.sourceDocument,
    )) {
      return false;
    }
    if (!listEquals<SubstanceDefinitionRepresentation>(
      representation,
      o.representation,
    )) {
      return false;
    }
    return true;
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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SubstanceDefinitionRepresentation.empty() =>
      const SubstanceDefinitionRepresentation();

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
    if (json is Map<String, dynamic>) {
      return SubstanceDefinitionRepresentation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'representation',
      'format',
      'document',
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
        if (type != null) {
          fields.add(type!);
        }
      case 'representation':
        if (representation != null) {
          fields.add(representation!);
        }
      case 'format':
        if (format != null) {
          fields.add(format!);
        }
      case 'document':
        if (document != null) {
          fields.add(document!);
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SubstanceDefinitionRepresentation(
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
      representation: representation?.copyWith(
            objectPath: '$newObjectPath.representation',
          ) ??
          this.representation,
      format: format?.copyWith(
            objectPath: '$newObjectPath.format',
          ) ??
          this.format,
      document: document?.copyWith(
            objectPath: '$newObjectPath.document',
          ) ??
          this.document,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceDefinitionRepresentation) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(representation, o.representation)) {
      return false;
    }
    if (!equalsDeepWithNull(format, o.format)) {
      return false;
    }
    if (!equalsDeepWithNull(document, o.document)) {
      return false;
    }
    return true;
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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SubstanceDefinitionCode.empty() => const SubstanceDefinitionCode();

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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      source: (json['source'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.source',
              },
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
    if (json is Map<String, dynamic>) {
      return SubstanceDefinitionCode.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'status',
      'statusDate',
      'note',
      'source',
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
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'statusDate':
        if (statusDate != null) {
          fields.add(statusDate!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'source':
        if (source != null) {
          fields.addAll(source!);
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SubstanceDefinitionCode(
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
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      statusDate: statusDate?.copyWith(
            objectPath: '$newObjectPath.statusDate',
          ) ??
          this.statusDate,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      source: source
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.source',
                ),
              )
              .toList() ??
          this.source,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceDefinitionCode) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(statusDate, o.statusDate)) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      source,
      o.source,
    )) {
      return false;
    }
    return true;
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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SubstanceDefinitionName.empty() => SubstanceDefinitionName(
        name: FhirString.empty(),
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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.language',
              },
            ),
          )
          .toList(),
      domain: (json['domain'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.domain',
              },
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.jurisdiction',
              },
            ),
          )
          .toList(),
      synonym: (json['synonym'] as List<dynamic>?)
          ?.map<SubstanceDefinitionName>(
            (v) => SubstanceDefinitionName.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.synonym',
              },
            ),
          )
          .toList(),
      translation: (json['translation'] as List<dynamic>?)
          ?.map<SubstanceDefinitionName>(
            (v) => SubstanceDefinitionName.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.translation',
              },
            ),
          )
          .toList(),
      official: (json['official'] as List<dynamic>?)
          ?.map<SubstanceDefinitionOfficial>(
            (v) => SubstanceDefinitionOfficial.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.official',
              },
            ),
          )
          .toList(),
      source: (json['source'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.source',
              },
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
    if (json is Map<String, dynamic>) {
      return SubstanceDefinitionName.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'name',
      'type',
      'status',
      'preferred',
      'language',
      'domain',
      'jurisdiction',
      'synonym',
      'translation',
      'official',
      'source',
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
      case 'name':
        fields.add(name);
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'preferred':
        if (preferred != null) {
          fields.add(preferred!);
        }
      case 'language':
        if (language != null) {
          fields.addAll(language!);
        }
      case 'domain':
        if (domain != null) {
          fields.addAll(domain!);
        }
      case 'jurisdiction':
        if (jurisdiction != null) {
          fields.addAll(jurisdiction!);
        }
      case 'synonym':
        if (synonym != null) {
          fields.addAll(synonym!);
        }
      case 'translation':
        if (translation != null) {
          fields.addAll(translation!);
        }
      case 'official':
        if (official != null) {
          fields.addAll(official!);
        }
      case 'source':
        if (source != null) {
          fields.addAll(source!);
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SubstanceDefinitionName(
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
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      preferred: preferred?.copyWith(
            objectPath: '$newObjectPath.preferred',
          ) ??
          this.preferred,
      language: language
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.language',
                ),
              )
              .toList() ??
          this.language,
      domain: domain
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.domain',
                ),
              )
              .toList() ??
          this.domain,
      jurisdiction: jurisdiction
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.jurisdiction',
                ),
              )
              .toList() ??
          this.jurisdiction,
      synonym: synonym
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.synonym',
                ),
              )
              .toList() ??
          this.synonym,
      translation: translation
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.translation',
                ),
              )
              .toList() ??
          this.translation,
      official: official
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.official',
                ),
              )
              .toList() ??
          this.official,
      source: source
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.source',
                ),
              )
              .toList() ??
          this.source,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceDefinitionName) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(name, o.name)) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(preferred, o.preferred)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      language,
      o.language,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      domain,
      o.domain,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      jurisdiction,
      o.jurisdiction,
    )) {
      return false;
    }
    if (!listEquals<SubstanceDefinitionName>(
      synonym,
      o.synonym,
    )) {
      return false;
    }
    if (!listEquals<SubstanceDefinitionName>(
      translation,
      o.translation,
    )) {
      return false;
    }
    if (!listEquals<SubstanceDefinitionOfficial>(
      official,
      o.official,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      source,
      o.source,
    )) {
      return false;
    }
    return true;
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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SubstanceDefinitionOfficial.empty() => const SubstanceDefinitionOfficial();

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
    if (json is Map<String, dynamic>) {
      return SubstanceDefinitionOfficial.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'authority',
      'status',
      'date',
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
      case 'authority':
        if (authority != null) {
          fields.add(authority!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
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
  SubstanceDefinitionOfficial clone() => throw UnimplementedError();
  @override
  SubstanceDefinitionOfficial copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? authority,
    CodeableConcept? status,
    FhirDateTime? date,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SubstanceDefinitionOfficial(
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
      authority: authority?.copyWith(
            objectPath: '$newObjectPath.authority',
          ) ??
          this.authority,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceDefinitionOfficial) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(authority, o.authority)) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(date, o.date)) {
      return false;
    }
    return true;
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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SubstanceDefinitionRelationship.empty() =>
      SubstanceDefinitionRelationship(
        type: CodeableConcept.empty(),
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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.source',
              },
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
    if (json is Map<String, dynamic>) {
      return SubstanceDefinitionRelationship.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceDefinitionRelationship';

  /// [substanceDefinitionX]
  /// A pointer to another substance, as a resource or just a
  /// representational code.
  final SubstanceDefinitionXSubstanceDefinitionRelationship?
      substanceDefinitionX;

  /// Getter for [substanceDefinitionReference] as a Reference
  Reference? get substanceDefinitionReference =>
      substanceDefinitionX?.isAs<Reference>();

  /// Getter for [substanceDefinitionCodeableConcept] as a CodeableConcept
  CodeableConcept? get substanceDefinitionCodeableConcept =>
      substanceDefinitionX?.isAs<CodeableConcept>();

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

  /// Getter for [amountQuantity] as a Quantity
  Quantity? get amountQuantity => amountX?.isAs<Quantity>();

  /// Getter for [amountRatio] as a Ratio
  Ratio? get amountRatio => amountX?.isAs<Ratio>();

  /// Getter for [amountString] as a FhirString
  FhirString? get amountString => amountX?.isAs<FhirString>();

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
          'substanceDefinition${fhirType.capitalize()}', substanceDefinitionX,);
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'substanceDefinitionX',
      'type',
      'isDefining',
      'amountX',
      'ratioHighLimitAmount',
      'comparator',
      'source',
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
      case 'substanceDefinition':
        fields.add(substanceDefinitionX!);
      case 'substanceDefinitionX':
        fields.add(substanceDefinitionX!);
      case 'substanceDefinitionReference':
        if (substanceDefinitionX is Reference) {
          fields.add(substanceDefinitionX!);
        }
      case 'substanceDefinitionCodeableConcept':
        if (substanceDefinitionX is CodeableConcept) {
          fields.add(substanceDefinitionX!);
        }
      case 'type':
        fields.add(type);
      case 'isDefining':
        if (isDefining != null) {
          fields.add(isDefining!);
        }
      case 'amount':
        fields.add(amountX!);
      case 'amountX':
        fields.add(amountX!);
      case 'amountQuantity':
        if (amountX is Quantity) {
          fields.add(amountX!);
        }
      case 'amountRatio':
        if (amountX is Ratio) {
          fields.add(amountX!);
        }
      case 'amountString':
        if (amountX is FhirString) {
          fields.add(amountX!);
        }
      case 'ratioHighLimitAmount':
        if (ratioHighLimitAmount != null) {
          fields.add(ratioHighLimitAmount!);
        }
      case 'comparator':
        if (comparator != null) {
          fields.add(comparator!);
        }
      case 'source':
        if (source != null) {
          fields.addAll(source!);
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SubstanceDefinitionRelationship(
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
      substanceDefinitionX: substanceDefinitionX?.copyWith(
            objectPath: '$newObjectPath.substanceDefinitionX',
          ) as SubstanceDefinitionXSubstanceDefinitionRelationship? ??
          this.substanceDefinitionX,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      isDefining: isDefining?.copyWith(
            objectPath: '$newObjectPath.isDefining',
          ) ??
          this.isDefining,
      amountX: amountX?.copyWith(
            objectPath: '$newObjectPath.amountX',
          ) as AmountXSubstanceDefinitionRelationship? ??
          this.amountX,
      ratioHighLimitAmount: ratioHighLimitAmount?.copyWith(
            objectPath: '$newObjectPath.ratioHighLimitAmount',
          ) ??
          this.ratioHighLimitAmount,
      comparator: comparator?.copyWith(
            objectPath: '$newObjectPath.comparator',
          ) ??
          this.comparator,
      source: source
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.source',
                ),
              )
              .toList() ??
          this.source,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceDefinitionRelationship) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(substanceDefinitionX, o.substanceDefinitionX)) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(isDefining, o.isDefining)) {
      return false;
    }
    if (!equalsDeepWithNull(amountX, o.amountX)) {
      return false;
    }
    if (!equalsDeepWithNull(ratioHighLimitAmount, o.ratioHighLimitAmount)) {
      return false;
    }
    if (!equalsDeepWithNull(comparator, o.comparator)) {
      return false;
    }
    if (!listEquals<Reference>(
      source,
      o.source,
    )) {
      return false;
    }
    return true;
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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory SubstanceDefinitionSourceMaterial.empty() =>
      const SubstanceDefinitionSourceMaterial();

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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.countryOfOrigin',
              },
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
    if (json is Map<String, dynamic>) {
      return SubstanceDefinitionSourceMaterial.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'genus',
      'species',
      'part',
      'countryOfOrigin',
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
        if (type != null) {
          fields.add(type!);
        }
      case 'genus':
        if (genus != null) {
          fields.add(genus!);
        }
      case 'species':
        if (species != null) {
          fields.add(species!);
        }
      case 'part':
        if (part_ != null) {
          fields.add(part_!);
        }
      case 'countryOfOrigin':
        if (countryOfOrigin != null) {
          fields.addAll(countryOfOrigin!);
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return SubstanceDefinitionSourceMaterial(
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
      genus: genus?.copyWith(
            objectPath: '$newObjectPath.genus',
          ) ??
          this.genus,
      species: species?.copyWith(
            objectPath: '$newObjectPath.species',
          ) ??
          this.species,
      part_: part_?.copyWith(
            objectPath: '$newObjectPath.part',
          ) ??
          this.part_,
      countryOfOrigin: countryOfOrigin
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.countryOfOrigin',
                ),
              )
              .toList() ??
          this.countryOfOrigin,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceDefinitionSourceMaterial) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(genus, o.genus)) {
      return false;
    }
    if (!equalsDeepWithNull(species, o.species)) {
      return false;
    }
    if (!equalsDeepWithNull(part_, o.part_)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      countryOfOrigin,
      o.countryOfOrigin,
    )) {
      return false;
    }
    return true;
  }
}
