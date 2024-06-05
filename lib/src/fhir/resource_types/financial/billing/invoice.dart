// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'invoice.freezed.dart';
part 'invoice.g.dart';

/// [Invoice] Invoice containing collected ChargeItems from an Account with
@freezed
class Invoice with _$Invoice implements DomainResource {
  /// [Invoice] Invoice containing collected ChargeItems from an Account with
  const Invoice._();

  /// [Invoice] Invoice containing collected ChargeItems from an Account with
  ///  calculated individual and total price for Billing purpose.
  ///
  /// [resourceType] This is a Invoice resource
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
  /// [identifier] Identifier of this Invoice, often used for reference in
  ///  correspondence about this invoice or for tracking of payments.
  ///
  /// [status] The current state of the Invoice.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [cancelledReason] In case of Invoice cancellation a reason must be given
  ///  (entered in error, superseded by corrected invoice etc.).
  ///
  /// [cancelledReasonElement] Extensions for cancelledReason
  ///
  /// [type] Type of Invoice depending on domain, realm an usage (e.g.
  ///  internal/external, dental, preliminary).
  ///
  /// [subject] The individual or set of individuals receiving the goods and
  ///  services billed in this invoice.
  ///
  /// [recipient] The individual or Organization responsible for balancing of
  ///  this invoice.
  ///
  /// [date] Date/time(s) of when this Invoice was posted.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [participant] Indicates who or what performed or participated in the
  ///  charged service.
  ///
  /// [issuer] The organizationissuing the Invoice.
  ///
  /// [account] Account which is supposed to be balanced with this Invoice.
  ///
  /// [lineItem] Each line item represents one charge for goods and services
  /// rendered. Details such as date, code and amount are found in the
  ///  referenced ChargeItem resource.
  ///
  /// [totalPriceComponent] The total amount for the Invoice may be calculated
  /// as the sum of the line items with surcharges/deductions that apply in
  /// certain conditions.  The priceComponent element can be used to offer
  /// transparency to the recipient of the Invoice of how the total price was
  ///  calculated.
  ///
  /// [totalNet] Invoice total , taxes excluded.
  ///
  /// [totalGross] Invoice total, tax included.
  ///
  /// [paymentTerms] Payment details such as banking details, period of
  ///  payment, deductibles, methods of payment.
  ///
  /// [paymentTermsElement] Extensions for paymentTerms
  ///
  /// [note] Comments made about the invoice by the issuer, subject, or other
  ///  participants.
  const factory Invoice({
    @Default(R4ResourceType.Invoice)
    @JsonKey(unknownEnumValue: R4ResourceType.Invoice)

    /// [resourceType] This is a Invoice resource
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

    /// [identifier] Identifier of this Invoice, often used for reference in
    ///  correspondence about this invoice or for tracking of payments.
    List<Identifier>? identifier,

    /// [status] The current state of the Invoice.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [cancelledReason] In case of Invoice cancellation a reason must be given
    ///  (entered in error, superseded by corrected invoice etc.).
    String? cancelledReason,

    /// [cancelledReasonElement] Extensions for cancelledReason
    @JsonKey(name: '_cancelledReason') PrimitiveElement? cancelledReasonElement,

    /// [type] Type of Invoice depending on domain, realm an usage (e.g.
    ///  internal/external, dental, preliminary).
    CodeableConcept? type,

    /// [subject] The individual or set of individuals receiving the goods and
    ///  services billed in this invoice.
    Reference? subject,

    /// [recipient] The individual or Organization responsible for balancing of
    ///  this invoice.
    Reference? recipient,

    /// [date] Date/time(s) of when this Invoice was posted.
    FhirDateTime? date,

    /// [dateElement] Extensions for date
    @JsonKey(name: '_date') PrimitiveElement? dateElement,

    /// [participant] Indicates who or what performed or participated in the
    ///  charged service.
    List<InvoiceParticipant>? participant,

    /// [issuer] The organizationissuing the Invoice.
    Reference? issuer,

    /// [account] Account which is supposed to be balanced with this Invoice.
    Reference? account,

    /// [lineItem] Each line item represents one charge for goods and services
    /// rendered. Details such as date, code and amount are found in the
    ///  referenced ChargeItem resource.
    List<InvoiceLineItem>? lineItem,

    /// [totalPriceComponent] The total amount for the Invoice may be calculated
    /// as the sum of the line items with surcharges/deductions that apply in
    /// certain conditions.  The priceComponent element can be used to offer
    /// transparency to the recipient of the Invoice of how the total price was
    ///  calculated.
    List<InvoicePriceComponent>? totalPriceComponent,

    /// [totalNet] Invoice total , taxes excluded.
    Money? totalNet,

    /// [totalGross] Invoice total, tax included.
    Money? totalGross,

    /// [paymentTerms] Payment details such as banking details, period of
    ///  payment, deductibles, methods of payment.
    FhirMarkdown? paymentTerms,

    /// [paymentTermsElement] Extensions for paymentTerms
    @JsonKey(name: '_paymentTerms') PrimitiveElement? paymentTermsElement,

    /// [note] Comments made about the invoice by the issuer, subject, or other
    ///  participants.
    List<Annotation>? note,
  }) = _Invoice;

