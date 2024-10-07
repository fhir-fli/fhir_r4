import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'substance_definition.g.dart';

/// [SubstanceDefinition] /// The detailed description of a substance, typically at a level beyond what
/// is used for prescribing.
@JsonSerializable()
class SubstanceDefinition extends DomainResource {
  SubstanceDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.version,
    this.versionElement,
    this.status,
    this.classification,
    this.domain,
    this.grade,
    this.description,
    this.descriptionElement,
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
            fhirType: 'SubstanceDefinition');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifier by which this substance is known.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [version] /// A business level version identifier of the substance.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [status] /// Status of substance within the catalogue e.g. active, retired.
  @JsonKey(name: 'status')
  final CodeableConcept? status;

  /// [classification] /// A high level categorization, e.g. polymer or nucleic acid, or food,
  /// chemical, biological, or a lower level such as the general types of polymer
  /// (linear or branch chain) or type of impurity (process related or
  /// contaminant).
  @JsonKey(name: 'classification')
  final List<CodeableConcept>? classification;

  /// [domain] /// If the substance applies to human or veterinary use.
  @JsonKey(name: 'domain')
  final CodeableConcept? domain;

  /// [grade] /// The quality standard, established benchmark, to which substance complies
  /// (e.g. USP/NF, Ph. Eur, JP, BP, Company Standard).
  @JsonKey(name: 'grade')
  final List<CodeableConcept>? grade;

  /// [description] /// Textual description of the substance.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [informationSource] /// Supporting literature.
  @JsonKey(name: 'informationSource')
  final List<Reference>? informationSource;

  /// [note] /// Textual comment about the substance's catalogue or registry record.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [manufacturer] /// The entity that creates, makes, produces or fabricates the substance. This
  /// is a set of potential manufacturers but is not necessarily comprehensive.
  @JsonKey(name: 'manufacturer')
  final List<Reference>? manufacturer;

  /// [supplier] /// An entity that is the source for the substance. It may be different from
  /// the manufacturer. Supplier is synonymous to a distributor.
  @JsonKey(name: 'supplier')
  final List<Reference>? supplier;

  /// [moiety] /// Moiety, for structural modifications.
  @JsonKey(name: 'moiety')
  final List<SubstanceDefinitionMoiety>? moiety;

  /// [property] /// General specifications for this substance.
  @JsonKey(name: 'property')
  final List<SubstanceDefinitionProperty>? property;

  /// [molecularWeight] /// The molecular weight or weight range (for proteins, polymers or nucleic
  /// acids).
  @JsonKey(name: 'molecularWeight')
  final List<SubstanceDefinitionMolecularWeight>? molecularWeight;

  /// [structure] /// Structural information.
  @JsonKey(name: 'structure')
  final SubstanceDefinitionStructure? structure;

  /// [code] /// Codes associated with the substance.
  @JsonKey(name: 'code')
  final List<SubstanceDefinitionCode>? code;

  /// [name] /// Names applicable to this substance.
  @JsonKey(name: 'name')
  final List<SubstanceDefinitionName>? name;

  /// [relationship] /// A link between this substance and another, with details of the
  /// relationship.
  @JsonKey(name: 'relationship')
  final List<SubstanceDefinitionRelationship>? relationship;

  /// [sourceMaterial] /// Material or taxonomic/anatomical source for the substance.
  @JsonKey(name: 'sourceMaterial')
  final SubstanceDefinitionSourceMaterial? sourceMaterial;
  factory SubstanceDefinition.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinitionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubstanceDefinitionToJson(this);

  @override
  SubstanceDefinition clone() => throw UnimplementedError();
  @override
  SubstanceDefinition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirString? version,
    Element? versionElement,
    CodeableConcept? status,
    List<CodeableConcept>? classification,
    CodeableConcept? domain,
    List<CodeableConcept>? grade,
    FhirMarkdown? description,
    Element? descriptionElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      status: status ?? this.status,
      classification: classification ?? this.classification,
      domain: domain ?? this.domain,
      grade: grade ?? this.grade,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
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

  factory SubstanceDefinition.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SubstanceDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SubstanceDefinition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SubstanceDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubstanceDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SubstanceDefinitionMoiety] /// Moiety, for structural modifications.
