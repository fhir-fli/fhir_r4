import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ChargeItemDefinition extends DomainResource {
  final FhirUri? url;
  final Element? urlElement;
  final List<Identifier>? identifier;
  final FhirString? version;
  final Element? versionElement;
  final FhirString? title;
  final Element? titleElement;
  final List<FhirUri>? derivedFromUri;
  final List<Element>? derivedFromUriElement;
  final List<FhirCanonical>? partOf;
  final List<FhirCanonical>? replaces;
  final FhirCode? status;
  final Element? statusElement;
  final FhirBoolean? experimental;
  final Element? experimentalElement;
  final FhirDateTime? date;
  final Element? dateElement;
  final FhirString? publisher;
  final Element? publisherElement;
  final List<ContactDetail>? contact;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final List<UsageContext>? useContext;
  final List<CodeableConcept>? jurisdiction;
  final FhirMarkdown? copyright;
  final Element? copyrightElement;
  final FhirDate? approvalDate;
  final Element? approvalDateElement;
  final FhirDate? lastReviewDate;
  final Element? lastReviewDateElement;
  final Period? effectivePeriod;
  final CodeableConcept? code;
  final List<Reference>? instance;
  final List<ChargeItemDefinitionApplicability>? applicability;
  final List<ChargeItemDefinitionPropertyGroup>? propertyGroup;

  ChargeItemDefinition({
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
    this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    this.title,
    this.titleElement,
    this.derivedFromUri,
    this.derivedFromUriElement,
    this.partOf,
    this.replaces,
    this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.copyright,
    this.copyrightElement,
    this.approvalDate,
    this.approvalDateElement,
    this.lastReviewDate,
    this.lastReviewDateElement,
    this.effectivePeriod,
    this.code,
    this.instance,
    this.applicability,
    this.propertyGroup,
  }): super(resourceType: R4ResourceType.ChargeItemDefinition);

@override
ChargeItemDefinition clone() => this;

}


@Data()
@JsonCodable()
class ChargeItemDefinitionApplicability {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirString? language;
  final Element? languageElement;
  final FhirString? expression;
  final Element? expressionElement;

  ChargeItemDefinitionApplicability({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.descriptionElement,
    this.language,
    this.languageElement,
    this.expression,
    this.expressionElement,
  });

}


@Data()
@JsonCodable()
class ChargeItemDefinitionPropertyGroup {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<ChargeItemDefinitionApplicability>? applicability;
  final List<ChargeItemDefinitionPriceComponent>? priceComponent;

  ChargeItemDefinitionPropertyGroup({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.applicability,
    this.priceComponent,
  });

}


@Data()
@JsonCodable()
class ChargeItemDefinitionPriceComponent {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? type;
  final Element? typeElement;
  final CodeableConcept? code;
  final FhirDecimal? factor;
  final Element? factorElement;
  final Money? amount;

  ChargeItemDefinitionPriceComponent({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.typeElement,
    this.code,
    this.factor,
    this.factorElement,
    this.amount,
  });

}


