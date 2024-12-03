import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [SubstanceDefinition]
/// The detailed description of a substance, typically at a level beyond
/// what is used for prescribing.
class SubstanceDefinition extends DomainResource {
  /// Primary constructor for
  /// [SubstanceDefinition]

  SubstanceDefinition({
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.SubstanceDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return SubstanceDefinition(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: parseField<FhirUri>(
        json['implicitRules'],
        json['_implicitRules'],
        FhirUri.fromJson,
      ),
      language: parseField<CommonLanguages>(
        json['language'],
        json['_language'],
        CommonLanguages.fromJson,
      ),
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: parseList<Resource>(
        json['contained'] as List<dynamic>?,
        json['_contained'] as List<dynamic>?,
        Resource.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      identifier: parseList<Identifier>(
        json['identifier'] as List<dynamic>?,
        json['_identifier'] as List<dynamic>?,
        Identifier.fromJson,
      ),
      version: parseField<FhirString>(
        json['version'],
        json['_version'],
        FhirString.fromJson,
      ),
      status: json['status'] != null
          ? CodeableConcept.fromJson(
              json['status'] as Map<String, dynamic>,
            )
          : null,
      classification: parseList<CodeableConcept>(
        json['classification'] as List<dynamic>?,
        json['_classification'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      domain: json['domain'] != null
          ? CodeableConcept.fromJson(
              json['domain'] as Map<String, dynamic>,
            )
          : null,
      grade: parseList<CodeableConcept>(
        json['grade'] as List<dynamic>?,
        json['_grade'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      description: parseField<FhirMarkdown>(
        json['description'],
        json['_description'],
        FhirMarkdown.fromJson,
      ),
      informationSource: parseList<Reference>(
        json['informationSource'] as List<dynamic>?,
        json['_informationSource'] as List<dynamic>?,
        Reference.fromJson,
      ),
      note: parseList<Annotation>(
        json['note'] as List<dynamic>?,
        json['_note'] as List<dynamic>?,
        Annotation.fromJson,
      ),
      manufacturer: parseList<Reference>(
        json['manufacturer'] as List<dynamic>?,
        json['_manufacturer'] as List<dynamic>?,
        Reference.fromJson,
      ),
      supplier: parseList<Reference>(
        json['supplier'] as List<dynamic>?,
        json['_supplier'] as List<dynamic>?,
        Reference.fromJson,
      ),
      moiety: parseList<SubstanceDefinitionMoiety>(
        json['moiety'] as List<dynamic>?,
        json['_moiety'] as List<dynamic>?,
        SubstanceDefinitionMoiety.fromJson,
      ),
      property: parseList<SubstanceDefinitionProperty>(
        json['property'] as List<dynamic>?,
        json['_property'] as List<dynamic>?,
        SubstanceDefinitionProperty.fromJson,
      ),
      molecularWeight: parseList<SubstanceDefinitionMolecularWeight>(
        json['molecularWeight'] as List<dynamic>?,
        json['_molecularWeight'] as List<dynamic>?,
        SubstanceDefinitionMolecularWeight.fromJson,
      ),
      structure: json['structure'] != null
          ? SubstanceDefinitionStructure.fromJson(
              json['structure'] as Map<String, dynamic>,
            )
          : null,
      code: parseList<SubstanceDefinitionCode>(
        json['code'] as List<dynamic>?,
        json['_code'] as List<dynamic>?,
        SubstanceDefinitionCode.fromJson,
      ),
      name: parseList<SubstanceDefinitionName>(
        json['name'] as List<dynamic>?,
        json['_name'] as List<dynamic>?,
        SubstanceDefinitionName.fromJson,
      ),
      relationship: parseList<SubstanceDefinitionRelationship>(
        json['relationship'] as List<dynamic>?,
        json['_relationship'] as List<dynamic>?,
        SubstanceDefinitionRelationship.fromJson,
      ),
      sourceMaterial: json['sourceMaterial'] != null
          ? SubstanceDefinitionSourceMaterial.fromJson(
              json['sourceMaterial'] as Map<String, dynamic>,
            )
          : null,
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

    addField('version', version);
    if (status != null) {
      json['status'] = status!.toJson();
    }

    if (classification != null && classification!.isNotEmpty) {
      json['classification'] = classification!.map((e) => e.toJson()).toList();
    }

    if (domain != null) {
      json['domain'] = domain!.toJson();
    }

    if (grade != null && grade!.isNotEmpty) {
      json['grade'] = grade!.map((e) => e.toJson()).toList();
    }

    addField('description', description);
    if (informationSource != null && informationSource!.isNotEmpty) {
      json['informationSource'] =
          informationSource!.map((e) => e.toJson()).toList();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    if (manufacturer != null && manufacturer!.isNotEmpty) {
      json['manufacturer'] = manufacturer!.map((e) => e.toJson()).toList();
    }

    if (supplier != null && supplier!.isNotEmpty) {
      json['supplier'] = supplier!.map((e) => e.toJson()).toList();
    }

    if (moiety != null && moiety!.isNotEmpty) {
      json['moiety'] = moiety!.map((e) => e.toJson()).toList();
    }

    if (property != null && property!.isNotEmpty) {
      json['property'] = property!.map((e) => e.toJson()).toList();
    }

    if (molecularWeight != null && molecularWeight!.isNotEmpty) {
      json['molecularWeight'] =
          molecularWeight!.map((e) => e.toJson()).toList();
    }

    if (structure != null) {
      json['structure'] = structure!.toJson();
    }

    if (code != null && code!.isNotEmpty) {
      json['code'] = code!.map((e) => e.toJson()).toList();
    }

    if (name != null && name!.isNotEmpty) {
      json['name'] = name!.map((e) => e.toJson()).toList();
    }

    if (relationship != null && relationship!.isNotEmpty) {
      json['relationship'] = relationship!.map((e) => e.toJson()).toList();
    }

    if (sourceMaterial != null) {
      json['sourceMaterial'] = sourceMaterial!.toJson();
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [SubstanceDefinitionMoiety]
/// Moiety, for structural modifications.
class SubstanceDefinitionMoiety extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceDefinitionMoiety]

  SubstanceDefinitionMoiety({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    this.identifier,
    this.name,
    this.stereochemistry,
    this.opticalActivity,
    this.molecularFormula,
    this.amountQuantity,
    this.amountString,
    this.measurementType,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionMoiety.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return SubstanceDefinitionMoiety(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      role: json['role'] != null
          ? CodeableConcept.fromJson(
              json['role'] as Map<String, dynamic>,
            )
          : null,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              json['identifier'] as Map<String, dynamic>,
            )
          : null,
      name: parseField<FhirString>(
        json['name'],
        json['_name'],
        FhirString.fromJson,
      ),
      stereochemistry: json['stereochemistry'] != null
          ? CodeableConcept.fromJson(
              json['stereochemistry'] as Map<String, dynamic>,
            )
          : null,
      opticalActivity: json['opticalActivity'] != null
          ? CodeableConcept.fromJson(
              json['opticalActivity'] as Map<String, dynamic>,
            )
          : null,
      molecularFormula: parseField<FhirString>(
        json['molecularFormula'],
        json['_molecularFormula'],
        FhirString.fromJson,
      ),
      amountQuantity: json['amountQuantity'] != null
          ? Quantity.fromJson(
              json['amountQuantity'] as Map<String, dynamic>,
            )
          : null,
      amountString: parseField<FhirString>(
        json['amountString'],
        json['_amountString'],
        FhirString.fromJson,
      ),
      measurementType: json['measurementType'] != null
          ? CodeableConcept.fromJson(
              json['measurementType'] as Map<String, dynamic>,
            )
          : null,
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

  /// [amountQuantity]
  /// Quantitative value for this moiety.
  final Quantity? amountQuantity;

  /// [amountString]
  /// Quantitative value for this moiety.
  final FhirString? amountString;

  /// [measurementType]
  /// The measurement type of the quantitative value. In capturing the actual
  /// relative amounts of substances or molecular fragments it may be
  /// necessary to indicate whether the amount refers to, for example, a mole
  /// ratio or weight ratio.
  final CodeableConcept? measurementType;
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

    if (role != null) {
      json['role'] = role!.toJson();
    }

    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }

    addField('name', name);
    if (stereochemistry != null) {
      json['stereochemistry'] = stereochemistry!.toJson();
    }

    if (opticalActivity != null) {
      json['opticalActivity'] = opticalActivity!.toJson();
    }

    addField('molecularFormula', molecularFormula);
    if (amountQuantity != null) {
      json['amountQuantity'] = amountQuantity!.toJson();
    }

    addField('amountString', amountString);
    if (measurementType != null) {
      json['measurementType'] = measurementType!.toJson();
    }

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
    Quantity? amountQuantity,
    FhirString? amountString,
    CodeableConcept? measurementType,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      amountQuantity: amountQuantity ?? this.amountQuantity,
      amountString: amountString ?? this.amountString,
      measurementType: measurementType ?? this.measurementType,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [SubstanceDefinitionProperty]
/// General specifications for this substance.
class SubstanceDefinitionProperty extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceDefinitionProperty]

  SubstanceDefinitionProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueDate,
    this.valueBoolean,
    this.valueAttachment,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return SubstanceDefinitionProperty(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(
              json['valueQuantity'] as Map<String, dynamic>,
            )
          : null,
      valueDate: parseField<FhirDate>(
        json['valueDate'],
        json['_valueDate'],
        FhirDate.fromJson,
      ),
      valueBoolean: parseField<FhirBoolean>(
        json['valueBoolean'],
        json['_valueBoolean'],
        FhirBoolean.fromJson,
      ),
      valueAttachment: json['valueAttachment'] != null
          ? Attachment.fromJson(
              json['valueAttachment'] as Map<String, dynamic>,
            )
          : null,
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

  /// [valueCodeableConcept]
  /// A value for the property.
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity]
  /// A value for the property.
  final Quantity? valueQuantity;

  /// [valueDate]
  /// A value for the property.
  final FhirDate? valueDate;

  /// [valueBoolean]
  /// A value for the property.
  final FhirBoolean? valueBoolean;

  /// [valueAttachment]
  /// A value for the property.
  final Attachment? valueAttachment;
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

    json['type'] = type.toJson();

    if (valueCodeableConcept != null) {
      json['valueCodeableConcept'] = valueCodeableConcept!.toJson();
    }

    if (valueQuantity != null) {
      json['valueQuantity'] = valueQuantity!.toJson();
    }

    addField('valueDate', valueDate);
    addField('valueBoolean', valueBoolean);
    if (valueAttachment != null) {
      json['valueAttachment'] = valueAttachment!.toJson();
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
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    FhirDate? valueDate,
    FhirBoolean? valueBoolean,
    Attachment? valueAttachment,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return SubstanceDefinitionProperty(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueDate: valueDate ?? this.valueDate,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueAttachment: valueAttachment ?? this.valueAttachment,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [SubstanceDefinitionMolecularWeight]
/// The molecular weight or weight range (for proteins, polymers or nucleic
/// acids).
class SubstanceDefinitionMolecularWeight extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceDefinitionMolecularWeight]

  SubstanceDefinitionMolecularWeight({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.method,
    this.type,
    required this.amount,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionMolecularWeight.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return SubstanceDefinitionMolecularWeight(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      method: json['method'] != null
          ? CodeableConcept.fromJson(
              json['method'] as Map<String, dynamic>,
            )
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      amount: Quantity.fromJson(
        json['amount'] as Map<String, dynamic>,
      ),
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

    if (method != null) {
      json['method'] = method!.toJson();
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    json['amount'] = amount.toJson();

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return SubstanceDefinitionMolecularWeight(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      method: method ?? this.method,
      type: type ?? this.type,
      amount: amount ?? this.amount,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [SubstanceDefinitionStructure]
/// Structural information.
class SubstanceDefinitionStructure extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceDefinitionStructure]

  SubstanceDefinitionStructure({
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionStructure.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return SubstanceDefinitionStructure(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      stereochemistry: json['stereochemistry'] != null
          ? CodeableConcept.fromJson(
              json['stereochemistry'] as Map<String, dynamic>,
            )
          : null,
      opticalActivity: json['opticalActivity'] != null
          ? CodeableConcept.fromJson(
              json['opticalActivity'] as Map<String, dynamic>,
            )
          : null,
      molecularFormula: parseField<FhirString>(
        json['molecularFormula'],
        json['_molecularFormula'],
        FhirString.fromJson,
      ),
      molecularFormulaByMoiety: parseField<FhirString>(
        json['molecularFormulaByMoiety'],
        json['_molecularFormulaByMoiety'],
        FhirString.fromJson,
      ),
      molecularWeight: json['molecularWeight'] != null
          ? SubstanceDefinitionMolecularWeight.fromJson(
              json['molecularWeight'] as Map<String, dynamic>,
            )
          : null,
      technique: parseList<CodeableConcept>(
        json['technique'] as List<dynamic>?,
        json['_technique'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      sourceDocument: parseList<Reference>(
        json['sourceDocument'] as List<dynamic>?,
        json['_sourceDocument'] as List<dynamic>?,
        Reference.fromJson,
      ),
      representation: parseList<SubstanceDefinitionRepresentation>(
        json['representation'] as List<dynamic>?,
        json['_representation'] as List<dynamic>?,
        SubstanceDefinitionRepresentation.fromJson,
      ),
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

    if (stereochemistry != null) {
      json['stereochemistry'] = stereochemistry!.toJson();
    }

    if (opticalActivity != null) {
      json['opticalActivity'] = opticalActivity!.toJson();
    }

    addField('molecularFormula', molecularFormula);
    addField('molecularFormulaByMoiety', molecularFormulaByMoiety);
    if (molecularWeight != null) {
      json['molecularWeight'] = molecularWeight!.toJson();
    }

    if (technique != null && technique!.isNotEmpty) {
      json['technique'] = technique!.map((e) => e.toJson()).toList();
    }

    if (sourceDocument != null && sourceDocument!.isNotEmpty) {
      json['sourceDocument'] = sourceDocument!.map((e) => e.toJson()).toList();
    }

    if (representation != null && representation!.isNotEmpty) {
      json['representation'] = representation!.map((e) => e.toJson()).toList();
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [SubstanceDefinitionRepresentation]
/// A depiction of the structure or characterization of the substance.
class SubstanceDefinitionRepresentation extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceDefinitionRepresentation]

  SubstanceDefinitionRepresentation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.representation,
    this.format,
    this.document,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionRepresentation.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return SubstanceDefinitionRepresentation(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      representation: parseField<FhirString>(
        json['representation'],
        json['_representation'],
        FhirString.fromJson,
      ),
      format: json['format'] != null
          ? CodeableConcept.fromJson(
              json['format'] as Map<String, dynamic>,
            )
          : null,
      document: json['document'] != null
          ? Reference.fromJson(
              json['document'] as Map<String, dynamic>,
            )
          : null,
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

    if (type != null) {
      json['type'] = type!.toJson();
    }

    addField('representation', representation);
    if (format != null) {
      json['format'] = format!.toJson();
    }

    if (document != null) {
      json['document'] = document!.toJson();
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return SubstanceDefinitionRepresentation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      representation: representation ?? this.representation,
      format: format ?? this.format,
      document: document ?? this.document,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [SubstanceDefinitionCode]
/// Codes associated with the substance.
class SubstanceDefinitionCode extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceDefinitionCode]

  SubstanceDefinitionCode({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.status,
    this.statusDate,
    this.note,
    this.source,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionCode.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return SubstanceDefinitionCode(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      status: json['status'] != null
          ? CodeableConcept.fromJson(
              json['status'] as Map<String, dynamic>,
            )
          : null,
      statusDate: parseField<FhirDateTime>(
        json['statusDate'],
        json['_statusDate'],
        FhirDateTime.fromJson,
      ),
      note: parseList<Annotation>(
        json['note'] as List<dynamic>?,
        json['_note'] as List<dynamic>?,
        Annotation.fromJson,
      ),
      source: parseList<Reference>(
        json['source'] as List<dynamic>?,
        json['_source'] as List<dynamic>?,
        Reference.fromJson,
      ),
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

    if (code != null) {
      json['code'] = code!.toJson();
    }

    if (status != null) {
      json['status'] = status!.toJson();
    }

    addField('statusDate', statusDate);
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    if (source != null && source!.isNotEmpty) {
      json['source'] = source!.map((e) => e.toJson()).toList();
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [SubstanceDefinitionName]
/// Names applicable to this substance.
class SubstanceDefinitionName extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceDefinitionName]

  SubstanceDefinitionName({
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionName.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return SubstanceDefinitionName(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      name: FhirString.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      status: json['status'] != null
          ? CodeableConcept.fromJson(
              json['status'] as Map<String, dynamic>,
            )
          : null,
      preferred: parseField<FhirBoolean>(
        json['preferred'],
        json['_preferred'],
        FhirBoolean.fromJson,
      ),
      language: parseList<CodeableConcept>(
        json['language'] as List<dynamic>?,
        json['_language'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      domain: parseList<CodeableConcept>(
        json['domain'] as List<dynamic>?,
        json['_domain'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      jurisdiction: parseList<CodeableConcept>(
        json['jurisdiction'] as List<dynamic>?,
        json['_jurisdiction'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
      synonym: parseList<SubstanceDefinitionName>(
        json['synonym'] as List<dynamic>?,
        json['_synonym'] as List<dynamic>?,
        SubstanceDefinitionName.fromJson,
      ),
      translation: parseList<SubstanceDefinitionName>(
        json['translation'] as List<dynamic>?,
        json['_translation'] as List<dynamic>?,
        SubstanceDefinitionName.fromJson,
      ),
      official: parseList<SubstanceDefinitionOfficial>(
        json['official'] as List<dynamic>?,
        json['_official'] as List<dynamic>?,
        SubstanceDefinitionOfficial.fromJson,
      ),
      source: parseList<Reference>(
        json['source'] as List<dynamic>?,
        json['_source'] as List<dynamic>?,
        Reference.fromJson,
      ),
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

    addField('name', name);
    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (status != null) {
      json['status'] = status!.toJson();
    }

    addField('preferred', preferred);
    if (language != null && language!.isNotEmpty) {
      json['language'] = language!.map((e) => e.toJson()).toList();
    }

    if (domain != null && domain!.isNotEmpty) {
      json['domain'] = domain!.map((e) => e.toJson()).toList();
    }

    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] = jurisdiction!.map((e) => e.toJson()).toList();
    }

    if (synonym != null && synonym!.isNotEmpty) {
      json['synonym'] = synonym!.map((e) => e.toJson()).toList();
    }

    if (translation != null && translation!.isNotEmpty) {
      json['translation'] = translation!.map((e) => e.toJson()).toList();
    }

    if (official != null && official!.isNotEmpty) {
      json['official'] = official!.map((e) => e.toJson()).toList();
    }

    if (source != null && source!.isNotEmpty) {
      json['source'] = source!.map((e) => e.toJson()).toList();
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [SubstanceDefinitionOfficial]
/// Details of the official nature of this name.
class SubstanceDefinitionOfficial extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceDefinitionOfficial]

  SubstanceDefinitionOfficial({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.authority,
    this.status,
    this.date,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionOfficial.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return SubstanceDefinitionOfficial(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      authority: json['authority'] != null
          ? CodeableConcept.fromJson(
              json['authority'] as Map<String, dynamic>,
            )
          : null,
      status: json['status'] != null
          ? CodeableConcept.fromJson(
              json['status'] as Map<String, dynamic>,
            )
          : null,
      date: parseField<FhirDateTime>(
        json['date'],
        json['_date'],
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

    if (authority != null) {
      json['authority'] = authority!.toJson();
    }

    if (status != null) {
      json['status'] = status!.toJson();
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return SubstanceDefinitionOfficial(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      authority: authority ?? this.authority,
      status: status ?? this.status,
      date: date ?? this.date,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [SubstanceDefinitionRelationship]
/// A link between this substance and another, with details of the
/// relationship.
class SubstanceDefinitionRelationship extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceDefinitionRelationship]

  SubstanceDefinitionRelationship({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.substanceDefinitionReference,
    this.substanceDefinitionCodeableConcept,
    required this.type,
    this.isDefining,
    this.amountQuantity,
    this.amountRatio,
    this.amountString,
    this.ratioHighLimitAmount,
    this.comparator,
    this.source,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionRelationship.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return SubstanceDefinitionRelationship(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      substanceDefinitionReference: json['substanceDefinitionReference'] != null
          ? Reference.fromJson(
              json['substanceDefinitionReference'] as Map<String, dynamic>,
            )
          : null,
      substanceDefinitionCodeableConcept:
          json['substanceDefinitionCodeableConcept'] != null
              ? CodeableConcept.fromJson(
                  json['substanceDefinitionCodeableConcept']
                      as Map<String, dynamic>,
                )
              : null,
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      isDefining: parseField<FhirBoolean>(
        json['isDefining'],
        json['_isDefining'],
        FhirBoolean.fromJson,
      ),
      amountQuantity: json['amountQuantity'] != null
          ? Quantity.fromJson(
              json['amountQuantity'] as Map<String, dynamic>,
            )
          : null,
      amountRatio: json['amountRatio'] != null
          ? Ratio.fromJson(
              json['amountRatio'] as Map<String, dynamic>,
            )
          : null,
      amountString: parseField<FhirString>(
        json['amountString'],
        json['_amountString'],
        FhirString.fromJson,
      ),
      ratioHighLimitAmount: json['ratioHighLimitAmount'] != null
          ? Ratio.fromJson(
              json['ratioHighLimitAmount'] as Map<String, dynamic>,
            )
          : null,
      comparator: json['comparator'] != null
          ? CodeableConcept.fromJson(
              json['comparator'] as Map<String, dynamic>,
            )
          : null,
      source: parseList<Reference>(
        json['source'] as List<dynamic>?,
        json['_source'] as List<dynamic>?,
        Reference.fromJson,
      ),
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

  /// [substanceDefinitionReference]
  /// A pointer to another substance, as a resource or just a
  /// representational code.
  final Reference? substanceDefinitionReference;

  /// [substanceDefinitionCodeableConcept]
  /// A pointer to another substance, as a resource or just a
  /// representational code.
  final CodeableConcept? substanceDefinitionCodeableConcept;

  /// [type]
  /// For example "salt to parent", "active moiety", "starting material",
  /// "polymorph", "impurity of".
  final CodeableConcept type;

  /// [isDefining]
  /// For example where an enzyme strongly bonds with a particular substance,
  /// this is a defining relationship for that enzyme, out of several
  /// possible substance relationships.
  final FhirBoolean? isDefining;

  /// [amountQuantity]
  /// A numeric factor for the relationship, for instance to express that the
  /// salt of a substance has some percentage of the active substance in
  /// relation to some other.
  final Quantity? amountQuantity;

  /// [amountRatio]
  /// A numeric factor for the relationship, for instance to express that the
  /// salt of a substance has some percentage of the active substance in
  /// relation to some other.
  final Ratio? amountRatio;

  /// [amountString]
  /// A numeric factor for the relationship, for instance to express that the
  /// salt of a substance has some percentage of the active substance in
  /// relation to some other.
  final FhirString? amountString;

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

    if (substanceDefinitionReference != null) {
      json['substanceDefinitionReference'] =
          substanceDefinitionReference!.toJson();
    }

    if (substanceDefinitionCodeableConcept != null) {
      json['substanceDefinitionCodeableConcept'] =
          substanceDefinitionCodeableConcept!.toJson();
    }

    json['type'] = type.toJson();

    addField('isDefining', isDefining);
    if (amountQuantity != null) {
      json['amountQuantity'] = amountQuantity!.toJson();
    }

    if (amountRatio != null) {
      json['amountRatio'] = amountRatio!.toJson();
    }

    addField('amountString', amountString);
    if (ratioHighLimitAmount != null) {
      json['ratioHighLimitAmount'] = ratioHighLimitAmount!.toJson();
    }

    if (comparator != null) {
      json['comparator'] = comparator!.toJson();
    }

    if (source != null && source!.isNotEmpty) {
      json['source'] = source!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  SubstanceDefinitionRelationship clone() => throw UnimplementedError();
  @override
  SubstanceDefinitionRelationship copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? substanceDefinitionReference,
    CodeableConcept? substanceDefinitionCodeableConcept,
    CodeableConcept? type,
    FhirBoolean? isDefining,
    Quantity? amountQuantity,
    Ratio? amountRatio,
    FhirString? amountString,
    Ratio? ratioHighLimitAmount,
    CodeableConcept? comparator,
    List<Reference>? source,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return SubstanceDefinitionRelationship(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      substanceDefinitionReference:
          substanceDefinitionReference ?? this.substanceDefinitionReference,
      substanceDefinitionCodeableConcept: substanceDefinitionCodeableConcept ??
          this.substanceDefinitionCodeableConcept,
      type: type ?? this.type,
      isDefining: isDefining ?? this.isDefining,
      amountQuantity: amountQuantity ?? this.amountQuantity,
      amountRatio: amountRatio ?? this.amountRatio,
      amountString: amountString ?? this.amountString,
      ratioHighLimitAmount: ratioHighLimitAmount ?? this.ratioHighLimitAmount,
      comparator: comparator ?? this.comparator,
      source: source ?? this.source,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [SubstanceDefinitionSourceMaterial]
/// Material or taxonomic/anatomical source for the substance.
class SubstanceDefinitionSourceMaterial extends BackboneElement {
  /// Primary constructor for
  /// [SubstanceDefinitionSourceMaterial]

  SubstanceDefinitionSourceMaterial({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.genus,
    this.species,
    this.part_,
    this.countryOfOrigin,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionSourceMaterial.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return SubstanceDefinitionSourceMaterial(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      genus: json['genus'] != null
          ? CodeableConcept.fromJson(
              json['genus'] as Map<String, dynamic>,
            )
          : null,
      species: json['species'] != null
          ? CodeableConcept.fromJson(
              json['species'] as Map<String, dynamic>,
            )
          : null,
      part_: json['part'] != null
          ? CodeableConcept.fromJson(
              json['part'] as Map<String, dynamic>,
            )
          : null,
      countryOfOrigin: parseList<CodeableConcept>(
        json['countryOfOrigin'] as List<dynamic>?,
        json['_countryOfOrigin'] as List<dynamic>?,
        CodeableConcept.fromJson,
      ),
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

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (genus != null) {
      json['genus'] = genus!.toJson();
    }

    if (species != null) {
      json['species'] = species!.toJson();
    }

    if (part_ != null) {
      json['part'] = part_!.toJson();
    }

    if (countryOfOrigin != null && countryOfOrigin!.isNotEmpty) {
      json['countryOfOrigin'] =
          countryOfOrigin!.map((e) => e.toJson()).toList();
    }

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
