// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'claim.freezed.dart';
part 'claim.g.dart';

/// [Claim] A provider issued list of professional services and products
@freezed
class Claim with _$Claim implements DomainResource {
  /// [Claim] A provider issued list of professional services and products
  const Claim._();

  /// [Claim] A provider issued list of professional services and products
  /// which have been provided, or are to be provided, to a patient which is
  ///  sent to an insurer for reimbursement.
  ///
  /// [resourceType] This is a Claim resource
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
  /// [identifier] A unique identifier assigned to this claim.
  ///
  /// [status] The status of the resource instance.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [type] The category of claim, e.g. oral, pharmacy, vision, institutional,
  ///  professional.
  ///
  /// [subType] A finer grained suite of claim type codes which may convey
  /// additional information such as Inpatient vs Outpatient and/or a specialty
  ///  service.
  ///
  /// [use] A code to indicate whether the nature of the request is: to request
  /// adjudication of products and services previously rendered; or requesting
  /// authorization and adjudication for provision in the future; or requesting
  /// the non-binding adjudication of the listed products and services which
  ///  could be provided in the future.
  ///
  /// [useElement] Extensions for use
  ///
  /// [patient] The party to whom the professional services and/or products
  /// have been supplied or are being considered and for whom actual or forecast
  ///  reimbursement is sought.
  ///
  /// [billablePeriod] The period for which charges are being submitted.
  ///
  /// [created] The date this resource was created.
  ///
  /// [createdElement] Extensions for created
  ///
  /// [enterer] Individual who created the claim, predetermination or
  ///  preauthorization.
  ///
  /// [insurer] The Insurer who is target of the request.
  ///
  /// [provider] The provider which is responsible for the claim,
  ///  predetermination or preauthorization.
  ///
  /// [priority] The provider-required urgency of processing the request.
  ///  Typical values include: stat, routine deferred.
  ///
  /// [fundsReserve] A code to indicate whether and for whom funds are to be
  ///  reserved for future claims.
  ///
  /// [related] Other claims which are related to this claim such as prior
  ///  submissions or claims for related services or for the same event.
  ///
  /// [prescription] Prescription to support the dispensing of pharmacy, device
  ///  or vision products.
  ///
  /// [originalPrescription] Original prescription which has been superseded by
  /// this prescription to support the dispensing of pharmacy services,
  ///  medications or products.
  ///
  /// [payee] The party to be reimbursed for cost of the products and services
  ///  according to the terms of the policy.
  ///
  /// [referral] A reference to a referral resource.
  ///
  /// [facility] Facility where the services were provided.
  ///
  /// [careTeam] The members of the team who provided the products and
  ///  services.
  ///
  /// [supportingInfo] Additional information codes regarding exceptions,
  /// special considerations, the condition, situation, prior or concurrent
  ///  issues.
  ///
  /// [diagnosis] Information about diagnoses relevant to the claim items.
  ///
  /// [procedure] Procedures performed on the patient relevant to the billing
  ///  items with the claim.
  ///
  /// [insurance] Financial instruments for reimbursement for the health care
  ///  products and services specified on the claim.
  ///
  /// [accident] Details of an accident which resulted in injuries which
  ///  required the products and services listed in the claim.
  ///
  /// [item] A claim line. Either a simple  product or service or a 'group' of
  ///  details which can each be a simple items or groups of sub-details.
  ///
  /// [total] The total value of the all the items in the claim.
  const factory Claim({
    @Default(R4ResourceType.Claim)
    @JsonKey(unknownEnumValue: R4ResourceType.Claim)

    /// [resourceType] This is a Claim resource
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

    /// [identifier] A unique identifier assigned to this claim.
    List<Identifier>? identifier,

    /// [status] The status of the resource instance.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [type] The category of claim, e.g. oral, pharmacy, vision, institutional,
    ///  professional.
    required CodeableConcept type,

    /// [subType] A finer grained suite of claim type codes which may convey
    /// additional information such as Inpatient vs Outpatient and/or a specialty
    ///  service.
    CodeableConcept? subType,

    /// [use] A code to indicate whether the nature of the request is: to request
    /// adjudication of products and services previously rendered; or requesting
    /// authorization and adjudication for provision in the future; or requesting
    /// the non-binding adjudication of the listed products and services which
    ///  could be provided in the future.
    FhirCode? use,

    /// [useElement] Extensions for use
    @JsonKey(name: '_use') PrimitiveElement? useElement,

    /// [patient] The party to whom the professional services and/or products
    /// have been supplied or are being considered and for whom actual or forecast
    ///  reimbursement is sought.
    required Reference patient,

    /// [billablePeriod] The period for which charges are being submitted.
    Period? billablePeriod,

    /// [created] The date this resource was created.
    FhirDateTime? created,

    /// [createdElement] Extensions for created
    @JsonKey(name: '_created') PrimitiveElement? createdElement,

    /// [enterer] Individual who created the claim, predetermination or
    ///  preauthorization.
    Reference? enterer,

    /// [insurer] The Insurer who is target of the request.
    Reference? insurer,

    /// [provider] The provider which is responsible for the claim,
    ///  predetermination or preauthorization.
    required Reference provider,

    /// [priority] The provider-required urgency of processing the request.
    ///  Typical values include: stat, routine deferred.
    required CodeableConcept priority,

    /// [fundsReserve] A code to indicate whether and for whom funds are to be
    ///  reserved for future claims.
    CodeableConcept? fundsReserve,

    /// [related] Other claims which are related to this claim such as prior
    ///  submissions or claims for related services or for the same event.
    List<ClaimRelated>? related,

    /// [prescription] Prescription to support the dispensing of pharmacy, device
    ///  or vision products.
    Reference? prescription,

    /// [originalPrescription] Original prescription which has been superseded by
    /// this prescription to support the dispensing of pharmacy services,
    ///  medications or products.
    Reference? originalPrescription,

    /// [payee] The party to be reimbursed for cost of the products and services
    ///  according to the terms of the policy.
    ClaimPayee? payee,

    /// [referral] A reference to a referral resource.
    Reference? referral,

    /// [facility] Facility where the services were provided.
    Reference? facility,

    /// [careTeam] The members of the team who provided the products and
    ///  services.
    List<ClaimCareTeam>? careTeam,

    /// [supportingInfo] Additional information codes regarding exceptions,
    /// special considerations, the condition, situation, prior or concurrent
    ///  issues.
    List<ClaimSupportingInfo>? supportingInfo,

    /// [diagnosis] Information about diagnoses relevant to the claim items.
    List<ClaimDiagnosis>? diagnosis,

    /// [procedure] Procedures performed on the patient relevant to the billing
    ///  items with the claim.
    List<ClaimProcedure>? procedure,

    /// [insurance] Financial instruments for reimbursement for the health care
    ///  products and services specified on the claim.
    required List<ClaimInsurance> insurance,

    /// [accident] Details of an accident which resulted in injuries which
    ///  required the products and services listed in the claim.
    ClaimAccident? accident,

    /// [item] A claim line. Either a simple  product or service or a 'group' of
    ///  details which can each be a simple items or groups of sub-details.
    List<ClaimItem>? item,

    /// [total] The total value of the all the items in the claim.
    Money? total,
  }) = _Claim;

