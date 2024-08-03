// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'regulated_authorization.freezed.dart';
part 'regulated_authorization.g.dart';

/// [RegulatedAuthorization] Regulatory approval, clearance or licencing related to a regulated product, treatment, facility or activity that is cited in a guidance, regulation, rule or legislative act. An example is Market Authorization relating to a Medicinal Product.
@freezed
class RegulatedAuthorization extends DomainResource
    with _$RegulatedAuthorization {
  /// [RegulatedAuthorization] Regulatory approval, clearance or licencing related to a regulated product, treatment, facility or activity that is cited in a guidance, regulation, rule or legislative act. An example is Market Authorization relating to a Medicinal Product.
  RegulatedAuthorization._();

  /// [RegulatedAuthorization] Regulatory approval, clearance or licencing related to a regulated product, treatment, facility or activity that is cited in a guidance, regulation, rule or legislative act. An example is Market Authorization relating to a Medicinal Product.

  ///
  /// [resourceType] This is a RegulatedAuthorization resource;
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
  /// [identifier] Business identifier for the authorization, typically assigned by the authorizing body.;
  ///
  /// [subject] The product type, treatment, facility or activity that is being authorized.;
  ///
  /// [type] Overall type of this authorization, for example drug marketing approval, orphan drug designation.;
  ///
  /// [description] General textual supporting information.;
  ///
  /// [descriptionElement] (_description): Extensions for description;
  ///
  /// [region] The territory (e.g., country, jurisdiction etc.) in which the authorization has been granted.;
  ///
  /// [status] The status that is authorised e.g. approved. Intermediate states and actions can be tracked with cases and applications.;
  ///
  /// [statusDate] The date at which the current status was assigned.;
  ///
  /// [statusDateElement] (_statusDate): Extensions for statusDate;
  ///
  /// [validityPeriod] The time period in which the regulatory approval, clearance or licencing is in effect. As an example, a Marketing Authorization includes the date of authorization and/or an expiration date.;
  ///
  /// [indication] Condition for which the use of the regulated product applies.;
  ///
  /// [intendedUse] The intended use of the product, e.g. prevention, treatment, diagnosis.;
  ///
  /// [basis] The legal or regulatory framework against which this authorization is granted, or other reasons for it.;
  ///
  /// [holder] The organization that has been granted this authorization, by some authoritative body (the 'regulator').;
  ///
  /// [regulator] The regulatory authority or authorizing body granting the authorization. For example, European Medicines Agency (EMA), Food and Drug Administration (FDA), Health Canada (HC), etc.;
  ///
  /// [case_] The case or regulatory procedure for granting or amending a regulated authorization. An authorization is granted in response to submissions/applications by those seeking authorization. A case is the administrative process that deals with the application(s) that relate to this and assesses them. Note: This area is subject to ongoing review and the workgroup is seeking implementer feedback on its use (see link at bottom of page).;
  const factory RegulatedAuthorization({
    /// [resourceType] This is a RegulatedAuthorization resource;
    @Default(R4ResourceType.RegulatedAuthorization) R4ResourceType resourceType,

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

    /// [identifier] Business identifier for the authorization, typically assigned by the authorizing body.;
    List<Identifier>? identifier,

    /// [subject] The product type, treatment, facility or activity that is being authorized.;
    List<Reference>? subject,

    /// [type] Overall type of this authorization, for example drug marketing approval, orphan drug designation.;
    CodeableConcept? type,

    /// [description] General textual supporting information.;
    FhirMarkdown? description,

    /// [descriptionElement] (_description): Extensions for description;
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [region] The territory (e.g., country, jurisdiction etc.) in which the authorization has been granted.;
    List<CodeableConcept>? region,

    /// [status] The status that is authorised e.g. approved. Intermediate states and actions can be tracked with cases and applications.;
    CodeableConcept? status,

    /// [statusDate] The date at which the current status was assigned.;
    FhirDateTime? statusDate,

    /// [statusDateElement] (_statusDate): Extensions for statusDate;
    @JsonKey(name: '_statusDate') PrimitiveElement? statusDateElement,

    /// [validityPeriod] The time period in which the regulatory approval, clearance or licencing is in effect. As an example, a Marketing Authorization includes the date of authorization and/or an expiration date.;
    Period? validityPeriod,

    /// [indication] Condition for which the use of the regulated product applies.;
    CodeableReference? indication,

    /// [intendedUse] The intended use of the product, e.g. prevention, treatment, diagnosis.;
    CodeableConcept? intendedUse,

    /// [basis] The legal or regulatory framework against which this authorization is granted, or other reasons for it.;
    List<CodeableConcept>? basis,

    /// [holder] The organization that has been granted this authorization, by some authoritative body (the 'regulator').;
    Reference? holder,

    /// [regulator] The regulatory authority or authorizing body granting the authorization. For example, European Medicines Agency (EMA), Food and Drug Administration (FDA), Health Canada (HC), etc.;
    Reference? regulator,

    /// [case_] The case or regulatory procedure for granting or amending a regulated authorization. An authorization is granted in response to submissions/applications by those seeking authorization. A case is the administrative process that deals with the application(s) that relate to this and assesses them. Note: This area is subject to ongoing review and the workgroup is seeking implementer feedback on its use (see link at bottom of page).;
    @JsonKey(name: 'case') RegulatedAuthorizationCase? case_,
  }) = _RegulatedAuthorization;

  @override
  String get fhirType => 'RegulatedAuthorization';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory RegulatedAuthorization.fromYaml(dynamic yaml) => yaml is String
      ? RegulatedAuthorization.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? RegulatedAuthorization.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'RegulatedAuthorization cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory RegulatedAuthorization.fromJson(Map<String, dynamic> json) =>
      _$RegulatedAuthorizationFromJson(json);

  /// Acts like a constructor, returns a [RegulatedAuthorization], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory RegulatedAuthorization.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RegulatedAuthorizationFromJson(json);
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

/// [RegulatedAuthorizationCase] Regulatory approval, clearance or licencing related to a regulated product, treatment, facility or activity that is cited in a guidance, regulation, rule or legislative act. An example is Market Authorization relating to a Medicinal Product.
@freezed

/// [RegulatedAuthorizationCase] Regulatory approval, clearance or licencing related to a regulated product, treatment, facility or activity that is cited in a guidance, regulation, rule or legislative act. An example is Market Authorization relating to a Medicinal Product.
@freezed
class RegulatedAuthorizationCase extends BackboneElement
    with _$RegulatedAuthorizationCase {
  /// [RegulatedAuthorizationCase] Regulatory approval, clearance or licencing related to a regulated product, treatment, facility or activity that is cited in a guidance, regulation, rule or legislative act. An example is Market Authorization relating to a Medicinal Product.
  RegulatedAuthorizationCase._();

  /// [RegulatedAuthorizationCase] Regulatory approval, clearance or licencing related to a regulated product, treatment, facility or activity that is cited in a guidance, regulation, rule or legislative act. An example is Market Authorization relating to a Medicinal Product.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [identifier] Identifier by which this case can be referenced.;
  ///
  /// [type] The defining type of case.;
  ///
  /// [status] The status associated with the case.;
  ///
  /// [datePeriod] Relevant date for this case.;
  ///
  /// [dateDateTime] Relevant date for this case.;
  ///
  /// [dateDateTimeElement] (_dateDateTime): Extensions for dateDateTime;
  ///
  /// [application] A regulatory submission from an organization to a regulator, as part of an assessing case. Multiple applications may occur over time, with more or different information to support or modify the submission or the authorization. The applications can be considered as steps within the longer running case or procedure for this authorization process.;
  const factory RegulatedAuthorizationCase({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [identifier] Identifier by which this case can be referenced.;
    Identifier? identifier,

    /// [type] The defining type of case.;
    CodeableConcept? type,

    /// [status] The status associated with the case.;
    CodeableConcept? status,

    /// [datePeriod] Relevant date for this case.;
    Period? datePeriod,

    /// [dateDateTime] Relevant date for this case.;
    FhirDateTime? dateDateTime,

    /// [dateDateTimeElement] (_dateDateTime): Extensions for dateDateTime;
    @JsonKey(name: '_dateDateTime') PrimitiveElement? dateDateTimeElement,

    /// [application] A regulatory submission from an organization to a regulator, as part of an assessing case. Multiple applications may occur over time, with more or different information to support or modify the submission or the authorization. The applications can be considered as steps within the longer running case or procedure for this authorization process.;
    List<RegulatedAuthorizationCase>? application,
  }) = _RegulatedAuthorizationCase;

  @override
  String get fhirType => 'RegulatedAuthorizationCase';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory RegulatedAuthorizationCase.fromYaml(dynamic yaml) => yaml is String
      ? RegulatedAuthorizationCase.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? RegulatedAuthorizationCase.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'RegulatedAuthorizationCase cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory RegulatedAuthorizationCase.fromJson(Map<String, dynamic> json) =>
      _$RegulatedAuthorizationCaseFromJson(json);

  /// Acts like a constructor, returns a [RegulatedAuthorizationCase], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory RegulatedAuthorizationCase.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RegulatedAuthorizationCaseFromJson(json);
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
