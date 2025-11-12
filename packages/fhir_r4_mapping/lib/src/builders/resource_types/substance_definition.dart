import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        R4ResourceType,
        SubstanceDefinition,
        SubstanceDefinitionCode,
        SubstanceDefinitionMoiety,
        SubstanceDefinitionMolecularWeight,
        SubstanceDefinitionName,
        SubstanceDefinitionOfficial,
        SubstanceDefinitionProperty,
        SubstanceDefinitionRelationship,
        SubstanceDefinitionRepresentation,
        SubstanceDefinitionSourceMaterial,
        SubstanceDefinitionStructure,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';
import 'package:yaml/yaml.dart';

/// [SubstanceDefinitionBuilder]
/// The detailed description of a substance, typically at a level beyond
/// what is used for prescribing.
class SubstanceDefinitionBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [SubstanceDefinitionBuilder]

  SubstanceDefinitionBuilder({
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
  /// For Builder classes, no fields are required
  factory SubstanceDefinitionBuilder.empty() => SubstanceDefinitionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceDefinition';
    return SubstanceDefinitionBuilder(
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
      version: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'version',
        FhirStringBuilder.fromJson,
        '$objectPath.version',
      ),
      status: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'status',
        CodeableConceptBuilder.fromJson,
        '$objectPath.status',
      ),
      classification: (json['classification'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.classification',
              },
            ),
          )
          .toList(),
      domain: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'domain',
        CodeableConceptBuilder.fromJson,
        '$objectPath.domain',
      ),
      grade: (json['grade'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.grade',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      informationSource: (json['informationSource'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.informationSource',
              },
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      manufacturer: (json['manufacturer'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.manufacturer',
              },
            ),
          )
          .toList(),
      supplier: (json['supplier'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supplier',
              },
            ),
          )
          .toList(),
      moiety: (json['moiety'] as List<dynamic>?)
          ?.map<SubstanceDefinitionMoietyBuilder>(
            (v) => SubstanceDefinitionMoietyBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.moiety',
              },
            ),
          )
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map<SubstanceDefinitionPropertyBuilder>(
            (v) => SubstanceDefinitionPropertyBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.property',
              },
            ),
          )
          .toList(),
      molecularWeight: (json['molecularWeight'] as List<dynamic>?)
          ?.map<SubstanceDefinitionMolecularWeightBuilder>(
            (v) => SubstanceDefinitionMolecularWeightBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.molecularWeight',
              },
            ),
          )
          .toList(),
      structure: JsonParser.parseObject<SubstanceDefinitionStructureBuilder>(
        json,
        'structure',
        SubstanceDefinitionStructureBuilder.fromJson,
        '$objectPath.structure',
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<SubstanceDefinitionCodeBuilder>(
            (v) => SubstanceDefinitionCodeBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.code',
              },
            ),
          )
          .toList(),
      name: (json['name'] as List<dynamic>?)
          ?.map<SubstanceDefinitionNameBuilder>(
            (v) => SubstanceDefinitionNameBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.name',
              },
            ),
          )
          .toList(),
      relationship: (json['relationship'] as List<dynamic>?)
          ?.map<SubstanceDefinitionRelationshipBuilder>(
            (v) => SubstanceDefinitionRelationshipBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relationship',
              },
            ),
          )
          .toList(),
      sourceMaterial:
          JsonParser.parseObject<SubstanceDefinitionSourceMaterialBuilder>(
        json,
        'sourceMaterial',
        SubstanceDefinitionSourceMaterialBuilder.fromJson,
        '$objectPath.sourceMaterial',
      ),
    );
  }

  /// Deserialize [SubstanceDefinitionBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceDefinitionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceDefinitionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceDefinitionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceDefinitionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceDefinitionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceDefinitionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceDefinitionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceDefinition';

  /// [identifier]
  /// Identifier by which this substance is known.
  List<IdentifierBuilder>? identifier;

  /// [version]
  /// A business level version identifier of the substance.
  FhirStringBuilder? version;

  /// [status]
  /// Status of substance within the catalogue e.g. active, retired.
  CodeableConceptBuilder? status;

  /// [classification]
  /// A high level categorization, e.g. polymer or nucleic acid, or food,
  /// chemical, biological, or a lower level such as the general types of
  /// polymer (linear or branch chain) or type of impurity (process related
  /// or contaminant).
  List<CodeableConceptBuilder>? classification;

  /// [domain]
  /// If the substance applies to human or veterinary use.
  CodeableConceptBuilder? domain;

  /// [grade]
  /// The quality standard, established benchmark, to which substance
  /// complies (e.g. USP/NF, Ph. Eur, JP, BP, Company Standard).
  List<CodeableConceptBuilder>? grade;

  /// [description]
  /// Textual description of the substance.
  FhirMarkdownBuilder? description;

  /// [informationSource]
  /// Supporting literature.
  List<ReferenceBuilder>? informationSource;

  /// [note]
  /// Textual comment about the substance's catalogue or registry record.
  List<AnnotationBuilder>? note;

  /// [manufacturer]
  /// The entity that creates, makes, produces or fabricates the substance.
  /// This is a set of potential manufacturers but is not necessarily
  /// comprehensive.
  List<ReferenceBuilder>? manufacturer;

  /// [supplier]
  /// An entity that is the source for the substance. It may be different
  /// from the manufacturer. Supplier is synonymous to a distributor.
  List<ReferenceBuilder>? supplier;

  /// [moiety]
  /// Moiety, for structural modifications.
  List<SubstanceDefinitionMoietyBuilder>? moiety;

  /// [property]
  /// General specifications for this substance.
  List<SubstanceDefinitionPropertyBuilder>? property;

  /// [molecularWeight]
  /// The molecular weight or weight range (for proteins, polymers or nucleic
  /// acids).
  List<SubstanceDefinitionMolecularWeightBuilder>? molecularWeight;

  /// [structure]
  /// Structural information.
  SubstanceDefinitionStructureBuilder? structure;

  /// [code]
  /// Codes associated with the substance.
  List<SubstanceDefinitionCodeBuilder>? code;

  /// [name]
  /// Names applicable to this substance.
  List<SubstanceDefinitionNameBuilder>? name;

  /// [relationship]
  /// A link between this substance and another, with details of the
  /// relationship.
  List<SubstanceDefinitionRelationshipBuilder>? relationship;

  /// [sourceMaterial]
  /// Material or taxonomic/anatomical source for the substance.
  SubstanceDefinitionSourceMaterialBuilder? sourceMaterial;

  /// Converts a [SubstanceDefinitionBuilder]
  /// to [SubstanceDefinition]
  @override
  SubstanceDefinition build() => SubstanceDefinition.fromJson(toJson());

  /// Converts a [SubstanceDefinitionBuilder]
  /// to a [Map<String, dynamic>]
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                implicitRules = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = CommonLanguagesBuilder(stringValue);
                language = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [
              ...(contained ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [
              ...(identifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'version':
        {
          if (child is FhirStringBuilder) {
            version = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                version = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is CodeableConceptBuilder) {
            status = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'classification':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            classification = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            classification = [
              ...(classification ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'domain':
        {
          if (child is CodeableConceptBuilder) {
            domain = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'grade':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            grade = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            grade = [
              ...(grade ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirMarkdownBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'informationSource':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            informationSource = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            informationSource = [
              ...(informationSource ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [
              ...(note ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'manufacturer':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            manufacturer = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            manufacturer = [
              ...(manufacturer ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'supplier':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            supplier = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            supplier = [
              ...(supplier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'moiety':
        {
          if (child is List<SubstanceDefinitionMoietyBuilder>) {
            // Replace or create new list
            moiety = child;
            return;
          } else if (child is SubstanceDefinitionMoietyBuilder) {
            // Add single element to existing list or create new list
            moiety = [
              ...(moiety ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'property':
        {
          if (child is List<SubstanceDefinitionPropertyBuilder>) {
            // Replace or create new list
            property = child;
            return;
          } else if (child is SubstanceDefinitionPropertyBuilder) {
            // Add single element to existing list or create new list
            property = [
              ...(property ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'molecularWeight':
        {
          if (child is List<SubstanceDefinitionMolecularWeightBuilder>) {
            // Replace or create new list
            molecularWeight = child;
            return;
          } else if (child is SubstanceDefinitionMolecularWeightBuilder) {
            // Add single element to existing list or create new list
            molecularWeight = [
              ...(molecularWeight ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'structure':
        {
          if (child is SubstanceDefinitionStructureBuilder) {
            structure = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is List<SubstanceDefinitionCodeBuilder>) {
            // Replace or create new list
            code = child;
            return;
          } else if (child is SubstanceDefinitionCodeBuilder) {
            // Add single element to existing list or create new list
            code = [
              ...(code ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is List<SubstanceDefinitionNameBuilder>) {
            // Replace or create new list
            name = child;
            return;
          } else if (child is SubstanceDefinitionNameBuilder) {
            // Add single element to existing list or create new list
            name = [
              ...(name ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relationship':
        {
          if (child is List<SubstanceDefinitionRelationshipBuilder>) {
            // Replace or create new list
            relationship = child;
            return;
          } else if (child is SubstanceDefinitionRelationshipBuilder) {
            // Add single element to existing list or create new list
            relationship = [
              ...(relationship ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sourceMaterial':
        {
          if (child is SubstanceDefinitionSourceMaterialBuilder) {
            sourceMaterial = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
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
      case 'version':
        return ['FhirStringBuilder'];
      case 'status':
        return ['CodeableConceptBuilder'];
      case 'classification':
        return ['CodeableConceptBuilder'];
      case 'domain':
        return ['CodeableConceptBuilder'];
      case 'grade':
        return ['CodeableConceptBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'informationSource':
        return ['ReferenceBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'manufacturer':
        return ['ReferenceBuilder'];
      case 'supplier':
        return ['ReferenceBuilder'];
      case 'moiety':
        return ['SubstanceDefinitionMoietyBuilder'];
      case 'property':
        return ['SubstanceDefinitionPropertyBuilder'];
      case 'molecularWeight':
        return ['SubstanceDefinitionMolecularWeightBuilder'];
      case 'structure':
        return ['SubstanceDefinitionStructureBuilder'];
      case 'code':
        return ['SubstanceDefinitionCodeBuilder'];
      case 'name':
        return ['SubstanceDefinitionNameBuilder'];
      case 'relationship':
        return ['SubstanceDefinitionRelationshipBuilder'];
      case 'sourceMaterial':
        return ['SubstanceDefinitionSourceMaterialBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceDefinitionBuilder]
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
      case 'version':
        {
          version = FhirStringBuilder.empty();
          return;
        }
      case 'status':
        {
          status = CodeableConceptBuilder.empty();
          return;
        }
      case 'classification':
        {
          classification = <CodeableConceptBuilder>[];
          return;
        }
      case 'domain':
        {
          domain = CodeableConceptBuilder.empty();
          return;
        }
      case 'grade':
        {
          grade = <CodeableConceptBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'informationSource':
        {
          informationSource = <ReferenceBuilder>[];
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'manufacturer':
        {
          manufacturer = <ReferenceBuilder>[];
          return;
        }
      case 'supplier':
        {
          supplier = <ReferenceBuilder>[];
          return;
        }
      case 'moiety':
        {
          moiety = <SubstanceDefinitionMoietyBuilder>[];
          return;
        }
      case 'property':
        {
          property = <SubstanceDefinitionPropertyBuilder>[];
          return;
        }
      case 'molecularWeight':
        {
          molecularWeight = <SubstanceDefinitionMolecularWeightBuilder>[];
          return;
        }
      case 'structure':
        {
          structure = SubstanceDefinitionStructureBuilder.empty();
          return;
        }
      case 'code':
        {
          code = <SubstanceDefinitionCodeBuilder>[];
          return;
        }
      case 'name':
        {
          name = <SubstanceDefinitionNameBuilder>[];
          return;
        }
      case 'relationship':
        {
          relationship = <SubstanceDefinitionRelationshipBuilder>[];
          return;
        }
      case 'sourceMaterial':
        {
          sourceMaterial = SubstanceDefinitionSourceMaterialBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceDefinitionBuilder clone() => throw UnimplementedError();
  @override
  SubstanceDefinitionBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    FhirStringBuilder? version,
    CodeableConceptBuilder? status,
    List<CodeableConceptBuilder>? classification,
    CodeableConceptBuilder? domain,
    List<CodeableConceptBuilder>? grade,
    FhirMarkdownBuilder? description,
    List<ReferenceBuilder>? informationSource,
    List<AnnotationBuilder>? note,
    List<ReferenceBuilder>? manufacturer,
    List<ReferenceBuilder>? supplier,
    List<SubstanceDefinitionMoietyBuilder>? moiety,
    List<SubstanceDefinitionPropertyBuilder>? property,
    List<SubstanceDefinitionMolecularWeightBuilder>? molecularWeight,
    SubstanceDefinitionStructureBuilder? structure,
    List<SubstanceDefinitionCodeBuilder>? code,
    List<SubstanceDefinitionNameBuilder>? name,
    List<SubstanceDefinitionRelationshipBuilder>? relationship,
    SubstanceDefinitionSourceMaterialBuilder? sourceMaterial,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = SubstanceDefinitionBuilder(
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
    )..objectPath = newObjectPath;
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
    if (o is! SubstanceDefinitionBuilder) {
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
      version,
      o.version,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      classification,
      o.classification,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      domain,
      o.domain,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      grade,
      o.grade,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      informationSource,
      o.informationSource,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      manufacturer,
      o.manufacturer,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      supplier,
      o.supplier,
    )) {
      return false;
    }
    if (!listEquals<SubstanceDefinitionMoietyBuilder>(
      moiety,
      o.moiety,
    )) {
      return false;
    }
    if (!listEquals<SubstanceDefinitionPropertyBuilder>(
      property,
      o.property,
    )) {
      return false;
    }
    if (!listEquals<SubstanceDefinitionMolecularWeightBuilder>(
      molecularWeight,
      o.molecularWeight,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      structure,
      o.structure,
    )) {
      return false;
    }
    if (!listEquals<SubstanceDefinitionCodeBuilder>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<SubstanceDefinitionNameBuilder>(
      name,
      o.name,
    )) {
      return false;
    }
    if (!listEquals<SubstanceDefinitionRelationshipBuilder>(
      relationship,
      o.relationship,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sourceMaterial,
      o.sourceMaterial,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceDefinitionMoietyBuilder]
/// Moiety, for structural modifications.
class SubstanceDefinitionMoietyBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstanceDefinitionMoietyBuilder]

  SubstanceDefinitionMoietyBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    this.identifier,
    this.name,
    this.stereochemistry,
    this.opticalActivity,
    this.molecularFormula,
    AmountXSubstanceDefinitionMoietyBuilder? amountX,
    QuantityBuilder? amountQuantity,
    FhirStringBuilder? amountString,
    this.measurementType,
    super.disallowExtensions,
  })  : amountX = amountX ?? amountQuantity ?? amountString,
        super(
          objectPath: 'SubstanceDefinition.moiety',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstanceDefinitionMoietyBuilder.empty() =>
      SubstanceDefinitionMoietyBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionMoietyBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceDefinition.moiety';
    return SubstanceDefinitionMoietyBuilder(
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
      role: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'role',
        CodeableConceptBuilder.fromJson,
        '$objectPath.role',
      ),
      identifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'identifier',
        IdentifierBuilder.fromJson,
        '$objectPath.identifier',
      ),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      stereochemistry: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'stereochemistry',
        CodeableConceptBuilder.fromJson,
        '$objectPath.stereochemistry',
      ),
      opticalActivity: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'opticalActivity',
        CodeableConceptBuilder.fromJson,
        '$objectPath.opticalActivity',
      ),
      molecularFormula: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'molecularFormula',
        FhirStringBuilder.fromJson,
        '$objectPath.molecularFormula',
      ),
      amountX:
          JsonParser.parsePolymorphic<AmountXSubstanceDefinitionMoietyBuilder>(
        json,
        {
          'amountQuantity': QuantityBuilder.fromJson,
          'amountString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      measurementType: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'measurementType',
        CodeableConceptBuilder.fromJson,
        '$objectPath.measurementType',
      ),
    );
  }

  /// Deserialize [SubstanceDefinitionMoietyBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceDefinitionMoietyBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceDefinitionMoietyBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceDefinitionMoietyBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceDefinitionMoietyBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceDefinitionMoietyBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceDefinitionMoietyBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceDefinitionMoietyBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceDefinitionMoiety';

  /// [role]
  /// Role that the moiety is playing.
  CodeableConceptBuilder? role;

  /// [identifier]
  /// Identifier by which this moiety substance is known.
  IdentifierBuilder? identifier;

  /// [name]
  /// Textual name for this moiety substance.
  FhirStringBuilder? name;

  /// [stereochemistry]
  /// Stereochemistry type.
  CodeableConceptBuilder? stereochemistry;

  /// [opticalActivity]
  /// Optical activity type.
  CodeableConceptBuilder? opticalActivity;

  /// [molecularFormula]
  /// Molecular formula for this moiety of this substance, typically using
  /// the Hill system.
  FhirStringBuilder? molecularFormula;

  /// [amountX]
  /// Quantitative value for this moiety.
  AmountXSubstanceDefinitionMoietyBuilder? amountX;

  /// Getter for [amountQuantity] as a QuantityBuilder
  QuantityBuilder? get amountQuantity => amountX?.isAs<QuantityBuilder>();

  /// Getter for [amountString] as a FhirStringBuilder
  FhirStringBuilder? get amountString => amountX?.isAs<FhirStringBuilder>();

  /// [measurementType]
  /// The measurement type of the quantitative value. In capturing the actual
  /// relative amounts of substances or molecular fragments it may be
  /// necessary to indicate whether the amount refers to, for example, a mole
  /// ratio or weight ratio.
  CodeableConceptBuilder? measurementType;

  /// Converts a [SubstanceDefinitionMoietyBuilder]
  /// to [SubstanceDefinitionMoiety]
  @override
  SubstanceDefinitionMoiety build() =>
      SubstanceDefinitionMoiety.fromJson(toJson());

  /// Converts a [SubstanceDefinitionMoietyBuilder]
  /// to a [Map<String, dynamic>]
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
    addField('role', role);
    addField('identifier', identifier);
    addField('name', name);
    addField('stereochemistry', stereochemistry);
    addField('opticalActivity', opticalActivity);
    addField('molecularFormula', molecularFormula);
    if (amountX != null) {
      final fhirType = amountX!.fhirType;
      addField('amount${fhirType.capitalizeFirstLetter()}', amountX);
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
        if (amountX != null) {
          fields.add(amountX!);
        }
      case 'amountX':
        if (amountX != null) {
          fields.add(amountX!);
        }
      case 'amountQuantity':
        if (amountX is QuantityBuilder) {
          fields.add(amountX!);
        }
      case 'amountString':
        if (amountX is FhirStringBuilder) {
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'role':
        {
          if (child is CodeableConceptBuilder) {
            role = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is IdentifierBuilder) {
            identifier = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'stereochemistry':
        {
          if (child is CodeableConceptBuilder) {
            stereochemistry = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'opticalActivity':
        {
          if (child is CodeableConceptBuilder) {
            opticalActivity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'molecularFormula':
        {
          if (child is FhirStringBuilder) {
            molecularFormula = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                molecularFormula = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'amount':
      case 'amountX':
        {
          if (child is AmountXSubstanceDefinitionMoietyBuilder) {
            amountX = child;
            return;
          } else {
            if (child is QuantityBuilder) {
              amountX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              amountX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'amountQuantity':
        {
          if (child is QuantityBuilder) {
            amountX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'amountString':
        {
          if (child is FhirStringBuilder) {
            amountX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'measurementType':
        {
          if (child is CodeableConceptBuilder) {
            measurementType = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
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
      case 'role':
        return ['CodeableConceptBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'stereochemistry':
        return ['CodeableConceptBuilder'];
      case 'opticalActivity':
        return ['CodeableConceptBuilder'];
      case 'molecularFormula':
        return ['FhirStringBuilder'];
      case 'amount':
      case 'amountX':
        return [
          'QuantityBuilder',
          'FhirStringBuilder',
        ];
      case 'amountQuantity':
        return ['QuantityBuilder'];
      case 'amountString':
        return ['FhirStringBuilder'];
      case 'measurementType':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceDefinitionMoietyBuilder]
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
      case 'role':
        {
          role = CodeableConceptBuilder.empty();
          return;
        }
      case 'identifier':
        {
          identifier = IdentifierBuilder.empty();
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'stereochemistry':
        {
          stereochemistry = CodeableConceptBuilder.empty();
          return;
        }
      case 'opticalActivity':
        {
          opticalActivity = CodeableConceptBuilder.empty();
          return;
        }
      case 'molecularFormula':
        {
          molecularFormula = FhirStringBuilder.empty();
          return;
        }
      case 'amount':
      case 'amountX':
      case 'amountQuantity':
        {
          amountX = QuantityBuilder.empty();
          return;
        }
      case 'amountString':
        {
          amountX = FhirStringBuilder.empty();
          return;
        }
      case 'measurementType':
        {
          measurementType = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceDefinitionMoietyBuilder clone() => throw UnimplementedError();
  @override
  SubstanceDefinitionMoietyBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? role,
    IdentifierBuilder? identifier,
    FhirStringBuilder? name,
    CodeableConceptBuilder? stereochemistry,
    CodeableConceptBuilder? opticalActivity,
    FhirStringBuilder? molecularFormula,
    AmountXSubstanceDefinitionMoietyBuilder? amountX,
    CodeableConceptBuilder? measurementType,
    QuantityBuilder? amountQuantity,
    FhirStringBuilder? amountString,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstanceDefinitionMoietyBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      identifier: identifier ?? this.identifier,
      name: name ?? this.name,
      stereochemistry: stereochemistry ?? this.stereochemistry,
      opticalActivity: opticalActivity ?? this.opticalActivity,
      molecularFormula: molecularFormula ?? this.molecularFormula,
      amountX: amountX ?? amountQuantity ?? amountString ?? this.amountX,
      measurementType: measurementType ?? this.measurementType,
    )..objectPath = newObjectPath;
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
    if (o is! SubstanceDefinitionMoietyBuilder) {
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
      role,
      o.role,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      identifier,
      o.identifier,
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
      stereochemistry,
      o.stereochemistry,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      opticalActivity,
      o.opticalActivity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      molecularFormula,
      o.molecularFormula,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amountX,
      o.amountX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      measurementType,
      o.measurementType,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceDefinitionPropertyBuilder]
/// General specifications for this substance.
class SubstanceDefinitionPropertyBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstanceDefinitionPropertyBuilder]

  SubstanceDefinitionPropertyBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    ValueXSubstanceDefinitionPropertyBuilder? valueX,
    CodeableConceptBuilder? valueCodeableConcept,
    QuantityBuilder? valueQuantity,
    FhirDateBuilder? valueDate,
    FhirBooleanBuilder? valueBoolean,
    AttachmentBuilder? valueAttachment,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueCodeableConcept ??
            valueQuantity ??
            valueDate ??
            valueBoolean ??
            valueAttachment,
        super(
          objectPath: 'SubstanceDefinition.property',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstanceDefinitionPropertyBuilder.empty() =>
      SubstanceDefinitionPropertyBuilder(
        type: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionPropertyBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceDefinition.property';
    return SubstanceDefinitionPropertyBuilder(
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
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      valueX:
          JsonParser.parsePolymorphic<ValueXSubstanceDefinitionPropertyBuilder>(
        json,
        {
          'valueCodeableConcept': CodeableConceptBuilder.fromJson,
          'valueQuantity': QuantityBuilder.fromJson,
          'valueDate': FhirDateBuilder.fromJson,
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueAttachment': AttachmentBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [SubstanceDefinitionPropertyBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceDefinitionPropertyBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceDefinitionPropertyBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceDefinitionPropertyBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceDefinitionPropertyBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceDefinitionPropertyBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceDefinitionPropertyBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceDefinitionPropertyBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceDefinitionProperty';

  /// [type]
  /// A code expressing the type of property.
  CodeableConceptBuilder? type;

  /// [valueX]
  /// A value for the property.
  ValueXSubstanceDefinitionPropertyBuilder? valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get valueCodeableConcept =>
      valueX?.isAs<CodeableConceptBuilder>();

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueDate] as a FhirDateBuilder
  FhirDateBuilder? get valueDate => valueX?.isAs<FhirDateBuilder>();

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueAttachment] as a AttachmentBuilder
  AttachmentBuilder? get valueAttachment => valueX?.isAs<AttachmentBuilder>();

  /// Converts a [SubstanceDefinitionPropertyBuilder]
  /// to [SubstanceDefinitionProperty]
  @override
  SubstanceDefinitionProperty build() =>
      SubstanceDefinitionProperty.fromJson(toJson());

  /// Converts a [SubstanceDefinitionPropertyBuilder]
  /// to a [Map<String, dynamic>]
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
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalizeFirstLetter()}', valueX);
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
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConceptBuilder) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueDate':
        if (valueX is FhirDateBuilder) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueAttachment':
        if (valueX is AttachmentBuilder) {
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
      case 'valueX':
        {
          if (child is ValueXSubstanceDefinitionPropertyBuilder) {
            valueX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              valueX = child;
              return;
            }
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDateBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is AttachmentBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is QuantityBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDate':
        {
          if (child is FhirDateBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueBoolean':
        {
          if (child is FhirBooleanBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAttachment':
        {
          if (child is AttachmentBuilder) {
            valueX = child;
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
        return ['CodeableConceptBuilder'];
      case 'value':
      case 'valueX':
        return [
          'CodeableConceptBuilder',
          'QuantityBuilder',
          'FhirDateBuilder',
          'FhirBooleanBuilder',
          'AttachmentBuilder',
        ];
      case 'valueCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueDate':
        return ['FhirDateBuilder'];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueAttachment':
        return ['AttachmentBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceDefinitionPropertyBuilder]
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
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'value':
      case 'valueX':
      case 'valueCodeableConcept':
        {
          valueX = CodeableConceptBuilder.empty();
          return;
        }
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueDate':
        {
          valueX = FhirDateBuilder.empty();
          return;
        }
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueAttachment':
        {
          valueX = AttachmentBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceDefinitionPropertyBuilder clone() => throw UnimplementedError();
  @override
  SubstanceDefinitionPropertyBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    ValueXSubstanceDefinitionPropertyBuilder? valueX,
    CodeableConceptBuilder? valueCodeableConcept,
    QuantityBuilder? valueQuantity,
    FhirDateBuilder? valueDate,
    FhirBooleanBuilder? valueBoolean,
    AttachmentBuilder? valueAttachment,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstanceDefinitionPropertyBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueX: valueX ??
          valueCodeableConcept ??
          valueQuantity ??
          valueDate ??
          valueBoolean ??
          valueAttachment ??
          this.valueX,
    )..objectPath = newObjectPath;
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
    if (o is! SubstanceDefinitionPropertyBuilder) {
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
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceDefinitionMolecularWeightBuilder]
/// The molecular weight or weight range (for proteins, polymers or nucleic
/// acids).
class SubstanceDefinitionMolecularWeightBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstanceDefinitionMolecularWeightBuilder]

  SubstanceDefinitionMolecularWeightBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.method,
    this.type,
    this.amount,
    super.disallowExtensions,
  }) : super(
          objectPath: 'SubstanceDefinition.molecularWeight',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstanceDefinitionMolecularWeightBuilder.empty() =>
      SubstanceDefinitionMolecularWeightBuilder(
        amount: QuantityBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionMolecularWeightBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceDefinition.molecularWeight';
    return SubstanceDefinitionMolecularWeightBuilder(
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
      method: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'method',
        CodeableConceptBuilder.fromJson,
        '$objectPath.method',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      amount: JsonParser.parseObject<QuantityBuilder>(
        json,
        'amount',
        QuantityBuilder.fromJson,
        '$objectPath.amount',
      ),
    );
  }

  /// Deserialize [SubstanceDefinitionMolecularWeightBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceDefinitionMolecularWeightBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceDefinitionMolecularWeightBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceDefinitionMolecularWeightBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceDefinitionMolecularWeightBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceDefinitionMolecularWeightBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceDefinitionMolecularWeightBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceDefinitionMolecularWeightBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceDefinitionMolecularWeight';

  /// [method]
  /// The method by which the molecular weight was determined.
  CodeableConceptBuilder? method;

  /// [type]
  /// Type of molecular weight such as exact, average (also known as. number
  /// average), weight average.
  CodeableConceptBuilder? type;

  /// [amount]
  /// Used to capture quantitative values for a variety of elements. If only
  /// limits are given, the arithmetic mean would be the average. If only a
  /// single definite value for a given element is given, it would be
  /// captured in this field.
  QuantityBuilder? amount;

  /// Converts a [SubstanceDefinitionMolecularWeightBuilder]
  /// to [SubstanceDefinitionMolecularWeight]
  @override
  SubstanceDefinitionMolecularWeight build() =>
      SubstanceDefinitionMolecularWeight.fromJson(toJson());

  /// Converts a [SubstanceDefinitionMolecularWeightBuilder]
  /// to a [Map<String, dynamic>]
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
      case 'method':
        if (method != null) {
          fields.add(method!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'method':
        {
          if (child is CodeableConceptBuilder) {
            method = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'amount':
        {
          if (child is QuantityBuilder) {
            amount = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
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
      case 'method':
        return ['CodeableConceptBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'amount':
        return ['QuantityBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceDefinitionMolecularWeightBuilder]
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
      case 'method':
        {
          method = CodeableConceptBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'amount':
        {
          amount = QuantityBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceDefinitionMolecularWeightBuilder clone() =>
      throw UnimplementedError();
  @override
  SubstanceDefinitionMolecularWeightBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? method,
    CodeableConceptBuilder? type,
    QuantityBuilder? amount,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstanceDefinitionMolecularWeightBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      method: method ?? this.method,
      type: type ?? this.type,
      amount: amount ?? this.amount,
    )..objectPath = newObjectPath;
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
    if (o is! SubstanceDefinitionMolecularWeightBuilder) {
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
      method,
      o.method,
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
      amount,
      o.amount,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceDefinitionStructureBuilder]
/// Structural information.
class SubstanceDefinitionStructureBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstanceDefinitionStructureBuilder]

  SubstanceDefinitionStructureBuilder({
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
  /// For Builder classes, no fields are required
  factory SubstanceDefinitionStructureBuilder.empty() =>
      SubstanceDefinitionStructureBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionStructureBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceDefinition.structure';
    return SubstanceDefinitionStructureBuilder(
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
      stereochemistry: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'stereochemistry',
        CodeableConceptBuilder.fromJson,
        '$objectPath.stereochemistry',
      ),
      opticalActivity: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'opticalActivity',
        CodeableConceptBuilder.fromJson,
        '$objectPath.opticalActivity',
      ),
      molecularFormula: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'molecularFormula',
        FhirStringBuilder.fromJson,
        '$objectPath.molecularFormula',
      ),
      molecularFormulaByMoiety: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'molecularFormulaByMoiety',
        FhirStringBuilder.fromJson,
        '$objectPath.molecularFormulaByMoiety',
      ),
      molecularWeight:
          JsonParser.parseObject<SubstanceDefinitionMolecularWeightBuilder>(
        json,
        'molecularWeight',
        SubstanceDefinitionMolecularWeightBuilder.fromJson,
        '$objectPath.molecularWeight',
      ),
      technique: (json['technique'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.technique',
              },
            ),
          )
          .toList(),
      sourceDocument: (json['sourceDocument'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.sourceDocument',
              },
            ),
          )
          .toList(),
      representation: (json['representation'] as List<dynamic>?)
          ?.map<SubstanceDefinitionRepresentationBuilder>(
            (v) => SubstanceDefinitionRepresentationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.representation',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceDefinitionStructureBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceDefinitionStructureBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceDefinitionStructureBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceDefinitionStructureBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceDefinitionStructureBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceDefinitionStructureBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceDefinitionStructureBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceDefinitionStructureBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceDefinitionStructure';

  /// [stereochemistry]
  /// Stereochemistry type.
  CodeableConceptBuilder? stereochemistry;

  /// [opticalActivity]
  /// Optical activity type.
  CodeableConceptBuilder? opticalActivity;

  /// [molecularFormula]
  /// Molecular formula of this substance, typically using the Hill system.
  FhirStringBuilder? molecularFormula;

  /// [molecularFormulaByMoiety]
  /// Specified per moiety according to the Hill system, i.e. first C, then
  /// H, then alphabetical, each moiety separated by a dot.
  FhirStringBuilder? molecularFormulaByMoiety;

  /// [molecularWeight]
  /// The molecular weight or weight range (for proteins, polymers or nucleic
  /// acids).
  SubstanceDefinitionMolecularWeightBuilder? molecularWeight;

  /// [technique]
  /// The method used to elucidate the structure or characterization of the
  /// drug substance. Examples: X-ray, HPLC, NMR, Peptide mapping, Ligand
  /// binding assay.
  List<CodeableConceptBuilder>? technique;

  /// [sourceDocument]
  /// The source of information about the structure.
  List<ReferenceBuilder>? sourceDocument;

  /// [representation]
  /// A depiction of the structure or characterization of the substance.
  List<SubstanceDefinitionRepresentationBuilder>? representation;

  /// Converts a [SubstanceDefinitionStructureBuilder]
  /// to [SubstanceDefinitionStructure]
  @override
  SubstanceDefinitionStructure build() =>
      SubstanceDefinitionStructure.fromJson(toJson());

  /// Converts a [SubstanceDefinitionStructureBuilder]
  /// to a [Map<String, dynamic>]
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'stereochemistry':
        {
          if (child is CodeableConceptBuilder) {
            stereochemistry = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'opticalActivity':
        {
          if (child is CodeableConceptBuilder) {
            opticalActivity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'molecularFormula':
        {
          if (child is FhirStringBuilder) {
            molecularFormula = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                molecularFormula = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'molecularFormulaByMoiety':
        {
          if (child is FhirStringBuilder) {
            molecularFormulaByMoiety = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                molecularFormulaByMoiety = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'molecularWeight':
        {
          if (child is SubstanceDefinitionMolecularWeightBuilder) {
            molecularWeight = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'technique':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            technique = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            technique = [
              ...(technique ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sourceDocument':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            sourceDocument = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            sourceDocument = [
              ...(sourceDocument ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'representation':
        {
          if (child is List<SubstanceDefinitionRepresentationBuilder>) {
            // Replace or create new list
            representation = child;
            return;
          } else if (child is SubstanceDefinitionRepresentationBuilder) {
            // Add single element to existing list or create new list
            representation = [
              ...(representation ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
      case 'stereochemistry':
        return ['CodeableConceptBuilder'];
      case 'opticalActivity':
        return ['CodeableConceptBuilder'];
      case 'molecularFormula':
        return ['FhirStringBuilder'];
      case 'molecularFormulaByMoiety':
        return ['FhirStringBuilder'];
      case 'molecularWeight':
        return ['SubstanceDefinitionMolecularWeightBuilder'];
      case 'technique':
        return ['CodeableConceptBuilder'];
      case 'sourceDocument':
        return ['ReferenceBuilder'];
      case 'representation':
        return ['SubstanceDefinitionRepresentationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceDefinitionStructureBuilder]
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
      case 'stereochemistry':
        {
          stereochemistry = CodeableConceptBuilder.empty();
          return;
        }
      case 'opticalActivity':
        {
          opticalActivity = CodeableConceptBuilder.empty();
          return;
        }
      case 'molecularFormula':
        {
          molecularFormula = FhirStringBuilder.empty();
          return;
        }
      case 'molecularFormulaByMoiety':
        {
          molecularFormulaByMoiety = FhirStringBuilder.empty();
          return;
        }
      case 'molecularWeight':
        {
          molecularWeight = SubstanceDefinitionMolecularWeightBuilder.empty();
          return;
        }
      case 'technique':
        {
          technique = <CodeableConceptBuilder>[];
          return;
        }
      case 'sourceDocument':
        {
          sourceDocument = <ReferenceBuilder>[];
          return;
        }
      case 'representation':
        {
          representation = <SubstanceDefinitionRepresentationBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceDefinitionStructureBuilder clone() => throw UnimplementedError();
  @override
  SubstanceDefinitionStructureBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? stereochemistry,
    CodeableConceptBuilder? opticalActivity,
    FhirStringBuilder? molecularFormula,
    FhirStringBuilder? molecularFormulaByMoiety,
    SubstanceDefinitionMolecularWeightBuilder? molecularWeight,
    List<CodeableConceptBuilder>? technique,
    List<ReferenceBuilder>? sourceDocument,
    List<SubstanceDefinitionRepresentationBuilder>? representation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstanceDefinitionStructureBuilder(
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
    )..objectPath = newObjectPath;
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
    if (o is! SubstanceDefinitionStructureBuilder) {
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
      stereochemistry,
      o.stereochemistry,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      opticalActivity,
      o.opticalActivity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      molecularFormula,
      o.molecularFormula,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      molecularFormulaByMoiety,
      o.molecularFormulaByMoiety,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      molecularWeight,
      o.molecularWeight,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      technique,
      o.technique,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      sourceDocument,
      o.sourceDocument,
    )) {
      return false;
    }
    if (!listEquals<SubstanceDefinitionRepresentationBuilder>(
      representation,
      o.representation,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceDefinitionRepresentationBuilder]
/// A depiction of the structure or characterization of the substance.
class SubstanceDefinitionRepresentationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstanceDefinitionRepresentationBuilder]

  SubstanceDefinitionRepresentationBuilder({
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
  /// For Builder classes, no fields are required
  factory SubstanceDefinitionRepresentationBuilder.empty() =>
      SubstanceDefinitionRepresentationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionRepresentationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceDefinition.structure.representation';
    return SubstanceDefinitionRepresentationBuilder(
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
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      representation: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'representation',
        FhirStringBuilder.fromJson,
        '$objectPath.representation',
      ),
      format: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'format',
        CodeableConceptBuilder.fromJson,
        '$objectPath.format',
      ),
      document: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'document',
        ReferenceBuilder.fromJson,
        '$objectPath.document',
      ),
    );
  }

  /// Deserialize [SubstanceDefinitionRepresentationBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceDefinitionRepresentationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceDefinitionRepresentationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceDefinitionRepresentationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceDefinitionRepresentationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceDefinitionRepresentationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceDefinitionRepresentationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceDefinitionRepresentationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceDefinitionRepresentation';

  /// [type]
  /// The kind of structural representation (e.g. full, partial).
  CodeableConceptBuilder? type;

  /// [representation]
  /// The structural representation or characterization as a text string in a
  /// standard format.
  FhirStringBuilder? representation;

  /// [format]
  /// The format of the representation e.g. InChI, SMILES, MOLFILE, CDX, SDF,
  /// PDB, mmCIF. The logical content type rather than the physical file
  /// format of a document.
  CodeableConceptBuilder? format;

  /// [document]
  /// An attached file with the structural representation or characterization
  /// e.g. a molecular structure graphic of the substance, a JCAMP or AnIML
  /// file.
  ReferenceBuilder? document;

  /// Converts a [SubstanceDefinitionRepresentationBuilder]
  /// to [SubstanceDefinitionRepresentation]
  @override
  SubstanceDefinitionRepresentation build() =>
      SubstanceDefinitionRepresentation.fromJson(toJson());

  /// Converts a [SubstanceDefinitionRepresentationBuilder]
  /// to a [Map<String, dynamic>]
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'representation':
        {
          if (child is FhirStringBuilder) {
            representation = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                representation = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'format':
        {
          if (child is CodeableConceptBuilder) {
            format = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'document':
        {
          if (child is ReferenceBuilder) {
            document = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['CodeableConceptBuilder'];
      case 'representation':
        return ['FhirStringBuilder'];
      case 'format':
        return ['CodeableConceptBuilder'];
      case 'document':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceDefinitionRepresentationBuilder]
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
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'representation':
        {
          representation = FhirStringBuilder.empty();
          return;
        }
      case 'format':
        {
          format = CodeableConceptBuilder.empty();
          return;
        }
      case 'document':
        {
          document = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceDefinitionRepresentationBuilder clone() =>
      throw UnimplementedError();
  @override
  SubstanceDefinitionRepresentationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    FhirStringBuilder? representation,
    CodeableConceptBuilder? format,
    ReferenceBuilder? document,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstanceDefinitionRepresentationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      representation: representation ?? this.representation,
      format: format ?? this.format,
      document: document ?? this.document,
    )..objectPath = newObjectPath;
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
    if (o is! SubstanceDefinitionRepresentationBuilder) {
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
      representation,
      o.representation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      format,
      o.format,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      document,
      o.document,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceDefinitionCodeBuilder]
/// Codes associated with the substance.
class SubstanceDefinitionCodeBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstanceDefinitionCodeBuilder]

  SubstanceDefinitionCodeBuilder({
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
  /// For Builder classes, no fields are required
  factory SubstanceDefinitionCodeBuilder.empty() =>
      SubstanceDefinitionCodeBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionCodeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceDefinition.code';
    return SubstanceDefinitionCodeBuilder(
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
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      status: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'status',
        CodeableConceptBuilder.fromJson,
        '$objectPath.status',
      ),
      statusDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'statusDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.statusDate',
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      source: (json['source'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.source',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceDefinitionCodeBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceDefinitionCodeBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceDefinitionCodeBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceDefinitionCodeBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceDefinitionCodeBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceDefinitionCodeBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceDefinitionCodeBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceDefinitionCodeBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceDefinitionCode';

  /// [code]
  /// The specific code.
  CodeableConceptBuilder? code;

  /// [status]
  /// Status of the code assignment, for example 'provisional', 'approved'.
  CodeableConceptBuilder? status;

  /// [statusDate]
  /// The date at which the code status was changed as part of the
  /// terminology maintenance.
  FhirDateTimeBuilder? statusDate;

  /// [note]
  /// Any comment can be provided in this field, if necessary.
  List<AnnotationBuilder>? note;

  /// [source]
  /// Supporting literature.
  List<ReferenceBuilder>? source;

  /// Converts a [SubstanceDefinitionCodeBuilder]
  /// to [SubstanceDefinitionCode]
  @override
  SubstanceDefinitionCode build() => SubstanceDefinitionCode.fromJson(toJson());

  /// Converts a [SubstanceDefinitionCodeBuilder]
  /// to a [Map<String, dynamic>]
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is CodeableConceptBuilder) {
            status = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'statusDate':
        {
          if (child is FhirDateTimeBuilder) {
            statusDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                statusDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [
              ...(note ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'source':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            source = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            source = [
              ...(source ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'status':
        return ['CodeableConceptBuilder'];
      case 'statusDate':
        return ['FhirDateTimeBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'source':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceDefinitionCodeBuilder]
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
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'status':
        {
          status = CodeableConceptBuilder.empty();
          return;
        }
      case 'statusDate':
        {
          statusDate = FhirDateTimeBuilder.empty();
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'source':
        {
          source = <ReferenceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceDefinitionCodeBuilder clone() => throw UnimplementedError();
  @override
  SubstanceDefinitionCodeBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? code,
    CodeableConceptBuilder? status,
    FhirDateTimeBuilder? statusDate,
    List<AnnotationBuilder>? note,
    List<ReferenceBuilder>? source,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstanceDefinitionCodeBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      status: status ?? this.status,
      statusDate: statusDate ?? this.statusDate,
      note: note ?? this.note,
      source: source ?? this.source,
    )..objectPath = newObjectPath;
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
    if (o is! SubstanceDefinitionCodeBuilder) {
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
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      statusDate,
      o.statusDate,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      source,
      o.source,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceDefinitionNameBuilder]
/// Names applicable to this substance.
class SubstanceDefinitionNameBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstanceDefinitionNameBuilder]

  SubstanceDefinitionNameBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
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
  /// For Builder classes, no fields are required
  factory SubstanceDefinitionNameBuilder.empty() =>
      SubstanceDefinitionNameBuilder(
        name: FhirStringBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionNameBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceDefinition.name';
    return SubstanceDefinitionNameBuilder(
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
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      status: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'status',
        CodeableConceptBuilder.fromJson,
        '$objectPath.status',
      ),
      preferred: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'preferred',
        FhirBooleanBuilder.fromJson,
        '$objectPath.preferred',
      ),
      language: (json['language'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.language',
              },
            ),
          )
          .toList(),
      domain: (json['domain'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.domain',
              },
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.jurisdiction',
              },
            ),
          )
          .toList(),
      synonym: (json['synonym'] as List<dynamic>?)
          ?.map<SubstanceDefinitionNameBuilder>(
            (v) => SubstanceDefinitionNameBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.synonym',
              },
            ),
          )
          .toList(),
      translation: (json['translation'] as List<dynamic>?)
          ?.map<SubstanceDefinitionNameBuilder>(
            (v) => SubstanceDefinitionNameBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.translation',
              },
            ),
          )
          .toList(),
      official: (json['official'] as List<dynamic>?)
          ?.map<SubstanceDefinitionOfficialBuilder>(
            (v) => SubstanceDefinitionOfficialBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.official',
              },
            ),
          )
          .toList(),
      source: (json['source'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.source',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceDefinitionNameBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceDefinitionNameBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceDefinitionNameBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceDefinitionNameBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceDefinitionNameBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceDefinitionNameBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceDefinitionNameBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceDefinitionNameBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceDefinitionName';

  /// [name]
  /// The actual name.
  FhirStringBuilder? name;

  /// [type]
  /// Name type, for example 'systematic', 'scientific, 'brand'.
  CodeableConceptBuilder? type;

  /// [status]
  /// The status of the name, for example 'current', 'proposed'.
  CodeableConceptBuilder? status;

  /// [preferred]
  /// If this is the preferred name for this substance.
  FhirBooleanBuilder? preferred;

  /// [language]
  /// Human language that the name is written in.
  List<CodeableConceptBuilder>? language;

  /// [domain]
  /// The use context of this name for example if there is a different name a
  /// drug active ingredient as opposed to a food colour additive.
  List<CodeableConceptBuilder>? domain;

  /// [jurisdiction]
  /// The jurisdiction where this name applies.
  List<CodeableConceptBuilder>? jurisdiction;

  /// [synonym]
  /// A synonym of this particular name, by which the substance is also
  /// known.
  List<SubstanceDefinitionNameBuilder>? synonym;

  /// [translation]
  /// A translation for this name into another human language.
  List<SubstanceDefinitionNameBuilder>? translation;

  /// [official]
  /// Details of the official nature of this name.
  List<SubstanceDefinitionOfficialBuilder>? official;

  /// [source]
  /// Supporting literature.
  List<ReferenceBuilder>? source;

  /// Converts a [SubstanceDefinitionNameBuilder]
  /// to [SubstanceDefinitionName]
  @override
  SubstanceDefinitionName build() => SubstanceDefinitionName.fromJson(toJson());

  /// Converts a [SubstanceDefinitionNameBuilder]
  /// to a [Map<String, dynamic>]
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
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is CodeableConceptBuilder) {
            status = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'preferred':
        {
          if (child is FhirBooleanBuilder) {
            preferred = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                preferred = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            language = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            language = [
              ...(language ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'domain':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            domain = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            domain = [
              ...(domain ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'jurisdiction':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            jurisdiction = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            jurisdiction = [
              ...(jurisdiction ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'synonym':
        {
          if (child is List<SubstanceDefinitionNameBuilder>) {
            // Replace or create new list
            synonym = child;
            return;
          } else if (child is SubstanceDefinitionNameBuilder) {
            // Add single element to existing list or create new list
            synonym = [
              ...(synonym ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'translation':
        {
          if (child is List<SubstanceDefinitionNameBuilder>) {
            // Replace or create new list
            translation = child;
            return;
          } else if (child is SubstanceDefinitionNameBuilder) {
            // Add single element to existing list or create new list
            translation = [
              ...(translation ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'official':
        {
          if (child is List<SubstanceDefinitionOfficialBuilder>) {
            // Replace or create new list
            official = child;
            return;
          } else if (child is SubstanceDefinitionOfficialBuilder) {
            // Add single element to existing list or create new list
            official = [
              ...(official ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'source':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            source = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            source = [
              ...(source ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
      case 'name':
        return ['FhirStringBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'status':
        return ['CodeableConceptBuilder'];
      case 'preferred':
        return ['FhirBooleanBuilder'];
      case 'language':
        return ['CodeableConceptBuilder'];
      case 'domain':
        return ['CodeableConceptBuilder'];
      case 'jurisdiction':
        return ['CodeableConceptBuilder'];
      case 'synonym':
        return ['SubstanceDefinitionNameBuilder'];
      case 'translation':
        return ['SubstanceDefinitionNameBuilder'];
      case 'official':
        return ['SubstanceDefinitionOfficialBuilder'];
      case 'source':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceDefinitionNameBuilder]
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
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'status':
        {
          status = CodeableConceptBuilder.empty();
          return;
        }
      case 'preferred':
        {
          preferred = FhirBooleanBuilder.empty();
          return;
        }
      case 'language':
        {
          language = <CodeableConceptBuilder>[];
          return;
        }
      case 'domain':
        {
          domain = <CodeableConceptBuilder>[];
          return;
        }
      case 'jurisdiction':
        {
          jurisdiction = <CodeableConceptBuilder>[];
          return;
        }
      case 'synonym':
        {
          synonym = <SubstanceDefinitionNameBuilder>[];
          return;
        }
      case 'translation':
        {
          translation = <SubstanceDefinitionNameBuilder>[];
          return;
        }
      case 'official':
        {
          official = <SubstanceDefinitionOfficialBuilder>[];
          return;
        }
      case 'source':
        {
          source = <ReferenceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceDefinitionNameBuilder clone() => throw UnimplementedError();
  @override
  SubstanceDefinitionNameBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? name,
    CodeableConceptBuilder? type,
    CodeableConceptBuilder? status,
    FhirBooleanBuilder? preferred,
    List<CodeableConceptBuilder>? language,
    List<CodeableConceptBuilder>? domain,
    List<CodeableConceptBuilder>? jurisdiction,
    List<SubstanceDefinitionNameBuilder>? synonym,
    List<SubstanceDefinitionNameBuilder>? translation,
    List<SubstanceDefinitionOfficialBuilder>? official,
    List<ReferenceBuilder>? source,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstanceDefinitionNameBuilder(
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
    )..objectPath = newObjectPath;
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
    if (o is! SubstanceDefinitionNameBuilder) {
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
      name,
      o.name,
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
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      preferred,
      o.preferred,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      language,
      o.language,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      domain,
      o.domain,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      jurisdiction,
      o.jurisdiction,
    )) {
      return false;
    }
    if (!listEquals<SubstanceDefinitionNameBuilder>(
      synonym,
      o.synonym,
    )) {
      return false;
    }
    if (!listEquals<SubstanceDefinitionNameBuilder>(
      translation,
      o.translation,
    )) {
      return false;
    }
    if (!listEquals<SubstanceDefinitionOfficialBuilder>(
      official,
      o.official,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      source,
      o.source,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceDefinitionOfficialBuilder]
/// Details of the official nature of this name.
class SubstanceDefinitionOfficialBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstanceDefinitionOfficialBuilder]

  SubstanceDefinitionOfficialBuilder({
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
  /// For Builder classes, no fields are required
  factory SubstanceDefinitionOfficialBuilder.empty() =>
      SubstanceDefinitionOfficialBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionOfficialBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceDefinition.name.official';
    return SubstanceDefinitionOfficialBuilder(
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
      authority: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'authority',
        CodeableConceptBuilder.fromJson,
        '$objectPath.authority',
      ),
      status: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'status',
        CodeableConceptBuilder.fromJson,
        '$objectPath.status',
      ),
      date: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'date',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.date',
      ),
    );
  }

  /// Deserialize [SubstanceDefinitionOfficialBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceDefinitionOfficialBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceDefinitionOfficialBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceDefinitionOfficialBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceDefinitionOfficialBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceDefinitionOfficialBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceDefinitionOfficialBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceDefinitionOfficialBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'SubstanceDefinitionOfficial';

  /// [authority]
  /// Which authority uses this official name.
  CodeableConceptBuilder? authority;

  /// [status]
  /// The status of the official name, for example 'draft', 'active',
  /// 'retired'.
  CodeableConceptBuilder? status;

  /// [date]
  /// Date of the official name change.
  FhirDateTimeBuilder? date;

  /// Converts a [SubstanceDefinitionOfficialBuilder]
  /// to [SubstanceDefinitionOfficial]
  @override
  SubstanceDefinitionOfficial build() =>
      SubstanceDefinitionOfficial.fromJson(toJson());

  /// Converts a [SubstanceDefinitionOfficialBuilder]
  /// to a [Map<String, dynamic>]
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'authority':
        {
          if (child is CodeableConceptBuilder) {
            authority = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is CodeableConceptBuilder) {
            status = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'date':
        {
          if (child is FhirDateTimeBuilder) {
            date = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                date = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
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
      case 'authority':
        return ['CodeableConceptBuilder'];
      case 'status':
        return ['CodeableConceptBuilder'];
      case 'date':
        return ['FhirDateTimeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceDefinitionOfficialBuilder]
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
      case 'authority':
        {
          authority = CodeableConceptBuilder.empty();
          return;
        }
      case 'status':
        {
          status = CodeableConceptBuilder.empty();
          return;
        }
      case 'date':
        {
          date = FhirDateTimeBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceDefinitionOfficialBuilder clone() => throw UnimplementedError();
  @override
  SubstanceDefinitionOfficialBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? authority,
    CodeableConceptBuilder? status,
    FhirDateTimeBuilder? date,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstanceDefinitionOfficialBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      authority: authority ?? this.authority,
      status: status ?? this.status,
      date: date ?? this.date,
    )..objectPath = newObjectPath;
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
    if (o is! SubstanceDefinitionOfficialBuilder) {
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
      authority,
      o.authority,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceDefinitionRelationshipBuilder]
/// A link between this substance and another, with details of the
/// relationship.
class SubstanceDefinitionRelationshipBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstanceDefinitionRelationshipBuilder]

  SubstanceDefinitionRelationshipBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    SubstanceDefinitionXSubstanceDefinitionRelationshipBuilder?
        substanceDefinitionX,
    ReferenceBuilder? substanceDefinitionReference,
    CodeableConceptBuilder? substanceDefinitionCodeableConcept,
    this.type,
    this.isDefining,
    AmountXSubstanceDefinitionRelationshipBuilder? amountX,
    QuantityBuilder? amountQuantity,
    RatioBuilder? amountRatio,
    FhirStringBuilder? amountString,
    this.ratioHighLimitAmount,
    this.comparator,
    this.source,
    super.disallowExtensions,
  })  : substanceDefinitionX = substanceDefinitionX ??
            substanceDefinitionReference ??
            substanceDefinitionCodeableConcept,
        amountX = amountX ?? amountQuantity ?? amountRatio ?? amountString,
        super(
          objectPath: 'SubstanceDefinition.relationship',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SubstanceDefinitionRelationshipBuilder.empty() =>
      SubstanceDefinitionRelationshipBuilder(
        type: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionRelationshipBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceDefinition.relationship';
    return SubstanceDefinitionRelationshipBuilder(
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
      substanceDefinitionX: JsonParser.parsePolymorphic<
          SubstanceDefinitionXSubstanceDefinitionRelationshipBuilder>(
        json,
        {
          'substanceDefinitionReference': ReferenceBuilder.fromJson,
          'substanceDefinitionCodeableConcept': CodeableConceptBuilder.fromJson,
        },
        objectPath,
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      isDefining: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'isDefining',
        FhirBooleanBuilder.fromJson,
        '$objectPath.isDefining',
      ),
      amountX: JsonParser.parsePolymorphic<
          AmountXSubstanceDefinitionRelationshipBuilder>(
        json,
        {
          'amountQuantity': QuantityBuilder.fromJson,
          'amountRatio': RatioBuilder.fromJson,
          'amountString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      ratioHighLimitAmount: JsonParser.parseObject<RatioBuilder>(
        json,
        'ratioHighLimitAmount',
        RatioBuilder.fromJson,
        '$objectPath.ratioHighLimitAmount',
      ),
      comparator: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'comparator',
        CodeableConceptBuilder.fromJson,
        '$objectPath.comparator',
      ),
      source: (json['source'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.source',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceDefinitionRelationshipBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceDefinitionRelationshipBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceDefinitionRelationshipBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceDefinitionRelationshipBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceDefinitionRelationshipBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceDefinitionRelationshipBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceDefinitionRelationshipBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceDefinitionRelationshipBuilder.fromJson(json);
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
  SubstanceDefinitionXSubstanceDefinitionRelationshipBuilder?
      substanceDefinitionX;

  /// Getter for [substanceDefinitionReference] as a ReferenceBuilder
  ReferenceBuilder? get substanceDefinitionReference =>
      substanceDefinitionX?.isAs<ReferenceBuilder>();

  /// Getter for [substanceDefinitionCodeableConcept] as a
  /// CodeableConceptBuilder
  CodeableConceptBuilder? get substanceDefinitionCodeableConcept =>
      substanceDefinitionX?.isAs<CodeableConceptBuilder>();

  /// [type]
  /// For example "salt to parent", "active moiety", "starting material",
  /// "polymorph", "impurity of".
  CodeableConceptBuilder? type;

  /// [isDefining]
  /// For example where an enzyme strongly bonds with a particular substance,
  /// this is a defining relationship for that enzyme, out of several
  /// possible substance relationships.
  FhirBooleanBuilder? isDefining;

  /// [amountX]
  /// A numeric factor for the relationship, for instance to express that the
  /// salt of a substance has some percentage of the active substance in
  /// relation to some other.
  AmountXSubstanceDefinitionRelationshipBuilder? amountX;

  /// Getter for [amountQuantity] as a QuantityBuilder
  QuantityBuilder? get amountQuantity => amountX?.isAs<QuantityBuilder>();

  /// Getter for [amountRatio] as a RatioBuilder
  RatioBuilder? get amountRatio => amountX?.isAs<RatioBuilder>();

  /// Getter for [amountString] as a FhirStringBuilder
  FhirStringBuilder? get amountString => amountX?.isAs<FhirStringBuilder>();

  /// [ratioHighLimitAmount]
  /// For use when the numeric has an uncertain range.
  RatioBuilder? ratioHighLimitAmount;

  /// [comparator]
  /// An operator for the amount, for example "average", "approximately",
  /// "less than".
  CodeableConceptBuilder? comparator;

  /// [source]
  /// Supporting literature.
  List<ReferenceBuilder>? source;

  /// Converts a [SubstanceDefinitionRelationshipBuilder]
  /// to [SubstanceDefinitionRelationship]
  @override
  SubstanceDefinitionRelationship build() =>
      SubstanceDefinitionRelationship.fromJson(toJson());

  /// Converts a [SubstanceDefinitionRelationshipBuilder]
  /// to a [Map<String, dynamic>]
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
    if (substanceDefinitionX != null) {
      final fhirType = substanceDefinitionX!.fhirType;
      addField(
        'substanceDefinition${fhirType.capitalizeFirstLetter()}',
        substanceDefinitionX,
      );
    }

    addField('type', type);
    addField('isDefining', isDefining);
    if (amountX != null) {
      final fhirType = amountX!.fhirType;
      addField('amount${fhirType.capitalizeFirstLetter()}', amountX);
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
      case 'substanceDefinition':
        if (substanceDefinitionX != null) {
          fields.add(substanceDefinitionX!);
        }
      case 'substanceDefinitionX':
        if (substanceDefinitionX != null) {
          fields.add(substanceDefinitionX!);
        }
      case 'substanceDefinitionReference':
        if (substanceDefinitionX is ReferenceBuilder) {
          fields.add(substanceDefinitionX!);
        }
      case 'substanceDefinitionCodeableConcept':
        if (substanceDefinitionX is CodeableConceptBuilder) {
          fields.add(substanceDefinitionX!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'isDefining':
        if (isDefining != null) {
          fields.add(isDefining!);
        }
      case 'amount':
        if (amountX != null) {
          fields.add(amountX!);
        }
      case 'amountX':
        if (amountX != null) {
          fields.add(amountX!);
        }
      case 'amountQuantity':
        if (amountX is QuantityBuilder) {
          fields.add(amountX!);
        }
      case 'amountRatio':
        if (amountX is RatioBuilder) {
          fields.add(amountX!);
        }
      case 'amountString':
        if (amountX is FhirStringBuilder) {
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'substanceDefinition':
      case 'substanceDefinitionX':
        {
          if (child
              is SubstanceDefinitionXSubstanceDefinitionRelationshipBuilder) {
            substanceDefinitionX = child;
            return;
          } else {
            if (child is ReferenceBuilder) {
              substanceDefinitionX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              substanceDefinitionX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'substanceDefinitionReference':
        {
          if (child is ReferenceBuilder) {
            substanceDefinitionX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'substanceDefinitionCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            substanceDefinitionX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'isDefining':
        {
          if (child is FhirBooleanBuilder) {
            isDefining = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                isDefining = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'amount':
      case 'amountX':
        {
          if (child is AmountXSubstanceDefinitionRelationshipBuilder) {
            amountX = child;
            return;
          } else {
            if (child is QuantityBuilder) {
              amountX = child;
              return;
            }
            if (child is RatioBuilder) {
              amountX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              amountX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'amountQuantity':
        {
          if (child is QuantityBuilder) {
            amountX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'amountRatio':
        {
          if (child is RatioBuilder) {
            amountX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'amountString':
        {
          if (child is FhirStringBuilder) {
            amountX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'ratioHighLimitAmount':
        {
          if (child is RatioBuilder) {
            ratioHighLimitAmount = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'comparator':
        {
          if (child is CodeableConceptBuilder) {
            comparator = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'source':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            source = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            source = [
              ...(source ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
      case 'substanceDefinition':
      case 'substanceDefinitionX':
        return [
          'ReferenceBuilder',
          'CodeableConceptBuilder',
        ];
      case 'substanceDefinitionReference':
        return ['ReferenceBuilder'];
      case 'substanceDefinitionCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'isDefining':
        return ['FhirBooleanBuilder'];
      case 'amount':
      case 'amountX':
        return [
          'QuantityBuilder',
          'RatioBuilder',
          'FhirStringBuilder',
        ];
      case 'amountQuantity':
        return ['QuantityBuilder'];
      case 'amountRatio':
        return ['RatioBuilder'];
      case 'amountString':
        return ['FhirStringBuilder'];
      case 'ratioHighLimitAmount':
        return ['RatioBuilder'];
      case 'comparator':
        return ['CodeableConceptBuilder'];
      case 'source':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceDefinitionRelationshipBuilder]
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
      case 'substanceDefinition':
      case 'substanceDefinitionX':
      case 'substanceDefinitionReference':
        {
          substanceDefinitionX = ReferenceBuilder.empty();
          return;
        }
      case 'substanceDefinitionCodeableConcept':
        {
          substanceDefinitionX = CodeableConceptBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'isDefining':
        {
          isDefining = FhirBooleanBuilder.empty();
          return;
        }
      case 'amount':
      case 'amountX':
      case 'amountQuantity':
        {
          amountX = QuantityBuilder.empty();
          return;
        }
      case 'amountRatio':
        {
          amountX = RatioBuilder.empty();
          return;
        }
      case 'amountString':
        {
          amountX = FhirStringBuilder.empty();
          return;
        }
      case 'ratioHighLimitAmount':
        {
          ratioHighLimitAmount = RatioBuilder.empty();
          return;
        }
      case 'comparator':
        {
          comparator = CodeableConceptBuilder.empty();
          return;
        }
      case 'source':
        {
          source = <ReferenceBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceDefinitionRelationshipBuilder clone() => throw UnimplementedError();
  @override
  SubstanceDefinitionRelationshipBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    SubstanceDefinitionXSubstanceDefinitionRelationshipBuilder?
        substanceDefinitionX,
    CodeableConceptBuilder? type,
    FhirBooleanBuilder? isDefining,
    AmountXSubstanceDefinitionRelationshipBuilder? amountX,
    RatioBuilder? ratioHighLimitAmount,
    CodeableConceptBuilder? comparator,
    List<ReferenceBuilder>? source,
    ReferenceBuilder? substanceDefinitionReference,
    CodeableConceptBuilder? substanceDefinitionCodeableConcept,
    QuantityBuilder? amountQuantity,
    RatioBuilder? amountRatio,
    FhirStringBuilder? amountString,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstanceDefinitionRelationshipBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      substanceDefinitionX: substanceDefinitionX ??
          substanceDefinitionReference ??
          substanceDefinitionCodeableConcept ??
          this.substanceDefinitionX,
      type: type ?? this.type,
      isDefining: isDefining ?? this.isDefining,
      amountX: amountX ??
          amountQuantity ??
          amountRatio ??
          amountString ??
          this.amountX,
      ratioHighLimitAmount: ratioHighLimitAmount ?? this.ratioHighLimitAmount,
      comparator: comparator ?? this.comparator,
      source: source ?? this.source,
    )..objectPath = newObjectPath;
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
    if (o is! SubstanceDefinitionRelationshipBuilder) {
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
      substanceDefinitionX,
      o.substanceDefinitionX,
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
      isDefining,
      o.isDefining,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amountX,
      o.amountX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      ratioHighLimitAmount,
      o.ratioHighLimitAmount,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      comparator,
      o.comparator,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      source,
      o.source,
    )) {
      return false;
    }
    return true;
  }
}

/// [SubstanceDefinitionSourceMaterialBuilder]
/// Material or taxonomic/anatomical source for the substance.
class SubstanceDefinitionSourceMaterialBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [SubstanceDefinitionSourceMaterialBuilder]

  SubstanceDefinitionSourceMaterialBuilder({
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
  /// For Builder classes, no fields are required
  factory SubstanceDefinitionSourceMaterialBuilder.empty() =>
      SubstanceDefinitionSourceMaterialBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionSourceMaterialBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'SubstanceDefinition.sourceMaterial';
    return SubstanceDefinitionSourceMaterialBuilder(
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
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      genus: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'genus',
        CodeableConceptBuilder.fromJson,
        '$objectPath.genus',
      ),
      species: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'species',
        CodeableConceptBuilder.fromJson,
        '$objectPath.species',
      ),
      part_: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'part',
        CodeableConceptBuilder.fromJson,
        '$objectPath.part',
      ),
      countryOfOrigin: (json['countryOfOrigin'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.countryOfOrigin',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [SubstanceDefinitionSourceMaterialBuilder]
  /// from a [String] or [YamlMap] object
  factory SubstanceDefinitionSourceMaterialBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SubstanceDefinitionSourceMaterialBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SubstanceDefinitionSourceMaterialBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SubstanceDefinitionSourceMaterialBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SubstanceDefinitionSourceMaterialBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SubstanceDefinitionSourceMaterialBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SubstanceDefinitionSourceMaterialBuilder.fromJson(json);
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
  CodeableConceptBuilder? type;

  /// [genus]
  /// The genus of an organism, typically referring to the Latin epithet of
  /// the genus element of the plant/animal scientific name.
  CodeableConceptBuilder? genus;

  /// [species]
  /// The species of an organism, typically referring to the Latin epithet of
  /// the species of the plant/animal.
  CodeableConceptBuilder? species;

  /// [part_]
  /// An anatomical origin of the source material within an organism.
  CodeableConceptBuilder? part_;

  /// [countryOfOrigin]
  /// The country or countries where the material is harvested.
  List<CodeableConceptBuilder>? countryOfOrigin;

  /// Converts a [SubstanceDefinitionSourceMaterialBuilder]
  /// to [SubstanceDefinitionSourceMaterial]
  @override
  SubstanceDefinitionSourceMaterial build() =>
      SubstanceDefinitionSourceMaterial.fromJson(toJson());

  /// Converts a [SubstanceDefinitionSourceMaterialBuilder]
  /// to a [Map<String, dynamic>]
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
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'genus':
        {
          if (child is CodeableConceptBuilder) {
            genus = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'species':
        {
          if (child is CodeableConceptBuilder) {
            species = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'part':
        {
          if (child is CodeableConceptBuilder) {
            part_ = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'countryOfOrigin':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            countryOfOrigin = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            countryOfOrigin = [
              ...(countryOfOrigin ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
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
        return ['CodeableConceptBuilder'];
      case 'genus':
        return ['CodeableConceptBuilder'];
      case 'species':
        return ['CodeableConceptBuilder'];
      case 'part':
        return ['CodeableConceptBuilder'];
      case 'countryOfOrigin':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SubstanceDefinitionSourceMaterialBuilder]
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
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'genus':
        {
          genus = CodeableConceptBuilder.empty();
          return;
        }
      case 'species':
        {
          species = CodeableConceptBuilder.empty();
          return;
        }
      case 'part':
        {
          part_ = CodeableConceptBuilder.empty();
          return;
        }
      case 'countryOfOrigin':
        {
          countryOfOrigin = <CodeableConceptBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  SubstanceDefinitionSourceMaterialBuilder clone() =>
      throw UnimplementedError();
  @override
  SubstanceDefinitionSourceMaterialBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    CodeableConceptBuilder? genus,
    CodeableConceptBuilder? species,
    CodeableConceptBuilder? part_,
    List<CodeableConceptBuilder>? countryOfOrigin,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = SubstanceDefinitionSourceMaterialBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      genus: genus ?? this.genus,
      species: species ?? this.species,
      part_: part_ ?? this.part_,
      countryOfOrigin: countryOfOrigin ?? this.countryOfOrigin,
    )..objectPath = newObjectPath;
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
    if (o is! SubstanceDefinitionSourceMaterialBuilder) {
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
      genus,
      o.genus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      species,
      o.species,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      part_,
      o.part_,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      countryOfOrigin,
      o.countryOfOrigin,
    )) {
      return false;
    }
    return true;
  }
}