  @override
  String get fhirType => 'Claim';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Claim.fromYaml(dynamic yaml) => yaml is String
      ? Claim.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Claim.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Claim cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Claim.fromJson(Map<String, dynamic> json) => _$ClaimFromJson(json);

  /// Acts like a constructor, returns a [Claim], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Claim.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimFromJson(json);
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

/// [ClaimRelated] A provider issued list of professional services and
@freezed

/// [ClaimRelated] A provider issued list of professional services and
@freezed
class ClaimRelated with _$ClaimRelated implements BackboneElement {
  /// [ClaimRelated] A provider issued list of professional services and
  const ClaimRelated._();

  /// [ClaimRelated] A provider issued list of professional services and
  /// products which have been provided, or are to be provided, to a patient
  ///  which is sent to an insurer for reimbursement.
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
  /// [claim] Reference to a related claim.
  ///
  /// [relationship] A code to convey how the claims are related.
  ///
  /// [reference] An alternate organizational reference to the case or file to
  ///  which this particular claim pertains.
  const factory ClaimRelated({
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

    /// [claim] Reference to a related claim.
    Reference? claim,

    /// [relationship] A code to convey how the claims are related.
    CodeableConcept? relationship,

    /// [reference] An alternate organizational reference to the case or file to
    ///  which this particular claim pertains.
    Identifier? reference,
  }) = _ClaimRelated;

  @override
  String get fhirType => 'ClaimRelated';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClaimRelated.fromYaml(dynamic yaml) => yaml is String
      ? ClaimRelated.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimRelated.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimRelated cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClaimRelated.fromJson(Map<String, dynamic> json) =>
      _$ClaimRelatedFromJson(json);

  /// Acts like a constructor, returns a [ClaimRelated], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClaimRelated.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimRelatedFromJson(json);
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
  String toYaml() => json2yaml(toJson());
}

/// [ClaimPayee] A provider issued list of professional services and
@freezed

/// [ClaimPayee] A provider issued list of professional services and
@freezed
class ClaimPayee with _$ClaimPayee implements BackboneElement {
  /// [ClaimPayee] A provider issued list of professional services and
  const ClaimPayee._();

  /// [ClaimPayee] A provider issued list of professional services and
  /// products which have been provided, or are to be provided, to a patient
  ///  which is sent to an insurer for reimbursement.
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
  /// [type] Type of Party to be reimbursed: subscriber, provider, other.
  ///
  /// [party] Reference to the individual or organization to whom any payment
  ///  will be made.
  const factory ClaimPayee({
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

    /// [type] Type of Party to be reimbursed: subscriber, provider, other.
    required CodeableConcept type,

    /// [party] Reference to the individual or organization to whom any payment
    ///  will be made.
    Reference? party,
  }) = _ClaimPayee;

  @override
  String get fhirType => 'ClaimPayee';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClaimPayee.fromYaml(dynamic yaml) => yaml is String
      ? ClaimPayee.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimPayee.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimPayee cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClaimPayee.fromJson(Map<String, dynamic> json) =>
      _$ClaimPayeeFromJson(json);

  /// Acts like a constructor, returns a [ClaimPayee], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClaimPayee.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimPayeeFromJson(json);
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
  String toYaml() => json2yaml(toJson());
}

/// [ClaimCareTeam] A provider issued list of professional services and
@freezed

/// [ClaimCareTeam] A provider issued list of professional services and
@freezed
class ClaimCareTeam with _$ClaimCareTeam implements BackboneElement {
  /// [ClaimCareTeam] A provider issued list of professional services and
  const ClaimCareTeam._();

