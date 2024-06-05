// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'medication_knowledge.freezed.dart';
part 'medication_knowledge.g.dart';

/// [MedicationKnowledge] Information about a medication that is used to
@freezed
class MedicationKnowledge with _$MedicationKnowledge implements DomainResource {
  /// [MedicationKnowledge] Information about a medication that is used to
  const MedicationKnowledge._();

  /// [MedicationKnowledge] Information about a medication that is used to
  ///  support knowledge.
  ///
  /// [resourceType] This is a MedicationKnowledge resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [code] A code that specifies this medication, or a textual description if
  /// no code is available. Usage note: This could be a standard medication code
  /// such as a code from RxNorm, SNOMED CT, IDMP etc. It could also be a
  /// national or local formulary code, optionally with translations to other
  ///  code systems.
  ///
  /// [status] A code to indicate if the medication is in active use.  The
  /// status refers to the validity about the information of the medication and
  ///  not to its medicinal properties.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [manufacturer] Describes the details of the manufacturer of the
  /// medication product.  This is not intended to represent the distributor of
  ///  a medication product.
  ///
  /// [doseForm] Describes the form of the item.  Powder; tablets; capsule.
  ///
  /// [amount] Specific amount of the drug in the packaged product.  For
  /// example, when specifying a product that has the same strength (For
  /// example, Insulin glargine 100 unit per mL solution for injection), this
  /// attribute provides additional clarification of the package amount (For
  ///  example, 3 mL, 10mL, etc.).
  ///
  /// [synonym] Additional names for a medication, for example, the name(s)
  /// given to a medication in different countries.  For example, acetaminophen
  ///  and paracetamol or salbutamol and albuterol.
  ///
  /// [synonymElement] Extensions for synonym
  ///
  /// [relatedMedicationKnowledge] Associated or related knowledge about a
  ///  medication.
  ///
  /// [associatedMedication] Associated or related medications.  For example,
  /// if the medication is a branded product (e.g. Crestor), this is the
  /// Therapeutic Moeity (e.g. Rosuvastatin) or if this is a generic medication
  ///  (e.g. Rosuvastatin), this would link to a branded product (e.g. Crestor).
  ///
  /// [productType] Category of the medication or product (e.g. branded
  ///  product, therapeutic moeity, generic product, innovator product, etc.).
  ///
  /// [monograph] Associated documentation about the medication.
  ///
  /// [ingredient] Identifies a particular constituent of interest in the
  ///  product.
  ///
  /// [preparationInstruction] The instructions for preparing the medication.
  ///
  /// [preparationInstructionElement] Extensions for preparationInstruction
  ///
  /// [intendedRoute] The intended or approved route of administration.
  ///
  /// [cost] The price of the medication.
  ///
  /// [monitoringProgram] The program under which the medication is reviewed.
  ///
  /// [administrationGuidelines] Guidelines for the administration of the
  ///  medication.
  ///
  /// [medicineClassification] Categorization of the medication within a
  ///  formulary or classification system.
  ///
  /// [packaging] Information that only applies to packages (not products).
  ///
  /// [drugCharacteristic] Specifies descriptive properties of the medicine,
  ///  such as color, shape, imprints, etc.
  ///
  /// [contraindication] Potential clinical issue with or between medication(s)
  /// (for example, drug-drug interaction, drug-disease contraindication,
  ///  drug-allergy interaction, etc.).
  ///
  /// [regulatory] Regulatory information about a medication.
  ///
  /// [kinetics] The time course of drug absorption, distribution, metabolism
  ///  and excretion of a medication from the body.
  const factory MedicationKnowledge({
    @Default(R4ResourceType.MedicationKnowledge)
    @JsonKey(unknownEnumValue: R4ResourceType.MedicationKnowledge)

    /// [resourceType] This is a MedicationKnowledge resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the resource and that modifies the
    /// understanding of the element that contains it and/or the understanding of
    /// the containing element's descendants. Usually modifier elements provide
    /// negation or qualification. To make the use of extensions safe and
    /// manageable, there is a strict set of governance applied to the definition
    /// and use of extensions. Though any implementer is allowed to define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [code] A code that specifies this medication, or a textual description if
    /// no code is available. Usage note: This could be a standard medication code
    /// such as a code from RxNorm, SNOMED CT, IDMP etc. It could also be a
    /// national or local formulary code, optionally with translations to other
    ///  code systems.
    CodeableConcept? code,

    /// [status] A code to indicate if the medication is in active use.  The
    /// status refers to the validity about the information of the medication and
    ///  not to its medicinal properties.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [manufacturer] Describes the details of the manufacturer of the
    /// medication product.  This is not intended to represent the distributor of
    ///  a medication product.
    Reference? manufacturer,

    /// [doseForm] Describes the form of the item.  Powder; tablets; capsule.
    CodeableConcept? doseForm,

    /// [amount] Specific amount of the drug in the packaged product.  For
    /// example, when specifying a product that has the same strength (For
    /// example, Insulin glargine 100 unit per mL solution for injection), this
    /// attribute provides additional clarification of the package amount (For
    ///  example, 3 mL, 10mL, etc.).
    Quantity? amount,

    /// [synonym] Additional names for a medication, for example, the name(s)
    /// given to a medication in different countries.  For example, acetaminophen
    ///  and paracetamol or salbutamol and albuterol.
    List<String>? synonym,

    /// [synonymElement] Extensions for synonym
    @JsonKey(name: '_synonym') List<Element?>? synonymElement,
    List<MedicationKnowledgeRelatedMedicationKnowledge>?

        /// [relatedMedicationKnowledge] Associated or related knowledge about a
        ///  medication.
        relatedMedicationKnowledge,

    /// [associatedMedication] Associated or related medications.  For example,
    /// if the medication is a branded product (e.g. Crestor), this is the
    /// Therapeutic Moeity (e.g. Rosuvastatin) or if this is a generic medication
    ///  (e.g. Rosuvastatin), this would link to a branded product (e.g. Crestor).
    List<Reference>? associatedMedication,

    /// [productType] Category of the medication or product (e.g. branded
    ///  product, therapeutic moeity, generic product, innovator product, etc.).
    List<CodeableConcept>? productType,

    /// [monograph] Associated documentation about the medication.
    List<MedicationKnowledgeMonograph>? monograph,

    /// [ingredient] Identifies a particular constituent of interest in the
    ///  product.
    List<MedicationKnowledgeIngredient>? ingredient,

    /// [preparationInstruction] The instructions for preparing the medication.
    FhirMarkdown? preparationInstruction,
    @JsonKey(name: '_preparationInstruction')

    /// [preparationInstructionElement] Extensions for preparationInstruction
    PrimitiveElement? preparationInstructionElement,

    /// [intendedRoute] The intended or approved route of administration.
    List<CodeableConcept>? intendedRoute,

    /// [cost] The price of the medication.
    List<MedicationKnowledgeCost>? cost,

    /// [monitoringProgram] The program under which the medication is reviewed.
    List<MedicationKnowledgeMonitoringProgram>? monitoringProgram,

    /// [administrationGuidelines] Guidelines for the administration of the
    ///  medication.
    List<MedicationKnowledgeAdministrationGuidelines>? administrationGuidelines,

    /// [medicineClassification] Categorization of the medication within a
    ///  formulary or classification system.
    List<MedicationKnowledgeMedicineClassification>? medicineClassification,

    /// [packaging] Information that only applies to packages (not products).
    MedicationKnowledgePackaging? packaging,

    /// [drugCharacteristic] Specifies descriptive properties of the medicine,
    ///  such as color, shape, imprints, etc.
    List<MedicationKnowledgeDrugCharacteristic>? drugCharacteristic,

    /// [contraindication] Potential clinical issue with or between medication(s)
    /// (for example, drug-drug interaction, drug-disease contraindication,
    ///  drug-allergy interaction, etc.).
    List<Reference>? contraindication,

    /// [regulatory] Regulatory information about a medication.
    List<MedicationKnowledgeRegulatory>? regulatory,

    /// [kinetics] The time course of drug absorption, distribution, metabolism
    ///  and excretion of a medication from the body.
    List<MedicationKnowledgeKinetics>? kinetics,
  }) = _MedicationKnowledge;

