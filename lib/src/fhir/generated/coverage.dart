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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept type;
  final Reference policyHolder;
  final Reference subscriber;
  final String subscriberId;
  final PrimitiveElement SubscriberId;
  final Reference beneficiary;
  final String dependent;
  final PrimitiveElement Dependent;
  final CodeableConcept relationship;
  final Period period;
  final List<Reference> payor;
  final List<CoverageClass> class;
  final FhirPositiveInt order;
  final PrimitiveElement Order;
  final String network;
  final PrimitiveElement Network;
  final List<CoverageCostToBeneficiary> costToBeneficiary;
  final FhirBoolean subrogation;
  final PrimitiveElement Subrogation;
  final List<Reference> contract;
}

@Data()
@JsonCodable()
class CoverageClass {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final String value;
  final PrimitiveElement Value;
  final String name;
  final PrimitiveElement Name;
}

@Data()
@JsonCodable()
class CoverageCostToBeneficiary {
  final String id;
  final List<FhirExtension> extension;
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
  final List<FhirExtension> extension;
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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept priority;
  final List<FhirCode> purpose;
  final List<PrimitiveElement> Purpose;
  final Reference patient;
  final String servicedDate;
  final PrimitiveElement ServicedDate;
  final Period servicedPeriod;
  final FhirDateTime created;
  final PrimitiveElement Created;
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
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement Sequence;
  final Reference information;
  final FhirBoolean appliesToAll;
  final PrimitiveElement AppliesToAll;
}

@Data()
@JsonCodable()
class CoverageEligibilityRequestInsurance {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean focal;
  final PrimitiveElement Focal;
  final Reference coverage;
  final String businessArrangement;
  final PrimitiveElement BusinessArrangement;
}

@Data()
@JsonCodable()
class CoverageEligibilityRequestItem {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<FhirPositiveInt> supportingInfoSequence;
  final List<PrimitiveElement> SupportingInfoSequence;
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
  final List<FhirExtension> extension;
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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final List<FhirCode> purpose;
  final List<PrimitiveElement> Purpose;
  final Reference patient;
  final String servicedDate;
  final PrimitiveElement ServicedDate;
  final Period servicedPeriod;
  final FhirDateTime created;
  final PrimitiveElement Created;
  final Reference requestor;
  final Reference request;
  final FhirCode outcome;
  final PrimitiveElement Outcome;
  final String disposition;
  final PrimitiveElement Disposition;
  final Reference insurer;
  final List<CoverageEligibilityResponseInsurance> insurance;
  final String preAuthRef;
  final PrimitiveElement PreAuthRef;
  final CodeableConcept form;
  final List<CoverageEligibilityResponseError> error;
}

@Data()
@JsonCodable()
class CoverageEligibilityResponseInsurance {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Reference coverage;
  final FhirBoolean inforce;
  final PrimitiveElement Inforce;
  final Period benefitPeriod;
  final List<CoverageEligibilityResponseItem> item;
}

@Data()
@JsonCodable()
class CoverageEligibilityResponseItem {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept category;
  final CodeableConcept productOrService;
  final List<CodeableConcept> modifier;
  final Reference provider;
  final FhirBoolean excluded;
  final PrimitiveElement Excluded;
  final String name;
  final PrimitiveElement Name;
  final String description;
  final PrimitiveElement Description;
  final CodeableConcept network;
  final CodeableConcept unit;
  final CodeableConcept term;
  final List<CoverageEligibilityResponseBenefit> benefit;
  final FhirBoolean authorizationRequired;
  final PrimitiveElement AuthorizationRequired;
  final List<CodeableConcept> authorizationSupporting;
  final FhirUri authorizationUrl;
  final PrimitiveElement AuthorizationUrl;
}

@Data()
@JsonCodable()
class CoverageEligibilityResponseBenefit {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final double allowedUnsignedInt;
  final PrimitiveElement AllowedUnsignedInt;
  final String allowedString;
  final PrimitiveElement AllowedString;
  final Money allowedMoney;
  final double usedUnsignedInt;
  final PrimitiveElement UsedUnsignedInt;
  final String usedString;
  final PrimitiveElement UsedString;
  final Money usedMoney;
}

@Data()
@JsonCodable()
class CoverageEligibilityResponseError {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
}