  /// [ClaimCareTeam] A provider issued list of professional services and
  /// products which have been provided, or are to be provided, to a patient
  ///  which is sent to an insurer for reimbursement.
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
  /// [sequence] A number to uniquely identify care team entries.
  ///
  /// [sequenceElement] Extensions for sequence
  ///
  /// [provider] Member of the team who provided the product or service.
  ///
  /// [responsible] The party who is billing and/or responsible for the claimed
  ///  products or services.
  ///
  /// [responsibleElement] Extensions for responsible
  ///
  /// [role] The lead, assisting or supervising practitioner and their
  ///  discipline if a multidisciplinary team.
  ///
  /// [qualification] The qualification of the practitioner which is applicable
  ///  for this service.
  const factory ClaimCareTeam({
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

    /// [sequence] A number to uniquely identify care team entries.
    FhirPositiveInt? sequence,

    /// [sequenceElement] Extensions for sequence
    @JsonKey(name: '_sequence') PrimitiveElement? sequenceElement,

    /// [provider] Member of the team who provided the product or service.
    required Reference provider,

    /// [responsible] The party who is billing and/or responsible for the claimed
    ///  products or services.
    FhirBoolean? responsible,

    /// [responsibleElement] Extensions for responsible
    @JsonKey(name: '_responsible') PrimitiveElement? responsibleElement,

    /// [role] The lead, assisting or supervising practitioner and their
    ///  discipline if a multidisciplinary team.
    CodeableConcept? role,

    /// [qualification] The qualification of the practitioner which is applicable
    ///  for this service.
    CodeableConcept? qualification,
  }) = _ClaimCareTeam;

  @override
  String get fhirType => 'ClaimCareTeam';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClaimCareTeam.fromYaml(dynamic yaml) => yaml is String
      ? ClaimCareTeam.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimCareTeam.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimCareTeam cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClaimCareTeam.fromJson(Map<String, dynamic> json) =>
      _$ClaimCareTeamFromJson(json);

  /// Acts like a constructor, returns a [ClaimCareTeam], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClaimCareTeam.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimCareTeamFromJson(json);
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
  String toYaml() => json2yaml(toJson());
}

/// [ClaimSupportingInfo] A provider issued list of professional services
@freezed

/// [ClaimSupportingInfo] A provider issued list of professional services
@freezed
class ClaimSupportingInfo
    with _$ClaimSupportingInfo
    implements BackboneElement {
  /// [ClaimSupportingInfo] A provider issued list of professional services
  const ClaimSupportingInfo._();

  /// [ClaimSupportingInfo] A provider issued list of professional services
  /// and products which have been provided, or are to be provided, to a patient
  ///  which is sent to an insurer for reimbursement.
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
  /// [sequence] A number to uniquely identify supporting information entries.
  ///
  /// [sequenceElement] Extensions for sequence
  ///
  /// [category] The general class of the information supplied: information;
  ///  exception; accident, employment; onset, etc.
  ///
  /// [code] System and code pertaining to the specific information regarding
  /// special conditions relating to the setting, treatment or patient  for
  ///  which care is sought.
  ///
  /// [timingDate] The date when or period to which this information refers.
  ///
  /// [timingDateElement] Extensions for timingDate
  ///
  /// [timingPeriod] The date when or period to which this information refers.
  ///
  /// [valueBoolean] Additional data or information such as resources,
  /// documents, images etc. including references to the data or the actual
  ///  inclusion of the data.
  ///
  /// [valueBooleanElement] Extensions for valueBoolean
  ///
  /// [valueString] Additional data or information such as resources,
  /// documents, images etc. including references to the data or the actual
  ///  inclusion of the data.
  ///
  /// [valueStringElement] Extensions for valueString
  ///
  /// [valueQuantity] Additional data or information such as resources,
  /// documents, images etc. including references to the data or the actual
  ///  inclusion of the data.
  ///
  /// [valueAttachment] Additional data or information such as resources,
  /// documents, images etc. including references to the data or the actual
  ///  inclusion of the data.
  ///
  /// [valueReference] Additional data or information such as resources,
  /// documents, images etc. including references to the data or the actual
  ///  inclusion of the data.
  ///
  /// [reason] Provides the reason in the situation where a reason code is
  ///  required in addition to the content.
  const factory ClaimSupportingInfo({
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

    /// [sequence] A number to uniquely identify supporting information entries.
    FhirPositiveInt? sequence,

    /// [sequenceElement] Extensions for sequence
    @JsonKey(name: '_sequence') PrimitiveElement? sequenceElement,

    /// [category] The general class of the information supplied: information;
    ///  exception; accident, employment; onset, etc.
    required CodeableConcept category,

    /// [code] System and code pertaining to the specific information regarding
    /// special conditions relating to the setting, treatment or patient  for
    ///  which care is sought.
    CodeableConcept? code,

    /// [timingDate] The date when or period to which this information refers.
    FhirDate? timingDate,

    /// [timingDateElement] Extensions for timingDate
    @JsonKey(name: '_timingDate') PrimitiveElement? timingDateElement,

    /// [timingPeriod] The date when or period to which this information refers.
    Period? timingPeriod,

    /// [valueBoolean] Additional data or information such as resources,
    /// documents, images etc. including references to the data or the actual
    ///  inclusion of the data.
    FhirBoolean? valueBoolean,

    /// [valueBooleanElement] Extensions for valueBoolean
    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,

    /// [valueString] Additional data or information such as resources,
    /// documents, images etc. including references to the data or the actual
    ///  inclusion of the data.
    String? valueString,

    /// [valueStringElement] Extensions for valueString
    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,

    /// [valueQuantity] Additional data or information such as resources,
    /// documents, images etc. including references to the data or the actual
    ///  inclusion of the data.
    Quantity? valueQuantity,

    /// [valueAttachment] Additional data or information such as resources,
    /// documents, images etc. including references to the data or the actual
    ///  inclusion of the data.
    Attachment? valueAttachment,

    /// [valueReference] Additional data or information such as resources,
    /// documents, images etc. including references to the data or the actual
    ///  inclusion of the data.
    Reference? valueReference,

    /// [reason] Provides the reason in the situation where a reason code is
    ///  required in addition to the content.
    CodeableConcept? reason,
  }) = _ClaimSupportingInfo;

  @override
  String get fhirType => 'ClaimSupportingInfo';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClaimSupportingInfo.fromYaml(dynamic yaml) => yaml is String
      ? ClaimSupportingInfo.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimSupportingInfo.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimSupportingInfo cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClaimSupportingInfo.fromJson(Map<String, dynamic> json) =>
      _$ClaimSupportingInfoFromJson(json);

  /// Acts like a constructor, returns a [ClaimSupportingInfo], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClaimSupportingInfo.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimSupportingInfoFromJson(json);
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
  String toYaml() => json2yaml(toJson());
}

/// [ClaimDiagnosis] A provider issued list of professional services and
@freezed

/// [ClaimDiagnosis] A provider issued list of professional services and
@freezed
class ClaimDiagnosis with _$ClaimDiagnosis implements BackboneElement {
  /// [ClaimDiagnosis] A provider issued list of professional services and
  const ClaimDiagnosis._();