@JsonSerializable()
class SubstanceDefinitionMoiety extends BackboneElement {
  SubstanceDefinitionMoiety({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    this.identifier,
    this.name,
    this.nameElement,
    this.stereochemistry,
    this.opticalActivity,
    this.molecularFormula,
    this.molecularFormulaElement,
    this.amountQuantity,
    this.amountString,
    this.amountStringElement,
    this.measurementType,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'SubstanceDefinitionMoiety');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [role] /// Role that the moiety is playing.
  @JsonKey(name: 'role')
  final CodeableConcept? role;

  /// [identifier] /// Identifier by which this moiety substance is known.
  @JsonKey(name: 'identifier')
  final Identifier? identifier;

  /// [name] /// Textual name for this moiety substance.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [stereochemistry] /// Stereochemistry type.
  @JsonKey(name: 'stereochemistry')
  final CodeableConcept? stereochemistry;

  /// [opticalActivity] /// Optical activity type.
  @JsonKey(name: 'opticalActivity')
  final CodeableConcept? opticalActivity;

  /// [molecularFormula] /// Molecular formula for this moiety of this substance, typically using the
  /// Hill system.
  @JsonKey(name: 'molecularFormula')
  final FhirString? molecularFormula;
  @JsonKey(name: '_molecularFormula')
  final Element? molecularFormulaElement;

  /// [amountQuantity] /// Quantitative value for this moiety.
  @JsonKey(name: 'amountQuantity')
  final Quantity? amountQuantity;

  /// [amountString] /// Quantitative value for this moiety.
  @JsonKey(name: 'amountString')
  final FhirString? amountString;
  @JsonKey(name: '_amountString')
  final Element? amountStringElement;

  /// [measurementType] /// The measurement type of the quantitative value. In capturing the actual
  /// relative amounts of substances or molecular fragments it may be necessary
  /// to indicate whether the amount refers to, for example, a mole ratio or
  /// weight ratio.
  @JsonKey(name: 'measurementType')
  final CodeableConcept? measurementType;
  factory SubstanceDefinitionMoiety.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinitionMoietyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubstanceDefinitionMoietyToJson(this);

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
    Element? nameElement,
    CodeableConcept? stereochemistry,
    CodeableConcept? opticalActivity,
    FhirString? molecularFormula,
    Element? molecularFormulaElement,
    Quantity? amountQuantity,
    FhirString? amountString,
    Element? amountStringElement,
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
      nameElement: nameElement ?? this.nameElement,
      stereochemistry: stereochemistry ?? this.stereochemistry,
      opticalActivity: opticalActivity ?? this.opticalActivity,
      molecularFormula: molecularFormula ?? this.molecularFormula,
      molecularFormulaElement:
          molecularFormulaElement ?? this.molecularFormulaElement,
      amountQuantity: amountQuantity ?? this.amountQuantity,
      amountString: amountString ?? this.amountString,
      amountStringElement: amountStringElement ?? this.amountStringElement,
      measurementType: measurementType ?? this.measurementType,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory SubstanceDefinitionMoiety.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinitionMoiety.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SubstanceDefinitionMoiety.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SubstanceDefinitionMoiety cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SubstanceDefinitionMoiety.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubstanceDefinitionMoiety.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SubstanceDefinitionProperty] /// General specifications for this substance.
@JsonSerializable()
class SubstanceDefinitionProperty extends BackboneElement {
  SubstanceDefinitionProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueDate,
    this.valueDateElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueAttachment,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'SubstanceDefinitionProperty');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// A code expressing the type of property.
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [valueCodeableConcept] /// A value for the property.
  @JsonKey(name: 'valueCodeableConcept')
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity] /// A value for the property.
  @JsonKey(name: 'valueQuantity')
  final Quantity? valueQuantity;

  /// [valueDate] /// A value for the property.
  @JsonKey(name: 'valueDate')
  final FhirDate? valueDate;
  @JsonKey(name: '_valueDate')
  final Element? valueDateElement;

  /// [valueBoolean] /// A value for the property.
  @JsonKey(name: 'valueBoolean')
  final FhirBoolean? valueBoolean;
  @JsonKey(name: '_valueBoolean')
  final Element? valueBooleanElement;

  /// [valueAttachment] /// A value for the property.
  @JsonKey(name: 'valueAttachment')
  final Attachment? valueAttachment;
  factory SubstanceDefinitionProperty.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinitionPropertyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubstanceDefinitionPropertyToJson(this);

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
    Element? valueDateElement,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
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
      valueDateElement: valueDateElement ?? this.valueDateElement,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueAttachment: valueAttachment ?? this.valueAttachment,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory SubstanceDefinitionProperty.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinitionProperty.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SubstanceDefinitionProperty.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SubstanceDefinitionProperty cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SubstanceDefinitionProperty.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubstanceDefinitionProperty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SubstanceDefinitionMolecularWeight] /// The molecular weight or weight range (for proteins, polymers or nucleic
