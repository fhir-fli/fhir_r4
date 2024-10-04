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
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final List<FhirUri> definitionUri;
  final List<PrimitiveElement> definitionUriElement;
  final List<FhirCanonical> definitionCanonical;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final List<Reference> partOf;
  final CodeableConcept code;
  final Reference subject;
  final Reference context;
  final String occurrenceDateTime;
  final PrimitiveElement occurrenceDateTimeElement;
  final Period occurrencePeriod;
  final Timing occurrenceTiming;
  final List<ChargeItemPerformer> performer;
  final Reference performingOrganization;
  final Reference requestingOrganization;
  final Reference costCenter;
  final Quantity quantity;
  final List<CodeableConcept> bodysite;
  final FhirDecimal factorOverride;
  final PrimitiveElement factorOverrideElement;
  final Money priceOverride;
  final String overrideReason;
  final PrimitiveElement overrideReasonElement;
  final Reference enterer;
  final FhirDateTime enteredDate;
  final PrimitiveElement enteredDateElement;
  final List<CodeableConcept> reason;
  final List<Reference> service;
  final Reference productReference;
  final CodeableConcept productCodeableConcept;
  final List<Reference> account;
  final List<Annotation> note;
  final List<Reference> supportingInformation;
  const ChargeItem({
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
    required this.definitionUri,
    required this.definitionUriElement,
    required this.definitionCanonical,
    required this.status,
    required this.statusElement,
    required this.partOf,
    required this.code,
    required this.subject,
    required this.context,
    required this.occurrenceDateTime,
    required this.occurrenceDateTimeElement,
    required this.occurrencePeriod,
    required this.occurrenceTiming,
    required this.performer,
    required this.performingOrganization,
    required this.requestingOrganization,
    required this.costCenter,
    required this.quantity,
    required this.bodysite,
    required this.factorOverride,
    required this.factorOverrideElement,
    required this.priceOverride,
    required this.overrideReason,
    required this.overrideReasonElement,
    required this.enterer,
    required this.enteredDate,
    required this.enteredDateElement,
    required this.reason,
    required this.service,
    required this.productReference,
    required this.productCodeableConcept,
    required this.account,
    required this.note,
    required this.supportingInformation,
  });
}

@Data()
@JsonCodable()
class ChargeItemPerformer {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept function_;
  final Reference actor;
  const ChargeItemPerformer({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.function_,
    required this.actor,
  });
}

@Data()
@JsonCodable()
class ChargeItemDefinition {
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
  final FhirUri url;
  final PrimitiveElement urlElement;
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement versionElement;
  final String title;
  final PrimitiveElement titleElement;
  final List<FhirUri> derivedFromUri;
  final List<PrimitiveElement> derivedFromUriElement;
  final List<FhirCanonical> partOf;
  final List<FhirCanonical> replaces;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirBoolean experimental;
  final PrimitiveElement experimentalElement;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final String publisher;
  final PrimitiveElement publisherElement;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown copyright;
  final PrimitiveElement copyrightElement;
  final FhirDate approvalDate;
  final PrimitiveElement approvalDateElement;
  final FhirDate lastReviewDate;
  final PrimitiveElement lastReviewDateElement;
  final Period effectivePeriod;
  final CodeableConcept code;
  final List<Reference> instance;
  final List<ChargeItemDefinitionApplicability> applicability;
  final List<ChargeItemDefinitionPropertyGroup> propertyGroup;
  const ChargeItemDefinition({
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
    required this.url,
    required this.urlElement,
    required this.identifier,
    required this.version,
    required this.versionElement,
    required this.title,
    required this.titleElement,
    required this.derivedFromUri,
    required this.derivedFromUriElement,
    required this.partOf,
    required this.replaces,
    required this.status,
    required this.statusElement,
    required this.experimental,
    required this.experimentalElement,
    required this.date,
    required this.dateElement,
    required this.publisher,
    required this.publisherElement,
    required this.contact,
    required this.description,
    required this.descriptionElement,
    required this.useContext,
    required this.jurisdiction,
    required this.copyright,
    required this.copyrightElement,
    required this.approvalDate,
    required this.approvalDateElement,
    required this.lastReviewDate,
    required this.lastReviewDateElement,
    required this.effectivePeriod,
    required this.code,
    required this.instance,
    required this.applicability,
    required this.propertyGroup,
  });
}

@Data()
@JsonCodable()
class ChargeItemDefinitionApplicability {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement descriptionElement;
  final String language;
  final PrimitiveElement languageElement;
  final String expression;
  final PrimitiveElement expressionElement;
  const ChargeItemDefinitionApplicability({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.description,
    required this.descriptionElement,
    required this.language,
    required this.languageElement,
    required this.expression,
    required this.expressionElement,
  });
}

@Data()
@JsonCodable()
class ChargeItemDefinitionPropertyGroup {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<ChargeItemDefinitionApplicability> applicability;
  final List<ChargeItemDefinitionPriceComponent> priceComponent;
  const ChargeItemDefinitionPropertyGroup({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.applicability,
    required this.priceComponent,
  });
}

@Data()
@JsonCodable()
class ChargeItemDefinitionPriceComponent {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final CodeableConcept code;
  final FhirDecimal factor;
  final PrimitiveElement factorElement;
  final Money amount;
  const ChargeItemDefinitionPriceComponent({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.typeElement,
    required this.code,
    required this.factor,
    required this.factorElement,
    required this.amount,
  });
}


