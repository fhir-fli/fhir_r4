import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [ChargeItem] /// The resource ChargeItem describes the provision of healthcare provider
/// products for a certain patient, therefore referring not only to the
/// product, but containing in addition details of the provision, like date,
/// time, amounts and participating organizations and persons. Main Usage of
/// the ChargeItem is to enable the billing process and internal cost
/// allocation.
class ChargeItem extends DomainResource {
  ChargeItem({
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
    this.definitionUri,
    this.definitionUriElement,
    this.definitionCanonical,
    this.definitionCanonicalElement,
    required this.status,
    this.statusElement,
    this.partOf,
    required this.code,
    required this.subject,
    this.context,
    this.occurrenceDateTime,
    this.occurrenceDateTimeElement,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.performer,
    this.performingOrganization,
    this.requestingOrganization,
    this.costCenter,
    this.quantity,
    this.bodysite,
    this.factorOverride,
    this.factorOverrideElement,
    this.priceOverride,
    this.overrideReason,
    this.overrideReasonElement,
    this.enterer,
    this.enteredDate,
    this.enteredDateElement,
    this.reason,
    this.service,
    this.productReference,
    this.productCodeableConcept,
    this.account,
    this.note,
    this.supportingInformation,
  }) : super(resourceType: R4ResourceType.ChargeItem);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifiers assigned to this event performer or other systems.
  final List<Identifier>? identifier;

  /// [definitionUri] /// References the (external) source of pricing information, rules of
  /// application for the code this ChargeItem uses.
  final List<FhirUri>? definitionUri;
  final List<Element>? definitionUriElement;

  /// [definitionCanonical] /// References the source of pricing information, rules of application for the
  /// code this ChargeItem uses.
  final List<FhirCanonical>? definitionCanonical;
  final List<Element>? definitionCanonicalElement;

  /// [status] /// The current state of the ChargeItem.
  final FhirCode status;
  final Element? statusElement;

  /// [partOf] /// ChargeItems can be grouped to larger ChargeItems covering the whole set.
  final List<Reference>? partOf;

  /// [code] /// A code that identifies the charge, like a billing code.
  final CodeableConcept code;

  /// [subject] /// The individual or set of individuals the action is being or was performed
  /// on.
  final Reference subject;

  /// [context] /// The encounter or episode of care that establishes the context for this
  /// event.
  final Reference? context;

  /// [occurrenceDateTime] /// Date/time(s) or duration when the charged service was applied.
  final FhirDateTime? occurrenceDateTime;
  final Element? occurrenceDateTimeElement;

  /// [occurrencePeriod] /// Date/time(s) or duration when the charged service was applied.
  final Period? occurrencePeriod;

  /// [occurrenceTiming] /// Date/time(s) or duration when the charged service was applied.
  final Timing? occurrenceTiming;

  /// [performer] /// Indicates who or what performed or participated in the charged service.
  final List<ChargeItemPerformer>? performer;

  /// [performingOrganization] /// The organization requesting the service.
  final Reference? performingOrganization;

  /// [requestingOrganization] /// The organization performing the service.
  final Reference? requestingOrganization;

  /// [costCenter] /// The financial cost center permits the tracking of charge attribution.
  final Reference? costCenter;

  /// [quantity] /// Quantity of which the charge item has been serviced.
  final Quantity? quantity;

  /// [bodysite] /// The anatomical location where the related service has been applied.
  final List<CodeableConcept>? bodysite;

  /// [factorOverride] /// Factor overriding the factor determined by the rules associated with the
  /// code.
  final FhirDecimal? factorOverride;
  final Element? factorOverrideElement;

  /// [priceOverride] /// Total price of the charge overriding the list price associated with the
  /// code.
  final Money? priceOverride;

  /// [overrideReason] /// If the list price or the rule-based factor associated with the code is
  /// overridden, this attribute can capture a text to indicate the reason for
  /// this action.
  final FhirString? overrideReason;
  final Element? overrideReasonElement;

  /// [enterer] /// The device, practitioner, etc. who entered the charge item.
  final Reference? enterer;

  /// [enteredDate] /// Date the charge item was entered.
  final FhirDateTime? enteredDate;
  final Element? enteredDateElement;

  /// [reason] /// Describes why the event occurred in coded or textual form.
  final List<CodeableConcept>? reason;

  /// [service] /// Indicated the rendered service that caused this charge.
  final List<Reference>? service;