/// acids).
@JsonSerializable()
class SubstanceDefinitionMolecularWeight extends BackboneElement {
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
  }) : super(fhirType: 'SubstanceDefinitionMolecularWeight');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [method] /// The method by which the molecular weight was determined.
  @JsonKey(name: 'method')
  final CodeableConcept? method;

  /// [type] /// Type of molecular weight such as exact, average (also known as. number
  /// average), weight average.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [amount] /// Used to capture quantitative values for a variety of elements. If only
  /// limits are given, the arithmetic mean would be the average. If only a
  /// single definite value for a given element is given, it would be captured in
  /// this field.
  @JsonKey(name: 'amount')
  final Quantity amount;
  factory SubstanceDefinitionMolecularWeight.fromJson(
          Map<String, dynamic> json) =>
      _$SubstanceDefinitionMolecularWeightFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$SubstanceDefinitionMolecularWeightToJson(this);

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

  factory SubstanceDefinitionMolecularWeight.fromYaml(dynamic yaml) => yaml
          is String
      ? SubstanceDefinitionMolecularWeight.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SubstanceDefinitionMolecularWeight.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SubstanceDefinitionMolecularWeight cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SubstanceDefinitionMolecularWeight.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubstanceDefinitionMolecularWeight.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SubstanceDefinitionStructure] /// Structural information.
@JsonSerializable()
class SubstanceDefinitionStructure extends BackboneElement {
  SubstanceDefinitionStructure({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.stereochemistry,
    this.opticalActivity,
    this.molecularFormula,
    this.molecularFormulaElement,
    this.molecularFormulaByMoiety,
    this.molecularFormulaByMoietyElement,
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
  }) : super(fhirType: 'SubstanceDefinitionStructure');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [stereochemistry] /// Stereochemistry type.
  @JsonKey(name: 'stereochemistry')
  final CodeableConcept? stereochemistry;

  /// [opticalActivity] /// Optical activity type.
  @JsonKey(name: 'opticalActivity')
  final CodeableConcept? opticalActivity;

  /// [molecularFormula] /// Molecular formula of this substance, typically using the Hill system.
  @JsonKey(name: 'molecularFormula')
  final FhirString? molecularFormula;
  @JsonKey(name: '_molecularFormula')
  final Element? molecularFormulaElement;

  /// [molecularFormulaByMoiety] /// Specified per moiety according to the Hill system, i.e. first C, then H,
  /// then alphabetical, each moiety separated by a dot.
  @JsonKey(name: 'molecularFormulaByMoiety')
  final FhirString? molecularFormulaByMoiety;
  @JsonKey(name: '_molecularFormulaByMoiety')
  final Element? molecularFormulaByMoietyElement;

  /// [molecularWeight] /// The molecular weight or weight range (for proteins, polymers or nucleic
  /// acids).
  @JsonKey(name: 'molecularWeight')
  final SubstanceDefinitionMolecularWeight? molecularWeight;

  /// [technique] /// The method used to elucidate the structure or characterization of the drug
  /// substance. Examples: X-ray, HPLC, NMR, Peptide mapping, Ligand binding
  /// assay.
  @JsonKey(name: 'technique')
  final List<CodeableConcept>? technique;

  /// [sourceDocument] /// The source of information about the structure.
  @JsonKey(name: 'sourceDocument')
  final List<Reference>? sourceDocument;

