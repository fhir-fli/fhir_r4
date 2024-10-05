import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class CatalogEntry extends DomainResource {
  final List<Identifier>? identifier;
  final CodeableConcept? type;
  final FhirBoolean? orderable;
  final Element? orderableElement;
  final Reference referencedItem;
  final List<Identifier>? additionalIdentifier;
  final List<CodeableConcept>? classification;
  final FhirCode? status;
  final Element? statusElement;
  final Period? validityPeriod;
  final FhirDateTime? validTo;
  final Element? validToElement;
  final FhirDateTime? lastUpdated;
  final Element? lastUpdatedElement;
  final List<CodeableConcept>? additionalCharacteristic;
  final List<CodeableConcept>? additionalClassification;
  final List<CatalogEntryRelatedEntry>? relatedEntry;

  CatalogEntry({
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
    this.type,
    this.orderable,
    this.orderableElement,
    required this.referencedItem,
    this.additionalIdentifier,
    this.classification,
    this.status,
    this.statusElement,
    this.validityPeriod,
    this.validTo,
    this.validToElement,
    this.lastUpdated,
    this.lastUpdatedElement,
    this.additionalCharacteristic,
    this.additionalClassification,
    this.relatedEntry,
  }): super(resourceType: R4ResourceType.CatalogEntry);

@override
CatalogEntry clone() => this;

}


@Data()
@JsonCodable()
class CatalogEntryRelatedEntry {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? relationtype;
  final Element? relationtypeElement;
  final Reference item;

  CatalogEntryRelatedEntry({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.relationtype,
    this.relationtypeElement,
    required this.item,
  });

}



