import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Coverage {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept type;
  final Reference policyHolder;
  final Reference subscriber;
  final String subscriberId;
  final PrimitiveElement subscriberIdElement;
  final Reference beneficiary;
  final String dependent;
  final PrimitiveElement dependentElement;
  final CodeableConcept relationship;
  final Period period;
  final List<Reference> payor;
  final List<CoverageClass> class_;
  final FhirPositiveInt order;
  final PrimitiveElement orderElement;
  final String network;
  final PrimitiveElement networkElement;
  final List<CoverageCostToBeneficiary> costToBeneficiary;
  final FhirBoolean subrogation;
  final PrimitiveElement subrogationElement;
  final List<Reference> contract;
  const Coverage({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.status,
    required this.statusElement,
    required this.type,
    required this.policyHolder,
    required this.subscriber,
    required this.subscriberId,
    required this.subscriberIdElement,
    required this.beneficiary,
    required this.dependent,
    required this.dependentElement,
    required this.relationship,
    required this.period,
    required this.payor,
    required this.class_,
    required this.order,
    required this.orderElement,
    required this.network,
    required this.networkElement,
    required this.costToBeneficiary,
    required this.subrogation,
    required this.subrogationElement,
    required this.contract,
  });
}

@Data()
@JsonCodable()
class CoverageClass {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final String value;
  final PrimitiveElement valueElement;
  final String name;
  final PrimitiveElement nameElement;
  const CoverageClass({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.value,
    required this.valueElement,
    required this.name,
    required this.nameElement,
  });
}

@Data()
@JsonCodable()
class CoverageCostToBeneficiary {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final Quantity valueQuantity;
  final Money valueMoney;
  final List<CoverageException> exception;
  const CoverageCostToBeneficiary({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.valueQuantity,
    required this.valueMoney,
    required this.exception,
  });
}

@Data()
@JsonCodable()
class CoverageException {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final Period period;
  const CoverageException({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.period,
  });
}

@Data()
@JsonCodable()
class CoverageEligibilityRequest {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept priority;
  final List<FhirCode> purpose;
  final List<PrimitiveElement> purposeElement;
  final Reference patient;
  final String servicedDate;
  final PrimitiveElement servicedDateElement;
  final Period servicedPeriod;
  final FhirDateTime created;
  final PrimitiveElement createdElement;
  final Reference enterer;
  final Reference provider;
  final Reference insurer;
  final Reference facility;
  final List<CoverageEligibilityRequestSupportingInfo> supportingInfo;
  final List<CoverageEligibilityRequestInsurance> insurance;
  final List<CoverageEligibilityRequestItem> item;
  const CoverageEligibilityRequest({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.status,
    required this.statusElement,
    required this.priority,
    required this.purpose,
    required this.purposeElement,
    required this.patient,
    required this.servicedDate,
    required this.servicedDateElement,
    required this.servicedPeriod,
    required this.created,
    required this.createdElement,
    required this.enterer,
    required this.provider,
    required this.insurer,
    required this.facility,
    required this.supportingInfo,
    required this.insurance,
    required this.item,
  });
}

@Data()
@JsonCodable()
class CoverageEligibilityRequestSupportingInfo {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement sequenceElement;
  final Reference information;
  final FhirBoolean appliesToAll;
  final PrimitiveElement appliesToAllElement;
  const CoverageEligibilityRequestSupportingInfo({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.sequence,
    required this.sequenceElement,
    required this.information,
    required this.appliesToAll,
    required this.appliesToAllElement,
  });
}

@Data()
@JsonCodable()
class CoverageEligibilityRequestInsurance {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean focal;
  final PrimitiveElement focalElement;
  final Reference coverage;
  final String businessArrangement;
  final PrimitiveElement businessArrangementElement;
  const CoverageEligibilityRequestInsurance({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.focal,
    required this.focalElement,
    required this.coverage,
    required this.businessArrangement,
    required this.businessArrangementElement,
  });
}

@Data()
@JsonCodable()
class CoverageEligibilityRequestItem {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<FhirPositiveInt> supportingInfoSequence;
  final List<PrimitiveElement> supportingInfoSequenceElement;
  final CodeableConcept category;
  final CodeableConcept productOrService;
  final List<CodeableConcept> modifier;
  final Reference provider;
  final Quantity quantity;
  final Money unitPrice;
  final Reference facility;
  final List<CoverageEligibilityRequestDiagnosis> diagnosis;
  final List<Reference> detail;
  const CoverageEligibilityRequestItem({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.supportingInfoSequence,
    required this.supportingInfoSequenceElement,
    required this.category,
    required this.productOrService,
    required this.modifier,
    required this.provider,
    required this.quantity,
    required this.unitPrice,
    required this.facility,
    required this.diagnosis,
    required this.detail,
  });
}