  /// [representation] /// A depiction of the structure or characterization of the substance.
  @JsonKey(name: 'representation')
  final List<SubstanceDefinitionRepresentation>? representation;
  factory SubstanceDefinitionStructure.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinitionStructureFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubstanceDefinitionStructureToJson(this);

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
    Element? molecularFormulaElement,
    FhirString? molecularFormulaByMoiety,
    Element? molecularFormulaByMoietyElement,
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
      molecularFormulaElement:
          molecularFormulaElement ?? this.molecularFormulaElement,
      molecularFormulaByMoiety:
          molecularFormulaByMoiety ?? this.molecularFormulaByMoiety,
      molecularFormulaByMoietyElement: molecularFormulaByMoietyElement ??
          this.molecularFormulaByMoietyElement,
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

  factory SubstanceDefinitionStructure.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinitionStructure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SubstanceDefinitionStructure.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SubstanceDefinitionStructure cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SubstanceDefinitionStructure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubstanceDefinitionStructure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SubstanceDefinitionRepresentation] /// A depiction of the structure or characterization of the substance.
@JsonSerializable()
class SubstanceDefinitionRepresentation extends BackboneElement {
  SubstanceDefinitionRepresentation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.representation,
    this.representationElement,
    this.format,
    this.document,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'SubstanceDefinitionRepresentation');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The kind of structural representation (e.g. full, partial).
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [representation] /// The structural representation or characterization as a text string in a
  /// standard format.
  @JsonKey(name: 'representation')
  final FhirString? representation;
  @JsonKey(name: '_representation')
  final Element? representationElement;

  /// [format] /// The format of the representation e.g. InChI, SMILES, MOLFILE, CDX, SDF,
  /// PDB, mmCIF. The logical content type rather than the physical file format
  /// of a document.
  @JsonKey(name: 'format')
  final CodeableConcept? format;

  /// [document] /// An attached file with the structural representation or characterization
  /// e.g. a molecular structure graphic of the substance, a JCAMP or AnIML file.
  @JsonKey(name: 'document')
  final Reference? document;
  factory SubstanceDefinitionRepresentation.fromJson(
          Map<String, dynamic> json) =>
      _$SubstanceDefinitionRepresentationFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$SubstanceDefinitionRepresentationToJson(this);

  @override
  SubstanceDefinitionRepresentation clone() => throw UnimplementedError();
  @override
  SubstanceDefinitionRepresentation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? representation,
    Element? representationElement,
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
      representationElement:
          representationElement ?? this.representationElement,
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

  factory SubstanceDefinitionRepresentation.fromYaml(dynamic yaml) => yaml
          is String
      ? SubstanceDefinitionRepresentation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SubstanceDefinitionRepresentation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SubstanceDefinitionRepresentation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SubstanceDefinitionRepresentation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubstanceDefinitionRepresentation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SubstanceDefinitionCode] /// Codes associated with the substance.
@JsonSerializable()
class SubstanceDefinitionCode extends BackboneElement {
  SubstanceDefinitionCode({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.status,
    this.statusDate,
    this.statusDateElement,
    this.note,
    this.source,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'SubstanceDefinitionCode');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// The specific code.
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [status] /// Status of the code assignment, for example 'provisional', 'approved'.
  @JsonKey(name: 'status')
  final CodeableConcept? status;

  /// [statusDate] /// The date at which the code status was changed as part of the terminology
  /// maintenance.
  @JsonKey(name: 'statusDate')
  final FhirDateTime? statusDate;
  @JsonKey(name: '_statusDate')
  final Element? statusDateElement;

  /// [note] /// Any comment can be provided in this field, if necessary.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [source] /// Supporting literature.
  @JsonKey(name: 'source')
  final List<Reference>? source;
  factory SubstanceDefinitionCode.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinitionCodeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubstanceDefinitionCodeToJson(this);

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
    Element? statusDateElement,
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
      statusDateElement: statusDateElement ?? this.statusDateElement,
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

  factory SubstanceDefinitionCode.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinitionCode.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SubstanceDefinitionCode.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SubstanceDefinitionCode cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SubstanceDefinitionCode.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubstanceDefinitionCode.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SubstanceDefinitionName] /// Names applicable to this substance.
@JsonSerializable()
class SubstanceDefinitionName extends BackboneElement {
  SubstanceDefinitionName({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    this.type,
    this.status,
    this.preferred,
    this.preferredElement,
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
  }) : super(fhirType: 'SubstanceDefinitionName');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// The actual name.
  @JsonKey(name: 'name')
  final FhirString name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [type] /// Name type, for example 'systematic', 'scientific, 'brand'.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [status] /// The status of the name, for example 'current', 'proposed'.
  @JsonKey(name: 'status')
  final CodeableConcept? status;

