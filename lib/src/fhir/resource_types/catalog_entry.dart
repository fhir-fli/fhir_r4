import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class CatalogEntry extends DomainResource {
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
    required this.orderable,
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
  }) : super(resourceType: R4ResourceType.CatalogEntry);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<Identifier>? identifier;
  final CodeableConcept? type;
  final FhirBoolean orderable;
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
  @override
  CatalogEntry clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CatalogEntryRelatedEntry extends BackboneElement {
  CatalogEntryRelatedEntry({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.relationtype,
    this.relationtypeElement,
    required this.item,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirCode relationtype;
  final Element? relationtypeElement;
  final Reference item;
  @override
  CatalogEntryRelatedEntry clone() => throw UnimplementedError();
}
