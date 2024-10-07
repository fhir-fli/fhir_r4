import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [CatalogEntry] /// Catalog entries are wrappers that contextualize items included in a
/// catalog.
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

  /// [identifier] /// Used in supporting different identifiers for the same product, e.g.
  /// manufacturer code and retailer code.
  final List<Identifier>? identifier;

  /// [type] /// The type of item - medication, device, service, protocol or other.
  final CodeableConcept? type;

  /// [orderable] /// Whether the entry represents an orderable item.
  final FhirBoolean orderable;
  final Element? orderableElement;

  /// [referencedItem] /// The item in a catalog or definition.
  final Reference referencedItem;

  /// [additionalIdentifier] /// Used in supporting related concepts, e.g. NDC to RxNorm.
  final List<Identifier>? additionalIdentifier;

  /// [classification] /// Classes of devices, or ATC for medication.
  final List<CodeableConcept>? classification;

  /// [status] /// Used to support catalog exchange even for unsupported products, e.g.
  /// getting list of medications even if not prescribable.
  final FhirCode? status;
  final Element? statusElement;

  /// [validityPeriod] /// The time period in which this catalog entry is expected to be active.
  final Period? validityPeriod;

  /// [validTo] /// The date until which this catalog entry is expected to be active.
  final FhirDateTime? validTo;
  final Element? validToElement;

  /// [lastUpdated] /// Typically date of issue is different from the beginning of the validity.
  /// This can be used to see when an item was last updated.
  final FhirDateTime? lastUpdated;
  final Element? lastUpdatedElement;

  /// [additionalCharacteristic] /// Used for examplefor Out of Formulary, or any specifics.
  final List<CodeableConcept>? additionalCharacteristic;

  /// [additionalClassification] /// User for example for ATC classification, or.
  final List<CodeableConcept>? additionalClassification;

  /// [relatedEntry] /// Used for example, to point to a substance, or to a device used to
  /// administer a medication.
  final List<CatalogEntryRelatedEntry>? relatedEntry;
  @override
  CatalogEntry clone() => throw UnimplementedError();
  CatalogEntry copy({
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
    CodeableConcept? type,
    FhirBoolean? orderable,
    Element? orderableElement,
    Reference? referencedItem,
    List<Identifier>? additionalIdentifier,
    List<CodeableConcept>? classification,
    FhirCode? status,
    Element? statusElement,
    Period? validityPeriod,
    FhirDateTime? validTo,
    Element? validToElement,
    FhirDateTime? lastUpdated,
    Element? lastUpdatedElement,
    List<CodeableConcept>? additionalCharacteristic,
    List<CodeableConcept>? additionalClassification,
    List<CatalogEntryRelatedEntry>? relatedEntry,
  }) {
    return CatalogEntry(
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
      type: type ?? this.type,
      orderable: orderable ?? this.orderable,
      orderableElement: orderableElement ?? this.orderableElement,
      referencedItem: referencedItem ?? this.referencedItem,
      additionalIdentifier: additionalIdentifier ?? this.additionalIdentifier,
      classification: classification ?? this.classification,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      validityPeriod: validityPeriod ?? this.validityPeriod,
      validTo: validTo ?? this.validTo,
      validToElement: validToElement ?? this.validToElement,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      lastUpdatedElement: lastUpdatedElement ?? this.lastUpdatedElement,
      additionalCharacteristic:
          additionalCharacteristic ?? this.additionalCharacteristic,
      additionalClassification:
          additionalClassification ?? this.additionalClassification,
      relatedEntry: relatedEntry ?? this.relatedEntry,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CatalogEntryRelatedEntry] /// Used for example, to point to a substance, or to a device used to
/// administer a medication.
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

  /// [relationtype] /// The type of relation to the related item: child, parent, packageContent,
  /// containerPackage, usedIn, uses, requires, etc.
  final FhirCode relationtype;
  final Element? relationtypeElement;

  /// [item] /// The reference to the related item.
  final Reference item;
  @override
  CatalogEntryRelatedEntry clone() => throw UnimplementedError();
  CatalogEntryRelatedEntry copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? relationtype,
    Element? relationtypeElement,
    Reference? item,
  }) {
    return CatalogEntryRelatedEntry(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      relationtype: relationtype ?? this.relationtype,
      relationtypeElement: relationtypeElement ?? this.relationtypeElement,
      item: item ?? this.item,
    );
  }
}
