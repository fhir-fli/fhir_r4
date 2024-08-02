// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'claim_response.freezed.dart';
part 'claim_response.g.dart';

/// [ClaimResponse] This resource provides the adjudication details from the
@freezed
class ClaimResponse with _$ClaimResponse implements DomainResource {
  /// [ClaimResponse] This resource provides the adjudication details from the
  const ClaimResponse._();

  /// [ClaimResponse] This resource provides the adjudication details from the
  ///  processing of a Claim resource.
  ///
  /// [resourceType] This is a ClaimResponse resource
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
  /// [identifier] A unique identifier assigned to this claim response.
  ///
  /// [status] The status of the resource instance.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [type] A finer grained suite of claim type codes which may convey
  /// additional information such as Inpatient vs Outpatient and/or a specialty
  ///  service.
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
  /// have been supplied or are being considered and for whom actual for facast
  ///  reimbursement is sought.
  ///
  /// [created] The date this resource was created.
  ///
  /// [createdElement] Extensions for created
  ///
  /// [insurer] The party responsible for authorization, adjudication and
  ///  reimbursement.
  ///
  /// [requestor] The provider which is responsible for the claim,
  ///  predetermination or preauthorization.
  ///
  /// [request] Original request resource reference.
  ///
  /// [outcome] The outcome of the claim, predetermination, or preauthorization
  ///  processing.
  ///
  /// [outcomeElement] Extensions for outcome
  ///
  /// [disposition] A human readable description of the status of the
  ///  adjudication.
  ///
  /// [dispositionElement] Extensions for disposition
  ///
  /// [preAuthRef] Reference from the Insurer which is used in later
  ///  communications which refers to this adjudication.
  ///
  /// [preAuthRefElement] Extensions for preAuthRef
  ///
  /// [preAuthPeriod] The time frame during which this authorization is
  ///  effective.
  ///
  /// [payeeType] Type of Party to be reimbursed: subscriber, provider, other.
  ///
  /// [item] A claim line. Either a simple (a product or service) or a 'group'
  ///  of details which can also be a simple items or groups of sub-details.
  ///
  /// [addItem] The first-tier service adjudications for payor added product or
  ///  service lines.
  ///
  /// [adjudication] The adjudication results which are presented at the header
  ///  level rather than at the line-item or add-item levels.
  ///
  /// [total] Categorized monetary totals for the adjudication.
  ///
  /// [payment] Payment details for the adjudication of the claim.
  ///
  /// [fundsReserve] A code, used only on a response to a preauthorization, to
  ///  indicate whether the benefits payable have been reserved and for whom.
  ///
  /// [formCode] A code for the form to be used for printing the content.
  ///
  /// [form] The actual form, by reference or inclusion, for printing the
  ///  content or an EOB.
  ///
  /// [processNote] A note that describes or explains adjudication results in a
  ///  human readable form.
  ///
  /// [communicationRequest] Request for additional supporting or authorizing
  ///  information.
  ///
  /// [insurance] Financial instruments for reimbursement for the health care
  ///  products and services specified on the claim.
  ///
  /// [error] Errors encountered during the processing of the adjudication.
  const factory ClaimResponse({
    @Default(R4ResourceType.ClaimResponse)
    @JsonKey(unknownEnumValue: R4ResourceType.ClaimResponse)

    /// [resourceType] This is a ClaimResponse resource
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

    /// [identifier] A unique identifier assigned to this claim response.
    List<Identifier>? identifier,

    /// [status] The status of the resource instance.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [type] A finer grained suite of claim type codes which may convey
    /// additional information such as Inpatient vs Outpatient and/or a specialty
    ///  service.
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
    /// have been supplied or are being considered and for whom actual for facast
    ///  reimbursement is sought.
    required Reference patient,

    /// [created] The date this resource was created.
    FhirDateTime? created,

    /// [createdElement] Extensions for created
    @JsonKey(name: '_created') PrimitiveElement? createdElement,

    /// [insurer] The party responsible for authorization, adjudication and
    ///  reimbursement.
    required Reference insurer,

    /// [requestor] The provider which is responsible for the claim,
    ///  predetermination or preauthorization.
    Reference? requestor,

    /// [request] Original request resource reference.
    Reference? request,

    /// [outcome] The outcome of the claim, predetermination, or preauthorization
    ///  processing.
    FhirCode? outcome,

    /// [outcomeElement] Extensions for outcome
    @JsonKey(name: '_outcome') PrimitiveElement? outcomeElement,

    /// [disposition] A human readable description of the status of the
    ///  adjudication.
    String? disposition,

    /// [dispositionElement] Extensions for disposition
    @JsonKey(name: '_disposition') PrimitiveElement? dispositionElement,

    /// [preAuthRef] Reference from the Insurer which is used in later
    ///  communications which refers to this adjudication.
    String? preAuthRef,

    /// [preAuthRefElement] Extensions for preAuthRef
    @JsonKey(name: '_preAuthRef') PrimitiveElement? preAuthRefElement,

    /// [preAuthPeriod] The time frame during which this authorization is
    ///  effective.
    Period? preAuthPeriod,

    /// [payeeType] Type of Party to be reimbursed: subscriber, provider, other.
    CodeableConcept? payeeType,

    /// [item] A claim line. Either a simple (a product or service) or a 'group'
    ///  of details which can also be a simple items or groups of sub-details.
    List<ClaimResponseItem>? item,

    /// [addItem] The first-tier service adjudications for payor added product or
    ///  service lines.
    List<ClaimResponseAddItem>? addItem,

    /// [adjudication] The adjudication results which are presented at the header
    ///  level rather than at the line-item or add-item levels.
    List<ClaimResponseAdjudication>? adjudication,

    /// [total] Categorized monetary totals for the adjudication.
    List<ClaimResponseTotal>? total,

    /// [payment] Payment details for the adjudication of the claim.
    ClaimResponsePayment? payment,

    /// [fundsReserve] A code, used only on a response to a preauthorization, to
    ///  indicate whether the benefits payable have been reserved and for whom.
    CodeableConcept? fundsReserve,

    /// [formCode] A code for the form to be used for printing the content.
    CodeableConcept? formCode,

    /// [form] The actual form, by reference or inclusion, for printing the
    ///  content or an EOB.
    Attachment? form,

    /// [processNote] A note that describes or explains adjudication results in a
    ///  human readable form.
    List<ClaimResponseProcessNote>? processNote,

    /// [communicationRequest] Request for additional supporting or authorizing
    ///  information.
    List<Reference>? communicationRequest,

    /// [insurance] Financial instruments for reimbursement for the health care
    ///  products and services specified on the claim.
    List<ClaimResponseInsurance>? insurance,

    /// [error] Errors encountered during the processing of the adjudication.
    List<ClaimResponseError>? error,
  }) = _ClaimResponse;

