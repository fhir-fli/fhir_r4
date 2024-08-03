// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'substance_definition.freezed.dart';
part 'substance_definition.g.dart';

/// [SubstanceDefinition] The detailed description of a substance, typically at a level beyond what is used for prescribing.
@freezed
class SubstanceDefinition extends DomainResource with _$SubstanceDefinition {
  /// [SubstanceDefinition] The detailed description of a substance, typically at a level beyond what is used for prescribing.
  SubstanceDefinition._();

  /// [SubstanceDefinition] The detailed description of a substance, typically at a level beyond what is used for prescribing.

  ///
  /// [resourceType] This is a SubstanceDefinition resource;
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
  ///
  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  ///
  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  ///
  /// [language] The base language in which the resource is written.;
  ///
  /// [languageElement] (_language): Extensions for language;
  ///
  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  ///
  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [identifier] Identifier by which this substance is known.;
  ///
  /// [version] A business level version identifier of the substance.;
  ///
  /// [versionElement] (_version): Extensions for version;
  ///
  /// [status] Status of substance within the catalogue e.g. active, retired.;
  ///
  /// [classification] A high level categorization, e.g. polymer or nucleic acid, or food, chemical, biological, or a lower level such as the general types of polymer (linear or branch chain) or type of impurity (process related or contaminant).;
  ///
  /// [domain] If the substance applies to human or veterinary use.;
  ///
  /// [grade] The quality standard, established benchmark, to which substance complies (e.g. USP/NF, Ph. Eur, JP, BP, Company Standard).;
  ///
  /// [description] Textual description of the substance.;
  ///
  /// [descriptionElement] (_description): Extensions for description;
  ///
  /// [informationSource] Supporting literature.;
  ///
  /// [note] Textual comment about the substance's catalogue or registry record.;
  ///
  /// [manufacturer] The entity that creates, makes, produces or fabricates the substance. This is a set of potential manufacturers but is not necessarily comprehensive.;
  ///
  /// [supplier] An entity that is the source for the substance. It may be different from the manufacturer. Supplier is synonymous to a distributor.;
  ///
  /// [moiety] Moiety, for structural modifications.;
  ///
  /// [property] General specifications for this substance.;
  ///
  /// [molecularWeight] The molecular weight or weight range (for proteins, polymers or nucleic acids).;
  ///
  /// [structure] Structural information.;
  ///
  /// [code] Codes associated with the substance.;
  ///
  /// [name] Names applicable to this substance.;
  ///
  /// [relationship] A link between this substance and another, with details of the relationship.;
  ///
  /// [sourceMaterial] Material or taxonomic/anatomical source for the substance.;
  const factory SubstanceDefinition({
    /// [resourceType] This is a SubstanceDefinition resource;
    @Default(R4ResourceType.SubstanceDefinition) R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
    String? id,

    /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
    FhirUri? implicitRules,

    /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.;
    FhirCode? language,

    /// [languageElement] (_language): Extensions for language;
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [identifier] Identifier by which this substance is known.;
    List<Identifier>? identifier,

    /// [version] A business level version identifier of the substance.;
    String? version,

    /// [versionElement] (_version): Extensions for version;
    @JsonKey(name: '_version') PrimitiveElement? versionElement,

    /// [status] Status of substance within the catalogue e.g. active, retired.;
    CodeableConcept? status,

    /// [classification] A high level categorization, e.g. polymer or nucleic acid, or food, chemical, biological, or a lower level such as the general types of polymer (linear or branch chain) or type of impurity (process related or contaminant).;
    List<CodeableConcept>? classification,

    /// [domain] If the substance applies to human or veterinary use.;
    CodeableConcept? domain,

    /// [grade] The quality standard, established benchmark, to which substance complies (e.g. USP/NF, Ph. Eur, JP, BP, Company Standard).;
    List<CodeableConcept>? grade,

    /// [description] Textual description of the substance.;
    FhirMarkdown? description,

    /// [descriptionElement] (_description): Extensions for description;
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [informationSource] Supporting literature.;
    List<Reference>? informationSource,

    /// [note] Textual comment about the substance's catalogue or registry record.;
    List<Annotation>? note,

    /// [manufacturer] The entity that creates, makes, produces or fabricates the substance. This is a set of potential manufacturers but is not necessarily comprehensive.;
    List<Reference>? manufacturer,

    /// [supplier] An entity that is the source for the substance. It may be different from the manufacturer. Supplier is synonymous to a distributor.;
    List<Reference>? supplier,

    /// [moiety] Moiety, for structural modifications.;
    List<SubstanceDefinitionMoiety>? moiety,

    /// [property] General specifications for this substance.;
    List<SubstanceDefinitionProperty>? property,

    /// [molecularWeight] The molecular weight or weight range (for proteins, polymers or nucleic acids).;
    List<SubstanceDefinitionMolecularWeight>? molecularWeight,

    /// [structure] Structural information.;
    SubstanceDefinitionStructure? structure,

    /// [code] Codes associated with the substance.;
    List<SubstanceDefinitionCode>? code,

    /// [name] Names applicable to this substance.;
    List<SubstanceDefinitionName>? name,

    /// [relationship] A link between this substance and another, with details of the relationship.;
    List<SubstanceDefinitionRelationship>? relationship,

    /// [sourceMaterial] Material or taxonomic/anatomical source for the substance.;
    SubstanceDefinitionSourceMaterial? sourceMaterial,
  }) = _SubstanceDefinition;

