// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'consent.freezed.dart';
part 'consent.g.dart';

/// [Consent] A record of a healthcare consumer’s  choices, which permits or
@freezed
class Consent with _$Consent implements DomainResource {
  /// [Consent] A record of a healthcare consumer’s  choices, which permits or
  const Consent._();

  /// [Consent] A record of a healthcare consumer’s  choices, which permits or
  /// denies identified recipient(s) or recipient role(s) to perform one or more
  /// actions within a given policy context, for specific purposes and periods
  ///  of time.
  ///
  /// [resourceType] This is a Consent resource
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
  /// [identifier] Unique identifier for this copy of the Consent Statement.
  ///
  /// [status] Indicates the current state of this consent.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [scope] A selector of the type of consent being presented: ADR, Privacy,
  ///  Treatment, Research.  This list is now extensible.
  ///
  /// [category] A classification of the type of consents found in the
  /// statement. This element supports indexing and retrieval of consent
  ///  statements.
  ///
  /// [patient] The patient/healthcare consumer to whom this consent applies.
  ///
  /// [dateTime] When this  Consent was issued / created / indexed.
  ///
  /// [dateTimeElement] Extensions for dateTime
  ///
  /// [performer] Either the Grantor, which is the entity responsible for
  /// granting the rights listed in a Consent Directive or the Grantee, which is
  /// the entity responsible for complying with the Consent Directive, including
  /// any obligations or limitations on authorizations and enforcement of
  ///  prohibitions.
  ///
  /// [organization] The organization that manages the consent, and the
  ///  framework within which it is executed.
  ///
  /// [sourceAttachment] The source on which this consent statement is based.
  /// The source might be a scanned original paper form, or a reference to a
  /// consent that links back to such a source, a reference to a document
  ///  repository (e.g. XDS) that stores the original consent document.
  ///
  /// [sourceReference] The source on which this consent statement is based.
  /// The source might be a scanned original paper form, or a reference to a
  /// consent that links back to such a source, a reference to a document
  ///  repository (e.g. XDS) that stores the original consent document.
  ///
  /// [policy] The references to the policies that are included in this consent
  /// scope. Policies may be organizational, but are often defined
  ///  jurisdictionally, or in law.
  ///
  /// [policyRule] A reference to the specific base computable regulation or
  ///  policy.
  ///
  /// [verification] Whether a treatment instruction (e.g. artificial
  /// respiration yes or no) was verified with the patient, his/her family or
  ///  another authorized person.
  ///
  /// [provision] An exception to the base policy of this consent. An exception
  ///  can be an addition or removal of access permissions.
  const factory Consent({
    @Default(R4ResourceType.Consent)
    @JsonKey(unknownEnumValue: R4ResourceType.Consent)

    /// [resourceType] This is a Consent resource
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

    /// [identifier] Unique identifier for this copy of the Consent Statement.
    List<Identifier>? identifier,

    /// [status] Indicates the current state of this consent.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [scope] A selector of the type of consent being presented: ADR, Privacy,
    ///  Treatment, Research.  This list is now extensible.
    required CodeableConcept scope,

    /// [category] A classification of the type of consents found in the
    /// statement. This element supports indexing and retrieval of consent
    ///  statements.
    required List<CodeableConcept> category,

    /// [patient] The patient/healthcare consumer to whom this consent applies.
    Reference? patient,

    /// [dateTime] When this  Consent was issued / created / indexed.
    FhirDateTime? dateTime,

    /// [dateTimeElement] Extensions for dateTime
    @JsonKey(name: '_dateTime') PrimitiveElement? dateTimeElement,

    /// [performer] Either the Grantor, which is the entity responsible for
    /// granting the rights listed in a Consent Directive or the Grantee, which is
    /// the entity responsible for complying with the Consent Directive, including
    /// any obligations or limitations on authorizations and enforcement of
    ///  prohibitions.
    List<Reference>? performer,

    /// [organization] The organization that manages the consent, and the
    ///  framework within which it is executed.
    List<Reference>? organization,

    /// [sourceAttachment] The source on which this consent statement is based.
    /// The source might be a scanned original paper form, or a reference to a
    /// consent that links back to such a source, a reference to a document
    ///  repository (e.g. XDS) that stores the original consent document.
    Attachment? sourceAttachment,

    /// [sourceReference] The source on which this consent statement is based.
    /// The source might be a scanned original paper form, or a reference to a
    /// consent that links back to such a source, a reference to a document
    ///  repository (e.g. XDS) that stores the original consent document.
    Reference? sourceReference,

    /// [policy] The references to the policies that are included in this consent
    /// scope. Policies may be organizational, but are often defined
    ///  jurisdictionally, or in law.
    List<ConsentPolicy>? policy,

    /// [policyRule] A reference to the specific base computable regulation or
    ///  policy.
    CodeableConcept? policyRule,

    /// [verification] Whether a treatment instruction (e.g. artificial
    /// respiration yes or no) was verified with the patient, his/her family or
    ///  another authorized person.
    List<ConsentVerification>? verification,

    /// [provision] An exception to the base policy of this consent. An exception
    ///  can be an addition or removal of access permissions.
    ConsentProvision? provision,
  }) = _Consent;