  @override
  String get fhirType => 'ClaimResponse';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClaimResponse.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponse.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimResponse.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimResponse cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClaimResponse.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseFromJson(json);

  /// Acts like a constructor, returns a [ClaimResponse], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClaimResponse.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimResponseFromJson(json);
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

/// [ClaimResponseItem] This resource provides the adjudication details from
@freezed

/// [ClaimResponseItem] This resource provides the adjudication details from
@freezed
class ClaimResponseItem with _$ClaimResponseItem implements BackboneElement {
  /// [ClaimResponseItem] This resource provides the adjudication details from
  const ClaimResponseItem._();

  /// [ClaimResponseItem] This resource provides the adjudication details from
  ///  the processing of a Claim resource.
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
  /// [itemSequence] A number to uniquely reference the claim item entries.
  ///
  /// [itemSequenceElement] Extensions for itemSequence
  ///
  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  ///
  /// [noteNumberElement] Extensions for noteNumber
  ///
  /// [adjudication] If this item is a group then the values here are a summary
  /// of the adjudication of the detail items. If this item is a simple product
  ///  or service then this is the result of the adjudication of this item.
  ///
  /// [detail] A claim detail. Either a simple (a product or service) or a
  ///  'group' of sub-details which are simple items.
  const factory ClaimResponseItem({
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

    /// [itemSequence] A number to uniquely reference the claim item entries.
    FhirPositiveInt? itemSequence,

    /// [itemSequenceElement] Extensions for itemSequence
    @JsonKey(name: '_itemSequence') PrimitiveElement? itemSequenceElement,

    /// [noteNumber] The numbers associated with notes below which apply to the
    ///  adjudication of this item.
    List<FhirPositiveInt>? noteNumber,

    /// [noteNumberElement] Extensions for noteNumber
    @JsonKey(name: '_noteNumber') List<PrimitiveElement>? noteNumberElement,

    /// [adjudication] If this item is a group then the values here are a summary
    /// of the adjudication of the detail items. If this item is a simple product
    ///  or service then this is the result of the adjudication of this item.
    required List<ClaimResponseAdjudication> adjudication,

    /// [detail] A claim detail. Either a simple (a product or service) or a
    ///  'group' of sub-details which are simple items.
    List<ClaimResponseDetail>? detail,
  }) = _ClaimResponseItem;

