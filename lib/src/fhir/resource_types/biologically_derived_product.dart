import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
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
  final List<Identifier>? identifier;
  final FhirCode? productCategory;
  final Element? productCategoryElement;
  final CodeableConcept? productCode;
  final FhirCode? status;
  final Element? statusElement;
  final List<Reference>? request;
  final FhirInteger? quantity;
  final Element? quantityElement;
  final List<Reference>? parent;
  final BiologicallyDerivedProductCollection? collection;
  final List<BiologicallyDerivedProductProcessing>? processing;
  final BiologicallyDerivedProductManipulation? manipulation;
  final List<BiologicallyDerivedProductStorage>? storage;
  @override
  BiologicallyDerivedProduct clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final Reference? collector;
  final Reference? source;
  final FhirDateTime? collectedDateTime;
  final Element? collectedDateTimeElement;
  final Period? collectedPeriod;
  @override
  BiologicallyDerivedProductCollection clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final FhirString? description;
  final Element? descriptionElement;
  final CodeableConcept? procedure;
  final Reference? additive;
  final FhirDateTime? timeDateTime;
  final Element? timeDateTimeElement;
  final Period? timePeriod;
  @override
  BiologicallyDerivedProductProcessing clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final FhirString? description;
  final Element? descriptionElement;
  final FhirDateTime? timeDateTime;
  final Element? timeDateTimeElement;
  final Period? timePeriod;
  @override
  BiologicallyDerivedProductManipulation clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final FhirString? description;
  final Element? descriptionElement;
  final FhirDecimal? temperature;
  final Element? temperatureElement;
  final FhirCode? scale;
  final Element? scaleElement;
  final Period? duration;
  @override
  BiologicallyDerivedProductStorage clone() => throw UnimplementedError();
}
