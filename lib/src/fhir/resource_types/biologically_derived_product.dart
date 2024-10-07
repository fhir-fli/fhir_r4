import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [BiologicallyDerivedProduct] /// A material substance originating from a biological entity intended to be
/// transplanted or infused
/// into another (possibly the same) biological entity.
class BiologicallyDerivedProduct extends DomainResource {
  BiologicallyDerivedProduct({
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
    this.productCategory,
    this.productCategoryElement,
    this.productCode,
    this.status,
    this.statusElement,
    this.request,
    this.quantity,
    this.quantityElement,
    this.parent,
    this.collection,
    this.processing,
    this.manipulation,
    this.storage,
  }) : super(resourceType: R4ResourceType.BiologicallyDerivedProduct);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// This records identifiers associated with this biologically derived product
  /// instance that are defined by business processes and/or used to refer to it
  /// when a direct URL reference to the resource itself is not appropriate (e.g.
  /// in CDA documents, or in written / printed documentation).
  final List<Identifier>? identifier;

  /// [productCategory] /// Broad category of this product.
  final FhirCode? productCategory;
  final Element? productCategoryElement;

  /// [productCode] /// A code that identifies the kind of this biologically derived product
  /// (SNOMED Ctcode).
  final CodeableConcept? productCode;

  /// [status] /// Whether the product is currently available.
  final FhirCode? status;
  final Element? statusElement;

  /// [request] /// Procedure request to obtain this biologically derived product.
  final List<Reference>? request;

  /// [quantity] /// Number of discrete units within this product.
  final FhirInteger? quantity;
  final Element? quantityElement;

  /// [parent] /// Parent product (if any).
  final List<Reference>? parent;

  /// [collection] /// How this product was collected.
  final BiologicallyDerivedProductCollection? collection;

  /// [processing] /// Any processing of the product during collection that does not change the
  /// fundamental nature of the product. For example adding anti-coagulants
  /// during the collection of Peripheral Blood Stem Cells.
  final List<BiologicallyDerivedProductProcessing>? processing;

  /// [manipulation] /// Any manipulation of product post-collection that is intended to alter the
  /// product. For example a buffy-coat enrichment or CD8 reduction of Peripheral
  /// Blood Stem Cells to make it more suitable for infusion.
  final BiologicallyDerivedProductManipulation? manipulation;

