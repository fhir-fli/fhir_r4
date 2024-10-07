import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [ExplanationOfBenefit] /// This resource provides: the claim details; adjudication details from the
/// processing of a Claim; and optionally account balance information, for
/// informing the subscriber of the benefits provided.
class ExplanationOfBenefit extends DomainResource {
  ExplanationOfBenefit({
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
    required this.status,
    this.statusElement,
    required this.type,
    this.subType,
    required this.use,
    this.useElement,
    required this.patient,
    this.billablePeriod,
    required this.created,
    this.createdElement,
    this.enterer,
    required this.insurer,
    required this.provider,
    this.priority,
    this.fundsReserveRequested,
    this.fundsReserve,
    this.related,
    this.prescription,
    this.originalPrescription,
    this.payee,
    this.referral,
    this.facility,
    this.claim,
    this.claimResponse,
    required this.outcome,
    this.outcomeElement,
    this.disposition,
    this.dispositionElement,
    this.preAuthRef,
    this.preAuthRefElement,
    this.preAuthRefPeriod,
    this.careTeam,
    this.supportingInfo,
    this.diagnosis,
    this.procedure,
    this.precedence,
    this.precedenceElement,
    required this.insurance,
    this.accident,
    this.item,
    this.addItem,
    this.adjudication,
    this.total,
    this.payment,
    this.formCode,
    this.form,
    this.processNote,
    this.benefitPeriod,
    this.benefitBalance,
  }) : super(resourceType: R4ResourceType.ExplanationOfBenefit);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this explanation of benefit.
  final List<Identifier>? identifier;

  /// [status] /// The status of the resource instance.
  final FhirCode status;
  final Element? statusElement;

  /// [type] /// The category of claim, e.g. oral, pharmacy, vision, institutional,
  /// professional.
  final CodeableConcept type;

  /// [subType] /// A finer grained suite of claim type codes which may convey additional
  /// information such as Inpatient vs Outpatient and/or a specialty service.
  final CodeableConcept? subType;

  /// [use] /// A code to indicate whether the nature of the request is: to request
  /// adjudication of products and services previously rendered; or requesting
  /// authorization and adjudication for provision in the future; or requesting
  /// the non-binding adjudication of the listed products and services which
  /// could be provided in the future.
  final FhirCode use;
  final Element? useElement;

  /// [patient] /// The party to whom the professional services and/or products have been
  /// supplied or are being considered and for whom actual for forecast
  /// reimbursement is sought.
  final Reference patient;

  /// [billablePeriod] /// The period for which charges are being submitted.
  final Period? billablePeriod;

  /// [created] /// The date this resource was created.
  final FhirDateTime created;
  final Element? createdElement;

  /// [enterer] /// Individual who created the claim, predetermination or preauthorization.
  final Reference? enterer;

  /// [insurer] /// The party responsible for authorization, adjudication and reimbursement.
  final Reference insurer;

  /// [provider] /// The provider which is responsible for the claim, predetermination or
  /// preauthorization.
  final Reference provider;

  /// [priority] /// The provider-required urgency of processing the request. Typical values
  /// include: stat, routine deferred.
  final CodeableConcept? priority;

  /// [fundsReserveRequested] /// A code to indicate whether and for whom funds are to be reserved for future
  /// claims.
  final CodeableConcept? fundsReserveRequested;

  /// [fundsReserve] /// A code, used only on a response to a preauthorization, to indicate whether
  /// the benefits payable have been reserved and for whom.
  final CodeableConcept? fundsReserve;

  /// [related] /// Other claims which are related to this claim such as prior submissions or
  /// claims for related services or for the same event.
  final List<ExplanationOfBenefitRelated>? related;

  /// [prescription] /// Prescription to support the dispensing of pharmacy, device or vision
  /// products.
  final Reference? prescription;

  /// [originalPrescription] /// Original prescription which has been superseded by this prescription to
  /// support the dispensing of pharmacy services, medications or products.
  final Reference? originalPrescription;

  /// [payee] /// The party to be reimbursed for cost of the products and services according
  /// to the terms of the policy.
  final ExplanationOfBenefitPayee? payee;

  /// [referral] /// A reference to a referral resource.
  final Reference? referral;

  /// [facility] /// Facility where the services were provided.
  final Reference? facility;

  /// [claim] /// The business identifier for the instance of the adjudication request: claim
  /// predetermination or preauthorization.
  final Reference? claim;

  /// [claimResponse] /// The business identifier for the instance of the adjudication response:
  /// claim, predetermination or preauthorization response.
  final Reference? claimResponse;

  /// [outcome] /// The outcome of the claim, predetermination, or preauthorization processing.
  final FhirCode outcome;
  final Element? outcomeElement;

  /// [disposition] /// A human readable description of the status of the adjudication.
  final FhirString? disposition;
  final Element? dispositionElement;

  /// [preAuthRef] /// Reference from the Insurer which is used in later communications which
  /// refers to this adjudication.
  final List<FhirString>? preAuthRef;
  final List<Element>? preAuthRefElement;

  /// [preAuthRefPeriod] /// The timeframe during which the supplied preauthorization reference may be
  /// quoted on claims to obtain the adjudication as provided.
  final List<Period>? preAuthRefPeriod;

  /// [careTeam] /// The members of the team who provided the products and services.
  final List<ExplanationOfBenefitCareTeam>? careTeam;

  /// [supportingInfo] /// Additional information codes regarding exceptions, special considerations,
  /// the condition, situation, prior or concurrent issues.
  final List<ExplanationOfBenefitSupportingInfo>? supportingInfo;

  /// [diagnosis] /// Information about diagnoses relevant to the claim items.
  final List<ExplanationOfBenefitDiagnosis>? diagnosis;

  /// [procedure] /// Procedures performed on the patient relevant to the billing items with the
  /// claim.
  final List<ExplanationOfBenefitProcedure>? procedure;

  /// [precedence] /// This indicates the relative order of a series of EOBs related to different
  /// coverages for the same suite of services.
  final FhirPositiveInt? precedence;
  final Element? precedenceElement;

  /// [insurance] /// Financial instruments for reimbursement for the health care products and
  /// services specified on the claim.
  final List<ExplanationOfBenefitInsurance> insurance;

  /// [accident] /// Details of a accident which resulted in injuries which required the
  /// products and services listed in the claim.
  final ExplanationOfBenefitAccident? accident;

  /// [item] /// A claim line. Either a simple (a product or service) or a 'group' of
  /// details which can also be a simple items or groups of sub-details.
  final List<ExplanationOfBenefitItem>? item;

  /// [addItem] /// The first-tier service adjudications for payor added product or service
  /// lines.
  final List<ExplanationOfBenefitAddItem>? addItem;

  /// [adjudication] /// The adjudication results which are presented at the header level rather
  /// than at the line-item or add-item levels.
  final List<ExplanationOfBenefitAdjudication>? adjudication;

  /// [total] /// Categorized monetary totals for the adjudication.
  final List<ExplanationOfBenefitTotal>? total;

  /// [payment] /// Payment details for the adjudication of the claim.
  final ExplanationOfBenefitPayment? payment;

  /// [formCode] /// A code for the form to be used for printing the content.
  final CodeableConcept? formCode;

  /// [form] /// The actual form, by reference or inclusion, for printing the content or an
  /// EOB.
  final Attachment? form;

  /// [processNote] /// A note that describes or explains adjudication results in a human readable
  /// form.
  final List<ExplanationOfBenefitProcessNote>? processNote;