  @override
  String get fhirType => 'Consent';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Consent.fromYaml(dynamic yaml) => yaml is String
      ? Consent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Consent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Consent cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Consent.fromJson(Map<String, dynamic> json) =>
      _$ConsentFromJson(json);

  /// Acts like a constructor, returns a [Consent], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Consent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConsentFromJson(json);
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
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta, versionIdAsTime));
}

/// [ConsentPolicy] A record of a healthcare consumer’s  choices, which
@freezed

/// [ConsentPolicy] A record of a healthcare consumer’s  choices, which
@freezed
class ConsentPolicy with _$ConsentPolicy implements BackboneElement {
  /// [ConsentPolicy] A record of a healthcare consumer’s  choices, which
  const ConsentPolicy._();

  /// [ConsentPolicy] A record of a healthcare consumer’s  choices, which
  /// permits or denies identified recipient(s) or recipient role(s) to perform
  /// one or more actions within a given policy context, for specific purposes
  ///  and periods of time.
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
  /// [authority] Entity or Organization having regulatory jurisdiction or
  ///  accountability for  enforcing policies pertaining to Consent Directives.
  ///
  /// [authorityElement] Extensions for authority
  ///
  /// [uri] The references to the policies that are included in this consent
  /// scope. Policies may be organizational, but are often defined
  ///  jurisdictionally, or in law.
  ///
  /// [uriElement] Extensions for uri
  const factory ConsentPolicy({
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

    /// [authority] Entity or Organization having regulatory jurisdiction or
    ///  accountability for  enforcing policies pertaining to Consent Directives.
    FhirUri? authority,

    /// [authorityElement] Extensions for authority
    @JsonKey(name: '_authority') PrimitiveElement? authorityElement,

    /// [uri] The references to the policies that are included in this consent
    /// scope. Policies may be organizational, but are often defined
    ///  jurisdictionally, or in law.
    FhirUri? uri,

    /// [uriElement] Extensions for uri
    @JsonKey(name: '_uri') PrimitiveElement? uriElement,
  }) = _ConsentPolicy;

  @override
  String get fhirType => 'ConsentPolicy';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ConsentPolicy.fromYaml(dynamic yaml) => yaml is String
      ? ConsentPolicy.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ConsentPolicy.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ConsentPolicy cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ConsentPolicy.fromJson(Map<String, dynamic> json) =>
      _$ConsentPolicyFromJson(json);