  @override
  String get fhirType => 'Invoice';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Invoice.fromYaml(dynamic yaml) => yaml is String
      ? Invoice.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Invoice.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Invoice cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);

  /// Acts like a constructor, returns a [Invoice], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Invoice.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InvoiceFromJson(json);
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

/// [InvoiceParticipant] Invoice containing collected ChargeItems from an
@freezed

/// [InvoiceParticipant] Invoice containing collected ChargeItems from an
@freezed
class InvoiceParticipant with _$InvoiceParticipant implements BackboneElement {
  /// [InvoiceParticipant] Invoice containing collected ChargeItems from an
  const InvoiceParticipant._();

  /// [InvoiceParticipant] Invoice containing collected ChargeItems from an
  ///  Account with calculated individual and total price for Billing purpose.
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
  /// [role] Describes the type of involvement (e.g. transcriptionist, creator
  /// etc.). If the invoice has been created automatically, the Participant may
  ///  be a billing engine or another kind of device.
  ///
  /// [actor] The device, practitioner, etc. who performed or participated in
  ///  the service.
  const factory InvoiceParticipant({
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

    /// [role] Describes the type of involvement (e.g. transcriptionist, creator
    /// etc.). If the invoice has been created automatically, the Participant may
    ///  be a billing engine or another kind of device.
    CodeableConcept? role,

    /// [actor] The device, practitioner, etc. who performed or participated in
    ///  the service.
    required Reference actor,
  }) = _InvoiceParticipant;

  @override
  String get fhirType => 'InvoiceParticipant';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory InvoiceParticipant.fromYaml(dynamic yaml) => yaml is String
      ? InvoiceParticipant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? InvoiceParticipant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'InvoiceParticipant cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory InvoiceParticipant.fromJson(Map<String, dynamic> json) =>
      _$InvoiceParticipantFromJson(json);

  /// Acts like a constructor, returns a [InvoiceParticipant], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory InvoiceParticipant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InvoiceParticipantFromJson(json);
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

/// [InvoiceLineItem] Invoice containing collected ChargeItems from an
@freezed

/// [InvoiceLineItem] Invoice containing collected ChargeItems from an
@freezed
class InvoiceLineItem with _$InvoiceLineItem implements BackboneElement {
  /// [InvoiceLineItem] Invoice containing collected ChargeItems from an
  const InvoiceLineItem._();

