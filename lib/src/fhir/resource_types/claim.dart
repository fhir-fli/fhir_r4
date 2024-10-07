import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Claim] /// A provider issued list of professional services and products which have
/// been provided, or are to be provided, to a patient which is sent to an
/// insurer for reimbursement.
class Claim extends DomainResource {
  Claim({
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
    this.insurer,
    required this.provider,
    required this.priority,
    this.fundsReserve,
    this.related,
    this.prescription,
    this.originalPrescription,
    this.payee,
    this.referral,
    this.facility,
    this.careTeam,
    this.supportingInfo,
    this.diagnosis,
    this.procedure,
    required this.insurance,
    this.accident,
    this.item,
    this.total,
  }) : super(resourceType: R4ResourceType.Claim);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this claim.
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
  /// supplied or are being considered and for whom actual or forecast
  /// reimbursement is sought.
  final Reference patient;

  /// [billablePeriod] /// The period for which charges are being submitted.
  final Period? billablePeriod;

  /// [created] /// The date this resource was created.
  final FhirDateTime created;
  final Element? createdElement;

  /// [enterer] /// Individual who created the claim, predetermination or preauthorization.
  final Reference? enterer;

  /// [insurer] /// The Insurer who is target of the request.
  final Reference? insurer;

  /// [provider] /// The provider which is responsible for the claim, predetermination or
  /// preauthorization.
  final Reference provider;

  /// [priority] /// The provider-required urgency of processing the request. Typical values
  /// include: stat, routine deferred.
  final CodeableConcept priority;

  /// [fundsReserve] /// A code to indicate whether and for whom funds are to be reserved for future
  /// claims.
  final CodeableConcept? fundsReserve;

  /// [related] /// Other claims which are related to this claim such as prior submissions or
  /// claims for related services or for the same event.
  final List<ClaimRelated>? related;

  /// [prescription] /// Prescription to support the dispensing of pharmacy, device or vision
  /// products.
  final Reference? prescription;

  /// [originalPrescription] /// Original prescription which has been superseded by this prescription to
  /// support the dispensing of pharmacy services, medications or products.
  final Reference? originalPrescription;

  /// [payee] /// The party to be reimbursed for cost of the products and services according
  /// to the terms of the policy.
  final ClaimPayee? payee;

  /// [referral] /// A reference to a referral resource.
  final Reference? referral;

  /// [facility] /// Facility where the services were provided.
  final Reference? facility;

  /// [careTeam] /// The members of the team who provided the products and services.
  final List<ClaimCareTeam>? careTeam;

  /// [supportingInfo] /// Additional information codes regarding exceptions, special considerations,
  /// the condition, situation, prior or concurrent issues.
  final List<ClaimSupportingInfo>? supportingInfo;

  /// [diagnosis] /// Information about diagnoses relevant to the claim items.
  final List<ClaimDiagnosis>? diagnosis;

  /// [procedure] /// Procedures performed on the patient relevant to the billing items with the
  /// claim.
  final List<ClaimProcedure>? procedure;

  /// [insurance] /// Financial instruments for reimbursement for the health care products and
  /// services specified on the claim.
  final List<ClaimInsurance> insurance;

  /// [accident] /// Details of an accident which resulted in injuries which required the
  /// products and services listed in the claim.
  final ClaimAccident? accident;

  /// [item] /// A claim line. Either a simple product or service or a 'group' of details
  /// which can each be a simple items or groups of sub-details.
  final List<ClaimItem>? item;

