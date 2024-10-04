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
}

@Data()
@JsonCodable()
class CoverageException {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final Period period;
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
}

@Data()
@JsonCodable()
class CoverageEligibilityRequestDiagnosis {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept diagnosisCodeableConcept;
  final Reference diagnosisReference;
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
}

@Data()
@JsonCodable()
class CoverageEligibilityResponseError {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
}