  @override
  String get fhirType => 'MedicationKnowledge';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationKnowledge.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledge.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationKnowledge.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationKnowledge cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledge.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledgeFromJson(json);

  /// Acts like a constructor, returns a [MedicationKnowledge], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicationKnowledge.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationKnowledgeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
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
  Resource updateVersion({FhirMeta? oldMeta}) =>
      copyWith(meta: updateFhirMetaVersion(meta));
}

@freezed
@freezed
class MedicationKnowledgeRelatedMedicationKnowledge
    with _$MedicationKnowledgeRelatedMedicationKnowledge
    implements BackboneElement {
  const MedicationKnowledgeRelatedMedicationKnowledge._();

  /// [MedicationKnowledgeRelatedMedicationKnowledge] Information about a
  ///  medication that is used to support knowledge.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [type] The category of the associated medication knowledge reference.
  ///
  /// [reference] Associated documentation about the associated medication
  ///  knowledge.
  const factory MedicationKnowledgeRelatedMedicationKnowledge({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] The category of the associated medication knowledge reference.
    required CodeableConcept type,

    /// [reference] Associated documentation about the associated medication
    ///  knowledge.
    required List<Reference> reference,
  }) = _MedicationKnowledgeRelatedMedicationKnowledge;

  @override
  String get fhirType => 'MedicationKnowledgeRelatedMedicationKnowledge';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationKnowledgeRelatedMedicationKnowledge.fromYaml(
          dynamic yaml) =>
      yaml is String
          ? MedicationKnowledgeRelatedMedicationKnowledge.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
          : yaml is YamlMap
              ? MedicationKnowledgeRelatedMedicationKnowledge.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
              : throw ArgumentError(
                  'MedicationKnowledgeRelatedMedicationKnowledge cannot be constructed from input provided,'
                  ' it is neither a yaml string or a yaml map.');

  factory MedicationKnowledgeRelatedMedicationKnowledge.fromJson(
          Map<String, dynamic> json) =>
      _$MedicationKnowledgeRelatedMedicationKnowledgeFromJson(json);

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [MedicationKnowledgeMonograph] Information about a medication that is
@freezed