  /// [ClaimDiagnosis] A provider issued list of professional services and
  /// products which have been provided, or are to be provided, to a patient
  ///  which is sent to an insurer for reimbursement.
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
  /// [sequence] A number to uniquely identify diagnosis entries.
  ///
  /// [sequenceElement] Extensions for sequence
  ///
  /// [diagnosisCodeableConcept] The nature of illness or problem in a coded
  ///  form or as a reference to an external defined Condition.
  ///
  /// [diagnosisReference] The nature of illness or problem in a coded form or
  ///  as a reference to an external defined Condition.
  ///
  /// [type] When the condition was observed or the relative ranking.
  ///
  /// [onAdmission] Indication of whether the diagnosis was present on
  ///  admission to a facility.
  ///
  /// [packageCode] A package billing code or bundle code used to group
  /// products and services to a particular health condition (such as heart
  ///  attack) which is based on a predetermined grouping code system.
  const factory ClaimDiagnosis({
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

    /// [sequence] A number to uniquely identify diagnosis entries.
    FhirPositiveInt? sequence,

    /// [sequenceElement] Extensions for sequence
    @JsonKey(name: '_sequence') PrimitiveElement? sequenceElement,

    /// [diagnosisCodeableConcept] The nature of illness or problem in a coded
    ///  form or as a reference to an external defined Condition.
    CodeableConcept? diagnosisCodeableConcept,

    /// [diagnosisReference] The nature of illness or problem in a coded form or
    ///  as a reference to an external defined Condition.
    Reference? diagnosisReference,

    /// [type] When the condition was observed or the relative ranking.
    List<CodeableConcept>? type,

    /// [onAdmission] Indication of whether the diagnosis was present on
    ///  admission to a facility.
    CodeableConcept? onAdmission,

    /// [packageCode] A package billing code or bundle code used to group
    /// products and services to a particular health condition (such as heart
    ///  attack) which is based on a predetermined grouping code system.
    CodeableConcept? packageCode,
  }) = _ClaimDiagnosis;

  @override
  String get fhirType => 'ClaimDiagnosis';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClaimDiagnosis.fromYaml(dynamic yaml) => yaml is String
      ? ClaimDiagnosis.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimDiagnosis.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimDiagnosis cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClaimDiagnosis.fromJson(Map<String, dynamic> json) =>
      _$ClaimDiagnosisFromJson(json);

  /// Acts like a constructor, returns a [ClaimDiagnosis], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClaimDiagnosis.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimDiagnosisFromJson(json);
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
  String toYaml() => json2yaml(toJson());
}

/// [ClaimProcedure] A provider issued list of professional services and
@freezed

/// [ClaimProcedure] A provider issued list of professional services and
@freezed
class ClaimProcedure with _$ClaimProcedure implements BackboneElement {
  /// [ClaimProcedure] A provider issued list of professional services and
  const ClaimProcedure._();

  /// [ClaimProcedure] A provider issued list of professional services and
  /// products which have been provided, or are to be provided, to a patient
  ///  which is sent to an insurer for reimbursement.
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
  /// [sequence] A number to uniquely identify procedure entries.
  ///
  /// [sequenceElement] Extensions for sequence
  ///
  /// [type] When the condition was observed or the relative ranking.
  ///
  /// [date] Date and optionally time the procedure was performed.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [procedureCodeableConcept] The code or reference to a Procedure resource
  ///  which identifies the clinical intervention performed.
  ///
  /// [procedureReference] The code or reference to a Procedure resource which
  ///  identifies the clinical intervention performed.
  ///
  /// [udi] Unique Device Identifiers associated with this line item.
  const factory ClaimProcedure({
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

    /// [sequence] A number to uniquely identify procedure entries.
    FhirPositiveInt? sequence,

    /// [sequenceElement] Extensions for sequence
    @JsonKey(name: '_sequence') PrimitiveElement? sequenceElement,

    /// [type] When the condition was observed or the relative ranking.
    List<CodeableConcept>? type,

    /// [date] Date and optionally time the procedure was performed.
    FhirDateTime? date,

    /// [dateElement] Extensions for date
    @JsonKey(name: '_date') PrimitiveElement? dateElement,

    /// [procedureCodeableConcept] The code or reference to a Procedure resource
    ///  which identifies the clinical intervention performed.
    CodeableConcept? procedureCodeableConcept,

    /// [procedureReference] The code or reference to a Procedure resource which
    ///  identifies the clinical intervention performed.
    Reference? procedureReference,

    /// [udi] Unique Device Identifiers associated with this line item.
    List<Reference>? udi,
  }) = _ClaimProcedure;