  /// [storage] /// Product storage.
  final List<BiologicallyDerivedProductStorage>? storage;
  @override
  BiologicallyDerivedProduct clone() => throw UnimplementedError();
  BiologicallyDerivedProduct copy({
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
    FhirCode? productCategory,
    Element? productCategoryElement,
    CodeableConcept? productCode,
    FhirCode? status,
    Element? statusElement,
    List<Reference>? request,
    FhirInteger? quantity,
    Element? quantityElement,
    List<Reference>? parent,
    BiologicallyDerivedProductCollection? collection,
    List<BiologicallyDerivedProductProcessing>? processing,
    BiologicallyDerivedProductManipulation? manipulation,
    List<BiologicallyDerivedProductStorage>? storage,
  }) {
    return BiologicallyDerivedProduct(
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
      productCategory: productCategory ?? this.productCategory,
      productCategoryElement:
          productCategoryElement ?? this.productCategoryElement,
      productCode: productCode ?? this.productCode,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      request: request ?? this.request,
      quantity: quantity ?? this.quantity,
      quantityElement: quantityElement ?? this.quantityElement,
      parent: parent ?? this.parent,
      collection: collection ?? this.collection,
      processing: processing ?? this.processing,
      manipulation: manipulation ?? this.manipulation,
      storage: storage ?? this.storage,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [BiologicallyDerivedProductCollection] /// How this product was collected.
class BiologicallyDerivedProductCollection extends BackboneElement {
  BiologicallyDerivedProductCollection({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.collector,
    this.source,
    this.collectedDateTime,
    this.collectedDateTimeElement,
    this.collectedPeriod,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [collector] /// Healthcare professional who is performing the collection.
  final Reference? collector;

  /// [source] /// The patient or entity, such as a hospital or vendor in the case of a
  /// processed/manipulated/manufactured product, providing the product.
  final Reference? source;

  /// [collectedDateTime] /// Time of product collection.
  final FhirDateTime? collectedDateTime;
  final Element? collectedDateTimeElement;

  /// [collectedPeriod] /// Time of product collection.
  final Period? collectedPeriod;
  @override
  BiologicallyDerivedProductCollection clone() => throw UnimplementedError();
  BiologicallyDerivedProductCollection copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? collector,
    Reference? source,
    FhirDateTime? collectedDateTime,
    Element? collectedDateTimeElement,
    Period? collectedPeriod,
  }) {
    return BiologicallyDerivedProductCollection(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      collector: collector ?? this.collector,
      source: source ?? this.source,
      collectedDateTime: collectedDateTime ?? this.collectedDateTime,
      collectedDateTimeElement:
          collectedDateTimeElement ?? this.collectedDateTimeElement,
      collectedPeriod: collectedPeriod ?? this.collectedPeriod,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [BiologicallyDerivedProductProcessing] /// Any processing of the product during collection that does not change the
/// fundamental nature of the product. For example adding anti-coagulants
/// during the collection of Peripheral Blood Stem Cells.
class BiologicallyDerivedProductProcessing extends BackboneElement {
  BiologicallyDerivedProductProcessing({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.procedure,
    this.additive,
    this.timeDateTime,
    this.timeDateTimeElement,
    this.timePeriod,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// Description of of processing.
  final FhirString? description;
  final Element? descriptionElement;

  /// [procedure] /// Procesing code.
  final CodeableConcept? procedure;

  /// [additive] /// Substance added during processing.
  final Reference? additive;

  /// [timeDateTime] /// Time of processing.
  final FhirDateTime? timeDateTime;
  final Element? timeDateTimeElement;

  /// [timePeriod] /// Time of processing.
  final Period? timePeriod;
  @override
  BiologicallyDerivedProductProcessing clone() => throw UnimplementedError();
  BiologicallyDerivedProductProcessing copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Element? descriptionElement,
    CodeableConcept? procedure,
    Reference? additive,
    FhirDateTime? timeDateTime,
    Element? timeDateTimeElement,
    Period? timePeriod,
  }) {
    return BiologicallyDerivedProductProcessing(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      procedure: procedure ?? this.procedure,
      additive: additive ?? this.additive,
      timeDateTime: timeDateTime ?? this.timeDateTime,
      timeDateTimeElement: timeDateTimeElement ?? this.timeDateTimeElement,
      timePeriod: timePeriod ?? this.timePeriod,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [BiologicallyDerivedProductManipulation] /// Any manipulation of product post-collection that is intended to alter the
/// product. For example a buffy-coat enrichment or CD8 reduction of Peripheral
/// Blood Stem Cells to make it more suitable for infusion.
class BiologicallyDerivedProductManipulation extends BackboneElement {
  BiologicallyDerivedProductManipulation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.timeDateTime,
    this.timeDateTimeElement,
    this.timePeriod,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// Description of manipulation.
  final FhirString? description;
  final Element? descriptionElement;

  /// [timeDateTime] /// Time of manipulation.
  final FhirDateTime? timeDateTime;
  final Element? timeDateTimeElement;

  /// [timePeriod] /// Time of manipulation.
  final Period? timePeriod;
  @override
  BiologicallyDerivedProductManipulation clone() => throw UnimplementedError();
  BiologicallyDerivedProductManipulation copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Element? descriptionElement,
    FhirDateTime? timeDateTime,
    Element? timeDateTimeElement,
    Period? timePeriod,
  }) {
    return BiologicallyDerivedProductManipulation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      timeDateTime: timeDateTime ?? this.timeDateTime,
      timeDateTimeElement: timeDateTimeElement ?? this.timeDateTimeElement,
      timePeriod: timePeriod ?? this.timePeriod,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [BiologicallyDerivedProductStorage] /// Product storage.
class BiologicallyDerivedProductStorage extends BackboneElement {
  BiologicallyDerivedProductStorage({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.temperature,
    this.temperatureElement,
    this.scale,
    this.scaleElement,
    this.duration,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [description] /// Description of storage.
  final FhirString? description;
  final Element? descriptionElement;

  /// [temperature] /// Storage temperature.
  final FhirDecimal? temperature;
  final Element? temperatureElement;

  /// [scale] /// Temperature scale used.
  final FhirCode? scale;
  final Element? scaleElement;

  /// [duration] /// Storage timeperiod.
  final Period? duration;
  @override
  BiologicallyDerivedProductStorage clone() => throw UnimplementedError();
  BiologicallyDerivedProductStorage copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Element? descriptionElement,
    FhirDecimal? temperature,
    Element? temperatureElement,
    FhirCode? scale,
    Element? scaleElement,
    Period? duration,
  }) {
    return BiologicallyDerivedProductStorage(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      temperature: temperature ?? this.temperature,
      temperatureElement: temperatureElement ?? this.temperatureElement,
      scale: scale ?? this.scale,
      scaleElement: scaleElement ?? this.scaleElement,
      duration: duration ?? this.duration,
    );
  }
}
