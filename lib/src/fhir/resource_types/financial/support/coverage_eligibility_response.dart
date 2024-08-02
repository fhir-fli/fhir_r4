// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'coverage_eligibility_response.freezed.dart';
part 'coverage_eligibility_response.g.dart';

/// [CoverageEligibilityResponse] This resource provides eligibility and plan
@freezed
class CoverageEligibilityResponse
    with _$CoverageEligibilityResponse
    implements DomainResource {
  /// [CoverageEligibilityResponse] This resource provides eligibility and plan
  const CoverageEligibilityResponse._();

  /// [CoverageEligibilityResponse] This resource provides eligibility and plan
  ///  details from the processing of an CoverageEligibilityRequest resource.
  ///
  /// [resourceType] This is a CoverageEligibilityResponse resource
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
  /// [identifier] A unique identifier assigned to this coverage eligiblity
  ///  request.
  ///
  /// [status] The status of the resource instance.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [purpose] Code to specify whether requesting: prior authorization
  /// requirements for some service categories or billing codes; benefits for
  /// coverages specified or discovered; discovery and return of coverages for
  /// the patient; and/or validation that the specified coverage is in-force at
  ///  the date/period specified or 'now' if not specified.
  ///
  /// [purposeElement] Extensions for purpose
  ///
  /// [patient] The party who is the beneficiary of the supplied coverage and
  ///  for whom eligibility is sought.
  ///
  /// [servicedDate] The date or dates when the enclosed suite of services were
  ///  performed or completed.
  ///
  /// [servicedDateElement] Extensions for servicedDate
  ///
  /// [servicedPeriod] The date or dates when the enclosed suite of services
  ///  were performed or completed.
  ///
  /// [created] The date this resource was created.
  ///
  /// [createdElement] Extensions for created
  ///
  /// [requestor] The provider which is responsible for the request.
  ///
  /// [request] Reference to the original request resource.
  ///
  /// [outcome] The outcome of the request processing.
  ///
  /// [outcomeElement] Extensions for outcome
  ///
  /// [disposition] A human readable description of the status of the
  ///  adjudication.
  ///
  /// [dispositionElement] Extensions for disposition
  ///
  /// [insurer] The Insurer who issued the coverage in question and is the
  ///  author of the response.
  ///
  /// [insurance] Financial instruments for reimbursement for the health care
  ///  products and services.
  ///
  /// [preAuthRef] A reference from the Insurer to which these services pertain
  /// to be used on further communication and as proof that the request
  ///  occurred.
  ///
  /// [preAuthRefElement] Extensions for preAuthRef
  ///
  /// [form] A code for the form to be used for printing the content.
  ///
  /// [error] Errors encountered during the processing of the request.
  const factory CoverageEligibilityResponse({
    @Default(R4ResourceType.CoverageEligibilityResponse)
    @JsonKey(unknownEnumValue: R4ResourceType.CoverageEligibilityResponse)

    /// [resourceType] This is a CoverageEligibilityResponse resource
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

    /// [identifier] A unique identifier assigned to this coverage eligiblity
    ///  request.
    List<Identifier>? identifier,

    /// [status] The status of the resource instance.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [purpose] Code to specify whether requesting: prior authorization
    /// requirements for some service categories or billing codes; benefits for
    /// coverages specified or discovered; discovery and return of coverages for
    /// the patient; and/or validation that the specified coverage is in-force at
    ///  the date/period specified or 'now' if not specified.
    List<FhirCode>? purpose,

    /// [purposeElement] Extensions for purpose
    @JsonKey(name: '_purpose') List<PrimitiveElement>? purposeElement,

    /// [patient] The party who is the beneficiary of the supplied coverage and
    ///  for whom eligibility is sought.
    required Reference patient,

    /// [servicedDate] The date or dates when the enclosed suite of services were
    ///  performed or completed.
    FhirDate? servicedDate,

    /// [servicedDateElement] Extensions for servicedDate
    @JsonKey(name: '_servicedDate') PrimitiveElement? servicedDateElement,

    /// [servicedPeriod] The date or dates when the enclosed suite of services
    ///  were performed or completed.
    Period? servicedPeriod,

    /// [created] The date this resource was created.
    FhirDateTime? created,

    /// [createdElement] Extensions for created
    @JsonKey(name: '_created') PrimitiveElement? createdElement,

    /// [requestor] The provider which is responsible for the request.
    Reference? requestor,

    /// [request] Reference to the original request resource.
    required Reference request,

    /// [outcome] The outcome of the request processing.
    FhirCode? outcome,

    /// [outcomeElement] Extensions for outcome
    @JsonKey(name: '_outcome') PrimitiveElement? outcomeElement,

    /// [disposition] A human readable description of the status of the
    ///  adjudication.
    String? disposition,

    /// [dispositionElement] Extensions for disposition
    @JsonKey(name: '_disposition') PrimitiveElement? dispositionElement,

    /// [insurer] The Insurer who issued the coverage in question and is the
    ///  author of the response.
    required Reference insurer,

    /// [insurance] Financial instruments for reimbursement for the health care
    ///  products and services.
    List<CoverageEligibilityResponseInsurance>? insurance,

    /// [preAuthRef] A reference from the Insurer to which these services pertain
    /// to be used on further communication and as proof that the request
    ///  occurred.
    String? preAuthRef,

    /// [preAuthRefElement] Extensions for preAuthRef
    @JsonKey(name: '_preAuthRef') PrimitiveElement? preAuthRefElement,

    /// [form] A code for the form to be used for printing the content.
    CodeableConcept? form,

    /// [error] Errors encountered during the processing of the request.
    List<CoverageEligibilityResponseError>? error,
  }) = _CoverageEligibilityResponse;

  @override
  String get fhirType => 'CoverageEligibilityResponse';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CoverageEligibilityResponse.fromYaml(dynamic yaml) => yaml is String
      ? CoverageEligibilityResponse.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CoverageEligibilityResponse.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CoverageEligibilityResponse cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityResponse.fromJson(Map<String, dynamic> json) =>
      _$CoverageEligibilityResponseFromJson(json);

  /// Acts like a constructor, returns a [CoverageEligibilityResponse], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CoverageEligibilityResponse.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CoverageEligibilityResponseFromJson(json);
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

@freezed
@freezed
class CoverageEligibilityResponseInsurance
    with _$CoverageEligibilityResponseInsurance
    implements BackboneElement {
  const CoverageEligibilityResponseInsurance._();

  /// [CoverageEligibilityResponseInsurance] This resource provides
  /// eligibility and plan details from the processing of an
  ///  CoverageEligibilityRequest resource.
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
  /// [coverage] Reference to the insurance card level information contained in
  /// the Coverage resource. The coverage issuing insurer will use these details
  /// to locate the patient's actual coverage within the insurer's information
  ///  system.
  ///
  /// [inforce] Flag indicating if the coverage provided is inforce currently
  /// if no service date(s) specified or for the whole duration of the service
  ///  dates.
  ///
  /// [inforceElement] Extensions for inforce
  ///
  /// [benefitPeriod] The term of the benefits documented in this response.
  ///
  /// [item] Benefits and optionally current balances, and authorization
  ///  details by category or service.
  const factory CoverageEligibilityResponseInsurance({
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

    /// [coverage] Reference to the insurance card level information contained in
    /// the Coverage resource. The coverage issuing insurer will use these details
    /// to locate the patient's actual coverage within the insurer's information
    ///  system.
    required Reference coverage,

    /// [inforce] Flag indicating if the coverage provided is inforce currently
    /// if no service date(s) specified or for the whole duration of the service
    ///  dates.
    FhirBoolean? inforce,

    /// [inforceElement] Extensions for inforce
    @JsonKey(name: '_inforce') PrimitiveElement? inforceElement,

    /// [benefitPeriod] The term of the benefits documented in this response.
    Period? benefitPeriod,

    /// [item] Benefits and optionally current balances, and authorization
    ///  details by category or service.
    List<CoverageEligibilityResponseItem>? item,
  }) = _CoverageEligibilityResponseInsurance;

  @override
  String get fhirType => 'CoverageEligibilityResponseInsurance';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CoverageEligibilityResponseInsurance.fromYaml(dynamic yaml) => yaml
          is String
      ? CoverageEligibilityResponseInsurance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CoverageEligibilityResponseInsurance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CoverageEligibilityResponseInsurance cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory CoverageEligibilityResponseInsurance.fromJson(
          Map<String, dynamic> json) =>
      _$CoverageEligibilityResponseInsuranceFromJson(json);

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [CoverageEligibilityResponseItem] This resource provides eligibility and
@freezed

/// [CoverageEligibilityResponseItem] This resource provides eligibility and
@freezed
class CoverageEligibilityResponseItem
    with _$CoverageEligibilityResponseItem
    implements BackboneElement {
  /// [CoverageEligibilityResponseItem] This resource provides eligibility and
  const CoverageEligibilityResponseItem._();

  /// [CoverageEligibilityResponseItem] This resource provides eligibility and
  /// plan details from the processing of an CoverageEligibilityRequest
  ///  resource.
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
  /// [category] Code to identify the general type of benefits under which
  ///  products and services are provided.
  ///
  /// [productOrService] This contains the product, service, drug or other
  ///  billing code for the item.
  ///
  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
  ///
  /// [provider] The practitioner who is eligible for the provision of the
  ///  product or service.
  ///
  /// [excluded] True if the indicated class of service is excluded from the
  /// plan, missing or False indicates the product or service is included in the
  ///  coverage.
  ///
  /// [excludedElement] Extensions for excluded
  ///
  /// [name] A short name or tag for the benefit.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [description] A richer description of the benefit or services covered.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [network] Is a flag to indicate whether the benefits refer to in-network
  ///  providers or out-of-network providers.
  ///
  /// [unit] Indicates if the benefits apply to an individual or to the family.
  ///
  /// [term] The term or period of the values such as 'maximum lifetime
  ///  benefit' or 'maximum annual visits'.
  ///
  /// [benefit] Benefits used to date.
  ///
  /// [authorizationRequired] A boolean flag indicating whether a
  ///  preauthorization is required prior to actual service delivery.
  ///
  /// [authorizationRequiredElement] Extensions for authorizationRequired
  ///
  /// [authorizationSupporting] Codes or comments regarding information or
  ///  actions associated with the preauthorization.
  ///
  /// [authorizationUrl] A web location for obtaining requirements or
  ///  descriptive information regarding the preauthorization.
  ///
  /// [authorizationUrlElement] Extensions for authorizationUrl
  const factory CoverageEligibilityResponseItem({
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

    /// [category] Code to identify the general type of benefits under which
    ///  products and services are provided.
    CodeableConcept? category,

    /// [productOrService] This contains the product, service, drug or other
    ///  billing code for the item.
    CodeableConcept? productOrService,

    /// [modifier] Item typification or modifiers codes to convey additional
    ///  context for the product or service.
    List<CodeableConcept>? modifier,

    /// [provider] The practitioner who is eligible for the provision of the
    ///  product or service.
    Reference? provider,

    /// [excluded] True if the indicated class of service is excluded from the
    /// plan, missing or False indicates the product or service is included in the
    ///  coverage.
    FhirBoolean? excluded,

    /// [excludedElement] Extensions for excluded
    @JsonKey(name: '_excluded') PrimitiveElement? excludedElement,

    /// [name] A short name or tag for the benefit.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [description] A richer description of the benefit or services covered.
    String? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [network] Is a flag to indicate whether the benefits refer to in-network
    ///  providers or out-of-network providers.
    CodeableConcept? network,

    /// [unit] Indicates if the benefits apply to an individual or to the family.
    CodeableConcept? unit,

    /// [term] The term or period of the values such as 'maximum lifetime
    ///  benefit' or 'maximum annual visits'.
    CodeableConcept? term,

    /// [benefit] Benefits used to date.
    List<CoverageEligibilityResponseBenefit>? benefit,

    /// [authorizationRequired] A boolean flag indicating whether a
    ///  preauthorization is required prior to actual service delivery.
    FhirBoolean? authorizationRequired,
    @JsonKey(name: '_authorizationRequired')

    /// [authorizationRequiredElement] Extensions for authorizationRequired
    PrimitiveElement? authorizationRequiredElement,

    /// [authorizationSupporting] Codes or comments regarding information or
    ///  actions associated with the preauthorization.
    List<CodeableConcept>? authorizationSupporting,

    /// [authorizationUrl] A web location for obtaining requirements or
    ///  descriptive information regarding the preauthorization.
    FhirUri? authorizationUrl,

    /// [authorizationUrlElement] Extensions for authorizationUrl
    @JsonKey(name: '_authorizationUrl')
    PrimitiveElement? authorizationUrlElement,
  }) = _CoverageEligibilityResponseItem;

  @override
  String get fhirType => 'CoverageEligibilityResponseItem';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CoverageEligibilityResponseItem.fromYaml(dynamic yaml) => yaml
          is String
      ? CoverageEligibilityResponseItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CoverageEligibilityResponseItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CoverageEligibilityResponseItem cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityResponseItem.fromJson(Map<String, dynamic> json) =>
      _$CoverageEligibilityResponseItemFromJson(json);

  /// Acts like a constructor, returns a [CoverageEligibilityResponseItem], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CoverageEligibilityResponseItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CoverageEligibilityResponseItemFromJson(json);
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

@freezed
@freezed
class CoverageEligibilityResponseBenefit
    with _$CoverageEligibilityResponseBenefit
    implements BackboneElement {
  const CoverageEligibilityResponseBenefit._();

  /// [CoverageEligibilityResponseBenefit] This resource provides eligibility
  /// and plan details from the processing of an CoverageEligibilityRequest
  ///  resource.
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
  /// [type] Classification of benefit being provided.
  ///
  /// [allowedUnsignedInt] The quantity of the benefit which is permitted under
  ///  the coverage.
  ///
  /// [allowedUnsignedIntElement] Extensions for allowedUnsignedInt
  ///
  /// [allowedString] The quantity of the benefit which is permitted under the
  ///  coverage.
  ///
  /// [allowedStringElement] Extensions for allowedString
  ///
  /// [allowedMoney] The quantity of the benefit which is permitted under the
  ///  coverage.
  ///
  /// [usedUnsignedInt] The quantity of the benefit which have been consumed to
  ///  date.
  ///
  /// [usedUnsignedIntElement] Extensions for usedUnsignedInt
  ///
  /// [usedString] The quantity of the benefit which have been consumed to
  ///  date.
  ///
  /// [usedStringElement] Extensions for usedString
  ///
  /// [usedMoney] The quantity of the benefit which have been consumed to date.
  const factory CoverageEligibilityResponseBenefit({
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

    /// [type] Classification of benefit being provided.
    required CodeableConcept type,

    /// [allowedUnsignedInt] The quantity of the benefit which is permitted under
    ///  the coverage.
    FhirUnsignedInt? allowedUnsignedInt,

    /// [allowedUnsignedIntElement] Extensions for allowedUnsignedInt
    @JsonKey(name: '_allowedUnsignedInt')
    PrimitiveElement? allowedUnsignedIntElement,

    /// [allowedString] The quantity of the benefit which is permitted under the
    ///  coverage.
    String? allowedString,

    /// [allowedStringElement] Extensions for allowedString
    @JsonKey(name: '_allowedString') PrimitiveElement? allowedStringElement,

    /// [allowedMoney] The quantity of the benefit which is permitted under the
    ///  coverage.
    Money? allowedMoney,

    /// [usedUnsignedInt] The quantity of the benefit which have been consumed to
    ///  date.
    FhirUnsignedInt? usedUnsignedInt,

    /// [usedUnsignedIntElement] Extensions for usedUnsignedInt
    @JsonKey(name: '_usedUnsignedInt') PrimitiveElement? usedUnsignedIntElement,

    /// [usedString] The quantity of the benefit which have been consumed to
    ///  date.
    String? usedString,

    /// [usedStringElement] Extensions for usedString
    @JsonKey(name: '_usedString') PrimitiveElement? usedStringElement,

    /// [usedMoney] The quantity of the benefit which have been consumed to date.
    Money? usedMoney,
  }) = _CoverageEligibilityResponseBenefit;

  @override
  String get fhirType => 'CoverageEligibilityResponseBenefit';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CoverageEligibilityResponseBenefit.fromYaml(dynamic yaml) => yaml
          is String
      ? CoverageEligibilityResponseBenefit.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CoverageEligibilityResponseBenefit.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CoverageEligibilityResponseBenefit cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory CoverageEligibilityResponseBenefit.fromJson(
          Map<String, dynamic> json) =>
      _$CoverageEligibilityResponseBenefitFromJson(json);

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [CoverageEligibilityResponseError] This resource provides eligibility
@freezed

/// [CoverageEligibilityResponseError] This resource provides eligibility
@freezed
class CoverageEligibilityResponseError
    with _$CoverageEligibilityResponseError
    implements BackboneElement {
  /// [CoverageEligibilityResponseError] This resource provides eligibility
  const CoverageEligibilityResponseError._();

  /// [CoverageEligibilityResponseError] This resource provides eligibility
  /// and plan details from the processing of an CoverageEligibilityRequest
  ///  resource.
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
  /// [code] An error code,from a specified code system, which details why the
  ///  eligibility check could not be performed.
  const factory CoverageEligibilityResponseError({
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

    /// [code] An error code,from a specified code system, which details why the
    ///  eligibility check could not be performed.
    required CodeableConcept code,
  }) = _CoverageEligibilityResponseError;

  @override
  String get fhirType => 'CoverageEligibilityResponseError';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CoverageEligibilityResponseError.fromYaml(dynamic yaml) => yaml
          is String
      ? CoverageEligibilityResponseError.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CoverageEligibilityResponseError.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CoverageEligibilityResponseError cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory CoverageEligibilityResponseError.fromJson(
          Map<String, dynamic> json) =>
      _$CoverageEligibilityResponseErrorFromJson(json);

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
