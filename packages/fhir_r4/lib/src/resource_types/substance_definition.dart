import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'substance_definition.g.dart';

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
          resourceType: R4ResourceType.SubstanceDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceDefinition(
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
      version: JsonParser.parsePrimitive<FhirString>(
        json,
        'version',
        FhirString.fromJson,
      ),
      status: JsonParser.parseObject<CodeableConcept>(
        json,
        'status',
        CodeableConcept.fromJson,
      ),
      classification: (json['classification'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      domain: JsonParser.parseObject<CodeableConcept>(
        json,
        'domain',
        CodeableConcept.fromJson,
      ),
      grade: (json['grade'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'description',
        FhirMarkdown.fromJson,
      ),
      informationSource: (json['informationSource'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      manufacturer: (json['manufacturer'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      supplier: (json['supplier'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      moiety: (json['moiety'] as List<dynamic>?)
          ?.map<SubstanceDefinitionMoiety>(
            (v) => SubstanceDefinitionMoiety.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map<SubstanceDefinitionProperty>(
            (v) => SubstanceDefinitionProperty.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      molecularWeight: (json['molecularWeight'] as List<dynamic>?)
          ?.map<SubstanceDefinitionMolecularWeight>(
            (v) => SubstanceDefinitionMolecularWeight.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      structure: JsonParser.parseObject<SubstanceDefinitionStructure>(
        json,
        'structure',
        SubstanceDefinitionStructure.fromJson,
      ),
      code: (json['code'] as List<dynamic>?)
          ?.map<SubstanceDefinitionCode>(
            (v) => SubstanceDefinitionCode.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      name: (json['name'] as List<dynamic>?)
          ?.map<SubstanceDefinitionName>(
            (v) => SubstanceDefinitionName.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      relationship: (json['relationship'] as List<dynamic>?)
          ?.map<SubstanceDefinitionRelationship>(
            (v) => SubstanceDefinitionRelationship.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      sourceMaterial: JsonParser.parseObject<SubstanceDefinitionSourceMaterial>(
        json,
        'sourceMaterial',
        SubstanceDefinitionSourceMaterial.fromJson,
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
      'version',
      version,
    );
    addField(
      'status',
      status,
    );
    addField(
      'classification',
      classification,
    );
    addField(
      'domain',
      domain,
    );
    addField(
      'grade',
      grade,
    );
    addField(
      'description',
      description,
    );
    addField(
      'informationSource',
      informationSource,
    );
    addField(
      'note',
      note,
    );
    addField(
      'manufacturer',
      manufacturer,
    );
    addField(
      'supplier',
      supplier,
    );
    addField(
      'moiety',
      moiety,
    );
    addField(
      'property',
      property,
    );
    addField(
      'molecularWeight',
      molecularWeight,
    );
    addField(
      'structure',
      structure,
    );
    addField(
      'code',
      code,
    );
    addField(
      'name',
      name,
    );
    addField(
      'relationship',
      relationship,
    );
    addField(
      'sourceMaterial',
      sourceMaterial,
    );
    return json;
  }

  @override
  SubstanceDefinition clone() => copyWith();

  /// Copy function for [SubstanceDefinition]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceDefinitionCopyWith<SubstanceDefinition> get copyWith =>
      _$SubstanceDefinitionCopyWithImpl<SubstanceDefinition>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceDefinition) {
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
    if (!listEquals<CodeableConcept>(
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
    if (!listEquals<CodeableConcept>(
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
    if (!equalsDeepWithNull(
      structure,
      o.structure,
    )) {
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
    if (!equalsDeepWithNull(
      sourceMaterial,
      o.sourceMaterial,
    )) {
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionMoiety.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceDefinitionMoiety(
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
      role: JsonParser.parseObject<CodeableConcept>(
        json,
        'role',
        CodeableConcept.fromJson,
      ),
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      ),
      stereochemistry: JsonParser.parseObject<CodeableConcept>(
        json,
        'stereochemistry',
        CodeableConcept.fromJson,
      ),
      opticalActivity: JsonParser.parseObject<CodeableConcept>(
        json,
        'opticalActivity',
        CodeableConcept.fromJson,
      ),
      molecularFormula: JsonParser.parsePrimitive<FhirString>(
        json,
        'molecularFormula',
        FhirString.fromJson,
      ),
      amountX: JsonParser.parsePolymorphic<AmountXSubstanceDefinitionMoiety>(
        json,
        {
          'amountQuantity': Quantity.fromJson,
          'amountString': FhirString.fromJson,
        },
      ),
      measurementType: JsonParser.parseObject<CodeableConcept>(
        json,
        'measurementType',
        CodeableConcept.fromJson,
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
      'role',
      role,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'name',
      name,
    );
    addField(
      'stereochemistry',
      stereochemistry,
    );
    addField(
      'opticalActivity',
      opticalActivity,
    );
    addField(
      'molecularFormula',
      molecularFormula,
    );
    if (amountX != null) {
      final fhirType = amountX!.fhirType;
      addField(
        'amount${fhirType.capitalize()}',
        amountX,
      );
    }

    addField(
      'measurementType',
      measurementType,
    );
    return json;
  }

  @override
  SubstanceDefinitionMoiety clone() => copyWith();

  /// Copy function for [SubstanceDefinitionMoiety]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceDefinitionMoietyCopyWith<SubstanceDefinitionMoiety> get copyWith =>
      _$SubstanceDefinitionMoietyCopyWithImpl<SubstanceDefinitionMoiety>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceDefinitionMoiety) {
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceDefinitionProperty(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
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
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField(
        'value${fhirType.capitalize()}',
        valueX,
      );
    }

    return json;
  }

  @override
  SubstanceDefinitionProperty clone() => copyWith();

  /// Copy function for [SubstanceDefinitionProperty]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceDefinitionPropertyCopyWith<SubstanceDefinitionProperty>
      get copyWith => _$SubstanceDefinitionPropertyCopyWithImpl<
              SubstanceDefinitionProperty>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceDefinitionProperty) {
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
      valueX,
      o.valueX,
    )) {
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionMolecularWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceDefinitionMolecularWeight(
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
      method: JsonParser.parseObject<CodeableConcept>(
        json,
        'method',
        CodeableConcept.fromJson,
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      amount: JsonParser.parseObject<Quantity>(
        json,
        'amount',
        Quantity.fromJson,
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
      'method',
      method,
    );
    addField(
      'type',
      type,
    );
    addField(
      'amount',
      amount,
    );
    return json;
  }

  @override
  SubstanceDefinitionMolecularWeight clone() => copyWith();

  /// Copy function for [SubstanceDefinitionMolecularWeight]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceDefinitionMolecularWeightCopyWith<
          SubstanceDefinitionMolecularWeight>
      get copyWith => _$SubstanceDefinitionMolecularWeightCopyWithImpl<
              SubstanceDefinitionMolecularWeight>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceDefinitionMolecularWeight) {
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionStructure.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceDefinitionStructure(
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
      stereochemistry: JsonParser.parseObject<CodeableConcept>(
        json,
        'stereochemistry',
        CodeableConcept.fromJson,
      ),
      opticalActivity: JsonParser.parseObject<CodeableConcept>(
        json,
        'opticalActivity',
        CodeableConcept.fromJson,
      ),
      molecularFormula: JsonParser.parsePrimitive<FhirString>(
        json,
        'molecularFormula',
        FhirString.fromJson,
      ),
      molecularFormulaByMoiety: JsonParser.parsePrimitive<FhirString>(
        json,
        'molecularFormulaByMoiety',
        FhirString.fromJson,
      ),
      molecularWeight:
          JsonParser.parseObject<SubstanceDefinitionMolecularWeight>(
        json,
        'molecularWeight',
        SubstanceDefinitionMolecularWeight.fromJson,
      ),
      technique: (json['technique'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      sourceDocument: (json['sourceDocument'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      representation: (json['representation'] as List<dynamic>?)
          ?.map<SubstanceDefinitionRepresentation>(
            (v) => SubstanceDefinitionRepresentation.fromJson(
              {...v as Map<String, dynamic>},
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
      'stereochemistry',
      stereochemistry,
    );
    addField(
      'opticalActivity',
      opticalActivity,
    );
    addField(
      'molecularFormula',
      molecularFormula,
    );
    addField(
      'molecularFormulaByMoiety',
      molecularFormulaByMoiety,
    );
    addField(
      'molecularWeight',
      molecularWeight,
    );
    addField(
      'technique',
      technique,
    );
    addField(
      'sourceDocument',
      sourceDocument,
    );
    addField(
      'representation',
      representation,
    );
    return json;
  }

  @override
  SubstanceDefinitionStructure clone() => copyWith();

  /// Copy function for [SubstanceDefinitionStructure]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceDefinitionStructureCopyWith<SubstanceDefinitionStructure>
      get copyWith => _$SubstanceDefinitionStructureCopyWithImpl<
              SubstanceDefinitionStructure>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceDefinitionStructure) {
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionRepresentation.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceDefinitionRepresentation(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      representation: JsonParser.parsePrimitive<FhirString>(
        json,
        'representation',
        FhirString.fromJson,
      ),
      format: JsonParser.parseObject<CodeableConcept>(
        json,
        'format',
        CodeableConcept.fromJson,
      ),
      document: JsonParser.parseObject<Reference>(
        json,
        'document',
        Reference.fromJson,
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
      'representation',
      representation,
    );
    addField(
      'format',
      format,
    );
    addField(
      'document',
      document,
    );
    return json;
  }

  @override
  SubstanceDefinitionRepresentation clone() => copyWith();

  /// Copy function for [SubstanceDefinitionRepresentation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceDefinitionRepresentationCopyWith<SubstanceDefinitionRepresentation>
      get copyWith => _$SubstanceDefinitionRepresentationCopyWithImpl<
              SubstanceDefinitionRepresentation>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceDefinitionRepresentation) {
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionCode.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceDefinitionCode(
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
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      status: JsonParser.parseObject<CodeableConcept>(
        json,
        'status',
        CodeableConcept.fromJson,
      ),
      statusDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'statusDate',
        FhirDateTime.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      source: (json['source'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
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
      'code',
      code,
    );
    addField(
      'status',
      status,
    );
    addField(
      'statusDate',
      statusDate,
    );
    addField(
      'note',
      note,
    );
    addField(
      'source',
      source,
    );
    return json;
  }

  @override
  SubstanceDefinitionCode clone() => copyWith();

  /// Copy function for [SubstanceDefinitionCode]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceDefinitionCodeCopyWith<SubstanceDefinitionCode> get copyWith =>
      _$SubstanceDefinitionCodeCopyWithImpl<SubstanceDefinitionCode>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceDefinitionCode) {
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionName.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceDefinitionName(
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
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
      )!,
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      status: JsonParser.parseObject<CodeableConcept>(
        json,
        'status',
        CodeableConcept.fromJson,
      ),
      preferred: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'preferred',
        FhirBoolean.fromJson,
      ),
      language: (json['language'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      domain: (json['domain'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      jurisdiction: (json['jurisdiction'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      synonym: (json['synonym'] as List<dynamic>?)
          ?.map<SubstanceDefinitionName>(
            (v) => SubstanceDefinitionName.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      translation: (json['translation'] as List<dynamic>?)
          ?.map<SubstanceDefinitionName>(
            (v) => SubstanceDefinitionName.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      official: (json['official'] as List<dynamic>?)
          ?.map<SubstanceDefinitionOfficial>(
            (v) => SubstanceDefinitionOfficial.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      source: (json['source'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
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
      'name',
      name,
    );
    addField(
      'type',
      type,
    );
    addField(
      'status',
      status,
    );
    addField(
      'preferred',
      preferred,
    );
    addField(
      'language',
      language,
    );
    addField(
      'domain',
      domain,
    );
    addField(
      'jurisdiction',
      jurisdiction,
    );
    addField(
      'synonym',
      synonym,
    );
    addField(
      'translation',
      translation,
    );
    addField(
      'official',
      official,
    );
    addField(
      'source',
      source,
    );
    return json;
  }

  @override
  SubstanceDefinitionName clone() => copyWith();

  /// Copy function for [SubstanceDefinitionName]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceDefinitionNameCopyWith<SubstanceDefinitionName> get copyWith =>
      _$SubstanceDefinitionNameCopyWithImpl<SubstanceDefinitionName>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceDefinitionName) {
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionOfficial.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceDefinitionOfficial(
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
      authority: JsonParser.parseObject<CodeableConcept>(
        json,
        'authority',
        CodeableConcept.fromJson,
      ),
      status: JsonParser.parseObject<CodeableConcept>(
        json,
        'status',
        CodeableConcept.fromJson,
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
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
      'authority',
      authority,
    );
    addField(
      'status',
      status,
    );
    addField(
      'date',
      date,
    );
    return json;
  }

  @override
  SubstanceDefinitionOfficial clone() => copyWith();

  /// Copy function for [SubstanceDefinitionOfficial]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceDefinitionOfficialCopyWith<SubstanceDefinitionOfficial>
      get copyWith => _$SubstanceDefinitionOfficialCopyWithImpl<
              SubstanceDefinitionOfficial>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceDefinitionOfficial) {
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionRelationship.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceDefinitionRelationship(
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
      substanceDefinitionX: JsonParser.parsePolymorphic<
          SubstanceDefinitionXSubstanceDefinitionRelationship>(
        json,
        {
          'substanceDefinitionReference': Reference.fromJson,
          'substanceDefinitionCodeableConcept': CodeableConcept.fromJson,
        },
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      )!,
      isDefining: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'isDefining',
        FhirBoolean.fromJson,
      ),
      amountX:
          JsonParser.parsePolymorphic<AmountXSubstanceDefinitionRelationship>(
        json,
        {
          'amountQuantity': Quantity.fromJson,
          'amountRatio': Ratio.fromJson,
          'amountString': FhirString.fromJson,
        },
      ),
      ratioHighLimitAmount: JsonParser.parseObject<Ratio>(
        json,
        'ratioHighLimitAmount',
        Ratio.fromJson,
      ),
      comparator: JsonParser.parseObject<CodeableConcept>(
        json,
        'comparator',
        CodeableConcept.fromJson,
      ),
      source: (json['source'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
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
    if (substanceDefinitionX != null) {
      final fhirType = substanceDefinitionX!.fhirType;
      addField(
        'substanceDefinition${fhirType.capitalize()}',
        substanceDefinitionX,
      );
    }

    addField(
      'type',
      type,
    );
    addField(
      'isDefining',
      isDefining,
    );
    if (amountX != null) {
      final fhirType = amountX!.fhirType;
      addField(
        'amount${fhirType.capitalize()}',
        amountX,
      );
    }

    addField(
      'ratioHighLimitAmount',
      ratioHighLimitAmount,
    );
    addField(
      'comparator',
      comparator,
    );
    addField(
      'source',
      source,
    );
    return json;
  }

  @override
  SubstanceDefinitionRelationship clone() => copyWith();

  /// Copy function for [SubstanceDefinitionRelationship]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceDefinitionRelationshipCopyWith<SubstanceDefinitionRelationship>
      get copyWith => _$SubstanceDefinitionRelationshipCopyWithImpl<
              SubstanceDefinitionRelationship>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceDefinitionRelationship) {
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionSourceMaterial.fromJson(
    Map<String, dynamic> json,
  ) {
    return SubstanceDefinitionSourceMaterial(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      genus: JsonParser.parseObject<CodeableConcept>(
        json,
        'genus',
        CodeableConcept.fromJson,
      ),
      species: JsonParser.parseObject<CodeableConcept>(
        json,
        'species',
        CodeableConcept.fromJson,
      ),
      part_: JsonParser.parseObject<CodeableConcept>(
        json,
        'part',
        CodeableConcept.fromJson,
      ),
      countryOfOrigin: (json['countryOfOrigin'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
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
      'genus',
      genus,
    );
    addField(
      'species',
      species,
    );
    addField(
      'part',
      part_,
    );
    addField(
      'countryOfOrigin',
      countryOfOrigin,
    );
    return json;
  }

  @override
  SubstanceDefinitionSourceMaterial clone() => copyWith();

  /// Copy function for [SubstanceDefinitionSourceMaterial]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $SubstanceDefinitionSourceMaterialCopyWith<SubstanceDefinitionSourceMaterial>
      get copyWith => _$SubstanceDefinitionSourceMaterialCopyWithImpl<
              SubstanceDefinitionSourceMaterial>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! SubstanceDefinitionSourceMaterial) {
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
    if (!listEquals<CodeableConcept>(
      countryOfOrigin,
      o.countryOfOrigin,
    )) {
      return false;
    }
    return true;
  }
}
