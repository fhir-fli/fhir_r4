import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class ChargeItem {
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
  final List<FhirUri> definitionUri;
  final List<PrimitiveElement> DefinitionUri;
  final List<FhirCanonical> definitionCanonical;
  final FhirCode status;
  final PrimitiveElement Status;
  final List<Reference> partOf;
  final CodeableConcept code;
  final Reference subject;
  final Reference context;
  final String occurrenceDateTime;
  final PrimitiveElement OccurrenceDateTime;
  final Period occurrencePeriod;
  final Timing occurrenceTiming;
  final List<ChargeItemPerformer> performer;
  final Reference performingOrganization;
  final Reference requestingOrganization;
  final Reference costCenter;
  final Quantity quantity;
  final List<CodeableConcept> bodysite;
  final FhirDecimal factorOverride;
  final PrimitiveElement FactorOverride;
  final Money priceOverride;
  final String overrideReason;
  final PrimitiveElement OverrideReason;
  final Reference enterer;
  final FhirDateTime enteredDate;
  final PrimitiveElement EnteredDate;
  final List<CodeableConcept> reason;
  final List<Reference> service;
  final Reference productReference;
  final CodeableConcept productCodeableConcept;
  final List<Reference> account;
  final List<Annotation> note;
  final List<Reference> supportingInformation;
}

@Data()
@JsonCodable()
class ChargeItemPerformer {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept function;
  final Reference actor;
}

@Data()
@JsonCodable()
class ChargeItemDefinition {
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
  final FhirUri url;
  final PrimitiveElement Url;
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement Version;
  final String title;
  final PrimitiveElement Title;
  final List<FhirUri> derivedFromUri;
  final List<PrimitiveElement> DerivedFromUri;
  final List<FhirCanonical> partOf;
  final List<FhirCanonical> replaces;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirBoolean experimental;
  final PrimitiveElement Experimental;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
  final FhirDate approvalDate;
  final PrimitiveElement ApprovalDate;
  final FhirDate lastReviewDate;
  final PrimitiveElement LastReviewDate;
  final Period effectivePeriod;
  final CodeableConcept code;
  final List<Reference> instance;
  final List<ChargeItemDefinitionApplicability> applicability;
  final List<ChargeItemDefinitionPropertyGroup> propertyGroup;
}

@Data()
@JsonCodable()
class ChargeItemDefinitionApplicability {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement Description;
  final String language;
  final PrimitiveElement Language;
  final String expression;
  final PrimitiveElement Expression;
}

@Data()
@JsonCodable()
class ChargeItemDefinitionPropertyGroup {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<ChargeItemDefinitionApplicability> applicability;
  final List<ChargeItemDefinitionPriceComponent> priceComponent;
}

@Data()
@JsonCodable()
class ChargeItemDefinitionPriceComponent {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final CodeableConcept code;
  final FhirDecimal factor;
  final PrimitiveElement Factor;
  final Money amount;
}