  @override
  String get fhirType => 'ClaimProcedure';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClaimProcedure.fromYaml(dynamic yaml) => yaml is String
      ? ClaimProcedure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimProcedure.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimProcedure cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClaimProcedure.fromJson(Map<String, dynamic> json) =>
      _$ClaimProcedureFromJson(json);

  /// Acts like a constructor, returns a [ClaimProcedure], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClaimProcedure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimProcedureFromJson(json);
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
  String toYaml() => json2yaml(toJson());
}

/// [ClaimInsurance] A provider issued list of professional services and
@freezed

/// [ClaimInsurance] A provider issued list of professional services and
@freezed
class ClaimInsurance with _$ClaimInsurance implements BackboneElement {
  /// [ClaimInsurance] A provider issued list of professional services and
  const ClaimInsurance._();

  /// [ClaimInsurance] A provider issued list of professional services and
  /// products which have been provided, or are to be provided, to a patient
  ///  which is sent to an insurer for reimbursement.
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
  /// [sequence] A number to uniquely identify insurance entries and provide a
  ///  sequence of coverages to convey coordination of benefit order.
  ///
  /// [sequenceElement] Extensions for sequence
  ///
  /// [focal] A flag to indicate that this Coverage is to be used for
  ///  adjudication of this claim when set to true.
  ///
  /// [focalElement] Extensions for focal
  ///
  /// [identifier] The business identifier to be used when the claim is sent
  ///  for adjudication against this insurance policy.
  ///
  /// [coverage] Reference to the insurance card level information contained in
  /// the Coverage resource. The coverage issuing insurer will use these details
  /// to locate the patient's actual coverage within the insurer's information
  ///  system.
  ///
  /// [businessArrangement] A business agreement number established between the
  ///  provider and the insurer for special business processing purposes.
  ///
  /// [businessArrangementElement] Extensions for businessArrangement
  ///
  /// [preAuthRef] Reference numbers previously provided by the insurer to the
  /// provider to be quoted on subsequent claims containing services or products
  ///  related to the prior authorization.
  ///
  /// [preAuthRefElement] Extensions for preAuthRef
  ///
  /// [claimResponse] The result of the adjudication of the line items for the
  ///  Coverage specified in this insurance.
  const factory ClaimInsurance({
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

    /// [sequence] A number to uniquely identify insurance entries and provide a
    ///  sequence of coverages to convey coordination of benefit order.
    FhirPositiveInt? sequence,

    /// [sequenceElement] Extensions for sequence
    @JsonKey(name: '_sequence') PrimitiveElement? sequenceElement,

    /// [focal] A flag to indicate that this Coverage is to be used for
    ///  adjudication of this claim when set to true.
    FhirBoolean? focal,

    /// [focalElement] Extensions for focal
    @JsonKey(name: '_focal') PrimitiveElement? focalElement,

    /// [identifier] The business identifier to be used when the claim is sent
    ///  for adjudication against this insurance policy.
    Identifier? identifier,

    /// [coverage] Reference to the insurance card level information contained in
    /// the Coverage resource. The coverage issuing insurer will use these details
    /// to locate the patient's actual coverage within the insurer's information
    ///  system.
    required Reference coverage,

    /// [businessArrangement] A business agreement number established between the
    ///  provider and the insurer for special business processing purposes.
    String? businessArrangement,

    /// [businessArrangementElement] Extensions for businessArrangement
    @JsonKey(name: '_businessArrangement')
    PrimitiveElement? businessArrangementElement,

    /// [preAuthRef] Reference numbers previously provided by the insurer to the
    /// provider to be quoted on subsequent claims containing services or products
    ///  related to the prior authorization.
    List<String>? preAuthRef,

    /// [preAuthRefElement] Extensions for preAuthRef
    @JsonKey(name: '_preAuthRef') List<Element?>? preAuthRefElement,

    /// [claimResponse] The result of the adjudication of the line items for the
    ///  Coverage specified in this insurance.
    Reference? claimResponse,
  }) = _ClaimInsurance;

  @override
  String get fhirType => 'ClaimInsurance';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClaimInsurance.fromYaml(dynamic yaml) => yaml is String
      ? ClaimInsurance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimInsurance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimInsurance cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClaimInsurance.fromJson(Map<String, dynamic> json) =>
      _$ClaimInsuranceFromJson(json);

  /// Acts like a constructor, returns a [ClaimInsurance], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClaimInsurance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimInsuranceFromJson(json);
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
  String toYaml() => json2yaml(toJson());
}

/// [ClaimAccident] A provider issued list of professional services and
@freezed

/// [ClaimAccident] A provider issued list of professional services and
@freezed
class ClaimAccident with _$ClaimAccident implements BackboneElement {
  /// [ClaimAccident] A provider issued list of professional services and
  const ClaimAccident._();

  /// [ClaimAccident] A provider issued list of professional services and
  /// products which have been provided, or are to be provided, to a patient
  ///  which is sent to an insurer for reimbursement.
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
  /// [date] Date of an accident event  related to the products and services
  ///  contained in the claim.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [type] The type or context of the accident event for the purposes of
  /// selection of potential insurance coverages and determination of
  ///  coordination between insurers.
  ///
  /// [locationAddress] The physical location of the accident event.
  ///
  /// [locationReference] The physical location of the accident event.
  const factory ClaimAccident({
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

    /// [date] Date of an accident event  related to the products and services
    ///  contained in the claim.
    FhirDate? date,

    /// [dateElement] Extensions for date
    @JsonKey(name: '_date') PrimitiveElement? dateElement,

    /// [type] The type or context of the accident event for the purposes of
    /// selection of potential insurance coverages and determination of
    ///  coordination between insurers.
    CodeableConcept? type,

    /// [locationAddress] The physical location of the accident event.
    Address? locationAddress,

    /// [locationReference] The physical location of the accident event.
    Reference? locationReference,
  }) = _ClaimAccident;

