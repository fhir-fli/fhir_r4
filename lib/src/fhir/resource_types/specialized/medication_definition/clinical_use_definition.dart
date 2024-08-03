// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'clinical_use_definition.freezed.dart';
part 'clinical_use_definition.g.dart';

/// [ClinicalUseDefinition] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
@freezed
class ClinicalUseDefinition extends DomainResource
    with _$ClinicalUseDefinition {
  /// [ClinicalUseDefinition] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
  ClinicalUseDefinition._();

  /// [ClinicalUseDefinition] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.

  ///
  /// [resourceType] This is a ClinicalUseDefinition resource;
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
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [identifier] Business identifier for this issue.;
  ///
  /// [type] indication | contraindication | interaction | undesirable-effect | warning.;
  ///
  /// [typeElement] (_type): Extensions for type;
  ///
  /// [category] A categorisation of the issue, primarily for dividing warnings into subject heading areas such as "Pregnancy and Lactation", "Overdose", "Effects on Ability to Drive and Use Machines".;
  ///
  /// [subject] The medication or procedure for which this is an indication.;
  ///
  /// [status] Whether this is a current issue or one that has been retired etc.;
  ///
  /// [contraindication] Specifics for when this is a contraindication.;
  ///
  /// [indication] Specifics for when this is an indication.;
  ///
  /// [interaction] Specifics for when this is an interaction.;
  ///
  /// [population] The population group to which this applies.;
  ///
  /// [undesirableEffect] Describe the possible undesirable effects (negative outcomes) from the use of the medicinal product as treatment.;
  ///
  /// [warning] A critical piece of information about environmental, health or physical risks or hazards that serve as caution to the user. For example 'Do not operate heavy machinery', 'May cause drowsiness', or 'Get medical advice/attention if you feel unwell'.;
  const factory ClinicalUseDefinition({
    /// [resourceType] This is a ClinicalUseDefinition resource;
    @Default(R4ResourceType.ClinicalUseDefinition) R4ResourceType resourceType,

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

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [identifier] Business identifier for this issue.;
    List<Identifier>? identifier,

    /// [type] indication | contraindication | interaction | undesirable-effect | warning.;
    FhirCode? type,

    /// [typeElement] (_type): Extensions for type;
    @JsonKey(name: '_type') PrimitiveElement? typeElement,

    /// [category] A categorisation of the issue, primarily for dividing warnings into subject heading areas such as "Pregnancy and Lactation", "Overdose", "Effects on Ability to Drive and Use Machines".;
    List<CodeableConcept>? category,

    /// [subject] The medication or procedure for which this is an indication.;
    List<Reference>? subject,

    /// [status] Whether this is a current issue or one that has been retired etc.;
    CodeableConcept? status,

    /// [contraindication] Specifics for when this is a contraindication.;
    ClinicalUseDefinitionContraindication? contraindication,

    /// [indication] Specifics for when this is an indication.;
    ClinicalUseDefinitionIndication? indication,

    /// [interaction] Specifics for when this is an interaction.;
    ClinicalUseDefinitionInteraction? interaction,

    /// [population] The population group to which this applies.;
    List<Reference>? population,

    /// [undesirableEffect] Describe the possible undesirable effects (negative outcomes) from the use of the medicinal product as treatment.;
    ClinicalUseDefinitionUndesirableEffect? undesirableEffect,

    /// [warning] A critical piece of information about environmental, health or physical risks or hazards that serve as caution to the user. For example 'Do not operate heavy machinery', 'May cause drowsiness', or 'Get medical advice/attention if you feel unwell'.;
    ClinicalUseDefinitionWarning? warning,
  }) = _ClinicalUseDefinition;

  @override
  String get fhirType => 'ClinicalUseDefinition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClinicalUseDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ClinicalUseDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalUseDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalUseDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinition.fromJson(Map<String, dynamic> json) =>
      _$ClinicalUseDefinitionFromJson(json);

  /// Acts like a constructor, returns a [ClinicalUseDefinition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClinicalUseDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalUseDefinitionFromJson(json);
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

@freezed
@freezed
class ClinicalUseDefinitionContraindication extends BackboneElement
    with _$ClinicalUseDefinitionContraindication {
  ClinicalUseDefinitionContraindication._();

  /// [ClinicalUseDefinitionContraindication] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [diseaseSymptomProcedure] The situation that is being documented as contraindicating against this item.;
  ///
  /// [diseaseStatus] The status of the disease or symptom for the contraindication, for example "chronic" or "metastatic".;
  ///
  /// [comorbidity] A comorbidity (concurrent condition) or coinfection.;
  ///
  /// [indication] The indication which this is a contraidication for.;
  ///
  /// [otherTherapy] Information about the use of the medicinal product in relation to other therapies described as part of the contraindication.;
  const factory ClinicalUseDefinitionContraindication({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [diseaseSymptomProcedure] The situation that is being documented as contraindicating against this item.;
    CodeableReference? diseaseSymptomProcedure,

    /// [diseaseStatus] The status of the disease or symptom for the contraindication, for example "chronic" or "metastatic".;
    CodeableReference? diseaseStatus,

    /// [comorbidity] A comorbidity (concurrent condition) or coinfection.;
    List<CodeableReference>? comorbidity,

    /// [indication] The indication which this is a contraidication for.;
    List<Reference>? indication,

    /// [otherTherapy] Information about the use of the medicinal product in relation to other therapies described as part of the contraindication.;
    List<ClinicalUseDefinitionOtherTherapy>? otherTherapy,
  }) = _ClinicalUseDefinitionContraindication;

  @override
  String get fhirType => 'ClinicalUseDefinitionContraindication';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClinicalUseDefinitionContraindication.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalUseDefinitionContraindication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalUseDefinitionContraindication.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalUseDefinitionContraindication cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionContraindication.fromJson(
          Map<String, dynamic> json) =>
      _$ClinicalUseDefinitionContraindicationFromJson(json);

  /// Acts like a constructor, returns a [ClinicalUseDefinitionContraindication], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClinicalUseDefinitionContraindication.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalUseDefinitionContraindicationFromJson(json);
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
class ClinicalUseDefinitionOtherTherapy extends BackboneElement
    with _$ClinicalUseDefinitionOtherTherapy {
  ClinicalUseDefinitionOtherTherapy._();

  /// [ClinicalUseDefinitionOtherTherapy] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [relationshipType] The type of relationship between the medicinal product indication or contraindication and another therapy.;
  ///
  /// [therapy] Reference to a specific medication (active substance, medicinal product or class of products) as part of an indication or contraindication.;
  const factory ClinicalUseDefinitionOtherTherapy({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [relationshipType] The type of relationship between the medicinal product indication or contraindication and another therapy.;
    required CodeableConcept relationshipType,

    /// [therapy] Reference to a specific medication (active substance, medicinal product or class of products) as part of an indication or contraindication.;
    required CodeableReference therapy,
  }) = _ClinicalUseDefinitionOtherTherapy;

  @override
  String get fhirType => 'ClinicalUseDefinitionOtherTherapy';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClinicalUseDefinitionOtherTherapy.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalUseDefinitionOtherTherapy.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalUseDefinitionOtherTherapy.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalUseDefinitionOtherTherapy cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionOtherTherapy.fromJson(
          Map<String, dynamic> json) =>
      _$ClinicalUseDefinitionOtherTherapyFromJson(json);

  /// Acts like a constructor, returns a [ClinicalUseDefinitionOtherTherapy], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClinicalUseDefinitionOtherTherapy.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalUseDefinitionOtherTherapyFromJson(json);
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

/// [ClinicalUseDefinitionIndication] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
@freezed

/// [ClinicalUseDefinitionIndication] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
@freezed
class ClinicalUseDefinitionIndication extends BackboneElement
    with _$ClinicalUseDefinitionIndication {
  /// [ClinicalUseDefinitionIndication] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
  ClinicalUseDefinitionIndication._();

  /// [ClinicalUseDefinitionIndication] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [diseaseSymptomProcedure] The situation that is being documented as an indicaton for this item.;
  ///
  /// [diseaseStatus] The status of the disease or symptom for the indication, for example "chronic" or "metastatic".;
  ///
  /// [comorbidity] A comorbidity (concurrent condition) or coinfection as part of the indication.;
  ///
  /// [intendedEffect] The intended effect, aim or strategy to be achieved.;
  ///
  /// [durationRange] Timing or duration information, that may be associated with use with the indicated condition e.g. Adult patients suffering from myocardial infarction (from a few days until less than 35 days), ischaemic stroke (from 7 days until less than 6 months).;
  ///
  /// [durationString] Timing or duration information, that may be associated with use with the indicated condition e.g. Adult patients suffering from myocardial infarction (from a few days until less than 35 days), ischaemic stroke (from 7 days until less than 6 months).;
  ///
  /// [durationStringElement] (_durationString): Extensions for durationString;
  ///
  /// [undesirableEffect] An unwanted side effect or negative outcome that may happen if you use the drug (or other subject of this resource) for this indication.;
  ///
  /// [otherTherapy] Information about the use of the medicinal product in relation to other therapies described as part of the indication.;
  const factory ClinicalUseDefinitionIndication({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [diseaseSymptomProcedure] The situation that is being documented as an indicaton for this item.;
    CodeableReference? diseaseSymptomProcedure,

    /// [diseaseStatus] The status of the disease or symptom for the indication, for example "chronic" or "metastatic".;
    CodeableReference? diseaseStatus,

    /// [comorbidity] A comorbidity (concurrent condition) or coinfection as part of the indication.;
    List<CodeableReference>? comorbidity,

    /// [intendedEffect] The intended effect, aim or strategy to be achieved.;
    CodeableReference? intendedEffect,

    /// [durationRange] Timing or duration information, that may be associated with use with the indicated condition e.g. Adult patients suffering from myocardial infarction (from a few days until less than 35 days), ischaemic stroke (from 7 days until less than 6 months).;
    Range? durationRange,

    /// [durationString] Timing or duration information, that may be associated with use with the indicated condition e.g. Adult patients suffering from myocardial infarction (from a few days until less than 35 days), ischaemic stroke (from 7 days until less than 6 months).;
    FhirMarkdown? durationString,

    /// [durationStringElement] (_durationString): Extensions for durationString;
    @JsonKey(name: '_durationString') PrimitiveElement? durationStringElement,

    /// [undesirableEffect] An unwanted side effect or negative outcome that may happen if you use the drug (or other subject of this resource) for this indication.;
    List<Reference>? undesirableEffect,

    /// [otherTherapy] Information about the use of the medicinal product in relation to other therapies described as part of the indication.;
    List<ClinicalUseDefinitionOtherTherapy>? otherTherapy,
  }) = _ClinicalUseDefinitionIndication;

  @override
  String get fhirType => 'ClinicalUseDefinitionIndication';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClinicalUseDefinitionIndication.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalUseDefinitionIndication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalUseDefinitionIndication.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalUseDefinitionIndication cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionIndication.fromJson(Map<String, dynamic> json) =>
      _$ClinicalUseDefinitionIndicationFromJson(json);

  /// Acts like a constructor, returns a [ClinicalUseDefinitionIndication], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClinicalUseDefinitionIndication.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalUseDefinitionIndicationFromJson(json);
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

/// [ClinicalUseDefinitionInteraction] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
@freezed

/// [ClinicalUseDefinitionInteraction] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
@freezed
class ClinicalUseDefinitionInteraction extends BackboneElement
    with _$ClinicalUseDefinitionInteraction {
  /// [ClinicalUseDefinitionInteraction] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
  ClinicalUseDefinitionInteraction._();

  /// [ClinicalUseDefinitionInteraction] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [interactant] The specific medication, food, substance or laboratory test that interacts.;
  ///
  /// [type] The type of the interaction e.g. drug-drug interaction, drug-food interaction, drug-lab test interaction.;
  ///
  /// [effect] The effect of the interaction, for example "reduced gastric absorption of primary medication".;
  ///
  /// [incidence] The incidence of the interaction, e.g. theoretical, observed.;
  ///
  /// [management] Actions for managing the interaction.;
  const factory ClinicalUseDefinitionInteraction({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [interactant] The specific medication, food, substance or laboratory test that interacts.;
    List<ClinicalUseDefinitionInteractant>? interactant,

    /// [type] The type of the interaction e.g. drug-drug interaction, drug-food interaction, drug-lab test interaction.;
    CodeableConcept? type,

    /// [effect] The effect of the interaction, for example "reduced gastric absorption of primary medication".;
    CodeableReference? effect,

    /// [incidence] The incidence of the interaction, e.g. theoretical, observed.;
    CodeableConcept? incidence,

    /// [management] Actions for managing the interaction.;
    List<CodeableConcept>? management,
  }) = _ClinicalUseDefinitionInteraction;

  @override
  String get fhirType => 'ClinicalUseDefinitionInteraction';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClinicalUseDefinitionInteraction.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalUseDefinitionInteraction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalUseDefinitionInteraction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalUseDefinitionInteraction cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionInteraction.fromJson(
          Map<String, dynamic> json) =>
      _$ClinicalUseDefinitionInteractionFromJson(json);

  /// Acts like a constructor, returns a [ClinicalUseDefinitionInteraction], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClinicalUseDefinitionInteraction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalUseDefinitionInteractionFromJson(json);
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

/// [ClinicalUseDefinitionInteractant] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
@freezed

/// [ClinicalUseDefinitionInteractant] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
@freezed
class ClinicalUseDefinitionInteractant extends BackboneElement
    with _$ClinicalUseDefinitionInteractant {
  /// [ClinicalUseDefinitionInteractant] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
  ClinicalUseDefinitionInteractant._();

  /// [ClinicalUseDefinitionInteractant] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [itemReference] The specific medication, food or laboratory test that interacts.;
  ///
  /// [itemCodeableConcept] The specific medication, food or laboratory test that interacts.;
  const factory ClinicalUseDefinitionInteractant({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [itemReference] The specific medication, food or laboratory test that interacts.;
    Reference? itemReference,

    /// [itemCodeableConcept] The specific medication, food or laboratory test that interacts.;
    CodeableConcept? itemCodeableConcept,
  }) = _ClinicalUseDefinitionInteractant;

  @override
  String get fhirType => 'ClinicalUseDefinitionInteractant';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClinicalUseDefinitionInteractant.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalUseDefinitionInteractant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalUseDefinitionInteractant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalUseDefinitionInteractant cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionInteractant.fromJson(
          Map<String, dynamic> json) =>
      _$ClinicalUseDefinitionInteractantFromJson(json);

  /// Acts like a constructor, returns a [ClinicalUseDefinitionInteractant], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClinicalUseDefinitionInteractant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalUseDefinitionInteractantFromJson(json);
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
class ClinicalUseDefinitionUndesirableEffect extends BackboneElement
    with _$ClinicalUseDefinitionUndesirableEffect {
  ClinicalUseDefinitionUndesirableEffect._();

  /// [ClinicalUseDefinitionUndesirableEffect] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [symptomConditionEffect] The situation in which the undesirable effect may manifest.;
  ///
  /// [classification] High level classification of the effect.;
  ///
  /// [frequencyOfOccurrence] How often the effect is seen.;
  const factory ClinicalUseDefinitionUndesirableEffect({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [symptomConditionEffect] The situation in which the undesirable effect may manifest.;
    CodeableReference? symptomConditionEffect,

    /// [classification] High level classification of the effect.;
    CodeableConcept? classification,

    /// [frequencyOfOccurrence] How often the effect is seen.;
    CodeableConcept? frequencyOfOccurrence,
  }) = _ClinicalUseDefinitionUndesirableEffect;

  @override
  String get fhirType => 'ClinicalUseDefinitionUndesirableEffect';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClinicalUseDefinitionUndesirableEffect.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalUseDefinitionUndesirableEffect.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalUseDefinitionUndesirableEffect.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalUseDefinitionUndesirableEffect cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionUndesirableEffect.fromJson(
          Map<String, dynamic> json) =>
      _$ClinicalUseDefinitionUndesirableEffectFromJson(json);

  /// Acts like a constructor, returns a [ClinicalUseDefinitionUndesirableEffect], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClinicalUseDefinitionUndesirableEffect.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalUseDefinitionUndesirableEffectFromJson(json);
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

/// [ClinicalUseDefinitionWarning] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
@freezed

/// [ClinicalUseDefinitionWarning] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
@freezed
class ClinicalUseDefinitionWarning extends BackboneElement
    with _$ClinicalUseDefinitionWarning {
  /// [ClinicalUseDefinitionWarning] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
  ClinicalUseDefinitionWarning._();

  /// [ClinicalUseDefinitionWarning] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [description] A textual definition of this warning, with formatting.;
  ///
  /// [descriptionElement] (_description): Extensions for description;
  ///
  /// [code] A coded or unformatted textual definition of this warning.;
  const factory ClinicalUseDefinitionWarning({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [description] A textual definition of this warning, with formatting.;
    FhirMarkdown? description,

    /// [descriptionElement] (_description): Extensions for description;
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [code] A coded or unformatted textual definition of this warning.;
    CodeableConcept? code,
  }) = _ClinicalUseDefinitionWarning;

  @override
  String get fhirType => 'ClinicalUseDefinitionWarning';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClinicalUseDefinitionWarning.fromYaml(dynamic yaml) => yaml is String
      ? ClinicalUseDefinitionWarning.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalUseDefinitionWarning.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalUseDefinitionWarning cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionWarning.fromJson(Map<String, dynamic> json) =>
      _$ClinicalUseDefinitionWarningFromJson(json);

  /// Acts like a constructor, returns a [ClinicalUseDefinitionWarning], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClinicalUseDefinitionWarning.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalUseDefinitionWarningFromJson(json);
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