  /// [InvoiceLineItem] Invoice containing collected ChargeItems from an
  ///  Account with calculated individual and total price for Billing purpose.
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
  /// [sequence] Sequence in which the items appear on the invoice.
  ///
  /// [sequenceElement] Extensions for sequence
  ///
  /// [chargeItemReference] The ChargeItem contains information such as the
  /// billing code, date, amount etc. If no further details are required for the
  /// lineItem, inline billing codes can be added using the CodeableConcept data
  ///  type instead of the Reference.
  ///
  /// [chargeItemCodeableConcept] The ChargeItem contains information such as
  /// the billing code, date, amount etc. If no further details are required for
  /// the lineItem, inline billing codes can be added using the CodeableConcept
  ///  data type instead of the Reference.
  ///
  /// [priceComponent] The price for a ChargeItem may be calculated as a base
  /// price with surcharges/deductions that apply in certain conditions. A
  /// ChargeItemDefinition resource that defines the prices, factors and
  /// conditions that apply to a billing code is currently under development.
  /// The priceComponent element can be used to offer transparency to the
  ///  recipient of the Invoice as to how the prices have been calculated.
  const factory InvoiceLineItem({
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

    /// [sequence] Sequence in which the items appear on the invoice.
    FhirPositiveInt? sequence,

    /// [sequenceElement] Extensions for sequence
    @JsonKey(name: '_sequence') PrimitiveElement? sequenceElement,

    /// [chargeItemReference] The ChargeItem contains information such as the
    /// billing code, date, amount etc. If no further details are required for the
    /// lineItem, inline billing codes can be added using the CodeableConcept data
    ///  type instead of the Reference.
    Reference? chargeItemReference,

    /// [chargeItemCodeableConcept] The ChargeItem contains information such as
    /// the billing code, date, amount etc. If no further details are required for
    /// the lineItem, inline billing codes can be added using the CodeableConcept
    ///  data type instead of the Reference.
    CodeableConcept? chargeItemCodeableConcept,

    /// [priceComponent] The price for a ChargeItem may be calculated as a base
    /// price with surcharges/deductions that apply in certain conditions. A
    /// ChargeItemDefinition resource that defines the prices, factors and
    /// conditions that apply to a billing code is currently under development.
    /// The priceComponent element can be used to offer transparency to the
    ///  recipient of the Invoice as to how the prices have been calculated.
    List<InvoicePriceComponent>? priceComponent,
  }) = _InvoiceLineItem;

  @override
  String get fhirType => 'InvoiceLineItem';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory InvoiceLineItem.fromYaml(dynamic yaml) => yaml is String
      ? InvoiceLineItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? InvoiceLineItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'InvoiceLineItem cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory InvoiceLineItem.fromJson(Map<String, dynamic> json) =>
      _$InvoiceLineItemFromJson(json);

  /// Acts like a constructor, returns a [InvoiceLineItem], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory InvoiceLineItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InvoiceLineItemFromJson(json);
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

/// [InvoicePriceComponent] Invoice containing collected ChargeItems from an
@freezed

/// [InvoicePriceComponent] Invoice containing collected ChargeItems from an
@freezed
class InvoicePriceComponent
    with _$InvoicePriceComponent
    implements BackboneElement {
  /// [InvoicePriceComponent] Invoice containing collected ChargeItems from an
  const InvoicePriceComponent._();

  /// [InvoicePriceComponent] Invoice containing collected ChargeItems from an
  ///  Account with calculated individual and total price for Billing purpose.
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
  /// [type] This code identifies the type of the component.
  ///
  /// [typeElement] Extensions for type
  ///
  /// [code] A code that identifies the component. Codes may be used to
  ///  differentiate between kinds of taxes, surcharges, discounts etc.
  ///
  /// [factor] The factor that has been applied on the base price for
  ///  calculating this component.
  ///
  /// [factorElement] Extensions for factor
  ///
  /// [amount] The amount calculated for this component.
  const factory InvoicePriceComponent({
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

    /// [type] This code identifies the type of the component.
    FhirCode? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,

    /// [code] A code that identifies the component. Codes may be used to
    ///  differentiate between kinds of taxes, surcharges, discounts etc.
    CodeableConcept? code,

    /// [factor] The factor that has been applied on the base price for
    ///  calculating this component.
    FhirDecimal? factor,

    /// [factorElement] Extensions for factor
    @JsonKey(name: '_factor') PrimitiveElement? factorElement,

    /// [amount] The amount calculated for this component.
    Money? amount,
  }) = _InvoicePriceComponent;

  @override
  String get fhirType => 'InvoicePriceComponent';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory InvoicePriceComponent.fromYaml(dynamic yaml) => yaml is String
      ? InvoicePriceComponent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? InvoicePriceComponent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'InvoicePriceComponent cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory InvoicePriceComponent.fromJson(Map<String, dynamic> json) =>
      _$InvoicePriceComponentFromJson(json);

  /// Acts like a constructor, returns a [InvoicePriceComponent], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory InvoicePriceComponent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$InvoicePriceComponentFromJson(json);
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