  @override
  String get fhirType => 'ClaimAccident';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClaimAccident.fromYaml(dynamic yaml) => yaml is String
      ? ClaimAccident.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimAccident.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimAccident cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClaimAccident.fromJson(Map<String, dynamic> json) =>
      _$ClaimAccidentFromJson(json);

  /// Acts like a constructor, returns a [ClaimAccident], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClaimAccident.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimAccidentFromJson(json);
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
  String toYaml() => json2yaml(toJson());
}

/// [ClaimItem] A provider issued list of professional services and products
@freezed

/// [ClaimItem] A provider issued list of professional services and products
@freezed
class ClaimItem with _$ClaimItem implements BackboneElement {
  /// [ClaimItem] A provider issued list of professional services and products
  const ClaimItem._();

  /// [ClaimItem] A provider issued list of professional services and products
  /// which have been provided, or are to be provided, to a patient which is
  ///  sent to an insurer for reimbursement.
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
  /// [sequence] A number to uniquely identify item entries.
  ///
  /// [sequenceElement] Extensions for sequence
  ///
  /// [careTeamSequence] CareTeam members related to this service or product.
  ///
  /// [careTeamSequenceElement] Extensions for careTeamSequence
  ///
  /// [diagnosisSequence] Diagnosis applicable for this service or product.
  ///
  /// [diagnosisSequenceElement] Extensions for diagnosisSequence
  ///
  /// [procedureSequence] Procedures applicable for this service or product.
  ///
  /// [procedureSequenceElement] Extensions for procedureSequence
  ///
  /// [informationSequence] Exceptions, special conditions and supporting
  ///  information applicable for this service or product.
  ///
  /// [informationSequenceElement] Extensions for informationSequence
  ///
  /// [revenue] The type of revenue or cost center providing the product and/or
  ///  service.
  ///
  /// [category] Code to identify the general type of benefits under which
  ///  products and services are provided.
  ///
  /// [productOrService] When the value is a group code then this item collects
  /// a set of related claim details, otherwise this contains the product,
  ///  service, drug or other billing code for the item.
  ///
  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
  ///
  /// [programCode] Identifies the program under which this may be recovered.
  ///
  /// [servicedDate] The date or dates when the service or product was
  ///  supplied, performed or completed.
  ///
  /// [servicedDateElement] Extensions for servicedDate
  ///
  /// [servicedPeriod] The date or dates when the service or product was
  ///  supplied, performed or completed.
  ///
  /// [locationCodeableConcept] Where the product or service was provided.
  ///
  /// [locationAddress] Where the product or service was provided.
  ///
  /// [locationReference] Where the product or service was provided.
  ///
  /// [quantity] The number of repetitions of a service or product.
  ///
  /// [unitPrice] If the item is not a group then this is the fee for the
  /// product or service, otherwise this is the total of the fees for the
  ///  details of the group.
  ///
  /// [factor] A real number that represents a multiplier used in determining
  /// the overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied to
  ///  a monetary amount.
  ///
  /// [factorElement] Extensions for factor
  ///
  /// [net] The quantity times the unit price for an additional service or
  ///  product or charge.
  ///
  /// [udi] Unique Device Identifiers associated with this line item.
  ///
  /// [bodySite] Physical service site on the patient (limb, tooth, etc.).
  ///
  /// [subSite] A region or surface of the bodySite, e.g. limb region or tooth
  ///  surface(s).
  ///
  /// [encounter] The Encounters during which this Claim was created or to
  ///  which the creation of this record is tightly associated.
  ///
  /// [detail] A claim detail line. Either a simple (a product or service) or a
  ///  'group' of sub-details which are simple items.
  const factory ClaimItem({
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

    /// [sequence] A number to uniquely identify item entries.
    FhirPositiveInt? sequence,

    /// [sequenceElement] Extensions for sequence
    @JsonKey(name: '_sequence') PrimitiveElement? sequenceElement,

    /// [careTeamSequence] CareTeam members related to this service or product.
    List<FhirPositiveInt>? careTeamSequence,

    /// [careTeamSequenceElement] Extensions for careTeamSequence
    @JsonKey(name: '_careTeamSequence') List<Element?>? careTeamSequenceElement,

    /// [diagnosisSequence] Diagnosis applicable for this service or product.
    List<FhirPositiveInt>? diagnosisSequence,
    @JsonKey(name: '_diagnosisSequence')

    /// [diagnosisSequenceElement] Extensions for diagnosisSequence
    List<Element>? diagnosisSequenceElement,

    /// [procedureSequence] Procedures applicable for this service or product.
    List<FhirPositiveInt>? procedureSequence,
    @JsonKey(name: '_procedureSequence')

    /// [procedureSequenceElement] Extensions for procedureSequence
    List<Element>? procedureSequenceElement,

    /// [informationSequence] Exceptions, special conditions and supporting
    ///  information applicable for this service or product.
    List<FhirPositiveInt>? informationSequence,
    @JsonKey(name: '_informationSequence')

    /// [informationSequenceElement] Extensions for informationSequence
    List<Element>? informationSequenceElement,

    /// [revenue] The type of revenue or cost center providing the product and/or
    ///  service.
    CodeableConcept? revenue,

    /// [category] Code to identify the general type of benefits under which
    ///  products and services are provided.
    CodeableConcept? category,

    /// [productOrService] When the value is a group code then this item collects
    /// a set of related claim details, otherwise this contains the product,
    ///  service, drug or other billing code for the item.
    required CodeableConcept productOrService,

    /// [modifier] Item typification or modifiers codes to convey additional
    ///  context for the product or service.
    List<CodeableConcept>? modifier,

    /// [programCode] Identifies the program under which this may be recovered.
    List<CodeableConcept>? programCode,

    /// [servicedDate] The date or dates when the service or product was
    ///  supplied, performed or completed.
    FhirDate? servicedDate,

    /// [servicedDateElement] Extensions for servicedDate
    @JsonKey(name: '_servicedDate') PrimitiveElement? servicedDateElement,

    /// [servicedPeriod] The date or dates when the service or product was
    ///  supplied, performed or completed.
    Period? servicedPeriod,

    /// [locationCodeableConcept] Where the product or service was provided.
    CodeableConcept? locationCodeableConcept,

    /// [locationAddress] Where the product or service was provided.
    Address? locationAddress,

    /// [locationReference] Where the product or service was provided.
    Reference? locationReference,

    /// [quantity] The number of repetitions of a service or product.
    Quantity? quantity,

    /// [unitPrice] If the item is not a group then this is the fee for the
    /// product or service, otherwise this is the total of the fees for the
    ///  details of the group.
    Money? unitPrice,

    /// [factor] A real number that represents a multiplier used in determining
    /// the overall value of services delivered and/or goods received. The concept
    /// of a Factor allows for a discount or surcharge multiplier to be applied to
    ///  a monetary amount.
    FhirDecimal? factor,

    /// [factorElement] Extensions for factor
    @JsonKey(name: '_factor') PrimitiveElement? factorElement,

    /// [net] The quantity times the unit price for an additional service or
    ///  product or charge.
    Money? net,

    /// [udi] Unique Device Identifiers associated with this line item.
    List<Reference>? udi,

    /// [bodySite] Physical service site on the patient (limb, tooth, etc.).
    CodeableConcept? bodySite,

    /// [subSite] A region or surface of the bodySite, e.g. limb region or tooth
    ///  surface(s).
    List<CodeableConcept>? subSite,

    /// [encounter] The Encounters during which this Claim was created or to
    ///  which the creation of this record is tightly associated.
    List<Reference>? encounter,

    /// [detail] A claim detail line. Either a simple (a product or service) or a
    ///  'group' of sub-details which are simple items.
    List<ClaimDetail>? detail,
  }) = _ClaimItem;