  /// [productReference] /// Identifies the device, food, drug or other product being charged either by
  /// type code or reference to an instance.
  final Reference? productReference;

  /// [productCodeableConcept] /// Identifies the device, food, drug or other product being charged either by
  /// type code or reference to an instance.
  final CodeableConcept? productCodeableConcept;

  /// [account] /// Account into which this ChargeItems belongs.
  final List<Reference>? account;

  /// [note] /// Comments made about the event by the performer, subject or other
  /// participants.
  final List<Annotation>? note;

  /// [supportingInformation] /// Further information supporting this charge.
  final List<Reference>? supportingInformation;
  @override
  ChargeItem clone() => throw UnimplementedError();
  ChargeItem copy({
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
    List<FhirUri>? definitionUri,
    List<Element>? definitionUriElement,
    List<FhirCanonical>? definitionCanonical,
    List<Element>? definitionCanonicalElement,
    FhirCode? status,
    Element? statusElement,
    List<Reference>? partOf,
    CodeableConcept? code,
    Reference? subject,
    Reference? context,
    FhirDateTime? occurrenceDateTime,
    Element? occurrenceDateTimeElement,
    Period? occurrencePeriod,
    Timing? occurrenceTiming,
    List<ChargeItemPerformer>? performer,
    Reference? performingOrganization,
    Reference? requestingOrganization,
    Reference? costCenter,
    Quantity? quantity,
    List<CodeableConcept>? bodysite,
    FhirDecimal? factorOverride,
    Element? factorOverrideElement,
    Money? priceOverride,
    FhirString? overrideReason,
    Element? overrideReasonElement,
    Reference? enterer,
    FhirDateTime? enteredDate,
    Element? enteredDateElement,
    List<CodeableConcept>? reason,
    List<Reference>? service,
    Reference? productReference,
    CodeableConcept? productCodeableConcept,
    List<Reference>? account,
    List<Annotation>? note,
    List<Reference>? supportingInformation,
  }) {
    return ChargeItem(
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
      definitionUri: definitionUri ?? this.definitionUri,
      definitionUriElement: definitionUriElement ?? this.definitionUriElement,
      definitionCanonical: definitionCanonical ?? this.definitionCanonical,
      definitionCanonicalElement:
          definitionCanonicalElement ?? this.definitionCanonicalElement,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      partOf: partOf ?? this.partOf,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      context: context ?? this.context,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrenceDateTimeElement:
          occurrenceDateTimeElement ?? this.occurrenceDateTimeElement,
      occurrencePeriod: occurrencePeriod ?? this.occurrencePeriod,
      occurrenceTiming: occurrenceTiming ?? this.occurrenceTiming,
      performer: performer ?? this.performer,
      performingOrganization:
          performingOrganization ?? this.performingOrganization,
      requestingOrganization:
          requestingOrganization ?? this.requestingOrganization,
      costCenter: costCenter ?? this.costCenter,
      quantity: quantity ?? this.quantity,
      bodysite: bodysite ?? this.bodysite,
      factorOverride: factorOverride ?? this.factorOverride,
      factorOverrideElement:
          factorOverrideElement ?? this.factorOverrideElement,
      priceOverride: priceOverride ?? this.priceOverride,
      overrideReason: overrideReason ?? this.overrideReason,
      overrideReasonElement:
          overrideReasonElement ?? this.overrideReasonElement,
      enterer: enterer ?? this.enterer,
      enteredDate: enteredDate ?? this.enteredDate,
      enteredDateElement: enteredDateElement ?? this.enteredDateElement,
      reason: reason ?? this.reason,
      service: service ?? this.service,
      productReference: productReference ?? this.productReference,
      productCodeableConcept:
          productCodeableConcept ?? this.productCodeableConcept,
      account: account ?? this.account,
      note: note ?? this.note,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ChargeItemPerformer] /// Indicates who or what performed or participated in the charged service.
class ChargeItemPerformer extends BackboneElement {
  ChargeItemPerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [function_] /// Describes the type of performance or participation(e.g. primary surgeon,
  /// anesthesiologiest, etc.).
  final CodeableConcept? function_;

  /// [actor] /// The device, practitioner, etc. who performed or participated in the
  /// service.
  final Reference actor;
  @override
  ChargeItemPerformer clone() => throw UnimplementedError();
  ChargeItemPerformer copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? function_,
    Reference? actor,
  }) {
    return ChargeItemPerformer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      function_: function_ ?? this.function_,
      actor: actor ?? this.actor,
    );
  }
}