/// [MedicationKnowledgeMonograph] Information about a medication that is
@freezed
class MedicationKnowledgeMonograph
    with _$MedicationKnowledgeMonograph
    implements BackboneElement {
  /// [MedicationKnowledgeMonograph] Information about a medication that is
  const MedicationKnowledgeMonograph._();

  /// [MedicationKnowledgeMonograph] Information about a medication that is
  ///  used to support knowledge.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [type] The category of documentation about the medication. (e.g.
  ///  professional monograph, patient education monograph).
  ///
  /// [source] Associated documentation about the medication.
  const factory MedicationKnowledgeMonograph({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] The category of documentation about the medication. (e.g.
    ///  professional monograph, patient education monograph).
    CodeableConcept? type,

    /// [source] Associated documentation about the medication.
    Reference? source,
  }) = _MedicationKnowledgeMonograph;

  @override
  String get fhirType => 'MedicationKnowledgeMonograph';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationKnowledgeMonograph.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledgeMonograph.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationKnowledgeMonograph.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationKnowledgeMonograph cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeMonograph.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledgeMonographFromJson(json);

  /// Acts like a constructor, returns a [MedicationKnowledgeMonograph], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicationKnowledgeMonograph.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationKnowledgeMonographFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [MedicationKnowledgeIngredient] Information about a medication that is
@freezed

/// [MedicationKnowledgeIngredient] Information about a medication that is
@freezed
class MedicationKnowledgeIngredient
    with _$MedicationKnowledgeIngredient
    implements BackboneElement {
  /// [MedicationKnowledgeIngredient] Information about a medication that is
  const MedicationKnowledgeIngredient._();

  /// [MedicationKnowledgeIngredient] Information about a medication that is
  ///  used to support knowledge.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [itemCodeableConcept] The actual ingredient - either a substance (simple
  ///  ingredient) or another medication.
  ///
  /// [itemReference] The actual ingredient - either a substance (simple
  ///  ingredient) or another medication.
  ///
  /// [isActive] Indication of whether this ingredient affects the therapeutic
  ///  action of the drug.
  ///
  /// [isActiveElement] Extensions for isActive
  ///
  /// [strength] Specifies how many (or how much) of the items there are in
  /// this Medication.  For example, 250 mg per tablet.  This is expressed as a
  ///  ratio where the numerator is 250mg and the denominator is 1 tablet.
  const factory MedicationKnowledgeIngredient({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [itemCodeableConcept] The actual ingredient - either a substance (simple
    ///  ingredient) or another medication.
    CodeableConcept? itemCodeableConcept,

    /// [itemReference] The actual ingredient - either a substance (simple
    ///  ingredient) or another medication.
    Reference? itemReference,

    /// [isActive] Indication of whether this ingredient affects the therapeutic
    ///  action of the drug.
    FhirBoolean? isActive,

    /// [isActiveElement] Extensions for isActive
    @JsonKey(name: '_isActive') PrimitiveElement? isActiveElement,

    /// [strength] Specifies how many (or how much) of the items there are in
    /// this Medication.  For example, 250 mg per tablet.  This is expressed as a
    ///  ratio where the numerator is 250mg and the denominator is 1 tablet.
    Ratio? strength,
  }) = _MedicationKnowledgeIngredient;

  @override
  String get fhirType => 'MedicationKnowledgeIngredient';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationKnowledgeIngredient.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledgeIngredient.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationKnowledgeIngredient.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationKnowledgeIngredient cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeIngredient.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledgeIngredientFromJson(json);

  /// Acts like a constructor, returns a [MedicationKnowledgeIngredient], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicationKnowledgeIngredient.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationKnowledgeIngredientFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [MedicationKnowledgeCost] Information about a medication that is used to
@freezed

/// [MedicationKnowledgeCost] Information about a medication that is used to
@freezed
class MedicationKnowledgeCost
    with _$MedicationKnowledgeCost
    implements BackboneElement {
  /// [MedicationKnowledgeCost] Information about a medication that is used to
  const MedicationKnowledgeCost._();

  /// [MedicationKnowledgeCost] Information about a medication that is used to
  ///  support knowledge.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [type] The category of the cost information.  For example, manufacturers'
  ///  cost, patient cost, claim reimbursement cost, actual acquisition cost.
  ///
  /// [source] The source or owner that assigns the price to the medication.
  ///
  /// [sourceElement] Extensions for source
  ///
  /// [cost] The price of the medication.
  const factory MedicationKnowledgeCost({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] The category of the cost information.  For example, manufacturers'
    ///  cost, patient cost, claim reimbursement cost, actual acquisition cost.
    required CodeableConcept type,

    /// [source] The source or owner that assigns the price to the medication.
    String? source,

    /// [sourceElement] Extensions for source
    @JsonKey(name: '_source') PrimitiveElement? sourceElement,

    /// [cost] The price of the medication.
    required Money cost,
  }) = _MedicationKnowledgeCost;

  @override
  String get fhirType => 'MedicationKnowledgeCost';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationKnowledgeCost.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledgeCost.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationKnowledgeCost.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationKnowledgeCost cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeCost.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledgeCostFromJson(json);

  /// Acts like a constructor, returns a [MedicationKnowledgeCost], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicationKnowledgeCost.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationKnowledgeCostFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

@freezed
@freezed
class MedicationKnowledgeMonitoringProgram
    with _$MedicationKnowledgeMonitoringProgram
    implements BackboneElement {
  const MedicationKnowledgeMonitoringProgram._();

  /// [MedicationKnowledgeMonitoringProgram] Information about a medication
  ///  that is used to support knowledge.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [type] Type of program under which the medication is monitored.
  ///
  /// [name] Name of the reviewing program.
  ///
  /// [nameElement] Extensions for name
  const factory MedicationKnowledgeMonitoringProgram({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] Type of program under which the medication is monitored.
    CodeableConcept? type,

    /// [name] Name of the reviewing program.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,
  }) = _MedicationKnowledgeMonitoringProgram;

  @override
  String get fhirType => 'MedicationKnowledgeMonitoringProgram';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationKnowledgeMonitoringProgram.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicationKnowledgeMonitoringProgram.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationKnowledgeMonitoringProgram.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationKnowledgeMonitoringProgram cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory MedicationKnowledgeMonitoringProgram.fromJson(
          Map<String, dynamic> json) =>
      _$MedicationKnowledgeMonitoringProgramFromJson(json);

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

@freezed
@freezed
class MedicationKnowledgeAdministrationGuidelines
    with _$MedicationKnowledgeAdministrationGuidelines
    implements BackboneElement {
  const MedicationKnowledgeAdministrationGuidelines._();

  /// [MedicationKnowledgeAdministrationGuidelines] Information about a
  ///  medication that is used to support knowledge.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [dosage] Dosage for the medication for the specific guidelines.
  ///
  /// [indicationCodeableConcept] Indication for use that apply to the specific
  ///  administration guidelines.
  ///
  /// [indicationReference] Indication for use that apply to the specific
  ///  administration guidelines.
  ///
  /// [patientCharacteristics] Characteristics of the patient that are relevant
  /// to the administration guidelines (for example, height, weight, gender,
  ///  etc.).
  const factory MedicationKnowledgeAdministrationGuidelines({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [dosage] Dosage for the medication for the specific guidelines.
    List<MedicationKnowledgeDosage>? dosage,

    /// [indicationCodeableConcept] Indication for use that apply to the specific
    ///  administration guidelines.
    CodeableConcept? indicationCodeableConcept,

    /// [indicationReference] Indication for use that apply to the specific
    ///  administration guidelines.
    Reference? indicationReference,

    /// [patientCharacteristics] Characteristics of the patient that are relevant
    /// to the administration guidelines (for example, height, weight, gender,
    ///  etc.).
    List<MedicationKnowledgePatientCharacteristics>? patientCharacteristics,
  }) = _MedicationKnowledgeAdministrationGuidelines;

  @override
  String get fhirType => 'MedicationKnowledgeAdministrationGuidelines';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationKnowledgeAdministrationGuidelines.fromYaml(dynamic yaml) =>
      yaml is String
          ? MedicationKnowledgeAdministrationGuidelines.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
          : yaml is YamlMap
              ? MedicationKnowledgeAdministrationGuidelines.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
              : throw ArgumentError(
                  'MedicationKnowledgeAdministrationGuidelines cannot be constructed from input provided,'
                  ' it is neither a yaml string or a yaml map.');

  factory MedicationKnowledgeAdministrationGuidelines.fromJson(
          Map<String, dynamic> json) =>
      _$MedicationKnowledgeAdministrationGuidelinesFromJson(json);

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [MedicationKnowledgeDosage] Information about a medication that is used
@freezed

/// [MedicationKnowledgeDosage] Information about a medication that is used
@freezed
class MedicationKnowledgeDosage
    with _$MedicationKnowledgeDosage
    implements BackboneElement {
  /// [MedicationKnowledgeDosage] Information about a medication that is used
  const MedicationKnowledgeDosage._();

  /// [MedicationKnowledgeDosage] Information about a medication that is used
  ///  to support knowledge.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [type] The type of dosage (for example, prophylaxis, maintenance,
  ///  therapeutic, etc.).
  ///
  /// [dosage] Dosage for the medication for the specific guidelines.
  const factory MedicationKnowledgeDosage({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] The type of dosage (for example, prophylaxis, maintenance,
    ///  therapeutic, etc.).
    required CodeableConcept type,

    /// [dosage] Dosage for the medication for the specific guidelines.
    required List<Dosage> dosage,
  }) = _MedicationKnowledgeDosage;

  @override
  String get fhirType => 'MedicationKnowledgeDosage';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationKnowledgeDosage.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledgeDosage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationKnowledgeDosage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationKnowledgeDosage cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeDosage.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledgeDosageFromJson(json);

  /// Acts like a constructor, returns a [MedicationKnowledgeDosage], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicationKnowledgeDosage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationKnowledgeDosageFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

@freezed
@freezed
class MedicationKnowledgePatientCharacteristics
    with _$MedicationKnowledgePatientCharacteristics
    implements BackboneElement {
  const MedicationKnowledgePatientCharacteristics._();

  /// [MedicationKnowledgePatientCharacteristics] Information about a
  ///  medication that is used to support knowledge.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [characteristicCodeableConcept] Specific characteristic that is relevant
  ///  to the administration guideline (e.g. height, weight, gender).
  ///
  /// [characteristicQuantity] Specific characteristic that is relevant to the
  ///  administration guideline (e.g. height, weight, gender).
  ///
  /// [value] The specific characteristic (e.g. height, weight, gender, etc.).
  ///
  /// [valueElement] Extensions for value
  const factory MedicationKnowledgePatientCharacteristics({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [characteristicCodeableConcept] Specific characteristic that is relevant
    ///  to the administration guideline (e.g. height, weight, gender).
    CodeableConcept? characteristicCodeableConcept,

    /// [characteristicQuantity] Specific characteristic that is relevant to the
    ///  administration guideline (e.g. height, weight, gender).
    Quantity? characteristicQuantity,

    /// [value] The specific characteristic (e.g. height, weight, gender, etc.).
    List<String>? value,

    /// [valueElement] Extensions for value
    @JsonKey(name: '_value') List<Element?>? valueElement,
  }) = _MedicationKnowledgePatientCharacteristics;

  @override
  String get fhirType => 'MedicationKnowledgePatientCharacteristics';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationKnowledgePatientCharacteristics.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicationKnowledgePatientCharacteristics.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationKnowledgePatientCharacteristics.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationKnowledgePatientCharacteristics cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory MedicationKnowledgePatientCharacteristics.fromJson(
          Map<String, dynamic> json) =>
      _$MedicationKnowledgePatientCharacteristicsFromJson(json);

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

@freezed
@freezed
class MedicationKnowledgeMedicineClassification
    with _$MedicationKnowledgeMedicineClassification
    implements BackboneElement {
  const MedicationKnowledgeMedicineClassification._();

  /// [MedicationKnowledgeMedicineClassification] Information about a
  ///  medication that is used to support knowledge.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [type] The type of category for the medication (for example, therapeutic
  ///  classification, therapeutic sub-classification).
  ///
  /// [classification] Specific category assigned to the medication (e.g.
  ///  anti-infective, anti-hypertensive, antibiotic, etc.).
  const factory MedicationKnowledgeMedicineClassification({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] The type of category for the medication (for example, therapeutic
    ///  classification, therapeutic sub-classification).
    required CodeableConcept type,

    /// [classification] Specific category assigned to the medication (e.g.
    ///  anti-infective, anti-hypertensive, antibiotic, etc.).
    List<CodeableConcept>? classification,
  }) = _MedicationKnowledgeMedicineClassification;

  @override
  String get fhirType => 'MedicationKnowledgeMedicineClassification';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationKnowledgeMedicineClassification.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicationKnowledgeMedicineClassification.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationKnowledgeMedicineClassification.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationKnowledgeMedicineClassification cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory MedicationKnowledgeMedicineClassification.fromJson(
          Map<String, dynamic> json) =>
      _$MedicationKnowledgeMedicineClassificationFromJson(json);

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [MedicationKnowledgePackaging] Information about a medication that is
@freezed

/// [MedicationKnowledgePackaging] Information about a medication that is
@freezed
class MedicationKnowledgePackaging
    with _$MedicationKnowledgePackaging
    implements BackboneElement {
  /// [MedicationKnowledgePackaging] Information about a medication that is
  const MedicationKnowledgePackaging._();

  /// [MedicationKnowledgePackaging] Information about a medication that is
  ///  used to support knowledge.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [type] A code that defines the specific type of packaging that the
  ///  medication can be found in (e.g. blister sleeve, tube, bottle).
  ///
  /// [quantity] The number of product units the package would contain if fully
  ///  loaded.
  const factory MedicationKnowledgePackaging({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] A code that defines the specific type of packaging that the
    ///  medication can be found in (e.g. blister sleeve, tube, bottle).
    CodeableConcept? type,

    /// [quantity] The number of product units the package would contain if fully
    ///  loaded.
    Quantity? quantity,
  }) = _MedicationKnowledgePackaging;

  @override
  String get fhirType => 'MedicationKnowledgePackaging';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationKnowledgePackaging.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledgePackaging.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationKnowledgePackaging.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationKnowledgePackaging cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgePackaging.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledgePackagingFromJson(json);

  /// Acts like a constructor, returns a [MedicationKnowledgePackaging], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicationKnowledgePackaging.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationKnowledgePackagingFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

@freezed
@freezed
class MedicationKnowledgeDrugCharacteristic
    with _$MedicationKnowledgeDrugCharacteristic
    implements BackboneElement {
  const MedicationKnowledgeDrugCharacteristic._();

  /// [MedicationKnowledgeDrugCharacteristic] Information about a medication
  ///  that is used to support knowledge.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [type] A code specifying which characteristic of the medicine is being
  ///  described (for example, colour, shape, imprint).
  ///
  /// [valueCodeableConcept] Description of the characteristic.
  ///
  /// [valueString] Description of the characteristic.
  ///
  /// [valueStringElement] Extensions for valueString
  ///
  /// [valueQuantity] Description of the characteristic.
  ///
  /// [valueBase64Binary] Description of the characteristic.
  ///
  /// [valueBase64BinaryElement] Extensions for valueBase64Binary
  const factory MedicationKnowledgeDrugCharacteristic({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] A code specifying which characteristic of the medicine is being
    ///  described (for example, colour, shape, imprint).
    CodeableConcept? type,

    /// [valueCodeableConcept] Description of the characteristic.
    CodeableConcept? valueCodeableConcept,

    /// [valueString] Description of the characteristic.
    String? valueString,

    /// [valueStringElement] Extensions for valueString
    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,

    /// [valueQuantity] Description of the characteristic.
    Quantity? valueQuantity,

    /// [valueBase64Binary] Description of the characteristic.
    FhirBase64Binary? valueBase64Binary,

    /// [valueBase64BinaryElement] Extensions for valueBase64Binary
    @JsonKey(name: '_valueBase64Binary')
    PrimitiveElement? valueBase64BinaryElement,
  }) = _MedicationKnowledgeDrugCharacteristic;

  @override
  String get fhirType => 'MedicationKnowledgeDrugCharacteristic';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationKnowledgeDrugCharacteristic.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicationKnowledgeDrugCharacteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationKnowledgeDrugCharacteristic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationKnowledgeDrugCharacteristic cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory MedicationKnowledgeDrugCharacteristic.fromJson(
          Map<String, dynamic> json) =>
      _$MedicationKnowledgeDrugCharacteristicFromJson(json);

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [MedicationKnowledgeRegulatory] Information about a medication that is
@freezed

/// [MedicationKnowledgeRegulatory] Information about a medication that is
@freezed
class MedicationKnowledgeRegulatory
    with _$MedicationKnowledgeRegulatory
    implements BackboneElement {
  /// [MedicationKnowledgeRegulatory] Information about a medication that is
  const MedicationKnowledgeRegulatory._();

  /// [MedicationKnowledgeRegulatory] Information about a medication that is
  ///  used to support knowledge.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [regulatoryAuthority] The authority that is specifying the regulations.
  ///
  /// [substitution] Specifies if changes are allowed when dispensing a
  ///  medication from a regulatory perspective.
  ///
  /// [schedule] Specifies the schedule of a medication in jurisdiction.
  ///
  /// [maxDispense] The maximum number of units of the medication that can be
  ///  dispensed in a period.
  const factory MedicationKnowledgeRegulatory({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [regulatoryAuthority] The authority that is specifying the regulations.
    required Reference regulatoryAuthority,

    /// [substitution] Specifies if changes are allowed when dispensing a
    ///  medication from a regulatory perspective.
    List<MedicationKnowledgeSubstitution>? substitution,

    /// [schedule] Specifies the schedule of a medication in jurisdiction.
    List<MedicationKnowledgeSchedule>? schedule,

    /// [maxDispense] The maximum number of units of the medication that can be
    ///  dispensed in a period.
    MedicationKnowledgeMaxDispense? maxDispense,
  }) = _MedicationKnowledgeRegulatory;

  @override
  String get fhirType => 'MedicationKnowledgeRegulatory';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationKnowledgeRegulatory.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledgeRegulatory.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationKnowledgeRegulatory.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationKnowledgeRegulatory cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeRegulatory.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledgeRegulatoryFromJson(json);

  /// Acts like a constructor, returns a [MedicationKnowledgeRegulatory], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicationKnowledgeRegulatory.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationKnowledgeRegulatoryFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [MedicationKnowledgeSubstitution] Information about a medication that is
@freezed

/// [MedicationKnowledgeSubstitution] Information about a medication that is
@freezed
class MedicationKnowledgeSubstitution
    with _$MedicationKnowledgeSubstitution
    implements BackboneElement {
  /// [MedicationKnowledgeSubstitution] Information about a medication that is
  const MedicationKnowledgeSubstitution._();

  /// [MedicationKnowledgeSubstitution] Information about a medication that is
  ///  used to support knowledge.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [type] Specifies the type of substitution allowed.
  ///
  /// [allowed] Specifies if regulation allows for changes in the medication
  ///  when dispensing.
  ///
  /// [allowedElement] Extensions for allowed
  const factory MedicationKnowledgeSubstitution({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] Specifies the type of substitution allowed.
    required CodeableConcept type,

    /// [allowed] Specifies if regulation allows for changes in the medication
    ///  when dispensing.
    FhirBoolean? allowed,

    /// [allowedElement] Extensions for allowed
    @JsonKey(name: '_allowed') PrimitiveElement? allowedElement,
  }) = _MedicationKnowledgeSubstitution;

  @override
  String get fhirType => 'MedicationKnowledgeSubstitution';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationKnowledgeSubstitution.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicationKnowledgeSubstitution.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationKnowledgeSubstitution.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationKnowledgeSubstitution cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeSubstitution.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledgeSubstitutionFromJson(json);

  /// Acts like a constructor, returns a [MedicationKnowledgeSubstitution], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicationKnowledgeSubstitution.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationKnowledgeSubstitutionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [MedicationKnowledgeSchedule] Information about a medication that is
@freezed

/// [MedicationKnowledgeSchedule] Information about a medication that is
@freezed
class MedicationKnowledgeSchedule
    with _$MedicationKnowledgeSchedule
    implements BackboneElement {
  /// [MedicationKnowledgeSchedule] Information about a medication that is
  const MedicationKnowledgeSchedule._();

  /// [MedicationKnowledgeSchedule] Information about a medication that is
  ///  used to support knowledge.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [schedule] Specifies the specific drug schedule.
  const factory MedicationKnowledgeSchedule({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [schedule] Specifies the specific drug schedule.
    required CodeableConcept schedule,
  }) = _MedicationKnowledgeSchedule;

  @override
  String get fhirType => 'MedicationKnowledgeSchedule';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationKnowledgeSchedule.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledgeSchedule.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationKnowledgeSchedule.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationKnowledgeSchedule cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeSchedule.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledgeScheduleFromJson(json);

  /// Acts like a constructor, returns a [MedicationKnowledgeSchedule], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicationKnowledgeSchedule.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationKnowledgeScheduleFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [MedicationKnowledgeMaxDispense] Information about a medication that is
@freezed

/// [MedicationKnowledgeMaxDispense] Information about a medication that is
@freezed
class MedicationKnowledgeMaxDispense
    with _$MedicationKnowledgeMaxDispense
    implements BackboneElement {
  /// [MedicationKnowledgeMaxDispense] Information about a medication that is
  const MedicationKnowledgeMaxDispense._();

  /// [MedicationKnowledgeMaxDispense] Information about a medication that is
  ///  used to support knowledge.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [quantity] The maximum number of units of the medication that can be
  ///  dispensed.
  ///
  /// [period] The period that applies to the maximum number of units.
  const factory MedicationKnowledgeMaxDispense({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [quantity] The maximum number of units of the medication that can be
    ///  dispensed.
    required Quantity quantity,

    /// [period] The period that applies to the maximum number of units.
    FhirDuration? period,
  }) = _MedicationKnowledgeMaxDispense;

  @override
  String get fhirType => 'MedicationKnowledgeMaxDispense';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationKnowledgeMaxDispense.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicationKnowledgeMaxDispense.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationKnowledgeMaxDispense.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationKnowledgeMaxDispense cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeMaxDispense.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledgeMaxDispenseFromJson(json);

  /// Acts like a constructor, returns a [MedicationKnowledgeMaxDispense], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicationKnowledgeMaxDispense.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationKnowledgeMaxDispenseFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [MedicationKnowledgeKinetics] Information about a medication that is
@freezed

/// [MedicationKnowledgeKinetics] Information about a medication that is
@freezed
class MedicationKnowledgeKinetics
    with _$MedicationKnowledgeKinetics
    implements BackboneElement {
  /// [MedicationKnowledgeKinetics] Information about a medication that is
  const MedicationKnowledgeKinetics._();

  /// [MedicationKnowledgeKinetics] Information about a medication that is
  ///  used to support knowledge.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [areaUnderCurve] The drug concentration measured at certain discrete
  ///  points in time.
  ///
  /// [lethalDose50] The median lethal dose of a drug.
  ///
  /// [halfLifePeriod] The time required for any specified property (e.g., the
  ///  concentration of a substance in the body) to decrease by half.
  const factory MedicationKnowledgeKinetics({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [areaUnderCurve] The drug concentration measured at certain discrete
    ///  points in time.
    List<Quantity>? areaUnderCurve,

    /// [lethalDose50] The median lethal dose of a drug.
    List<Quantity>? lethalDose50,

    /// [halfLifePeriod] The time required for any specified property (e.g., the
    ///  concentration of a substance in the body) to decrease by half.
    FhirDuration? halfLifePeriod,
  }) = _MedicationKnowledgeKinetics;

  @override
  String get fhirType => 'MedicationKnowledgeKinetics';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationKnowledgeKinetics.fromYaml(dynamic yaml) => yaml is String
      ? MedicationKnowledgeKinetics.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationKnowledgeKinetics.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationKnowledgeKinetics cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicationKnowledgeKinetics.fromJson(Map<String, dynamic> json) =>
      _$MedicationKnowledgeKineticsFromJson(json);

  /// Acts like a constructor, returns a [MedicationKnowledgeKinetics], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicationKnowledgeKinetics.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationKnowledgeKineticsFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