  @override
  String get fhirType => 'ClaimItem';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClaimItem.fromYaml(dynamic yaml) => yaml is String
      ? ClaimItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimItem cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClaimItem.fromJson(Map<String, dynamic> json) =>
      _$ClaimItemFromJson(json);

  /// Acts like a constructor, returns a [ClaimItem], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClaimItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimItemFromJson(json);
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
  String toYaml() => json2yaml(toJson());
}

/// [ClaimDetail] A provider issued list of professional services and
@freezed

/// [ClaimDetail] A provider issued list of professional services and
@freezed
class ClaimDetail with _$ClaimDetail implements BackboneElement {
  /// [ClaimDetail] A provider issued list of professional services and
  const ClaimDetail._();

  /// [ClaimDetail] A provider issued list of professional services and
  /// products which have been provided, or are to be provided, to a patient
  ///  which is sent to an insurer for reimbursement.
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
  /// [sequence] A number to uniquely identify item entries.
  ///
  /// [sequenceElement] Extensions for sequence
  ///
  /// [revenue] The type of revenue or cost center providing the product and/or
  ///  service.
  ///
  /// [category] Code to identify the general type of benefits under which
  ///  products and services are provided.
  ///
  /// [productOrService] When the value is a group code then this item collects
  /// a set of related claim details, otherwise this contains the product,
  ///  service, drug or other billing code for the item.
  ///
  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
  ///
  /// [programCode] Identifies the program under which this may be recovered.
  ///
  /// [quantity] The number of repetitions of a service or product.
  ///
  /// [unitPrice] If the item is not a group then this is the fee for the
  /// product or service, otherwise this is the total of the fees for the
  ///  details of the group.
  ///
  /// [factor] A real number that represents a multiplier used in determining
  /// the overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied to
  ///  a monetary amount.
  ///
  /// [factorElement] Extensions for factor
  ///
  /// [net] The quantity times the unit price for an additional service or
  ///  product or charge.
  ///
  /// [udi] Unique Device Identifiers associated with this line item.
  ///
  /// [subDetail] A claim detail line. Either a simple (a product or service)
  ///  or a 'group' of sub-details which are simple items.
  const factory ClaimDetail({
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

    /// [sequence] A number to uniquely identify item entries.
    FhirPositiveInt? sequence,

    /// [sequenceElement] Extensions for sequence
    @JsonKey(name: '_sequence') PrimitiveElement? sequenceElement,

    /// [revenue] The type of revenue or cost center providing the product and/or
    ///  service.
    CodeableConcept? revenue,

    /// [category] Code to identify the general type of benefits under which
    ///  products and services are provided.
    CodeableConcept? category,

    /// [productOrService] When the value is a group code then this item collects
    /// a set of related claim details, otherwise this contains the product,
    ///  service, drug or other billing code for the item.
    required CodeableConcept productOrService,

    /// [modifier] Item typification or modifiers codes to convey additional
    ///  context for the product or service.
    List<CodeableConcept>? modifier,

    /// [programCode] Identifies the program under which this may be recovered.
    List<CodeableConcept>? programCode,

    /// [quantity] The number of repetitions of a service or product.
    Quantity? quantity,

    /// [unitPrice] If the item is not a group then this is the fee for the
    /// product or service, otherwise this is the total of the fees for the
    ///  details of the group.
    Money? unitPrice,

    /// [factor] A real number that represents a multiplier used in determining
    /// the overall value of services delivered and/or goods received. The concept
    /// of a Factor allows for a discount or surcharge multiplier to be applied to
    ///  a monetary amount.
    FhirDecimal? factor,

    /// [factorElement] Extensions for factor
    @JsonKey(name: '_factor') PrimitiveElement? factorElement,

    /// [net] The quantity times the unit price for an additional service or
    ///  product or charge.
    Money? net,

    /// [udi] Unique Device Identifiers associated with this line item.
    List<Reference>? udi,

    /// [subDetail] A claim detail line. Either a simple (a product or service)
    ///  or a 'group' of sub-details which are simple items.
    List<ClaimSubDetail>? subDetail,
  }) = _ClaimDetail;