  @override
  String get fhirType => 'ClaimResponseItem';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClaimResponseItem.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimResponseItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimResponseItem cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseItem.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseItemFromJson(json);

  /// Acts like a constructor, returns a [ClaimResponseItem], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClaimResponseItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimResponseItemFromJson(json);
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

/// [ClaimResponseAdjudication] This resource provides the adjudication
@freezed

/// [ClaimResponseAdjudication] This resource provides the adjudication
@freezed
class ClaimResponseAdjudication
    with _$ClaimResponseAdjudication
    implements BackboneElement {
  /// [ClaimResponseAdjudication] This resource provides the adjudication
  const ClaimResponseAdjudication._();

  /// [ClaimResponseAdjudication] This resource provides the adjudication
  ///  details from the processing of a Claim resource.
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
  /// [category] A code to indicate the information type of this adjudication
  /// record. Information types may include the value submitted, maximum values
  /// or percentages allowed or payable under the plan, amounts that: the
  /// patient is responsible for in aggregate or pertaining to this item;
  ///  amounts paid by other coverages; and, the benefit payable for this item.
  ///
  /// [reason] A code supporting the understanding of the adjudication result
  ///  and explaining variance from expected amount.
  ///
  /// [amount] Monetary amount associated with the category.
  ///
  /// [value] A non-monetary value associated with the category. Mutually
  ///  exclusive to the amount element above.
  ///
  /// [valueElement] Extensions for value
  const factory ClaimResponseAdjudication({
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

    /// [category] A code to indicate the information type of this adjudication
    /// record. Information types may include the value submitted, maximum values
    /// or percentages allowed or payable under the plan, amounts that: the
    /// patient is responsible for in aggregate or pertaining to this item;
    ///  amounts paid by other coverages; and, the benefit payable for this item.
    required CodeableConcept category,

    /// [reason] A code supporting the understanding of the adjudication result
    ///  and explaining variance from expected amount.
    CodeableConcept? reason,

    /// [amount] Monetary amount associated with the category.
    Money? amount,

    /// [value] A non-monetary value associated with the category. Mutually
    ///  exclusive to the amount element above.
    FhirDecimal? value,

    /// [valueElement] Extensions for value
    @JsonKey(name: '_value') PrimitiveElement? valueElement,
  }) = _ClaimResponseAdjudication;

  @override
  String get fhirType => 'ClaimResponseAdjudication';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClaimResponseAdjudication.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseAdjudication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimResponseAdjudication.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimResponseAdjudication cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseAdjudication.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseAdjudicationFromJson(json);

  /// Acts like a constructor, returns a [ClaimResponseAdjudication], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClaimResponseAdjudication.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimResponseAdjudicationFromJson(json);
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

/// [ClaimResponseDetail] This resource provides the adjudication details
@freezed

/// [ClaimResponseDetail] This resource provides the adjudication details
@freezed
class ClaimResponseDetail
    with _$ClaimResponseDetail
    implements BackboneElement {
  /// [ClaimResponseDetail] This resource provides the adjudication details
  const ClaimResponseDetail._();

  /// [ClaimResponseDetail] This resource provides the adjudication details
  ///  from the processing of a Claim resource.
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
  /// [detailSequence] A number to uniquely reference the claim detail entry.
  ///
  /// [detailSequenceElement] Extensions for detailSequence
  ///
  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  ///
  /// [noteNumberElement] Extensions for noteNumber
  ///
  /// [adjudication] The adjudication results.
  ///
  /// [subDetail] A sub-detail adjudication of a simple product or service.
  const factory ClaimResponseDetail({
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

    /// [detailSequence] A number to uniquely reference the claim detail entry.
    FhirPositiveInt? detailSequence,

    /// [detailSequenceElement] Extensions for detailSequence
    @JsonKey(name: '_detailSequence') PrimitiveElement? detailSequenceElement,

    /// [noteNumber] The numbers associated with notes below which apply to the
    ///  adjudication of this item.
    List<FhirPositiveInt>? noteNumber,

    /// [noteNumberElement] Extensions for noteNumber
    @JsonKey(name: '_noteNumber') List<PrimitiveElement>? noteNumberElement,

    /// [adjudication] The adjudication results.
    required List<ClaimResponseAdjudication> adjudication,

    /// [subDetail] A sub-detail adjudication of a simple product or service.
    List<ClaimResponseSubDetail>? subDetail,
  }) = _ClaimResponseDetail;

  @override
  String get fhirType => 'ClaimResponseDetail';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClaimResponseDetail.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimResponseDetail.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimResponseDetail cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseDetail.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseDetailFromJson(json);

  /// Acts like a constructor, returns a [ClaimResponseDetail], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClaimResponseDetail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimResponseDetailFromJson(json);
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

/// [ClaimResponseSubDetail] This resource provides the adjudication details
@freezed

/// [ClaimResponseSubDetail] This resource provides the adjudication details
@freezed
class ClaimResponseSubDetail
    with _$ClaimResponseSubDetail
    implements BackboneElement {
  /// [ClaimResponseSubDetail] This resource provides the adjudication details
  const ClaimResponseSubDetail._();

  /// [ClaimResponseSubDetail] This resource provides the adjudication details
  ///  from the processing of a Claim resource.
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
  /// [subDetailSequence] A number to uniquely reference the claim sub-detail
  ///  entry.
  ///
  /// [subDetailSequenceElement] Extensions for subDetailSequence
  ///
  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  ///
  /// [noteNumberElement] Extensions for noteNumber
  ///
  /// [adjudication] The adjudication results.
  const factory ClaimResponseSubDetail({
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

    /// [subDetailSequence] A number to uniquely reference the claim sub-detail
    ///  entry.
    FhirPositiveInt? subDetailSequence,

    /// [subDetailSequenceElement] Extensions for subDetailSequence
    @JsonKey(name: '_subDetailSequence')
    PrimitiveElement? subDetailSequenceElement,

    /// [noteNumber] The numbers associated with notes below which apply to the
    ///  adjudication of this item.
    List<FhirPositiveInt>? noteNumber,

    /// [noteNumberElement] Extensions for noteNumber
    @JsonKey(name: '_noteNumber') List<PrimitiveElement>? noteNumberElement,

    /// [adjudication] The adjudication results.
    List<ClaimResponseAdjudication>? adjudication,
  }) = _ClaimResponseSubDetail;

  @override
  String get fhirType => 'ClaimResponseSubDetail';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClaimResponseSubDetail.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseSubDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimResponseSubDetail.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimResponseSubDetail cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseSubDetail.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseSubDetailFromJson(json);

  /// Acts like a constructor, returns a [ClaimResponseSubDetail], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClaimResponseSubDetail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimResponseSubDetailFromJson(json);
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

/// [ClaimResponseAddItem] This resource provides the adjudication details
@freezed

/// [ClaimResponseAddItem] This resource provides the adjudication details
@freezed
class ClaimResponseAddItem
    with _$ClaimResponseAddItem
    implements BackboneElement {
  /// [ClaimResponseAddItem] This resource provides the adjudication details
  const ClaimResponseAddItem._();

  /// [ClaimResponseAddItem] This resource provides the adjudication details
  ///  from the processing of a Claim resource.
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
  /// [itemSequence] Claim items which this service line is intended to
  ///  replace.
  ///
  /// [itemSequenceElement] Extensions for itemSequence
  ///
  /// [detailSequence] The sequence number of the details within the claim item
  ///  which this line is intended to replace.
  ///
  /// [detailSequenceElement] Extensions for detailSequence
  ///
  /// [subdetailSequence] The sequence number of the sub-details within the
  ///  details within the claim item which this line is intended to replace.
  ///
  /// [subdetailSequenceElement] Extensions for subdetailSequence
  ///
  /// [provider] The providers who are authorized for the services rendered to
  ///  the patient.
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
  /// [bodySite] Physical service site on the patient (limb, tooth, etc.).
  ///
  /// [subSite] A region or surface of the bodySite, e.g. limb region or tooth
  ///  surface(s).
  ///
  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  ///
  /// [noteNumberElement] Extensions for noteNumber
  ///
  /// [adjudication] The adjudication results.
  ///
  /// [detail] The second-tier service adjudications for payor added services.
  const factory ClaimResponseAddItem({
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

    /// [itemSequence] Claim items which this service line is intended to
    ///  replace.
    List<FhirPositiveInt>? itemSequence,

    /// [itemSequenceElement] Extensions for itemSequence
    @JsonKey(name: '_itemSequence') List<PrimitiveElement>? itemSequenceElement,

    /// [detailSequence] The sequence number of the details within the claim item
    ///  which this line is intended to replace.
    List<FhirPositiveInt>? detailSequence,

    /// [detailSequenceElement] Extensions for detailSequence
    @JsonKey(name: '_detailSequence')
    List<PrimitiveElement>? detailSequenceElement,

    /// [subdetailSequence] The sequence number of the sub-details within the
    ///  details within the claim item which this line is intended to replace.
    List<FhirPositiveInt>? subdetailSequence,
    @JsonKey(name: '_subdetailSequence')

    /// [subdetailSequenceElement] Extensions for subdetailSequence
    List<PrimitiveElement>? subdetailSequenceElement,

    /// [provider] The providers who are authorized for the services rendered to
    ///  the patient.
    List<Reference>? provider,

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

    /// [bodySite] Physical service site on the patient (limb, tooth, etc.).
    CodeableConcept? bodySite,

    /// [subSite] A region or surface of the bodySite, e.g. limb region or tooth
    ///  surface(s).
    List<CodeableConcept>? subSite,

    /// [noteNumber] The numbers associated with notes below which apply to the
    ///  adjudication of this item.
    List<FhirPositiveInt>? noteNumber,

    /// [noteNumberElement] Extensions for noteNumber
    @JsonKey(name: '_noteNumber') List<PrimitiveElement>? noteNumberElement,

    /// [adjudication] The adjudication results.
    required List<ClaimResponseAdjudication> adjudication,

    /// [detail] The second-tier service adjudications for payor added services.
    List<ClaimResponseDetail1>? detail,
  }) = _ClaimResponseAddItem;

  @override
  String get fhirType => 'ClaimResponseAddItem';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClaimResponseAddItem.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseAddItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimResponseAddItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimResponseAddItem cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseAddItem.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseAddItemFromJson(json);

  /// Acts like a constructor, returns a [ClaimResponseAddItem], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClaimResponseAddItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimResponseAddItemFromJson(json);
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

/// [ClaimResponseDetail1] This resource provides the adjudication details
@freezed

/// [ClaimResponseDetail1] This resource provides the adjudication details
@freezed
class ClaimResponseDetail1
    with _$ClaimResponseDetail1
    implements BackboneElement {
  /// [ClaimResponseDetail1] This resource provides the adjudication details
  const ClaimResponseDetail1._();

  /// [ClaimResponseDetail1] This resource provides the adjudication details
  ///  from the processing of a Claim resource.
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
  /// [productOrService] When the value is a group code then this item collects
  /// a set of related claim details, otherwise this contains the product,
  ///  service, drug or other billing code for the item.
  ///
  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
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
  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  ///
  /// [noteNumberElement] Extensions for noteNumber
  ///
  /// [adjudication] The adjudication results.
  ///
  /// [subDetail] The third-tier service adjudications for payor added
  ///  services.
  const factory ClaimResponseDetail1({
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

    /// [productOrService] When the value is a group code then this item collects
    /// a set of related claim details, otherwise this contains the product,
    ///  service, drug or other billing code for the item.
    required CodeableConcept productOrService,

    /// [modifier] Item typification or modifiers codes to convey additional
    ///  context for the product or service.
    List<CodeableConcept>? modifier,

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

    /// [noteNumber] The numbers associated with notes below which apply to the
    ///  adjudication of this item.
    List<FhirPositiveInt>? noteNumber,

    /// [noteNumberElement] Extensions for noteNumber
    @JsonKey(name: '_noteNumber') List<PrimitiveElement>? noteNumberElement,

    /// [adjudication] The adjudication results.
    required List<ClaimResponseAdjudication> adjudication,

    /// [subDetail] The third-tier service adjudications for payor added
    ///  services.
    List<ClaimResponseSubDetail1>? subDetail,
  }) = _ClaimResponseDetail1;

  @override
  String get fhirType => 'ClaimResponseDetail1';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClaimResponseDetail1.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseDetail1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimResponseDetail1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimResponseDetail1 cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseDetail1.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseDetail1FromJson(json);

  /// Acts like a constructor, returns a [ClaimResponseDetail1], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClaimResponseDetail1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimResponseDetail1FromJson(json);
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

/// [ClaimResponseSubDetail1] This resource provides the adjudication
@freezed

/// [ClaimResponseSubDetail1] This resource provides the adjudication
@freezed
class ClaimResponseSubDetail1
    with _$ClaimResponseSubDetail1
    implements BackboneElement {
  /// [ClaimResponseSubDetail1] This resource provides the adjudication
  const ClaimResponseSubDetail1._();

  /// [ClaimResponseSubDetail1] This resource provides the adjudication
  ///  details from the processing of a Claim resource.
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
  /// [productOrService] When the value is a group code then this item collects
  /// a set of related claim details, otherwise this contains the product,
  ///  service, drug or other billing code for the item.
  ///
  /// [modifier] Item typification or modifiers codes to convey additional
  ///  context for the product or service.
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
  /// [noteNumber] The numbers associated with notes below which apply to the
  ///  adjudication of this item.
  ///
  /// [noteNumberElement] Extensions for noteNumber
  ///
  /// [adjudication] The adjudication results.
  const factory ClaimResponseSubDetail1({
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

    /// [productOrService] When the value is a group code then this item collects
    /// a set of related claim details, otherwise this contains the product,
    ///  service, drug or other billing code for the item.
    required CodeableConcept productOrService,

    /// [modifier] Item typification or modifiers codes to convey additional
    ///  context for the product or service.
    List<CodeableConcept>? modifier,

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

    /// [noteNumber] The numbers associated with notes below which apply to the
    ///  adjudication of this item.
    List<FhirPositiveInt>? noteNumber,

    /// [noteNumberElement] Extensions for noteNumber
    @JsonKey(name: '_noteNumber') List<PrimitiveElement>? noteNumberElement,

    /// [adjudication] The adjudication results.
    required List<ClaimResponseAdjudication> adjudication,
  }) = _ClaimResponseSubDetail1;

  @override
  String get fhirType => 'ClaimResponseSubDetail1';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClaimResponseSubDetail1.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseSubDetail1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimResponseSubDetail1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimResponseSubDetail1 cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseSubDetail1.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseSubDetail1FromJson(json);

  /// Acts like a constructor, returns a [ClaimResponseSubDetail1], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClaimResponseSubDetail1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimResponseSubDetail1FromJson(json);
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

/// [ClaimResponseTotal] This resource provides the adjudication details
@freezed

/// [ClaimResponseTotal] This resource provides the adjudication details
@freezed
class ClaimResponseTotal with _$ClaimResponseTotal implements BackboneElement {
  /// [ClaimResponseTotal] This resource provides the adjudication details
  const ClaimResponseTotal._();

  /// [ClaimResponseTotal] This resource provides the adjudication details
  ///  from the processing of a Claim resource.
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
  /// [category] A code to indicate the information type of this adjudication
  /// record. Information types may include: the value submitted, maximum values
  /// or percentages allowed or payable under the plan, amounts that the patient
  /// is responsible for in aggregate or pertaining to this item, amounts paid
  ///  by other coverages, and the benefit payable for this item.
  ///
  /// [amount] Monetary total amount associated with the category.
  const factory ClaimResponseTotal({
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

    /// [category] A code to indicate the information type of this adjudication
    /// record. Information types may include: the value submitted, maximum values
    /// or percentages allowed or payable under the plan, amounts that the patient
    /// is responsible for in aggregate or pertaining to this item, amounts paid
    ///  by other coverages, and the benefit payable for this item.
    required CodeableConcept category,

    /// [amount] Monetary total amount associated with the category.
    required Money amount,
  }) = _ClaimResponseTotal;

  @override
  String get fhirType => 'ClaimResponseTotal';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClaimResponseTotal.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseTotal.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimResponseTotal.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimResponseTotal cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseTotal.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseTotalFromJson(json);

  /// Acts like a constructor, returns a [ClaimResponseTotal], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClaimResponseTotal.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimResponseTotalFromJson(json);
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

/// [ClaimResponsePayment] This resource provides the adjudication details
@freezed

/// [ClaimResponsePayment] This resource provides the adjudication details
@freezed
class ClaimResponsePayment
    with _$ClaimResponsePayment
    implements BackboneElement {
  /// [ClaimResponsePayment] This resource provides the adjudication details
  const ClaimResponsePayment._();

  /// [ClaimResponsePayment] This resource provides the adjudication details
  ///  from the processing of a Claim resource.
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
  /// [type] Whether this represents partial or complete payment of the
  ///  benefits payable.
  ///
  /// [adjustment] Total amount of all adjustments to this payment included in
  ///  this transaction which are not related to this claim's adjudication.
  ///
  /// [adjustmentReason] Reason for the payment adjustment.
  ///
  /// [date] Estimated date the payment will be issued or the actual issue date
  ///  of payment.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [amount] Benefits payable less any payment adjustment.
  ///
  /// [identifier] Issuer's unique identifier for the payment instrument.
  const factory ClaimResponsePayment({
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

    /// [type] Whether this represents partial or complete payment of the
    ///  benefits payable.
    required CodeableConcept type,

    /// [adjustment] Total amount of all adjustments to this payment included in
    ///  this transaction which are not related to this claim's adjudication.
    Money? adjustment,

    /// [adjustmentReason] Reason for the payment adjustment.
    CodeableConcept? adjustmentReason,

    /// [date] Estimated date the payment will be issued or the actual issue date
    ///  of payment.
    FhirDate? date,

    /// [dateElement] Extensions for date
    @JsonKey(name: '_date') PrimitiveElement? dateElement,

    /// [amount] Benefits payable less any payment adjustment.
    required Money amount,

    /// [identifier] Issuer's unique identifier for the payment instrument.
    Identifier? identifier,
  }) = _ClaimResponsePayment;

  @override
  String get fhirType => 'ClaimResponsePayment';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClaimResponsePayment.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponsePayment.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimResponsePayment.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimResponsePayment cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClaimResponsePayment.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponsePaymentFromJson(json);

  /// Acts like a constructor, returns a [ClaimResponsePayment], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClaimResponsePayment.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimResponsePaymentFromJson(json);
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

/// [ClaimResponseProcessNote] This resource provides the adjudication
@freezed

/// [ClaimResponseProcessNote] This resource provides the adjudication
@freezed
class ClaimResponseProcessNote
    with _$ClaimResponseProcessNote
    implements BackboneElement {
  /// [ClaimResponseProcessNote] This resource provides the adjudication
  const ClaimResponseProcessNote._();

  /// [ClaimResponseProcessNote] This resource provides the adjudication
  ///  details from the processing of a Claim resource.
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
  /// [number] A number to uniquely identify a note entry.
  ///
  /// [numberElement] Extensions for number
  ///
  /// [type] The business purpose of the note text.
  ///
  /// [typeElement] Extensions for type
  ///
  /// [text] The explanation or description associated with the processing.
  ///
  /// [textElement] Extensions for text
  ///
  /// [language] A code to define the language used in the text of the note.
  const factory ClaimResponseProcessNote({
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

    /// [number] A number to uniquely identify a note entry.
    FhirPositiveInt? number,

    /// [numberElement] Extensions for number
    @JsonKey(name: '_number') PrimitiveElement? numberElement,

    /// [type] The business purpose of the note text.
    FhirCode? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,

    /// [text] The explanation or description associated with the processing.
    String? text,

    /// [textElement] Extensions for text
    @JsonKey(name: '_text') PrimitiveElement? textElement,

    /// [language] A code to define the language used in the text of the note.
    CodeableConcept? language,
  }) = _ClaimResponseProcessNote;

  @override
  String get fhirType => 'ClaimResponseProcessNote';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClaimResponseProcessNote.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseProcessNote.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimResponseProcessNote.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimResponseProcessNote cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseProcessNote.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseProcessNoteFromJson(json);

  /// Acts like a constructor, returns a [ClaimResponseProcessNote], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClaimResponseProcessNote.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimResponseProcessNoteFromJson(json);
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

/// [ClaimResponseInsurance] This resource provides the adjudication details
@freezed

/// [ClaimResponseInsurance] This resource provides the adjudication details
@freezed
class ClaimResponseInsurance
    with _$ClaimResponseInsurance
    implements BackboneElement {
  /// [ClaimResponseInsurance] This resource provides the adjudication details
  const ClaimResponseInsurance._();

  /// [ClaimResponseInsurance] This resource provides the adjudication details
  ///  from the processing of a Claim resource.
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
  /// [claimResponse] The result of the adjudication of the line items for the
  ///  Coverage specified in this insurance.
  const factory ClaimResponseInsurance({
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

    /// [claimResponse] The result of the adjudication of the line items for the
    ///  Coverage specified in this insurance.
    Reference? claimResponse,
  }) = _ClaimResponseInsurance;

  @override
  String get fhirType => 'ClaimResponseInsurance';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClaimResponseInsurance.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseInsurance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimResponseInsurance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimResponseInsurance cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseInsurance.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseInsuranceFromJson(json);

  /// Acts like a constructor, returns a [ClaimResponseInsurance], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClaimResponseInsurance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimResponseInsuranceFromJson(json);
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

/// [ClaimResponseError] This resource provides the adjudication details
@freezed

/// [ClaimResponseError] This resource provides the adjudication details
@freezed
class ClaimResponseError with _$ClaimResponseError implements BackboneElement {
  /// [ClaimResponseError] This resource provides the adjudication details
  const ClaimResponseError._();

  /// [ClaimResponseError] This resource provides the adjudication details
  ///  from the processing of a Claim resource.
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
  /// [itemSequence] The sequence number of the line item submitted which
  /// contains the error. This value is omitted when the error occurs outside of
  ///  the item structure.
  ///
  /// [itemSequenceElement] Extensions for itemSequence
  ///
  /// [detailSequence] The sequence number of the detail within the line item
  /// submitted which contains the error. This value is omitted when the error
  ///  occurs outside of the item structure.
  ///
  /// [detailSequenceElement] Extensions for detailSequence
  ///
  /// [subDetailSequence] The sequence number of the sub-detail within the
  /// detail within the line item submitted which contains the error. This value
  ///  is omitted when the error occurs outside of the item structure.
  ///
  /// [subDetailSequenceElement] Extensions for subDetailSequence
  ///
  /// [code] An error code, from a specified code system, which details why the
  ///  claim could not be adjudicated.
  const factory ClaimResponseError({
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

    /// [itemSequence] The sequence number of the line item submitted which
    /// contains the error. This value is omitted when the error occurs outside of
    ///  the item structure.
    FhirPositiveInt? itemSequence,

    /// [itemSequenceElement] Extensions for itemSequence
    @JsonKey(name: '_itemSequence') PrimitiveElement? itemSequenceElement,

    /// [detailSequence] The sequence number of the detail within the line item
    /// submitted which contains the error. This value is omitted when the error
    ///  occurs outside of the item structure.
    FhirPositiveInt? detailSequence,

    /// [detailSequenceElement] Extensions for detailSequence
    @JsonKey(name: '_detailSequence') PrimitiveElement? detailSequenceElement,

    /// [subDetailSequence] The sequence number of the sub-detail within the
    /// detail within the line item submitted which contains the error. This value
    ///  is omitted when the error occurs outside of the item structure.
    FhirPositiveInt? subDetailSequence,

    /// [subDetailSequenceElement] Extensions for subDetailSequence
    @JsonKey(name: '_subDetailSequence')
    PrimitiveElement? subDetailSequenceElement,

    /// [code] An error code, from a specified code system, which details why the
    ///  claim could not be adjudicated.
    required CodeableConcept code,
  }) = _ClaimResponseError;

  @override
  String get fhirType => 'ClaimResponseError';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClaimResponseError.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseError.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimResponseError.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimResponseError cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClaimResponseError.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseErrorFromJson(json);

  /// Acts like a constructor, returns a [ClaimResponseError], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClaimResponseError.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimResponseErrorFromJson(json);
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