  /// Acts like a constructor, returns a [ConsentPolicy], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ConsentPolicy.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConsentPolicyFromJson(json);
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

/// [ConsentVerification] A record of a healthcare consumer’s  choices,
@freezed

/// [ConsentVerification] A record of a healthcare consumer’s  choices,
@freezed
class ConsentVerification
    with _$ConsentVerification
    implements BackboneElement {
  /// [ConsentVerification] A record of a healthcare consumer’s  choices,
  const ConsentVerification._();

  /// [ConsentVerification] A record of a healthcare consumer’s  choices,
  /// which permits or denies identified recipient(s) or recipient role(s) to
  /// perform one or more actions within a given policy context, for specific
  ///  purposes and periods of time.
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
  /// [verified] Has the instruction been verified.
  ///
  /// [verifiedElement] Extensions for verified
  ///
  /// [verifiedWith] Who verified the instruction (Patient, Relative or other
  ///  Authorized Person).
  ///
  /// [verificationDate] Date verification was collected.
  ///
  /// [verificationDateElement] Extensions for verificationDate
  const factory ConsentVerification({
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

    /// [verified] Has the instruction been verified.
    FhirBoolean? verified,

    /// [verifiedElement] Extensions for verified
    @JsonKey(name: '_verified') PrimitiveElement? verifiedElement,

    /// [verifiedWith] Who verified the instruction (Patient, Relative or other
    ///  Authorized Person).
    Reference? verifiedWith,

    /// [verificationDate] Date verification was collected.
    FhirDateTime? verificationDate,

    /// [verificationDateElement] Extensions for verificationDate
    @JsonKey(name: '_verificationDate')
    PrimitiveElement? verificationDateElement,
  }) = _ConsentVerification;

  @override
  String get fhirType => 'ConsentVerification';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ConsentVerification.fromYaml(dynamic yaml) => yaml is String
      ? ConsentVerification.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ConsentVerification.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ConsentVerification cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ConsentVerification.fromJson(Map<String, dynamic> json) =>
      _$ConsentVerificationFromJson(json);

  /// Acts like a constructor, returns a [ConsentVerification], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ConsentVerification.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConsentVerificationFromJson(json);
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

/// [ConsentProvision] A record of a healthcare consumer’s  choices, which
@freezed

/// [ConsentProvision] A record of a healthcare consumer’s  choices, which
@freezed
class ConsentProvision with _$ConsentProvision implements BackboneElement {
  /// [ConsentProvision] A record of a healthcare consumer’s  choices, which
  const ConsentProvision._();

  /// [ConsentProvision] A record of a healthcare consumer’s  choices, which
  /// permits or denies identified recipient(s) or recipient role(s) to perform
  /// one or more actions within a given policy context, for specific purposes
  ///  and periods of time.
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
  /// [type] Action  to take - permit or deny - when the rule conditions are
  ///  met.  Not permitted in root rule, required in all nested rules.
  ///
  /// [typeElement] Extensions for type
  ///
  /// [period] The timeframe in this rule is valid.
  ///
  /// [actor] Who or what is controlled by this rule. Use group to identify a
  ///  set of actors by some property they share (e.g. 'admitting officers').
  ///
  /// [action] Actions controlled by this Rule.
  ///
  /// [securityLabel] A security label, comprised of 0..* security label fields
  /// (Privacy tags), which define which resources are controlled by this
  ///  exception.
  ///
  /// [purpose] The context of the activities a user is taking - why the user
  ///  is accessing the data - that are controlled by this rule.
  ///
  /// [class] The class of information covered by this rule. The type can be a
  /// FHIR resource type, a profile on a type, or a CDA document, or some other
  ///  type that indicates what sort of information the consent relates to.
  ///
  /// [code] If this code is found in an instance, then the rule applies.
  ///
  /// [dataPeriod] Clinical or Operational Relevant period of time that bounds
  ///  the data controlled by this rule.
  ///
  /// [data] The resources controlled by this rule if specific resources are
  ///  referenced.
  ///
  /// [provision] Rules which provide exceptions to the base rule or subrules.
  const factory ConsentProvision({
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

    /// [type] Action  to take - permit or deny - when the rule conditions are
    ///  met.  Not permitted in root rule, required in all nested rules.
    FhirCode? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,

    /// [period] The timeframe in this rule is valid.
    Period? period,

    /// [actor] Who or what is controlled by this rule. Use group to identify a
    ///  set of actors by some property they share (e.g. 'admitting officers').
    List<ConsentActor>? actor,

    /// [action] Actions controlled by this Rule.
    List<CodeableConcept>? action,

    /// [securityLabel] A security label, comprised of 0..* security label fields
    /// (Privacy tags), which define which resources are controlled by this
    ///  exception.
    List<Coding>? securityLabel,

    /// [purpose] The context of the activities a user is taking - why the user
    ///  is accessing the data - that are controlled by this rule.
    List<Coding>? purpose,

    /// [class] The class of information covered by this rule. The type can be a
    /// FHIR resource type, a profile on a type, or a CDA document, or some other
    ///  type that indicates what sort of information the consent relates to.
    @JsonKey(name: 'class') List<Coding>? class_,

    /// [code] If this code is found in an instance, then the rule applies.
    List<CodeableConcept>? code,

    /// [dataPeriod] Clinical or Operational Relevant period of time that bounds
    ///  the data controlled by this rule.
    Period? dataPeriod,

    /// [data] The resources controlled by this rule if specific resources are
    ///  referenced.
    List<ConsentData>? data,

    /// [provision] Rules which provide exceptions to the base rule or subrules.
    List<ConsentProvision>? provision,
  }) = _ConsentProvision;

  @override
  String get fhirType => 'ConsentProvision';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ConsentProvision.fromYaml(dynamic yaml) => yaml is String
      ? ConsentProvision.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ConsentProvision.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ConsentProvision cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ConsentProvision.fromJson(Map<String, dynamic> json) =>
      _$ConsentProvisionFromJson(json);

  /// Acts like a constructor, returns a [ConsentProvision], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ConsentProvision.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConsentProvisionFromJson(json);
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

/// [ConsentActor] A record of a healthcare consumer’s  choices, which
@freezed

/// [ConsentActor] A record of a healthcare consumer’s  choices, which
@freezed
class ConsentActor with _$ConsentActor implements BackboneElement {
  /// [ConsentActor] A record of a healthcare consumer’s  choices, which
  const ConsentActor._();

  /// [ConsentActor] A record of a healthcare consumer’s  choices, which
  /// permits or denies identified recipient(s) or recipient role(s) to perform
  /// one or more actions within a given policy context, for specific purposes
  ///  and periods of time.
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
  /// [role] How the individual is involved in the resources content that is
  ///  described in the exception.
  ///
  /// [reference] The resource that identifies the actor. To identify actors by
  /// type, use group to identify a set of actors by some property they share
  ///  (e.g. 'admitting officers').
  const factory ConsentActor({
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

    /// [role] How the individual is involved in the resources content that is
    ///  described in the exception.
    required CodeableConcept role,

    /// [reference] The resource that identifies the actor. To identify actors by
    /// type, use group to identify a set of actors by some property they share
    ///  (e.g. 'admitting officers').
    required Reference reference,
  }) = _ConsentActor;

  @override
  String get fhirType => 'ConsentActor';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ConsentActor.fromYaml(dynamic yaml) => yaml is String
      ? ConsentActor.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ConsentActor.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ConsentActor cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ConsentActor.fromJson(Map<String, dynamic> json) =>
      _$ConsentActorFromJson(json);

  /// Acts like a constructor, returns a [ConsentActor], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ConsentActor.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConsentActorFromJson(json);
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

/// [ConsentData] A record of a healthcare consumer’s  choices, which
@freezed

/// [ConsentData] A record of a healthcare consumer’s  choices, which
@freezed
class ConsentData with _$ConsentData implements BackboneElement {
  /// [ConsentData] A record of a healthcare consumer’s  choices, which
  const ConsentData._();

  /// [ConsentData] A record of a healthcare consumer’s  choices, which
  /// permits or denies identified recipient(s) or recipient role(s) to perform
  /// one or more actions within a given policy context, for specific purposes
  ///  and periods of time.
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
  /// [meaning] How the resource reference is interpreted when testing consent
  ///  restrictions.
  ///
  /// [meaningElement] Extensions for meaning
  ///
  /// [reference] A reference to a specific resource that defines which
  ///  resources are covered by this consent.
  const factory ConsentData({
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

    /// [meaning] How the resource reference is interpreted when testing consent
    ///  restrictions.
    FhirCode? meaning,

    /// [meaningElement] Extensions for meaning
    @JsonKey(name: '_meaning') PrimitiveElement? meaningElement,

    /// [reference] A reference to a specific resource that defines which
    ///  resources are covered by this consent.
    required Reference reference,
  }) = _ConsentData;

  @override
  String get fhirType => 'ConsentData';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ConsentData.fromYaml(dynamic yaml) => yaml is String
      ? ConsentData.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ConsentData.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ConsentData cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ConsentData.fromJson(Map<String, dynamic> json) =>
      _$ConsentDataFromJson(json);

  /// Acts like a constructor, returns a [ConsentData], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ConsentData.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConsentDataFromJson(json);
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
