import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class BiologicallyDerivedProduct extends DomainResource {
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
  final BackboneElement? collection;
  final List<BackboneElement>? processing;
  final BackboneElement? manipulation;
  final List<BackboneElement>? storage;

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

@override
BiologicallyDerivedProduct clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class BiologicallyDerivedProductCollection extends BackboneElement {
  final Reference? collector;
  final Reference? source;
  final FhirDateTime? collectedFhirDateTime;
  final Element? collectedFhirDateTimeElement;
  final Period? collectedPeriod;

  BiologicallyDerivedProductCollection({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.collector,
    this.source,
    this.collectedFhirDateTime,
this.collectedFhirDateTimeElement,
    this.collectedPeriod,
  });

@override
BiologicallyDerivedProductCollection clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class BiologicallyDerivedProductProcessing extends BackboneElement {
  final FhirString? description;
  final Element? descriptionElement;
  final CodeableConcept? procedure;
  final Reference? additive;
  final FhirDateTime? timeFhirDateTime;
  final Element? timeFhirDateTimeElement;
  final Period? timePeriod;

  BiologicallyDerivedProductProcessing({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
this.descriptionElement,
    this.procedure,
    this.additive,
    this.timeFhirDateTime,
this.timeFhirDateTimeElement,
    this.timePeriod,
  });

@override
BiologicallyDerivedProductProcessing clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class BiologicallyDerivedProductManipulation extends BackboneElement {
  final FhirString? description;
  final Element? descriptionElement;
  final FhirDateTime? timeFhirDateTime;
  final Element? timeFhirDateTimeElement;
  final Period? timePeriod;

  BiologicallyDerivedProductManipulation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
this.descriptionElement,
    this.timeFhirDateTime,
this.timeFhirDateTimeElement,
    this.timePeriod,
  });

@override
BiologicallyDerivedProductManipulation clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class BiologicallyDerivedProductStorage extends BackboneElement {
  final FhirString? description;
  final Element? descriptionElement;
  final FhirDecimal? temperature;
  final Element? temperatureElement;
  final FhirCode? scale;
  final Element? scaleElement;
  final Period? duration;

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

@override
BiologicallyDerivedProductStorage clone() => throw UnimplementedError();
}