  /// [preferred] /// If this is the preferred name for this substance.
  @JsonKey(name: 'preferred')
  final FhirBoolean? preferred;
  @JsonKey(name: '_preferred')
  final Element? preferredElement;

  /// [language] /// Human language that the name is written in.
  @JsonKey(name: 'language')
  final List<CodeableConcept>? language;

  /// [domain] /// The use context of this name for example if there is a different name a
  /// drug active ingredient as opposed to a food colour additive.
  @JsonKey(name: 'domain')
  final List<CodeableConcept>? domain;

  /// [jurisdiction] /// The jurisdiction where this name applies.
  @JsonKey(name: 'jurisdiction')
  final List<CodeableConcept>? jurisdiction;

  /// [synonym] /// A synonym of this particular name, by which the substance is also known.
  @JsonKey(name: 'synonym')
  final List<SubstanceDefinitionName>? synonym;

  /// [translation] /// A translation for this name into another human language.
  @JsonKey(name: 'translation')
  final List<SubstanceDefinitionName>? translation;

  /// [official] /// Details of the official nature of this name.
  @JsonKey(name: 'official')
  final List<SubstanceDefinitionOfficial>? official;

  /// [source] /// Supporting literature.
  @JsonKey(name: 'source')
  final List<Reference>? source;
  factory SubstanceDefinitionName.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinitionNameFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubstanceDefinitionNameToJson(this);

  @override
  SubstanceDefinitionName clone() => throw UnimplementedError();
  @override
  SubstanceDefinitionName copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    CodeableConcept? type,
    CodeableConcept? status,
    FhirBoolean? preferred,
    Element? preferredElement,
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
      nameElement: nameElement ?? this.nameElement,
      type: type ?? this.type,
      status: status ?? this.status,
      preferred: preferred ?? this.preferred,
      preferredElement: preferredElement ?? this.preferredElement,
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