  /// [total] /// The total value of the all the items in the claim.
  final Money? total;
  @override
  Claim clone() => throw UnimplementedError();
  Claim copy({
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
    CodeableConcept? fundsReserve,
    List<ClaimRelated>? related,
    Reference? prescription,
    Reference? originalPrescription,
    ClaimPayee? payee,
    Reference? referral,
    Reference? facility,
    List<ClaimCareTeam>? careTeam,
    List<ClaimSupportingInfo>? supportingInfo,
    List<ClaimDiagnosis>? diagnosis,
    List<ClaimProcedure>? procedure,
    List<ClaimInsurance>? insurance,
    ClaimAccident? accident,
    List<ClaimItem>? item,
    Money? total,
  }) {
    return Claim(
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
      fundsReserve: fundsReserve ?? this.fundsReserve,
      related: related ?? this.related,
      prescription: prescription ?? this.prescription,
      originalPrescription: originalPrescription ?? this.originalPrescription,
      payee: payee ?? this.payee,
      referral: referral ?? this.referral,
      facility: facility ?? this.facility,
      careTeam: careTeam ?? this.careTeam,
      supportingInfo: supportingInfo ?? this.supportingInfo,
      diagnosis: diagnosis ?? this.diagnosis,
      procedure: procedure ?? this.procedure,
      insurance: insurance ?? this.insurance,
      accident: accident ?? this.accident,
      item: item ?? this.item,
      total: total ?? this.total,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ClaimRelated] /// Other claims which are related to this claim such as prior submissions or
/// claims for related services or for the same event.
class ClaimRelated extends BackboneElement {
  ClaimRelated({
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
  ClaimRelated clone() => throw UnimplementedError();
  ClaimRelated copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? claim,
    CodeableConcept? relationship,
    Identifier? reference,
  }) {
    return ClaimRelated(
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

/// [ClaimPayee] /// The party to be reimbursed for cost of the products and services according
/// to the terms of the policy.
class ClaimPayee extends BackboneElement {
  ClaimPayee({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.party,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Type of Party to be reimbursed: subscriber, provider, other.
  final CodeableConcept type;

  /// [party] /// Reference to the individual or organization to whom any payment will be
  /// made.
  final Reference? party;
  @override
  ClaimPayee clone() => throw UnimplementedError();
  ClaimPayee copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Reference? party,
  }) {
    return ClaimPayee(
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

/// [ClaimCareTeam] /// The members of the team who provided the products and services.
class ClaimCareTeam extends BackboneElement {
  ClaimCareTeam({
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
  ClaimCareTeam clone() => throw UnimplementedError();
  ClaimCareTeam copy({
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
    return ClaimCareTeam(
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

/// [ClaimSupportingInfo] /// Additional information codes regarding exceptions, special considerations,
/// the condition, situation, prior or concurrent issues.
class ClaimSupportingInfo extends BackboneElement {
  ClaimSupportingInfo({
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
  final CodeableConcept? reason;
  @override
  ClaimSupportingInfo clone() => throw UnimplementedError();
  ClaimSupportingInfo copy({
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
    CodeableConcept? reason,
  }) {
    return ClaimSupportingInfo(
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

/// [ClaimDiagnosis] /// Information about diagnoses relevant to the claim items.
class ClaimDiagnosis extends BackboneElement {
  ClaimDiagnosis({
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
  ClaimDiagnosis clone() => throw UnimplementedError();
  ClaimDiagnosis copy({
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
    return ClaimDiagnosis(
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

/// [ClaimProcedure] /// Procedures performed on the patient relevant to the billing items with the
/// claim.
class ClaimProcedure extends BackboneElement {
  ClaimProcedure({
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
  ClaimProcedure clone() => throw UnimplementedError();
  ClaimProcedure copy({
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
    return ClaimProcedure(
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

/// [ClaimInsurance] /// Financial instruments for reimbursement for the health care products and
/// services specified on the claim.
class ClaimInsurance extends BackboneElement {
  ClaimInsurance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    this.sequenceElement,
    required this.focal,
    this.focalElement,
    this.identifier,
    required this.coverage,
    this.businessArrangement,
    this.businessArrangementElement,
    this.preAuthRef,
    this.preAuthRefElement,
    this.claimResponse,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A number to uniquely identify insurance entries and provide a sequence of
  /// coverages to convey coordination of benefit order.
  final FhirPositiveInt sequence;
  final Element? sequenceElement;

  /// [focal] /// A flag to indicate that this Coverage is to be used for adjudication of
  /// this claim when set to true.
  final FhirBoolean focal;
  final Element? focalElement;

  /// [identifier] /// The business identifier to be used when the claim is sent for adjudication
  /// against this insurance policy.
  final Identifier? identifier;

  /// [coverage] /// Reference to the insurance card level information contained in the Coverage
  /// resource. The coverage issuing insurer will use these details to locate the
  /// patient's actual coverage within the insurer's information system.
  final Reference coverage;

  /// [businessArrangement] /// A business agreement number established between the provider and the
  /// insurer for special business processing purposes.
  final FhirString? businessArrangement;
  final Element? businessArrangementElement;

  /// [preAuthRef] /// Reference numbers previously provided by the insurer to the provider to be
  /// quoted on subsequent claims containing services or products related to the
  /// prior authorization.
  final List<FhirString>? preAuthRef;
  final List<Element>? preAuthRefElement;

  /// [claimResponse] /// The result of the adjudication of the line items for the Coverage specified
  /// in this insurance.
  final Reference? claimResponse;
  @override
  ClaimInsurance clone() => throw UnimplementedError();
  ClaimInsurance copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Element? sequenceElement,
    FhirBoolean? focal,
    Element? focalElement,
    Identifier? identifier,
    Reference? coverage,
    FhirString? businessArrangement,
    Element? businessArrangementElement,
    List<FhirString>? preAuthRef,
    List<Element>? preAuthRefElement,
    Reference? claimResponse,
  }) {
    return ClaimInsurance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      sequenceElement: sequenceElement ?? this.sequenceElement,
      focal: focal ?? this.focal,
      focalElement: focalElement ?? this.focalElement,
      identifier: identifier ?? this.identifier,
      coverage: coverage ?? this.coverage,
      businessArrangement: businessArrangement ?? this.businessArrangement,
      businessArrangementElement:
          businessArrangementElement ?? this.businessArrangementElement,
      preAuthRef: preAuthRef ?? this.preAuthRef,
      preAuthRefElement: preAuthRefElement ?? this.preAuthRefElement,
      claimResponse: claimResponse ?? this.claimResponse,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ClaimAccident] /// Details of an accident which resulted in injuries which required the
/// products and services listed in the claim.
class ClaimAccident extends BackboneElement {
  ClaimAccident({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.date,
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
  final FhirDate date;
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
  ClaimAccident clone() => throw UnimplementedError();
  ClaimAccident copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDate? date,
    Element? dateElement,
    CodeableConcept? type,
    Address? locationAddress,
    Reference? locationReference,
  }) {
    return ClaimAccident(
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

/// [ClaimItem] /// A claim line. Either a simple product or service or a 'group' of details
/// which can each be a simple items or groups of sub-details.
class ClaimItem extends BackboneElement {
  ClaimItem({
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
    this.detail,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A number to uniquely identify item entries.
  final FhirPositiveInt sequence;
  final Element? sequenceElement;

  /// [careTeamSequence] /// CareTeam members related to this service or product.
  final List<FhirPositiveInt>? careTeamSequence;
  final List<Element>? careTeamSequenceElement;

  /// [diagnosisSequence] /// Diagnosis applicable for this service or product.
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

  /// [encounter] /// The Encounters during which this Claim was created or to which the creation
  /// of this record is tightly associated.
  final List<Reference>? encounter;

  /// [detail] /// A claim detail line. Either a simple (a product or service) or a 'group' of
  /// sub-details which are simple items.
  final List<ClaimDetail>? detail;
  @override
  ClaimItem clone() => throw UnimplementedError();
  ClaimItem copy({
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
    List<ClaimDetail>? detail,
  }) {
    return ClaimItem(
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
      detail: detail ?? this.detail,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ClaimDetail] /// A claim detail line. Either a simple (a product or service) or a 'group' of
/// sub-details which are simple items.
class ClaimDetail extends BackboneElement {
  ClaimDetail({
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
    this.subDetail,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A number to uniquely identify item entries.
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

  /// [subDetail] /// A claim detail line. Either a simple (a product or service) or a 'group' of
  /// sub-details which are simple items.
  final List<ClaimSubDetail>? subDetail;
  @override
  ClaimDetail clone() => throw UnimplementedError();
  ClaimDetail copy({
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
    List<ClaimSubDetail>? subDetail,
  }) {
    return ClaimDetail(
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
      subDetail: subDetail ?? this.subDetail,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ClaimSubDetail] /// A claim detail line. Either a simple (a product or service) or a 'group' of
/// sub-details which are simple items.
class ClaimSubDetail extends BackboneElement {
  ClaimSubDetail({
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A number to uniquely identify item entries.
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
  @override
  ClaimSubDetail clone() => throw UnimplementedError();
  ClaimSubDetail copy({
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
  }) {
    return ClaimSubDetail(
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
    );
  }
}