  /// [benefitPeriod] /// The term of the benefits documented in this response.
  final Period? benefitPeriod;

  /// [benefitBalance] /// Balance by Benefit Category.
  final List<ExplanationOfBenefitBenefitBalance>? benefitBalance;
  @override
  ExplanationOfBenefit clone() => throw UnimplementedError();
  ExplanationOfBenefit copy({
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
    FhirCode? status,
    Element? statusElement,
    CodeableConcept? type,
    CodeableConcept? subType,
    FhirCode? use,
    Element? useElement,
    Reference? patient,
    Period? billablePeriod,
    FhirDateTime? created,
    Element? createdElement,
    Reference? enterer,
    Reference? insurer,
    Reference? provider,
    CodeableConcept? priority,
    CodeableConcept? fundsReserveRequested,
    CodeableConcept? fundsReserve,
    List<ExplanationOfBenefitRelated>? related,
    Reference? prescription,
    Reference? originalPrescription,
    ExplanationOfBenefitPayee? payee,
    Reference? referral,
    Reference? facility,
    Reference? claim,
    Reference? claimResponse,
    FhirCode? outcome,
    Element? outcomeElement,
    FhirString? disposition,
    Element? dispositionElement,
    List<FhirString>? preAuthRef,
    List<Element>? preAuthRefElement,
    List<Period>? preAuthRefPeriod,
    List<ExplanationOfBenefitCareTeam>? careTeam,
    List<ExplanationOfBenefitSupportingInfo>? supportingInfo,
    List<ExplanationOfBenefitDiagnosis>? diagnosis,
    List<ExplanationOfBenefitProcedure>? procedure,
    FhirPositiveInt? precedence,
    Element? precedenceElement,
    List<ExplanationOfBenefitInsurance>? insurance,
    ExplanationOfBenefitAccident? accident,
    List<ExplanationOfBenefitItem>? item,
    List<ExplanationOfBenefitAddItem>? addItem,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    List<ExplanationOfBenefitTotal>? total,
    ExplanationOfBenefitPayment? payment,
    CodeableConcept? formCode,
    Attachment? form,
    List<ExplanationOfBenefitProcessNote>? processNote,
    Period? benefitPeriod,
    List<ExplanationOfBenefitBenefitBalance>? benefitBalance,
  }) {
    return ExplanationOfBenefit(
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
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      type: type ?? this.type,
      subType: subType ?? this.subType,
      use: use ?? this.use,
      useElement: useElement ?? this.useElement,
      patient: patient ?? this.patient,
      billablePeriod: billablePeriod ?? this.billablePeriod,
      created: created ?? this.created,
      createdElement: createdElement ?? this.createdElement,
      enterer: enterer ?? this.enterer,
      insurer: insurer ?? this.insurer,
      provider: provider ?? this.provider,
      priority: priority ?? this.priority,
      fundsReserveRequested:
          fundsReserveRequested ?? this.fundsReserveRequested,
      fundsReserve: fundsReserve ?? this.fundsReserve,
      related: related ?? this.related,
      prescription: prescription ?? this.prescription,
      originalPrescription: originalPrescription ?? this.originalPrescription,
      payee: payee ?? this.payee,
      referral: referral ?? this.referral,
      facility: facility ?? this.facility,
      claim: claim ?? this.claim,
      claimResponse: claimResponse ?? this.claimResponse,
      outcome: outcome ?? this.outcome,
      outcomeElement: outcomeElement ?? this.outcomeElement,
      disposition: disposition ?? this.disposition,
      dispositionElement: dispositionElement ?? this.dispositionElement,
      preAuthRef: preAuthRef ?? this.preAuthRef,
      preAuthRefElement: preAuthRefElement ?? this.preAuthRefElement,
      preAuthRefPeriod: preAuthRefPeriod ?? this.preAuthRefPeriod,
      careTeam: careTeam ?? this.careTeam,
      supportingInfo: supportingInfo ?? this.supportingInfo,
      diagnosis: diagnosis ?? this.diagnosis,
      procedure: procedure ?? this.procedure,
      precedence: precedence ?? this.precedence,
      precedenceElement: precedenceElement ?? this.precedenceElement,
      insurance: insurance ?? this.insurance,
      accident: accident ?? this.accident,
      item: item ?? this.item,
      addItem: addItem ?? this.addItem,
      adjudication: adjudication ?? this.adjudication,
      total: total ?? this.total,
      payment: payment ?? this.payment,
      formCode: formCode ?? this.formCode,
      form: form ?? this.form,
      processNote: processNote ?? this.processNote,
      benefitPeriod: benefitPeriod ?? this.benefitPeriod,
      benefitBalance: benefitBalance ?? this.benefitBalance,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ExplanationOfBenefitRelated] /// Other claims which are related to this claim such as prior submissions or
/// claims for related services or for the same event.
class ExplanationOfBenefitRelated extends BackboneElement {
  ExplanationOfBenefitRelated({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.claim,
    this.relationship,
    this.reference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [claim] /// Reference to a related claim.
  final Reference? claim;

  /// [relationship] /// A code to convey how the claims are related.
  final CodeableConcept? relationship;

  /// [reference] /// An alternate organizational reference to the case or file to which this
  /// particular claim pertains.
  final Identifier? reference;
  @override
  ExplanationOfBenefitRelated clone() => throw UnimplementedError();
  ExplanationOfBenefitRelated copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? claim,
    CodeableConcept? relationship,
    Identifier? reference,
  }) {
    return ExplanationOfBenefitRelated(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      claim: claim ?? this.claim,
      relationship: relationship ?? this.relationship,
      reference: reference ?? this.reference,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ExplanationOfBenefitPayee] /// The party to be reimbursed for cost of the products and services according
/// to the terms of the policy.
class ExplanationOfBenefitPayee extends BackboneElement {
  ExplanationOfBenefitPayee({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.party,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Type of Party to be reimbursed: Subscriber, provider, other.
  final CodeableConcept? type;

  /// [party] /// Reference to the individual or organization to whom any payment will be
  /// made.
  final Reference? party;
  @override
  ExplanationOfBenefitPayee clone() => throw UnimplementedError();
  ExplanationOfBenefitPayee copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Reference? party,
  }) {
    return ExplanationOfBenefitPayee(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      party: party ?? this.party,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ExplanationOfBenefitCareTeam] /// The members of the team who provided the products and services.
class ExplanationOfBenefitCareTeam extends BackboneElement {
  ExplanationOfBenefitCareTeam({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    this.sequenceElement,
    required this.provider,
    this.responsible,
    this.responsibleElement,
    this.role,
    this.qualification,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A number to uniquely identify care team entries.
  final FhirPositiveInt sequence;
  final Element? sequenceElement;

  /// [provider] /// Member of the team who provided the product or service.
  final Reference provider;

  /// [responsible] /// The party who is billing and/or responsible for the claimed products or
  /// services.
  final FhirBoolean? responsible;
  final Element? responsibleElement;

  /// [role] /// The lead, assisting or supervising practitioner and their discipline if a
  /// multidisciplinary team.
  final CodeableConcept? role;

  /// [qualification] /// The qualification of the practitioner which is applicable for this service.
  final CodeableConcept? qualification;
  @override
  ExplanationOfBenefitCareTeam clone() => throw UnimplementedError();
  ExplanationOfBenefitCareTeam copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Element? sequenceElement,
    Reference? provider,
    FhirBoolean? responsible,
    Element? responsibleElement,
    CodeableConcept? role,
    CodeableConcept? qualification,
  }) {
    return ExplanationOfBenefitCareTeam(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      sequenceElement: sequenceElement ?? this.sequenceElement,
      provider: provider ?? this.provider,
      responsible: responsible ?? this.responsible,
      responsibleElement: responsibleElement ?? this.responsibleElement,
      role: role ?? this.role,
      qualification: qualification ?? this.qualification,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ExplanationOfBenefitSupportingInfo] /// Additional information codes regarding exceptions, special considerations,
/// the condition, situation, prior or concurrent issues.
class ExplanationOfBenefitSupportingInfo extends BackboneElement {
  ExplanationOfBenefitSupportingInfo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    this.sequenceElement,
    required this.category,
    this.code,
    this.timingDate,
    this.timingDateElement,
    this.timingPeriod,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueString,
    this.valueStringElement,
    this.valueQuantity,
    this.valueAttachment,
    this.valueReference,
    this.reason,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A number to uniquely identify supporting information entries.
  final FhirPositiveInt sequence;
  final Element? sequenceElement;

  /// [category] /// The general class of the information supplied: information; exception;
  /// accident, employment; onset, etc.
  final CodeableConcept category;

  /// [code] /// System and code pertaining to the specific information regarding special
  /// conditions relating to the setting, treatment or patient for which care is
  /// sought.
  final CodeableConcept? code;

  /// [timingDate] /// The date when or period to which this information refers.
  final FhirDate? timingDate;
  final Element? timingDateElement;

  /// [timingPeriod] /// The date when or period to which this information refers.
  final Period? timingPeriod;

  /// [valueBoolean] /// Additional data or information such as resources, documents, images etc.
  /// including references to the data or the actual inclusion of the data.
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;

  /// [valueString] /// Additional data or information such as resources, documents, images etc.
  /// including references to the data or the actual inclusion of the data.
  final FhirString? valueString;
  final Element? valueStringElement;

  /// [valueQuantity] /// Additional data or information such as resources, documents, images etc.
  /// including references to the data or the actual inclusion of the data.
  final Quantity? valueQuantity;

  /// [valueAttachment] /// Additional data or information such as resources, documents, images etc.
  /// including references to the data or the actual inclusion of the data.
  final Attachment? valueAttachment;

  /// [valueReference] /// Additional data or information such as resources, documents, images etc.
  /// including references to the data or the actual inclusion of the data.
  final Reference? valueReference;

  /// [reason] /// Provides the reason in the situation where a reason code is required in
  /// addition to the content.
  final Coding? reason;
  @override
  ExplanationOfBenefitSupportingInfo clone() => throw UnimplementedError();
  ExplanationOfBenefitSupportingInfo copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Element? sequenceElement,
    CodeableConcept? category,
    CodeableConcept? code,
    FhirDate? timingDate,
    Element? timingDateElement,
    Period? timingPeriod,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
    FhirString? valueString,
    Element? valueStringElement,
    Quantity? valueQuantity,
    Attachment? valueAttachment,
    Reference? valueReference,
    Coding? reason,
  }) {
    return ExplanationOfBenefitSupportingInfo(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      sequenceElement: sequenceElement ?? this.sequenceElement,
      category: category ?? this.category,
      code: code ?? this.code,
      timingDate: timingDate ?? this.timingDate,
      timingDateElement: timingDateElement ?? this.timingDateElement,
      timingPeriod: timingPeriod ?? this.timingPeriod,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueString: valueString ?? this.valueString,
      valueStringElement: valueStringElement ?? this.valueStringElement,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueAttachment: valueAttachment ?? this.valueAttachment,
      valueReference: valueReference ?? this.valueReference,
      reason: reason ?? this.reason,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ExplanationOfBenefitDiagnosis] /// Information about diagnoses relevant to the claim items.
class ExplanationOfBenefitDiagnosis extends BackboneElement {
  ExplanationOfBenefitDiagnosis({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    this.sequenceElement,
    required this.diagnosisCodeableConcept,
    required this.diagnosisReference,
    this.type,
    this.onAdmission,
    this.packageCode,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A number to uniquely identify diagnosis entries.
  final FhirPositiveInt sequence;
  final Element? sequenceElement;

  /// [diagnosisCodeableConcept] /// The nature of illness or problem in a coded form or as a reference to an
  /// external defined Condition.
  final CodeableConcept diagnosisCodeableConcept;

  /// [diagnosisReference] /// The nature of illness or problem in a coded form or as a reference to an
  /// external defined Condition.
  final Reference diagnosisReference;

  /// [type] /// When the condition was observed or the relative ranking.
  final List<CodeableConcept>? type;

  /// [onAdmission] /// Indication of whether the diagnosis was present on admission to a facility.
  final CodeableConcept? onAdmission;

  /// [packageCode] /// A package billing code or bundle code used to group products and services
  /// to a particular health condition (such as heart attack) which is based on a
  /// predetermined grouping code system.
  final CodeableConcept? packageCode;
  @override
  ExplanationOfBenefitDiagnosis clone() => throw UnimplementedError();
  ExplanationOfBenefitDiagnosis copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Element? sequenceElement,
    CodeableConcept? diagnosisCodeableConcept,
    Reference? diagnosisReference,
    List<CodeableConcept>? type,
    CodeableConcept? onAdmission,
    CodeableConcept? packageCode,
  }) {
    return ExplanationOfBenefitDiagnosis(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      sequenceElement: sequenceElement ?? this.sequenceElement,
      diagnosisCodeableConcept:
          diagnosisCodeableConcept ?? this.diagnosisCodeableConcept,
      diagnosisReference: diagnosisReference ?? this.diagnosisReference,
      type: type ?? this.type,
      onAdmission: onAdmission ?? this.onAdmission,
      packageCode: packageCode ?? this.packageCode,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ExplanationOfBenefitProcedure] /// Procedures performed on the patient relevant to the billing items with the
/// claim.
class ExplanationOfBenefitProcedure extends BackboneElement {
  ExplanationOfBenefitProcedure({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    this.sequenceElement,
    this.type,
    this.date,
    this.dateElement,
    required this.procedureCodeableConcept,
    required this.procedureReference,
    this.udi,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A number to uniquely identify procedure entries.
  final FhirPositiveInt sequence;
  final Element? sequenceElement;

  /// [type] /// When the condition was observed or the relative ranking.
  final List<CodeableConcept>? type;

  /// [date] /// Date and optionally time the procedure was performed.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [procedureCodeableConcept] /// The code or reference to a Procedure resource which identifies the clinical
  /// intervention performed.
  final CodeableConcept procedureCodeableConcept;

  /// [procedureReference] /// The code or reference to a Procedure resource which identifies the clinical
  /// intervention performed.
  final Reference procedureReference;

  /// [udi] /// Unique Device Identifiers associated with this line item.
  final List<Reference>? udi;
  @override
  ExplanationOfBenefitProcedure clone() => throw UnimplementedError();
  ExplanationOfBenefitProcedure copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Element? sequenceElement,
    List<CodeableConcept>? type,
    FhirDateTime? date,
    Element? dateElement,
    CodeableConcept? procedureCodeableConcept,
    Reference? procedureReference,
    List<Reference>? udi,
  }) {
    return ExplanationOfBenefitProcedure(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      sequenceElement: sequenceElement ?? this.sequenceElement,
      type: type ?? this.type,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      procedureCodeableConcept:
          procedureCodeableConcept ?? this.procedureCodeableConcept,
      procedureReference: procedureReference ?? this.procedureReference,
      udi: udi ?? this.udi,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ExplanationOfBenefitInsurance] /// Financial instruments for reimbursement for the health care products and
/// services specified on the claim.
class ExplanationOfBenefitInsurance extends BackboneElement {
  ExplanationOfBenefitInsurance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.focal,
    this.focalElement,
    required this.coverage,
    this.preAuthRef,
    this.preAuthRefElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [focal] /// A flag to indicate that this Coverage is to be used for adjudication of
  /// this claim when set to true.
  final FhirBoolean focal;
  final Element? focalElement;

  /// [coverage] /// Reference to the insurance card level information contained in the Coverage
  /// resource. The coverage issuing insurer will use these details to locate the
  /// patient's actual coverage within the insurer's information system.
  final Reference coverage;

  /// [preAuthRef] /// Reference numbers previously provided by the insurer to the provider to be
  /// quoted on subsequent claims containing services or products related to the
  /// prior authorization.
  final List<FhirString>? preAuthRef;
  final List<Element>? preAuthRefElement;
  @override
  ExplanationOfBenefitInsurance clone() => throw UnimplementedError();
  ExplanationOfBenefitInsurance copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? focal,
    Element? focalElement,
    Reference? coverage,
    List<FhirString>? preAuthRef,
    List<Element>? preAuthRefElement,
  }) {
    return ExplanationOfBenefitInsurance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      focal: focal ?? this.focal,
      focalElement: focalElement ?? this.focalElement,
      coverage: coverage ?? this.coverage,
      preAuthRef: preAuthRef ?? this.preAuthRef,
      preAuthRefElement: preAuthRefElement ?? this.preAuthRefElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ExplanationOfBenefitAccident] /// Details of a accident which resulted in injuries which required the
/// products and services listed in the claim.
class ExplanationOfBenefitAccident extends BackboneElement {
  ExplanationOfBenefitAccident({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.date,
    this.dateElement,
    this.type,
    this.locationAddress,
    this.locationReference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [date] /// Date of an accident event related to the products and services contained in
  /// the claim.
  final FhirDate? date;
  final Element? dateElement;

  /// [type] /// The type or context of the accident event for the purposes of selection of
  /// potential insurance coverages and determination of coordination between
  /// insurers.
  final CodeableConcept? type;

  /// [locationAddress] /// The physical location of the accident event.
  final Address? locationAddress;

  /// [locationReference] /// The physical location of the accident event.
  final Reference? locationReference;
  @override
  ExplanationOfBenefitAccident clone() => throw UnimplementedError();
  ExplanationOfBenefitAccident copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDate? date,
    Element? dateElement,
    CodeableConcept? type,
    Address? locationAddress,
    Reference? locationReference,
  }) {
    return ExplanationOfBenefitAccident(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      type: type ?? this.type,
      locationAddress: locationAddress ?? this.locationAddress,
      locationReference: locationReference ?? this.locationReference,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ExplanationOfBenefitItem] /// A claim line. Either a simple (a product or service) or a 'group' of
/// details which can also be a simple items or groups of sub-details.
class ExplanationOfBenefitItem extends BackboneElement {
  ExplanationOfBenefitItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    this.sequenceElement,
    this.careTeamSequence,
    this.careTeamSequenceElement,
    this.diagnosisSequence,
    this.diagnosisSequenceElement,
    this.procedureSequence,
    this.procedureSequenceElement,
    this.informationSequence,
    this.informationSequenceElement,
    this.revenue,
    this.category,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.servicedDate,
    this.servicedDateElement,
    this.servicedPeriod,
    this.locationCodeableConcept,
    this.locationAddress,
    this.locationReference,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.factorElement,
    this.net,
    this.udi,
    this.bodySite,
    this.subSite,
    this.encounter,
    this.noteNumber,
    this.noteNumberElement,
    this.adjudication,
    this.detail,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A number to uniquely identify item entries.
  final FhirPositiveInt sequence;
  final Element? sequenceElement;

  /// [careTeamSequence] /// Care team members related to this service or product.
  final List<FhirPositiveInt>? careTeamSequence;
  final List<Element>? careTeamSequenceElement;

  /// [diagnosisSequence] /// Diagnoses applicable for this service or product.
  final List<FhirPositiveInt>? diagnosisSequence;
  final List<Element>? diagnosisSequenceElement;

  /// [procedureSequence] /// Procedures applicable for this service or product.
  final List<FhirPositiveInt>? procedureSequence;
  final List<Element>? procedureSequenceElement;

  /// [informationSequence] /// Exceptions, special conditions and supporting information applicable for
  /// this service or product.
  final List<FhirPositiveInt>? informationSequence;
  final List<Element>? informationSequenceElement;

  /// [revenue] /// The type of revenue or cost center providing the product and/or service.
  final CodeableConcept? revenue;

  /// [category] /// Code to identify the general type of benefits under which products and
  /// services are provided.
  final CodeableConcept? category;

  /// [productOrService] /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or other
  /// billing code for the item.
  final CodeableConcept productOrService;

  /// [modifier] /// Item typification or modifiers codes to convey additional context for the
  /// product or service.
  final List<CodeableConcept>? modifier;

  /// [programCode] /// Identifies the program under which this may be recovered.
  final List<CodeableConcept>? programCode;

  /// [servicedDate] /// The date or dates when the service or product was supplied, performed or
  /// completed.
  final FhirDate? servicedDate;
  final Element? servicedDateElement;

  /// [servicedPeriod] /// The date or dates when the service or product was supplied, performed or
  /// completed.
  final Period? servicedPeriod;

  /// [locationCodeableConcept] /// Where the product or service was provided.
  final CodeableConcept? locationCodeableConcept;

  /// [locationAddress] /// Where the product or service was provided.
  final Address? locationAddress;

  /// [locationReference] /// Where the product or service was provided.
  final Reference? locationReference;

  /// [quantity] /// The number of repetitions of a service or product.
  final Quantity? quantity;

  /// [unitPrice] /// If the item is not a group then this is the fee for the product or service,
  /// otherwise this is the total of the fees for the details of the group.
  final Money? unitPrice;

  /// [factor] /// A real number that represents a multiplier used in determining the overall
  /// value of services delivered and/or goods received. The concept of a Factor
  /// allows for a discount or surcharge multiplier to be applied to a monetary
  /// amount.
  final FhirDecimal? factor;
  final Element? factorElement;

  /// [net] /// The quantity times the unit price for an additional service or product or
  /// charge.
  final Money? net;

  /// [udi] /// Unique Device Identifiers associated with this line item.
  final List<Reference>? udi;

  /// [bodySite] /// Physical service site on the patient (limb, tooth, etc.).
  final CodeableConcept? bodySite;

  /// [subSite] /// A region or surface of the bodySite, e.g. limb region or tooth surface(s).
  final List<CodeableConcept>? subSite;

  /// [encounter] /// A billed item may include goods or services provided in multiple
  /// encounters.
  final List<Reference>? encounter;

  /// [noteNumber] /// The numbers associated with notes below which apply to the adjudication of
  /// this item.
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;

  /// [adjudication] /// If this item is a group then the values here are a summary of the
  /// adjudication of the detail items. If this item is a simple product or
  /// service then this is the result of the adjudication of this item.
  final List<ExplanationOfBenefitAdjudication>? adjudication;

  /// [detail] /// Second-tier of goods and services.
  final List<ExplanationOfBenefitDetail>? detail;
  @override
  ExplanationOfBenefitItem clone() => throw UnimplementedError();
  ExplanationOfBenefitItem copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Element? sequenceElement,
    List<FhirPositiveInt>? careTeamSequence,
    List<Element>? careTeamSequenceElement,
    List<FhirPositiveInt>? diagnosisSequence,
    List<Element>? diagnosisSequenceElement,
    List<FhirPositiveInt>? procedureSequence,
    List<Element>? procedureSequenceElement,
    List<FhirPositiveInt>? informationSequence,
    List<Element>? informationSequenceElement,
    CodeableConcept? revenue,
    CodeableConcept? category,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    List<CodeableConcept>? programCode,
    FhirDate? servicedDate,
    Element? servicedDateElement,
    Period? servicedPeriod,
    CodeableConcept? locationCodeableConcept,
    Address? locationAddress,
    Reference? locationReference,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Element? factorElement,
    Money? net,
    List<Reference>? udi,
    CodeableConcept? bodySite,
    List<CodeableConcept>? subSite,
    List<Reference>? encounter,
    List<FhirPositiveInt>? noteNumber,
    List<Element>? noteNumberElement,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    List<ExplanationOfBenefitDetail>? detail,
  }) {
    return ExplanationOfBenefitItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      sequenceElement: sequenceElement ?? this.sequenceElement,
      careTeamSequence: careTeamSequence ?? this.careTeamSequence,
      careTeamSequenceElement:
          careTeamSequenceElement ?? this.careTeamSequenceElement,
      diagnosisSequence: diagnosisSequence ?? this.diagnosisSequence,
      diagnosisSequenceElement:
          diagnosisSequenceElement ?? this.diagnosisSequenceElement,
      procedureSequence: procedureSequence ?? this.procedureSequence,
      procedureSequenceElement:
          procedureSequenceElement ?? this.procedureSequenceElement,
      informationSequence: informationSequence ?? this.informationSequence,
      informationSequenceElement:
          informationSequenceElement ?? this.informationSequenceElement,
      revenue: revenue ?? this.revenue,
      category: category ?? this.category,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      programCode: programCode ?? this.programCode,
      servicedDate: servicedDate ?? this.servicedDate,
      servicedDateElement: servicedDateElement ?? this.servicedDateElement,
      servicedPeriod: servicedPeriod ?? this.servicedPeriod,
      locationCodeableConcept:
          locationCodeableConcept ?? this.locationCodeableConcept,
      locationAddress: locationAddress ?? this.locationAddress,
      locationReference: locationReference ?? this.locationReference,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      factorElement: factorElement ?? this.factorElement,
      net: net ?? this.net,
      udi: udi ?? this.udi,
      bodySite: bodySite ?? this.bodySite,
      subSite: subSite ?? this.subSite,
      encounter: encounter ?? this.encounter,
      noteNumber: noteNumber ?? this.noteNumber,
      noteNumberElement: noteNumberElement ?? this.noteNumberElement,
      adjudication: adjudication ?? this.adjudication,
      detail: detail ?? this.detail,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ExplanationOfBenefitAdjudication] /// If this item is a group then the values here are a summary of the
/// adjudication of the detail items. If this item is a simple product or
/// service then this is the result of the adjudication of this item.
class ExplanationOfBenefitAdjudication extends BackboneElement {
  ExplanationOfBenefitAdjudication({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    this.reason,
    this.amount,
    this.value,
    this.valueElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [category] /// A code to indicate the information type of this adjudication record.
  /// Information types may include: the value submitted, maximum values or
  /// percentages allowed or payable under the plan, amounts that the patient is
  /// responsible for in-aggregate or pertaining to this item, amounts paid by
  /// other coverages, and the benefit payable for this item.
  final CodeableConcept category;

  /// [reason] /// A code supporting the understanding of the adjudication result and
  /// explaining variance from expected amount.
  final CodeableConcept? reason;

  /// [amount] /// Monetary amount associated with the category.
  final Money? amount;

  /// [value] /// A non-monetary value associated with the category. Mutually exclusive to
  /// the amount element above.
  final FhirDecimal? value;
  final Element? valueElement;
  @override
  ExplanationOfBenefitAdjudication clone() => throw UnimplementedError();
  ExplanationOfBenefitAdjudication copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    CodeableConcept? reason,
    Money? amount,
    FhirDecimal? value,
    Element? valueElement,
  }) {
    return ExplanationOfBenefitAdjudication(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      reason: reason ?? this.reason,
      amount: amount ?? this.amount,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ExplanationOfBenefitDetail] /// Second-tier of goods and services.
class ExplanationOfBenefitDetail extends BackboneElement {
  ExplanationOfBenefitDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    this.sequenceElement,
    this.revenue,
    this.category,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.factorElement,
    this.net,
    this.udi,
    this.noteNumber,
    this.noteNumberElement,
    this.adjudication,
    this.subDetail,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A claim detail line. Either a simple (a product or service) or a 'group' of
  /// sub-details which are simple items.
  final FhirPositiveInt sequence;
  final Element? sequenceElement;

  /// [revenue] /// The type of revenue or cost center providing the product and/or service.
  final CodeableConcept? revenue;

  /// [category] /// Code to identify the general type of benefits under which products and
  /// services are provided.
  final CodeableConcept? category;

  /// [productOrService] /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or other
  /// billing code for the item.
  final CodeableConcept productOrService;

  /// [modifier] /// Item typification or modifiers codes to convey additional context for the
  /// product or service.
  final List<CodeableConcept>? modifier;

  /// [programCode] /// Identifies the program under which this may be recovered.
  final List<CodeableConcept>? programCode;

  /// [quantity] /// The number of repetitions of a service or product.
  final Quantity? quantity;

  /// [unitPrice] /// If the item is not a group then this is the fee for the product or service,
  /// otherwise this is the total of the fees for the details of the group.
  final Money? unitPrice;

  /// [factor] /// A real number that represents a multiplier used in determining the overall
  /// value of services delivered and/or goods received. The concept of a Factor
  /// allows for a discount or surcharge multiplier to be applied to a monetary
  /// amount.
  final FhirDecimal? factor;
  final Element? factorElement;

  /// [net] /// The quantity times the unit price for an additional service or product or
  /// charge.
  final Money? net;

  /// [udi] /// Unique Device Identifiers associated with this line item.
  final List<Reference>? udi;

  /// [noteNumber] /// The numbers associated with notes below which apply to the adjudication of
  /// this item.
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;

  /// [adjudication] /// The adjudication results.
  final List<ExplanationOfBenefitAdjudication>? adjudication;

  /// [subDetail] /// Third-tier of goods and services.
  final List<ExplanationOfBenefitSubDetail>? subDetail;
  @override
  ExplanationOfBenefitDetail clone() => throw UnimplementedError();
  ExplanationOfBenefitDetail copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Element? sequenceElement,
    CodeableConcept? revenue,
    CodeableConcept? category,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    List<CodeableConcept>? programCode,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Element? factorElement,
    Money? net,
    List<Reference>? udi,
    List<FhirPositiveInt>? noteNumber,
    List<Element>? noteNumberElement,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    List<ExplanationOfBenefitSubDetail>? subDetail,
  }) {
    return ExplanationOfBenefitDetail(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      sequenceElement: sequenceElement ?? this.sequenceElement,
      revenue: revenue ?? this.revenue,
      category: category ?? this.category,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      programCode: programCode ?? this.programCode,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      factorElement: factorElement ?? this.factorElement,
      net: net ?? this.net,
      udi: udi ?? this.udi,
      noteNumber: noteNumber ?? this.noteNumber,
      noteNumberElement: noteNumberElement ?? this.noteNumberElement,
      adjudication: adjudication ?? this.adjudication,
      subDetail: subDetail ?? this.subDetail,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ExplanationOfBenefitSubDetail] /// Third-tier of goods and services.
class ExplanationOfBenefitSubDetail extends BackboneElement {
  ExplanationOfBenefitSubDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    this.sequenceElement,
    this.revenue,
    this.category,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.factorElement,
    this.net,
    this.udi,
    this.noteNumber,
    this.noteNumberElement,
    this.adjudication,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A claim detail line. Either a simple (a product or service) or a 'group' of
  /// sub-details which are simple items.
  final FhirPositiveInt sequence;
  final Element? sequenceElement;

  /// [revenue] /// The type of revenue or cost center providing the product and/or service.
  final CodeableConcept? revenue;

  /// [category] /// Code to identify the general type of benefits under which products and
  /// services are provided.
  final CodeableConcept? category;

  /// [productOrService] /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or other
  /// billing code for the item.
  final CodeableConcept productOrService;

  /// [modifier] /// Item typification or modifiers codes to convey additional context for the
  /// product or service.
  final List<CodeableConcept>? modifier;

  /// [programCode] /// Identifies the program under which this may be recovered.
  final List<CodeableConcept>? programCode;

  /// [quantity] /// The number of repetitions of a service or product.
  final Quantity? quantity;

  /// [unitPrice] /// If the item is not a group then this is the fee for the product or service,
  /// otherwise this is the total of the fees for the details of the group.
  final Money? unitPrice;

  /// [factor] /// A real number that represents a multiplier used in determining the overall
  /// value of services delivered and/or goods received. The concept of a Factor
  /// allows for a discount or surcharge multiplier to be applied to a monetary
  /// amount.
  final FhirDecimal? factor;
  final Element? factorElement;

  /// [net] /// The quantity times the unit price for an additional service or product or
  /// charge.
  final Money? net;

  /// [udi] /// Unique Device Identifiers associated with this line item.
  final List<Reference>? udi;

  /// [noteNumber] /// The numbers associated with notes below which apply to the adjudication of
  /// this item.
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;

  /// [adjudication] /// The adjudication results.
  final List<ExplanationOfBenefitAdjudication>? adjudication;
  @override
  ExplanationOfBenefitSubDetail clone() => throw UnimplementedError();
  ExplanationOfBenefitSubDetail copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Element? sequenceElement,
    CodeableConcept? revenue,
    CodeableConcept? category,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    List<CodeableConcept>? programCode,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Element? factorElement,
    Money? net,
    List<Reference>? udi,
    List<FhirPositiveInt>? noteNumber,
    List<Element>? noteNumberElement,
    List<ExplanationOfBenefitAdjudication>? adjudication,
  }) {
    return ExplanationOfBenefitSubDetail(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      sequenceElement: sequenceElement ?? this.sequenceElement,
      revenue: revenue ?? this.revenue,
      category: category ?? this.category,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      programCode: programCode ?? this.programCode,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      factorElement: factorElement ?? this.factorElement,
      net: net ?? this.net,
      udi: udi ?? this.udi,
      noteNumber: noteNumber ?? this.noteNumber,
      noteNumberElement: noteNumberElement ?? this.noteNumberElement,
      adjudication: adjudication ?? this.adjudication,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ExplanationOfBenefitAddItem] /// The first-tier service adjudications for payor added product or service
/// lines.
class ExplanationOfBenefitAddItem extends BackboneElement {
  ExplanationOfBenefitAddItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.itemSequence,
    this.itemSequenceElement,
    this.detailSequence,
    this.detailSequenceElement,
    this.subDetailSequence,
    this.subDetailSequenceElement,
    this.provider,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.servicedDate,
    this.servicedDateElement,
    this.servicedPeriod,
    this.locationCodeableConcept,
    this.locationAddress,
    this.locationReference,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.factorElement,
    this.net,
    this.bodySite,
    this.subSite,
    this.noteNumber,
    this.noteNumberElement,
    this.adjudication,
    this.detail,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [itemSequence] /// Claim items which this service line is intended to replace.
  final List<FhirPositiveInt>? itemSequence;
  final List<Element>? itemSequenceElement;

  /// [detailSequence] /// The sequence number of the details within the claim item which this line is
  /// intended to replace.
  final List<FhirPositiveInt>? detailSequence;
  final List<Element>? detailSequenceElement;

  /// [subDetailSequence] /// The sequence number of the sub-details woithin the details within the claim
  /// item which this line is intended to replace.
  final List<FhirPositiveInt>? subDetailSequence;
  final List<Element>? subDetailSequenceElement;

  /// [provider] /// The providers who are authorized for the services rendered to the patient.
  final List<Reference>? provider;

  /// [productOrService] /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or other
  /// billing code for the item.
  final CodeableConcept productOrService;

  /// [modifier] /// Item typification or modifiers codes to convey additional context for the
  /// product or service.
  final List<CodeableConcept>? modifier;

  /// [programCode] /// Identifies the program under which this may be recovered.
  final List<CodeableConcept>? programCode;

  /// [servicedDate] /// The date or dates when the service or product was supplied, performed or
  /// completed.
  final FhirDate? servicedDate;
  final Element? servicedDateElement;

  /// [servicedPeriod] /// The date or dates when the service or product was supplied, performed or
  /// completed.
  final Period? servicedPeriod;

  /// [locationCodeableConcept] /// Where the product or service was provided.
  final CodeableConcept? locationCodeableConcept;

  /// [locationAddress] /// Where the product or service was provided.
  final Address? locationAddress;

  /// [locationReference] /// Where the product or service was provided.
  final Reference? locationReference;

  /// [quantity] /// The number of repetitions of a service or product.
  final Quantity? quantity;

  /// [unitPrice] /// If the item is not a group then this is the fee for the product or service,
  /// otherwise this is the total of the fees for the details of the group.
  final Money? unitPrice;

  /// [factor] /// A real number that represents a multiplier used in determining the overall
  /// value of services delivered and/or goods received. The concept of a Factor
  /// allows for a discount or surcharge multiplier to be applied to a monetary
  /// amount.
  final FhirDecimal? factor;
  final Element? factorElement;

  /// [net] /// The quantity times the unit price for an additional service or product or
  /// charge.
  final Money? net;

  /// [bodySite] /// Physical service site on the patient (limb, tooth, etc.).
  final CodeableConcept? bodySite;

  /// [subSite] /// A region or surface of the bodySite, e.g. limb region or tooth surface(s).
  final List<CodeableConcept>? subSite;

  /// [noteNumber] /// The numbers associated with notes below which apply to the adjudication of
  /// this item.
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;

  /// [adjudication] /// The adjudication results.
  final List<ExplanationOfBenefitAdjudication>? adjudication;

  /// [detail] /// The second-tier service adjudications for payor added services.
  final List<ExplanationOfBenefitDetail>? detail;
  @override
  ExplanationOfBenefitAddItem clone() => throw UnimplementedError();
  ExplanationOfBenefitAddItem copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirPositiveInt>? itemSequence,
    List<Element>? itemSequenceElement,
    List<FhirPositiveInt>? detailSequence,
    List<Element>? detailSequenceElement,
    List<FhirPositiveInt>? subDetailSequence,
    List<Element>? subDetailSequenceElement,
    List<Reference>? provider,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    List<CodeableConcept>? programCode,
    FhirDate? servicedDate,
    Element? servicedDateElement,
    Period? servicedPeriod,
    CodeableConcept? locationCodeableConcept,
    Address? locationAddress,
    Reference? locationReference,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Element? factorElement,
    Money? net,
    CodeableConcept? bodySite,
    List<CodeableConcept>? subSite,
    List<FhirPositiveInt>? noteNumber,
    List<Element>? noteNumberElement,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    List<ExplanationOfBenefitDetail>? detail,
  }) {
    return ExplanationOfBenefitAddItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemSequence: itemSequence ?? this.itemSequence,
      itemSequenceElement: itemSequenceElement ?? this.itemSequenceElement,
      detailSequence: detailSequence ?? this.detailSequence,
      detailSequenceElement:
          detailSequenceElement ?? this.detailSequenceElement,
      subDetailSequence: subDetailSequence ?? this.subDetailSequence,
      subDetailSequenceElement:
          subDetailSequenceElement ?? this.subDetailSequenceElement,
      provider: provider ?? this.provider,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      programCode: programCode ?? this.programCode,
      servicedDate: servicedDate ?? this.servicedDate,
      servicedDateElement: servicedDateElement ?? this.servicedDateElement,
      servicedPeriod: servicedPeriod ?? this.servicedPeriod,
      locationCodeableConcept:
          locationCodeableConcept ?? this.locationCodeableConcept,
      locationAddress: locationAddress ?? this.locationAddress,
      locationReference: locationReference ?? this.locationReference,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      factorElement: factorElement ?? this.factorElement,
      net: net ?? this.net,
      bodySite: bodySite ?? this.bodySite,
      subSite: subSite ?? this.subSite,
      noteNumber: noteNumber ?? this.noteNumber,
      noteNumberElement: noteNumberElement ?? this.noteNumberElement,
      adjudication: adjudication ?? this.adjudication,
      detail: detail ?? this.detail,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ExplanationOfBenefitDetail1] /// The second-tier service adjudications for payor added services.
class ExplanationOfBenefitDetail1 extends BackboneElement {
  ExplanationOfBenefitDetail1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.productOrService,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.factorElement,
    this.net,
    this.noteNumber,
    this.noteNumberElement,
    this.adjudication,
    this.subDetail,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [productOrService] /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or other
  /// billing code for the item.
  final CodeableConcept productOrService;

  /// [modifier] /// Item typification or modifiers codes to convey additional context for the
  /// product or service.
  final List<CodeableConcept>? modifier;

  /// [quantity] /// The number of repetitions of a service or product.
  final Quantity? quantity;

  /// [unitPrice] /// If the item is not a group then this is the fee for the product or service,
  /// otherwise this is the total of the fees for the details of the group.
  final Money? unitPrice;

  /// [factor] /// A real number that represents a multiplier used in determining the overall
  /// value of services delivered and/or goods received. The concept of a Factor
  /// allows for a discount or surcharge multiplier to be applied to a monetary
  /// amount.
  final FhirDecimal? factor;
  final Element? factorElement;

  /// [net] /// The quantity times the unit price for an additional service or product or
  /// charge.
  final Money? net;

  /// [noteNumber] /// The numbers associated with notes below which apply to the adjudication of
  /// this item.
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;

  /// [adjudication] /// The adjudication results.
  final List<ExplanationOfBenefitAdjudication>? adjudication;

  /// [subDetail] /// The third-tier service adjudications for payor added services.
  final List<ExplanationOfBenefitSubDetail>? subDetail;
  @override
  ExplanationOfBenefitDetail1 clone() => throw UnimplementedError();
  ExplanationOfBenefitDetail1 copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Element? factorElement,
    Money? net,
    List<FhirPositiveInt>? noteNumber,
    List<Element>? noteNumberElement,
    List<ExplanationOfBenefitAdjudication>? adjudication,
    List<ExplanationOfBenefitSubDetail>? subDetail,
  }) {
    return ExplanationOfBenefitDetail1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      factorElement: factorElement ?? this.factorElement,
      net: net ?? this.net,
      noteNumber: noteNumber ?? this.noteNumber,
      noteNumberElement: noteNumberElement ?? this.noteNumberElement,
      adjudication: adjudication ?? this.adjudication,
      subDetail: subDetail ?? this.subDetail,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ExplanationOfBenefitSubDetail1] /// The third-tier service adjudications for payor added services.
class ExplanationOfBenefitSubDetail1 extends BackboneElement {
  ExplanationOfBenefitSubDetail1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.productOrService,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.factorElement,
    this.net,
    this.noteNumber,
    this.noteNumberElement,
    this.adjudication,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [productOrService] /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or other
  /// billing code for the item.
  final CodeableConcept productOrService;

  /// [modifier] /// Item typification or modifiers codes to convey additional context for the
  /// product or service.
  final List<CodeableConcept>? modifier;

  /// [quantity] /// The number of repetitions of a service or product.
  final Quantity? quantity;

  /// [unitPrice] /// If the item is not a group then this is the fee for the product or service,
  /// otherwise this is the total of the fees for the details of the group.
  final Money? unitPrice;

  /// [factor] /// A real number that represents a multiplier used in determining the overall
  /// value of services delivered and/or goods received. The concept of a Factor
  /// allows for a discount or surcharge multiplier to be applied to a monetary
  /// amount.
  final FhirDecimal? factor;
  final Element? factorElement;

  /// [net] /// The quantity times the unit price for an additional service or product or
  /// charge.
  final Money? net;

  /// [noteNumber] /// The numbers associated with notes below which apply to the adjudication of
  /// this item.
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;

  /// [adjudication] /// The adjudication results.
  final List<ExplanationOfBenefitAdjudication>? adjudication;
  @override
  ExplanationOfBenefitSubDetail1 clone() => throw UnimplementedError();
  ExplanationOfBenefitSubDetail1 copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Element? factorElement,
    Money? net,
    List<FhirPositiveInt>? noteNumber,
    List<Element>? noteNumberElement,
    List<ExplanationOfBenefitAdjudication>? adjudication,
  }) {
    return ExplanationOfBenefitSubDetail1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      factorElement: factorElement ?? this.factorElement,
      net: net ?? this.net,
      noteNumber: noteNumber ?? this.noteNumber,
      noteNumberElement: noteNumberElement ?? this.noteNumberElement,
      adjudication: adjudication ?? this.adjudication,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ExplanationOfBenefitTotal] /// Categorized monetary totals for the adjudication.
class ExplanationOfBenefitTotal extends BackboneElement {
  ExplanationOfBenefitTotal({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    required this.amount,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [category] /// A code to indicate the information type of this adjudication record.
  /// Information types may include: the value submitted, maximum values or
  /// percentages allowed or payable under the plan, amounts that the patient is
  /// responsible for in aggregate or pertaining to this item, amounts paid by
  /// other coverages, and the benefit payable for this item.
  final CodeableConcept category;

  /// [amount] /// Monetary total amount associated with the category.
  final Money amount;
  @override
  ExplanationOfBenefitTotal clone() => throw UnimplementedError();
  ExplanationOfBenefitTotal copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    Money? amount,
  }) {
    return ExplanationOfBenefitTotal(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      amount: amount ?? this.amount,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ExplanationOfBenefitPayment] /// Payment details for the adjudication of the claim.
class ExplanationOfBenefitPayment extends BackboneElement {
  ExplanationOfBenefitPayment({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.adjustment,
    this.adjustmentReason,
    this.date,
    this.dateElement,
    this.amount,
    this.identifier,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Whether this represents partial or complete payment of the benefits
  /// payable.
  final CodeableConcept? type;

  /// [adjustment] /// Total amount of all adjustments to this payment included in this
  /// transaction which are not related to this claim's adjudication.
  final Money? adjustment;

  /// [adjustmentReason] /// Reason for the payment adjustment.
  final CodeableConcept? adjustmentReason;

  /// [date] /// Estimated date the payment will be issued or the actual issue date of
  /// payment.
  final FhirDate? date;
  final Element? dateElement;

  /// [amount] /// Benefits payable less any payment adjustment.
  final Money? amount;

  /// [identifier] /// Issuer's unique identifier for the payment instrument.
  final Identifier? identifier;
  @override
  ExplanationOfBenefitPayment clone() => throw UnimplementedError();
  ExplanationOfBenefitPayment copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Money? adjustment,
    CodeableConcept? adjustmentReason,
    FhirDate? date,
    Element? dateElement,
    Money? amount,
    Identifier? identifier,
  }) {
    return ExplanationOfBenefitPayment(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      adjustment: adjustment ?? this.adjustment,
      adjustmentReason: adjustmentReason ?? this.adjustmentReason,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      amount: amount ?? this.amount,
      identifier: identifier ?? this.identifier,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ExplanationOfBenefitProcessNote] /// A note that describes or explains adjudication results in a human readable
/// form.
class ExplanationOfBenefitProcessNote extends BackboneElement {
  ExplanationOfBenefitProcessNote({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.number,
    this.numberElement,
    this.type,
    this.typeElement,
    this.text,
    this.textElement,
    this.language,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [number] /// A number to uniquely identify a note entry.
  final FhirPositiveInt? number;
  final Element? numberElement;

  /// [type] /// The business purpose of the note text.
  final FhirCode? type;
  final Element? typeElement;

  /// [text] /// The explanation or description associated with the processing.
  final FhirString? text;
  final Element? textElement;

  /// [language] /// A code to define the language used in the text of the note.
  final CodeableConcept? language;
  @override
  ExplanationOfBenefitProcessNote clone() => throw UnimplementedError();
  ExplanationOfBenefitProcessNote copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? number,
    Element? numberElement,
    FhirCode? type,
    Element? typeElement,
    FhirString? text,
    Element? textElement,
    CodeableConcept? language,
  }) {
    return ExplanationOfBenefitProcessNote(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      number: number ?? this.number,
      numberElement: numberElement ?? this.numberElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
      language: language ?? this.language,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ExplanationOfBenefitBenefitBalance] /// Balance by Benefit Category.
class ExplanationOfBenefitBenefitBalance extends BackboneElement {
  ExplanationOfBenefitBenefitBalance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    this.excluded,
    this.excludedElement,
    this.name,
    this.nameElement,
    this.description,
    this.descriptionElement,
    this.network,
    this.unit,
    this.term,
    this.financial,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [category] /// Code to identify the general type of benefits under which products and
  /// services are provided.
  final CodeableConcept category;

  /// [excluded] /// True if the indicated class of service is excluded from the plan, missing
  /// or False indicates the product or service is included in the coverage.
  final FhirBoolean? excluded;
  final Element? excludedElement;

  /// [name] /// A short name or tag for the benefit.
  final FhirString? name;
  final Element? nameElement;

  /// [description] /// A richer description of the benefit or services covered.
  final FhirString? description;
  final Element? descriptionElement;

  /// [network] /// Is a flag to indicate whether the benefits refer to in-network providers or
  /// out-of-network providers.
  final CodeableConcept? network;

  /// [unit] /// Indicates if the benefits apply to an individual or to the family.
  final CodeableConcept? unit;

  /// [term] /// The term or period of the values such as 'maximum lifetime benefit' or
  /// 'maximum annual visits'.
  final CodeableConcept? term;

  /// [financial] /// Benefits Used to date.
  final List<ExplanationOfBenefitFinancial>? financial;
  @override
  ExplanationOfBenefitBenefitBalance clone() => throw UnimplementedError();
  ExplanationOfBenefitBenefitBalance copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    FhirBoolean? excluded,
    Element? excludedElement,
    FhirString? name,
    Element? nameElement,
    FhirString? description,
    Element? descriptionElement,
    CodeableConcept? network,
    CodeableConcept? unit,
    CodeableConcept? term,
    List<ExplanationOfBenefitFinancial>? financial,
  }) {
    return ExplanationOfBenefitBenefitBalance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      excluded: excluded ?? this.excluded,
      excludedElement: excludedElement ?? this.excludedElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      network: network ?? this.network,
      unit: unit ?? this.unit,
      term: term ?? this.term,
      financial: financial ?? this.financial,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ExplanationOfBenefitFinancial] /// Benefits Used to date.
class ExplanationOfBenefitFinancial extends BackboneElement {
  ExplanationOfBenefitFinancial({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.allowedUnsignedInt,
    this.allowedUnsignedIntElement,
    this.allowedString,
    this.allowedStringElement,
    this.allowedMoney,
    this.usedUnsignedInt,
    this.usedUnsignedIntElement,
    this.usedMoney,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Classification of benefit being provided.
  final CodeableConcept type;

  /// [allowedUnsignedInt] /// The quantity of the benefit which is permitted under the coverage.
  final FhirUnsignedInt? allowedUnsignedInt;
  final Element? allowedUnsignedIntElement;

  /// [allowedString] /// The quantity of the benefit which is permitted under the coverage.
  final FhirString? allowedString;
  final Element? allowedStringElement;

  /// [allowedMoney] /// The quantity of the benefit which is permitted under the coverage.
  final Money? allowedMoney;

  /// [usedUnsignedInt] /// The quantity of the benefit which have been consumed to date.
  final FhirUnsignedInt? usedUnsignedInt;
  final Element? usedUnsignedIntElement;

  /// [usedMoney] /// The quantity of the benefit which have been consumed to date.
  final Money? usedMoney;
  @override
  ExplanationOfBenefitFinancial clone() => throw UnimplementedError();
  ExplanationOfBenefitFinancial copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirUnsignedInt? allowedUnsignedInt,
    Element? allowedUnsignedIntElement,
    FhirString? allowedString,
    Element? allowedStringElement,
    Money? allowedMoney,
    FhirUnsignedInt? usedUnsignedInt,
    Element? usedUnsignedIntElement,
    Money? usedMoney,
  }) {
    return ExplanationOfBenefitFinancial(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      allowedUnsignedInt: allowedUnsignedInt ?? this.allowedUnsignedInt,
      allowedUnsignedIntElement:
          allowedUnsignedIntElement ?? this.allowedUnsignedIntElement,
      allowedString: allowedString ?? this.allowedString,
      allowedStringElement: allowedStringElement ?? this.allowedStringElement,
      allowedMoney: allowedMoney ?? this.allowedMoney,
      usedUnsignedInt: usedUnsignedInt ?? this.usedUnsignedInt,
      usedUnsignedIntElement:
          usedUnsignedIntElement ?? this.usedUnsignedIntElement,
      usedMoney: usedMoney ?? this.usedMoney,
    );
  }
}