  factory SubstanceDefinitionName.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinitionName.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SubstanceDefinitionName.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SubstanceDefinitionName cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SubstanceDefinitionName.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubstanceDefinitionName.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SubstanceDefinitionOfficial] /// Details of the official nature of this name.
@JsonSerializable()
class SubstanceDefinitionOfficial extends BackboneElement {
  SubstanceDefinitionOfficial({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.authority,
    this.status,
    this.date,
    this.dateElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'SubstanceDefinitionOfficial');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [authority] /// Which authority uses this official name.
  @JsonKey(name: 'authority')
  final CodeableConcept? authority;

  /// [status] /// The status of the official name, for example 'draft', 'active', 'retired'.
  @JsonKey(name: 'status')
  final CodeableConcept? status;

  /// [date] /// Date of the official name change.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;
  factory SubstanceDefinitionOfficial.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinitionOfficialFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubstanceDefinitionOfficialToJson(this);

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
    Element? dateElement,
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
      dateElement: dateElement ?? this.dateElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory SubstanceDefinitionOfficial.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinitionOfficial.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SubstanceDefinitionOfficial.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SubstanceDefinitionOfficial cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SubstanceDefinitionOfficial.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubstanceDefinitionOfficial.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SubstanceDefinitionRelationship] /// A link between this substance and another, with details of the
/// relationship.
@JsonSerializable()
class SubstanceDefinitionRelationship extends BackboneElement {
  SubstanceDefinitionRelationship({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.substanceDefinitionReference,
    this.substanceDefinitionCodeableConcept,
    required this.type,
    this.isDefining,
    this.isDefiningElement,
    this.amountQuantity,
    this.amountRatio,
    this.amountString,
    this.amountStringElement,
    this.ratioHighLimitAmount,
    this.comparator,
    this.source,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'SubstanceDefinitionRelationship');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [substanceDefinitionReference] /// A pointer to another substance, as a resource or just a representational
  /// code.
  @JsonKey(name: 'substanceDefinitionReference')
  final Reference? substanceDefinitionReference;

  /// [substanceDefinitionCodeableConcept] /// A pointer to another substance, as a resource or just a representational
  /// code.
  @JsonKey(name: 'substanceDefinitionCodeableConcept')
  final CodeableConcept? substanceDefinitionCodeableConcept;

  /// [type] /// For example "salt to parent", "active moiety", "starting material",
  /// "polymorph", "impurity of".
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [isDefining] /// For example where an enzyme strongly bonds with a particular substance,
  /// this is a defining relationship for that enzyme, out of several possible
  /// substance relationships.
  @JsonKey(name: 'isDefining')
  final FhirBoolean? isDefining;
  @JsonKey(name: '_isDefining')
  final Element? isDefiningElement;

  /// [amountQuantity] /// A numeric factor for the relationship, for instance to express that the
  /// salt of a substance has some percentage of the active substance in relation
  /// to some other.
  @JsonKey(name: 'amountQuantity')
  final Quantity? amountQuantity;

  /// [amountRatio] /// A numeric factor for the relationship, for instance to express that the
  /// salt of a substance has some percentage of the active substance in relation
  /// to some other.
  @JsonKey(name: 'amountRatio')
  final Ratio? amountRatio;

  /// [amountString] /// A numeric factor for the relationship, for instance to express that the
  /// salt of a substance has some percentage of the active substance in relation
  /// to some other.
  @JsonKey(name: 'amountString')
  final FhirString? amountString;
  @JsonKey(name: '_amountString')
  final Element? amountStringElement;

  /// [ratioHighLimitAmount] /// For use when the numeric has an uncertain range.
  @JsonKey(name: 'ratioHighLimitAmount')
  final Ratio? ratioHighLimitAmount;

  /// [comparator] /// An operator for the amount, for example "average", "approximately", "less
  /// than".
  @JsonKey(name: 'comparator')
  final CodeableConcept? comparator;

  /// [source] /// Supporting literature.
  @JsonKey(name: 'source')
  final List<Reference>? source;
  factory SubstanceDefinitionRelationship.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinitionRelationshipFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$SubstanceDefinitionRelationshipToJson(this);

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
    Element? isDefiningElement,
    Quantity? amountQuantity,
    Ratio? amountRatio,
    FhirString? amountString,
    Element? amountStringElement,
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
      isDefiningElement: isDefiningElement ?? this.isDefiningElement,
      amountQuantity: amountQuantity ?? this.amountQuantity,
      amountRatio: amountRatio ?? this.amountRatio,
      amountString: amountString ?? this.amountString,
      amountStringElement: amountStringElement ?? this.amountStringElement,
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

  factory SubstanceDefinitionRelationship.fromYaml(dynamic yaml) => yaml
          is String
      ? SubstanceDefinitionRelationship.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SubstanceDefinitionRelationship.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SubstanceDefinitionRelationship cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SubstanceDefinitionRelationship.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubstanceDefinitionRelationship.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SubstanceDefinitionSourceMaterial] /// Material or taxonomic/anatomical source for the substance.
@JsonSerializable()
class SubstanceDefinitionSourceMaterial extends BackboneElement {
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
  }) : super(fhirType: 'SubstanceDefinitionSourceMaterial');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// A classification that provides the origin of the raw material. Example: cat
  /// hair would be an Animal source type.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [genus] /// The genus of an organism, typically referring to the Latin epithet of the
  /// genus element of the plant/animal scientific name.
  @JsonKey(name: 'genus')
  final CodeableConcept? genus;

  /// [species] /// The species of an organism, typically referring to the Latin epithet of the
  /// species of the plant/animal.
  @JsonKey(name: 'species')
  final CodeableConcept? species;

  /// [part_] /// An anatomical origin of the source material within an organism.
  @JsonKey(name: 'part')
  final CodeableConcept? part_;

  /// [countryOfOrigin] /// The country or countries where the material is harvested.
  @JsonKey(name: 'countryOfOrigin')
  final List<CodeableConcept>? countryOfOrigin;
  factory SubstanceDefinitionSourceMaterial.fromJson(
          Map<String, dynamic> json) =>
      _$SubstanceDefinitionSourceMaterialFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$SubstanceDefinitionSourceMaterialToJson(this);

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

  factory SubstanceDefinitionSourceMaterial.fromYaml(dynamic yaml) => yaml
          is String
      ? SubstanceDefinitionSourceMaterial.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SubstanceDefinitionSourceMaterial.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SubstanceDefinitionSourceMaterial cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SubstanceDefinitionSourceMaterial.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SubstanceDefinitionSourceMaterial.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