  @override
  String get fhirType => 'ClaimDetail';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClaimDetail.fromYaml(dynamic yaml) => yaml is String
      ? ClaimDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimDetail.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimDetail cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClaimDetail.fromJson(Map<String, dynamic> json) =>
      _$ClaimDetailFromJson(json);

  /// Acts like a constructor, returns a [ClaimDetail], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClaimDetail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimDetailFromJson(json);
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
  String toYaml() => json2yaml(toJson());
}

/// [ClaimSubDetail] A provider issued list of professional services and
@freezed

/// [ClaimSubDetail] A provider issued list of professional services and
@freezed
class ClaimSubDetail with _$ClaimSubDetail implements BackboneElement {
  /// [ClaimSubDetail] A provider issued list of professional services and
  const ClaimSubDetail._();

  /// [ClaimSubDetail] A provider issued list of professional services and
  /// products which have been provided, or are to be provided, to a patient
  ///  which is sent to an insurer for reimbursement.
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
  /// [sequence] A number to uniquely identify item entries.
  ///
  /// [sequenceElement] Extensions for sequence
  ///
  /// [revenue] The type of revenue or cost center providing the product and/or
  ///  service.
  ///
  /// [category] Code to identify the general type of benefits under which
  ///  products and services are provided.
  ///
  /// [productOrService] When the value is a group code then this item collects
  /// a set of related claim details, otherwise this contains the product,
  ///  service, drug or other billing code for the item.
  ///
  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
  ///
  /// [programCode] Identifies the program under which this may be recovered.
  ///
  /// [quantity] The number of repetitions of a service or product.
  ///
  /// [unitPrice] If the item is not a group then this is the fee for the
  /// product or service, otherwise this is the total of the fees for the
  ///  details of the group.
  ///
  /// [factor] A real number that represents a multiplier used in determining
  /// the overall value of services delivered and/or goods received. The concept
  /// of a Factor allows for a discount or surcharge multiplier to be applied to
  ///  a monetary amount.
  ///
  /// [factorElement] Extensions for factor
  ///
  /// [net] The quantity times the unit price for an additional service or
  ///  product or charge.
  ///
  /// [udi] Unique Device Identifiers associated with this line item.
  const factory ClaimSubDetail({
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

    /// [sequence] A number to uniquely identify item entries.
    FhirPositiveInt? sequence,

    /// [sequenceElement] Extensions for sequence
    @JsonKey(name: '_sequence') PrimitiveElement? sequenceElement,

    /// [revenue] The type of revenue or cost center providing the product and/or
    ///  service.
    CodeableConcept? revenue,

    /// [category] Code to identify the general type of benefits under which
    ///  products and services are provided.
    CodeableConcept? category,

    /// [productOrService] When the value is a group code then this item collects
    /// a set of related claim details, otherwise this contains the product,
    ///  service, drug or other billing code for the item.
    required CodeableConcept productOrService,

    /// [modifier] Item typification or modifiers codes to convey additional
    ///  context for the product or service.
    List<CodeableConcept>? modifier,

    /// [programCode] Identifies the program under which this may be recovered.
    List<CodeableConcept>? programCode,

    /// [quantity] The number of repetitions of a service or product.
    Quantity? quantity,

    /// [unitPrice] If the item is not a group then this is the fee for the
    /// product or service, otherwise this is the total of the fees for the
    ///  details of the group.
    Money? unitPrice,

    /// [factor] A real number that represents a multiplier used in determining
    /// the overall value of services delivered and/or goods received. The concept
    /// of a Factor allows for a discount or surcharge multiplier to be applied to
    ///  a monetary amount.
    FhirDecimal? factor,

    /// [factorElement] Extensions for factor
    @JsonKey(name: '_factor') PrimitiveElement? factorElement,

    /// [net] The quantity times the unit price for an additional service or
    ///  product or charge.
    Money? net,

    /// [udi] Unique Device Identifiers associated with this line item.
    List<Reference>? udi,
  }) = _ClaimSubDetail;

  @override
  String get fhirType => 'ClaimSubDetail';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClaimSubDetail.fromYaml(dynamic yaml) => yaml is String
      ? ClaimSubDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimSubDetail.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimSubDetail cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClaimSubDetail.fromJson(Map<String, dynamic> json) =>
      _$ClaimSubDetailFromJson(json);

  /// Acts like a constructor, returns a [ClaimSubDetail], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClaimSubDetail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimSubDetailFromJson(json);
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
  String toYaml() => json2yaml(toJson());
}