@Data()
@JsonCodable()
class CoverageEligibilityRequestDiagnosis {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept diagnosisCodeableConcept;
  final Reference diagnosisReference;
  const CoverageEligibilityRequestDiagnosis({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.diagnosisCodeableConcept,
    required this.diagnosisReference,
  });
}

@Data()
@JsonCodable()
class CoverageEligibilityResponse {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final List<FhirCode> purpose;
  final List<PrimitiveElement> purposeElement;
  final Reference patient;
  final String servicedDate;
  final PrimitiveElement servicedDateElement;
  final Period servicedPeriod;
  final FhirDateTime created;
  final PrimitiveElement createdElement;
  final Reference requestor;
  final Reference request;
  final FhirCode outcome;
  final PrimitiveElement outcomeElement;
  final String disposition;
  final PrimitiveElement dispositionElement;
  final Reference insurer;
  final List<CoverageEligibilityResponseInsurance> insurance;
  final String preAuthRef;
  final PrimitiveElement preAuthRefElement;
  final CodeableConcept form;
  final List<CoverageEligibilityResponseError> error;
  const CoverageEligibilityResponse({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.status,
    required this.statusElement,
    required this.purpose,
    required this.purposeElement,
    required this.patient,
    required this.servicedDate,
    required this.servicedDateElement,
    required this.servicedPeriod,
    required this.created,
    required this.createdElement,
    required this.requestor,
    required this.request,
    required this.outcome,
    required this.outcomeElement,
    required this.disposition,
    required this.dispositionElement,
    required this.insurer,
    required this.insurance,
    required this.preAuthRef,
    required this.preAuthRefElement,
    required this.form,
    required this.error,
  });
}

@Data()
@JsonCodable()
class CoverageEligibilityResponseInsurance {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference coverage;
  final FhirBoolean inforce;
  final PrimitiveElement inforceElement;
  final Period benefitPeriod;
  final List<CoverageEligibilityResponseItem> item;
  const CoverageEligibilityResponseInsurance({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.coverage,
    required this.inforce,
    required this.inforceElement,
    required this.benefitPeriod,
    required this.item,
  });
}

@Data()
@JsonCodable()
class CoverageEligibilityResponseItem {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept category;
  final CodeableConcept productOrService;
  final List<CodeableConcept> modifier;
  final Reference provider;
  final FhirBoolean excluded;
  final PrimitiveElement excludedElement;
  final String name;
  final PrimitiveElement nameElement;
  final String description;
  final PrimitiveElement descriptionElement;
  final CodeableConcept network;
  final CodeableConcept unit;
  final CodeableConcept term;
  final List<CoverageEligibilityResponseBenefit> benefit;
  final FhirBoolean authorizationRequired;
  final PrimitiveElement authorizationRequiredElement;
  final List<CodeableConcept> authorizationSupporting;
  final FhirUri authorizationUrl;
  final PrimitiveElement authorizationUrlElement;
  const CoverageEligibilityResponseItem({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.category,
    required this.productOrService,
    required this.modifier,
    required this.provider,
    required this.excluded,
    required this.excludedElement,
    required this.name,
    required this.nameElement,
    required this.description,
    required this.descriptionElement,
    required this.network,
    required this.unit,
    required this.term,
    required this.benefit,
    required this.authorizationRequired,
    required this.authorizationRequiredElement,
    required this.authorizationSupporting,
    required this.authorizationUrl,
    required this.authorizationUrlElement,
  });
}

@Data()
@JsonCodable()
class CoverageEligibilityResponseBenefit {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final double allowedUnsignedInt;
  final PrimitiveElement allowedUnsignedIntElement;
  final String allowedString;
  final PrimitiveElement allowedStringElement;
  final Money allowedMoney;
  final double usedUnsignedInt;
  final PrimitiveElement usedUnsignedIntElement;
  final String usedString;
  final PrimitiveElement usedStringElement;
  final Money usedMoney;
  const CoverageEligibilityResponseBenefit({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.allowedUnsignedInt,
    required this.allowedUnsignedIntElement,
    required this.allowedString,
    required this.allowedStringElement,
    required this.allowedMoney,
    required this.usedUnsignedInt,
    required this.usedUnsignedIntElement,
    required this.usedString,
    required this.usedStringElement,
    required this.usedMoney,
  });
}

@Data()
@JsonCodable()
class CoverageEligibilityResponseError {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  const CoverageEligibilityResponseError({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
  });
}