  @override
  String get fhirType => 'SubstanceDefinition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubstanceDefinition.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinition.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinitionFromJson(json);

  /// Acts like a constructor, returns a [SubstanceDefinition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubstanceDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta, versionIdAsTime));
}

/// [SubstanceDefinitionMoiety] The detailed description of a substance, typically at a level beyond what is used for prescribing.
@freezed

/// [SubstanceDefinitionMoiety] The detailed description of a substance, typically at a level beyond what is used for prescribing.
@freezed
class SubstanceDefinitionMoiety extends BackboneElement
    with _$SubstanceDefinitionMoiety {
  /// [SubstanceDefinitionMoiety] The detailed description of a substance, typically at a level beyond what is used for prescribing.
  SubstanceDefinitionMoiety._();

  /// [SubstanceDefinitionMoiety] The detailed description of a substance, typically at a level beyond what is used for prescribing.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [role] Role that the moiety is playing.;
  ///
  /// [identifier] Identifier by which this moiety substance is known.;
  ///
  /// [name] Textual name for this moiety substance.;
  ///
  /// [nameElement] (_name): Extensions for name;
  ///
  /// [stereochemistry] Stereochemistry type.;
  ///
  /// [opticalActivity] Optical activity type.;
  ///
  /// [molecularFormula] Molecular formula for this moiety of this substance, typically using the Hill system.;
  ///
  /// [molecularFormulaElement] (_molecularFormula): Extensions for molecularFormula;
  ///
  /// [amountQuantity] Quantitative value for this moiety.;
  ///
  /// [amountString] Quantitative value for this moiety.;
  ///
  /// [amountStringElement] (_amountString): Extensions for amountString;
  ///
  /// [measurementType] The measurement type of the quantitative value. In capturing the actual relative amounts of substances or molecular fragments it may be necessary to indicate whether the amount refers to, for example, a mole ratio or weight ratio.;
  const factory SubstanceDefinitionMoiety({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [role] Role that the moiety is playing.;
    CodeableConcept? role,

    /// [identifier] Identifier by which this moiety substance is known.;
    Identifier? identifier,

    /// [name] Textual name for this moiety substance.;
    String? name,

    /// [nameElement] (_name): Extensions for name;
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [stereochemistry] Stereochemistry type.;
    CodeableConcept? stereochemistry,

    /// [opticalActivity] Optical activity type.;
    CodeableConcept? opticalActivity,

    /// [molecularFormula] Molecular formula for this moiety of this substance, typically using the Hill system.;
    String? molecularFormula,

    /// [molecularFormulaElement] (_molecularFormula): Extensions for molecularFormula;
    @JsonKey(name: '_molecularFormula')
    PrimitiveElement? molecularFormulaElement,

    /// [amountQuantity] Quantitative value for this moiety.;
    Quantity? amountQuantity,

    /// [amountString] Quantitative value for this moiety.;
    FhirMarkdown? amountString,

    /// [amountStringElement] (_amountString): Extensions for amountString;
    @JsonKey(name: '_amountString') PrimitiveElement? amountStringElement,

    /// [measurementType] The measurement type of the quantitative value. In capturing the actual relative amounts of substances or molecular fragments it may be necessary to indicate whether the amount refers to, for example, a mole ratio or weight ratio.;
    CodeableConcept? measurementType,
  }) = _SubstanceDefinitionMoiety;

  @override
  String get fhirType => 'SubstanceDefinitionMoiety';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubstanceDefinitionMoiety.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinitionMoiety.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinitionMoiety.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinitionMoiety cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionMoiety.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinitionMoietyFromJson(json);

  /// Acts like a constructor, returns a [SubstanceDefinitionMoiety], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubstanceDefinitionMoiety.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinitionMoietyFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [SubstanceDefinitionProperty] The detailed description of a substance, typically at a level beyond what is used for prescribing.
@freezed

/// [SubstanceDefinitionProperty] The detailed description of a substance, typically at a level beyond what is used for prescribing.
@freezed
class SubstanceDefinitionProperty extends BackboneElement
    with _$SubstanceDefinitionProperty {
  /// [SubstanceDefinitionProperty] The detailed description of a substance, typically at a level beyond what is used for prescribing.
  SubstanceDefinitionProperty._();

  /// [SubstanceDefinitionProperty] The detailed description of a substance, typically at a level beyond what is used for prescribing.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [type] A code expressing the type of property.;
  ///
  /// [valueCodeableConcept] A value for the property.;
  ///
  /// [valueQuantity] A value for the property.;
  ///
  /// [valueDate] A value for the property.;
  ///
  /// [valueDateElement] (_valueDate): Extensions for valueDate;
  ///
  /// [valueBoolean] A value for the property.;
  ///
  /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
  ///
  /// [valueAttachment] A value for the property.;
  const factory SubstanceDefinitionProperty({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [type] A code expressing the type of property.;
    required CodeableConcept type,

    /// [valueCodeableConcept] A value for the property.;
    CodeableConcept? valueCodeableConcept,

    /// [valueQuantity] A value for the property.;
    Quantity? valueQuantity,

    /// [valueDate] A value for the property.;
    FhirDate? valueDate,

    /// [valueDateElement] (_valueDate): Extensions for valueDate;
    @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,

    /// [valueBoolean] A value for the property.;
    FhirBoolean? valueBoolean,

    /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,

    /// [valueAttachment] A value for the property.;
    Attachment? valueAttachment,
  }) = _SubstanceDefinitionProperty;

  @override
  String get fhirType => 'SubstanceDefinitionProperty';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubstanceDefinitionProperty.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinitionProperty.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinitionProperty.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinitionProperty cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionProperty.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinitionPropertyFromJson(json);

  /// Acts like a constructor, returns a [SubstanceDefinitionProperty], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubstanceDefinitionProperty.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinitionPropertyFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

@freezed
@freezed
class SubstanceDefinitionMolecularWeight extends BackboneElement
    with _$SubstanceDefinitionMolecularWeight {
  SubstanceDefinitionMolecularWeight._();

  /// [SubstanceDefinitionMolecularWeight] The detailed description of a substance, typically at a level beyond what is used for prescribing.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [method] The method by which the molecular weight was determined.;
  ///
  /// [type] Type of molecular weight such as exact, average (also known as. number average), weight average.;
  ///
  /// [amount] Used to capture quantitative values for a variety of elements. If only limits are given, the arithmetic mean would be the average. If only a single definite value for a given element is given, it would be captured in this field.;
  const factory SubstanceDefinitionMolecularWeight({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [method] The method by which the molecular weight was determined.;
    CodeableConcept? method,

    /// [type] Type of molecular weight such as exact, average (also known as. number average), weight average.;
    CodeableConcept? type,

    /// [amount] Used to capture quantitative values for a variety of elements. If only limits are given, the arithmetic mean would be the average. If only a single definite value for a given element is given, it would be captured in this field.;
    required Quantity amount,
  }) = _SubstanceDefinitionMolecularWeight;

  @override
  String get fhirType => 'SubstanceDefinitionMolecularWeight';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubstanceDefinitionMolecularWeight.fromYaml(dynamic yaml) => yaml
          is String
      ? SubstanceDefinitionMolecularWeight.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinitionMolecularWeight.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinitionMolecularWeight cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionMolecularWeight.fromJson(
          Map<String, dynamic> json) =>
      _$SubstanceDefinitionMolecularWeightFromJson(json);

  /// Acts like a constructor, returns a [SubstanceDefinitionMolecularWeight], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubstanceDefinitionMolecularWeight.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinitionMolecularWeightFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [SubstanceDefinitionStructure] The detailed description of a substance, typically at a level beyond what is used for prescribing.
@freezed

/// [SubstanceDefinitionStructure] The detailed description of a substance, typically at a level beyond what is used for prescribing.
@freezed
class SubstanceDefinitionStructure extends BackboneElement
    with _$SubstanceDefinitionStructure {
  /// [SubstanceDefinitionStructure] The detailed description of a substance, typically at a level beyond what is used for prescribing.
  SubstanceDefinitionStructure._();

  /// [SubstanceDefinitionStructure] The detailed description of a substance, typically at a level beyond what is used for prescribing.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [stereochemistry] Stereochemistry type.;
  ///
  /// [opticalActivity] Optical activity type.;
  ///
  /// [molecularFormula] Molecular formula of this substance, typically using the Hill system.;
  ///
  /// [molecularFormulaElement] (_molecularFormula): Extensions for molecularFormula;
  ///
  /// [molecularFormulaByMoiety] Specified per moiety according to the Hill system, i.e. first C, then H, then alphabetical, each moiety separated by a dot.;
  ///
  /// [molecularFormulaByMoietyElement] (_molecularFormulaByMoiety): Extensions for molecularFormulaByMoiety;
  ///
  /// [molecularWeight] The molecular weight or weight range (for proteins, polymers or nucleic acids).;
  ///
  /// [technique] The method used to elucidate the structure or characterization of the drug substance. Examples: X-ray, HPLC, NMR, Peptide mapping, Ligand binding assay.;
  ///
  /// [sourceDocument] The source of information about the structure.;
  ///
  /// [representation] A depiction of the structure or characterization of the substance.;
  const factory SubstanceDefinitionStructure({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [stereochemistry] Stereochemistry type.;
    CodeableConcept? stereochemistry,

    /// [opticalActivity] Optical activity type.;
    CodeableConcept? opticalActivity,

    /// [molecularFormula] Molecular formula of this substance, typically using the Hill system.;
    String? molecularFormula,

    /// [molecularFormulaElement] (_molecularFormula): Extensions for molecularFormula;
    @JsonKey(name: '_molecularFormula')
    PrimitiveElement? molecularFormulaElement,

    /// [molecularFormulaByMoiety] Specified per moiety according to the Hill system, i.e. first C, then H, then alphabetical, each moiety separated by a dot.;
    String? molecularFormulaByMoiety,
    @JsonKey(name: '_molecularFormulaByMoiety')

    /// [molecularFormulaByMoietyElement] (_molecularFormulaByMoiety): Extensions for molecularFormulaByMoiety;
    PrimitiveElement? molecularFormulaByMoietyElement,

    /// [molecularWeight] The molecular weight or weight range (for proteins, polymers or nucleic acids).;
    SubstanceDefinitionMolecularWeight? molecularWeight,

    /// [technique] The method used to elucidate the structure or characterization of the drug substance. Examples: X-ray, HPLC, NMR, Peptide mapping, Ligand binding assay.;
    List<CodeableConcept>? technique,

    /// [sourceDocument] The source of information about the structure.;
    List<Reference>? sourceDocument,

    /// [representation] A depiction of the structure or characterization of the substance.;
    List<SubstanceDefinitionRepresentation>? representation,
  }) = _SubstanceDefinitionStructure;

  @override
  String get fhirType => 'SubstanceDefinitionStructure';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubstanceDefinitionStructure.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinitionStructure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinitionStructure.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinitionStructure cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionStructure.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinitionStructureFromJson(json);

  /// Acts like a constructor, returns a [SubstanceDefinitionStructure], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubstanceDefinitionStructure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinitionStructureFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

@freezed
@freezed
class SubstanceDefinitionRepresentation extends BackboneElement
    with _$SubstanceDefinitionRepresentation {
  SubstanceDefinitionRepresentation._();

  /// [SubstanceDefinitionRepresentation] The detailed description of a substance, typically at a level beyond what is used for prescribing.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [type] The kind of structural representation (e.g. full, partial).;
  ///
  /// [representation] The structural representation or characterization as a text string in a standard format.;
  ///
  /// [representationElement] (_representation): Extensions for representation;
  ///
  /// [format] The format of the representation e.g. InChI, SMILES, MOLFILE, CDX, SDF, PDB, mmCIF. The logical content type rather than the physical file format of a document.;
  ///
  /// [document] An attached file with the structural representation or characterization e.g. a molecular structure graphic of the substance, a JCAMP or AnIML file.;
  const factory SubstanceDefinitionRepresentation({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [type] The kind of structural representation (e.g. full, partial).;
    CodeableConcept? type,

    /// [representation] The structural representation or characterization as a text string in a standard format.;
    String? representation,

    /// [representationElement] (_representation): Extensions for representation;
    @JsonKey(name: '_representation') PrimitiveElement? representationElement,

    /// [format] The format of the representation e.g. InChI, SMILES, MOLFILE, CDX, SDF, PDB, mmCIF. The logical content type rather than the physical file format of a document.;
    CodeableConcept? format,

    /// [document] An attached file with the structural representation or characterization e.g. a molecular structure graphic of the substance, a JCAMP or AnIML file.;
    Reference? document,
  }) = _SubstanceDefinitionRepresentation;

  @override
  String get fhirType => 'SubstanceDefinitionRepresentation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubstanceDefinitionRepresentation.fromYaml(dynamic yaml) => yaml
          is String
      ? SubstanceDefinitionRepresentation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinitionRepresentation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinitionRepresentation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionRepresentation.fromJson(
          Map<String, dynamic> json) =>
      _$SubstanceDefinitionRepresentationFromJson(json);

  /// Acts like a constructor, returns a [SubstanceDefinitionRepresentation], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubstanceDefinitionRepresentation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinitionRepresentationFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [SubstanceDefinitionCode] The detailed description of a substance, typically at a level beyond what is used for prescribing.
@freezed

/// [SubstanceDefinitionCode] The detailed description of a substance, typically at a level beyond what is used for prescribing.
@freezed
class SubstanceDefinitionCode extends BackboneElement
    with _$SubstanceDefinitionCode {
  /// [SubstanceDefinitionCode] The detailed description of a substance, typically at a level beyond what is used for prescribing.
  SubstanceDefinitionCode._();

  /// [SubstanceDefinitionCode] The detailed description of a substance, typically at a level beyond what is used for prescribing.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [code] The specific code.;
  ///
  /// [status] Status of the code assignment, for example 'provisional', 'approved'.;
  ///
  /// [statusDate] The date at which the code status was changed as part of the terminology maintenance.;
  ///
  /// [statusDateElement] (_statusDate): Extensions for statusDate;
  ///
  /// [note] Any comment can be provided in this field, if necessary.;
  ///
  /// [source] Supporting literature.;
  const factory SubstanceDefinitionCode({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [code] The specific code.;
    CodeableConcept? code,

    /// [status] Status of the code assignment, for example 'provisional', 'approved'.;
    CodeableConcept? status,

    /// [statusDate] The date at which the code status was changed as part of the terminology maintenance.;
    FhirDateTime? statusDate,

    /// [statusDateElement] (_statusDate): Extensions for statusDate;
    @JsonKey(name: '_statusDate') PrimitiveElement? statusDateElement,

    /// [note] Any comment can be provided in this field, if necessary.;
    List<Annotation>? note,

    /// [source] Supporting literature.;
    List<Reference>? source,
  }) = _SubstanceDefinitionCode;

  @override
  String get fhirType => 'SubstanceDefinitionCode';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubstanceDefinitionCode.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinitionCode.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinitionCode.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinitionCode cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionCode.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinitionCodeFromJson(json);

  /// Acts like a constructor, returns a [SubstanceDefinitionCode], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubstanceDefinitionCode.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinitionCodeFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [SubstanceDefinitionName] The detailed description of a substance, typically at a level beyond what is used for prescribing.
@freezed

/// [SubstanceDefinitionName] The detailed description of a substance, typically at a level beyond what is used for prescribing.
@freezed
class SubstanceDefinitionName extends BackboneElement
    with _$SubstanceDefinitionName {
  /// [SubstanceDefinitionName] The detailed description of a substance, typically at a level beyond what is used for prescribing.
  SubstanceDefinitionName._();

  /// [SubstanceDefinitionName] The detailed description of a substance, typically at a level beyond what is used for prescribing.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [name] The actual name.;
  ///
  /// [nameElement] (_name): Extensions for name;
  ///
  /// [type] Name type, for example 'systematic',  'scientific, 'brand'.;
  ///
  /// [status] The status of the name, for example 'current', 'proposed'.;
  ///
  /// [preferred] If this is the preferred name for this substance.;
  ///
  /// [preferredElement] (_preferred): Extensions for preferred;
  ///
  /// [language] Human language that the name is written in.;
  ///
  /// [domain] The use context of this name for example if there is a different name a drug active ingredient as opposed to a food colour additive.;
  ///
  /// [jurisdiction] The jurisdiction where this name applies.;
  ///
  /// [synonym] A synonym of this particular name, by which the substance is also known.;
  ///
  /// [translation] A translation for this name into another human language.;
  ///
  /// [official] Details of the official nature of this name.;
  ///
  /// [source] Supporting literature.;
  const factory SubstanceDefinitionName({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [name] The actual name.;
    String? name,

    /// [nameElement] (_name): Extensions for name;
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [type] Name type, for example 'systematic',  'scientific, 'brand'.;
    CodeableConcept? type,

    /// [status] The status of the name, for example 'current', 'proposed'.;
    CodeableConcept? status,

    /// [preferred] If this is the preferred name for this substance.;
    FhirBoolean? preferred,

    /// [preferredElement] (_preferred): Extensions for preferred;
    @JsonKey(name: '_preferred') PrimitiveElement? preferredElement,

    /// [language] Human language that the name is written in.;
    List<CodeableConcept>? language,

    /// [domain] The use context of this name for example if there is a different name a drug active ingredient as opposed to a food colour additive.;
    List<CodeableConcept>? domain,

    /// [jurisdiction] The jurisdiction where this name applies.;
    List<CodeableConcept>? jurisdiction,

    /// [synonym] A synonym of this particular name, by which the substance is also known.;
    List<SubstanceDefinitionName>? synonym,

    /// [translation] A translation for this name into another human language.;
    List<SubstanceDefinitionName>? translation,

    /// [official] Details of the official nature of this name.;
    List<SubstanceDefinitionOfficial>? official,

    /// [source] Supporting literature.;
    List<Reference>? source,
  }) = _SubstanceDefinitionName;

  @override
  String get fhirType => 'SubstanceDefinitionName';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubstanceDefinitionName.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinitionName.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinitionName.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinitionName cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionName.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinitionNameFromJson(json);

  /// Acts like a constructor, returns a [SubstanceDefinitionName], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubstanceDefinitionName.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinitionNameFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [SubstanceDefinitionOfficial] The detailed description of a substance, typically at a level beyond what is used for prescribing.
@freezed

/// [SubstanceDefinitionOfficial] The detailed description of a substance, typically at a level beyond what is used for prescribing.
@freezed
class SubstanceDefinitionOfficial extends BackboneElement
    with _$SubstanceDefinitionOfficial {
  /// [SubstanceDefinitionOfficial] The detailed description of a substance, typically at a level beyond what is used for prescribing.
  SubstanceDefinitionOfficial._();

  /// [SubstanceDefinitionOfficial] The detailed description of a substance, typically at a level beyond what is used for prescribing.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [authority] Which authority uses this official name.;
  ///
  /// [status] The status of the official name, for example 'draft', 'active', 'retired'.;
  ///
  /// [date] Date of the official name change.;
  ///
  /// [dateElement] (_date): Extensions for date;
  const factory SubstanceDefinitionOfficial({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [authority] Which authority uses this official name.;
    CodeableConcept? authority,

    /// [status] The status of the official name, for example 'draft', 'active', 'retired'.;
    CodeableConcept? status,

    /// [date] Date of the official name change.;
    FhirDateTime? date,

    /// [dateElement] (_date): Extensions for date;
    @JsonKey(name: '_date') PrimitiveElement? dateElement,
  }) = _SubstanceDefinitionOfficial;

  @override
  String get fhirType => 'SubstanceDefinitionOfficial';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubstanceDefinitionOfficial.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinitionOfficial.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinitionOfficial.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinitionOfficial cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionOfficial.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinitionOfficialFromJson(json);

  /// Acts like a constructor, returns a [SubstanceDefinitionOfficial], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubstanceDefinitionOfficial.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinitionOfficialFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [SubstanceDefinitionRelationship] The detailed description of a substance, typically at a level beyond what is used for prescribing.
@freezed

/// [SubstanceDefinitionRelationship] The detailed description of a substance, typically at a level beyond what is used for prescribing.
@freezed
class SubstanceDefinitionRelationship extends BackboneElement
    with _$SubstanceDefinitionRelationship {
  /// [SubstanceDefinitionRelationship] The detailed description of a substance, typically at a level beyond what is used for prescribing.
  SubstanceDefinitionRelationship._();

  /// [SubstanceDefinitionRelationship] The detailed description of a substance, typically at a level beyond what is used for prescribing.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [substanceDefinitionReference] A pointer to another substance, as a resource or just a representational code.;
  ///
  /// [substanceDefinitionCodeableConcept] A pointer to another substance, as a resource or just a representational code.;
  ///
  /// [type] For example "salt to parent", "active moiety", "starting material", "polymorph", "impurity of".;
  ///
  /// [isDefining] For example where an enzyme strongly bonds with a particular substance, this is a defining relationship for that enzyme, out of several possible substance relationships.;
  ///
  /// [isDefiningElement] (_isDefining): Extensions for isDefining;
  ///
  /// [amountQuantity] A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.;
  ///
  /// [amountRatio] A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.;
  ///
  /// [amountString] A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.;
  ///
  /// [amountStringElement] (_amountString): Extensions for amountString;
  ///
  /// [ratioHighLimitAmount] For use when the numeric has an uncertain range.;
  ///
  /// [comparator] An operator for the amount, for example "average", "approximately", "less than".;
  ///
  /// [source] Supporting literature.;
  const factory SubstanceDefinitionRelationship({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [substanceDefinitionReference] A pointer to another substance, as a resource or just a representational code.;
    Reference? substanceDefinitionReference,

    /// [substanceDefinitionCodeableConcept] A pointer to another substance, as a resource or just a representational code.;
    CodeableConcept? substanceDefinitionCodeableConcept,

    /// [type] For example "salt to parent", "active moiety", "starting material", "polymorph", "impurity of".;
    required CodeableConcept type,

    /// [isDefining] For example where an enzyme strongly bonds with a particular substance, this is a defining relationship for that enzyme, out of several possible substance relationships.;
    FhirBoolean? isDefining,

    /// [isDefiningElement] (_isDefining): Extensions for isDefining;
    @JsonKey(name: '_isDefining') PrimitiveElement? isDefiningElement,

    /// [amountQuantity] A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.;
    Quantity? amountQuantity,

    /// [amountRatio] A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.;
    Ratio? amountRatio,

    /// [amountString] A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.;
    FhirMarkdown? amountString,

    /// [amountStringElement] (_amountString): Extensions for amountString;
    @JsonKey(name: '_amountString') PrimitiveElement? amountStringElement,

    /// [ratioHighLimitAmount] For use when the numeric has an uncertain range.;
    Ratio? ratioHighLimitAmount,

    /// [comparator] An operator for the amount, for example "average", "approximately", "less than".;
    CodeableConcept? comparator,

    /// [source] Supporting literature.;
    List<Reference>? source,
  }) = _SubstanceDefinitionRelationship;

  @override
  String get fhirType => 'SubstanceDefinitionRelationship';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubstanceDefinitionRelationship.fromYaml(dynamic yaml) => yaml
          is String
      ? SubstanceDefinitionRelationship.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinitionRelationship.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinitionRelationship cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionRelationship.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinitionRelationshipFromJson(json);

  /// Acts like a constructor, returns a [SubstanceDefinitionRelationship], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubstanceDefinitionRelationship.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinitionRelationshipFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

@freezed
@freezed
class SubstanceDefinitionSourceMaterial extends BackboneElement
    with _$SubstanceDefinitionSourceMaterial {
  SubstanceDefinitionSourceMaterial._();

  /// [SubstanceDefinitionSourceMaterial] The detailed description of a substance, typically at a level beyond what is used for prescribing.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [type] A classification that provides the origin of the raw material. Example: cat hair would be an Animal source type.;
  ///
  /// [genus] The genus of an organism, typically referring to the Latin epithet of the genus element of the plant/animal scientific name.;
  ///
  /// [species] The species of an organism, typically referring to the Latin epithet of the species of the plant/animal.;
  ///
  /// [part_] An anatomical origin of the source material within an organism.;
  ///
  /// [countryOfOrigin] The country or countries where the material is harvested.;
  const factory SubstanceDefinitionSourceMaterial({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [type] A classification that provides the origin of the raw material. Example: cat hair would be an Animal source type.;
    CodeableConcept? type,

    /// [genus] The genus of an organism, typically referring to the Latin epithet of the genus element of the plant/animal scientific name.;
    CodeableConcept? genus,

    /// [species] The species of an organism, typically referring to the Latin epithet of the species of the plant/animal.;
    CodeableConcept? species,

    /// [part_] An anatomical origin of the source material within an organism.;
    @JsonKey(name: 'part') CodeableConcept? part_,

    /// [countryOfOrigin] The country or countries where the material is harvested.;
    List<CodeableConcept>? countryOfOrigin,
  }) = _SubstanceDefinitionSourceMaterial;

  @override
  String get fhirType => 'SubstanceDefinitionSourceMaterial';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubstanceDefinitionSourceMaterial.fromYaml(dynamic yaml) => yaml
          is String
      ? SubstanceDefinitionSourceMaterial.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinitionSourceMaterial.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinitionSourceMaterial cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionSourceMaterial.fromJson(
          Map<String, dynamic> json) =>
      _$SubstanceDefinitionSourceMaterialFromJson(json);

  /// Acts like a constructor, returns a [SubstanceDefinitionSourceMaterial], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubstanceDefinitionSourceMaterial.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinitionSourceMaterialFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
