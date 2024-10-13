// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxBiologicallyDerivedProduct {
  ObjectBoxBiologicallyDerivedProduct({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    this.productCategory,
    ObjectBoxElement? productCategoryElement,
    ObjectBoxCodeableConcept? productCode,
    this.status,
    ObjectBoxElement? statusElement,
    List<ObjectBoxReference>? request,
    this.quantity,
    ObjectBoxElement? quantityElement,
    List<ObjectBoxReference>? parent,
    ObjectBoxBiologicallyDerivedProductCollection? collection,
    List<ObjectBoxBiologicallyDerivedProductProcessing>? processing,
    ObjectBoxBiologicallyDerivedProductManipulation? manipulation,
    List<ObjectBoxBiologicallyDerivedProductStorage>? storage,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.productCategoryElement.target = productCategoryElement;
    this.productCode.target = productCode;
    this.statusElement.target = statusElement;
    this.request.addAll(request ?? []);
    this.quantityElement.target = quantityElement;
    this.parent.addAll(parent ?? []);
    this.collection.target = collection;
    this.processing.addAll(processing ?? []);
    this.manipulation.target = manipulation;
    this.storage.addAll(storage ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String? productCategory;
  ToOne<ObjectBoxElement> productCategoryElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> productCode =
      ToOne<ObjectBoxCodeableConcept>();
  String? status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> request = ToMany<ObjectBoxReference>();
  int? quantity;
  ToOne<ObjectBoxElement> quantityElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> parent = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxBiologicallyDerivedProductCollection> collection =
      ToOne<ObjectBoxBiologicallyDerivedProductCollection>();
  ToMany<ObjectBoxBiologicallyDerivedProductProcessing> processing =
      ToMany<ObjectBoxBiologicallyDerivedProductProcessing>();
  ToOne<ObjectBoxBiologicallyDerivedProductManipulation> manipulation =
      ToOne<ObjectBoxBiologicallyDerivedProductManipulation>();
  ToMany<ObjectBoxBiologicallyDerivedProductStorage> storage =
      ToMany<ObjectBoxBiologicallyDerivedProductStorage>();
}

@Entity()
class ObjectBoxBiologicallyDerivedProductCollection {
  ObjectBoxBiologicallyDerivedProductCollection({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? collector,
    ObjectBoxReference? source,
    this.collectedDateTime,
    ObjectBoxElement? collectedDateTimeElement,
    ObjectBoxPeriod? collectedPeriod,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.collector.target = collector;
    this.source.target = source;
    this.collectedDateTimeElement.target = collectedDateTimeElement;
    this.collectedPeriod.target = collectedPeriod;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> collector = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> source = ToOne<ObjectBoxReference>();
  String? collectedDateTime;
  ToOne<ObjectBoxElement> collectedDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> collectedPeriod = ToOne<ObjectBoxPeriod>();
}

@Entity()
class ObjectBoxBiologicallyDerivedProductProcessing {
  ObjectBoxBiologicallyDerivedProductProcessing({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.description,
    ObjectBoxElement? descriptionElement,
    ObjectBoxCodeableConcept? procedure,
    ObjectBoxReference? additive,
    this.timeDateTime,
    ObjectBoxElement? timeDateTimeElement,
    ObjectBoxPeriod? timePeriod,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.descriptionElement.target = descriptionElement;
    this.procedure.target = procedure;
    this.additive.target = additive;
    this.timeDateTimeElement.target = timeDateTimeElement;
    this.timePeriod.target = timePeriod;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> procedure = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> additive = ToOne<ObjectBoxReference>();
  String? timeDateTime;
  ToOne<ObjectBoxElement> timeDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> timePeriod = ToOne<ObjectBoxPeriod>();
}

@Entity()
class ObjectBoxBiologicallyDerivedProductManipulation {
  ObjectBoxBiologicallyDerivedProductManipulation({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.description,
    ObjectBoxElement? descriptionElement,
    this.timeDateTime,
    ObjectBoxElement? timeDateTimeElement,
    ObjectBoxPeriod? timePeriod,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.descriptionElement.target = descriptionElement;
    this.timeDateTimeElement.target = timeDateTimeElement;
    this.timePeriod.target = timePeriod;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  String? timeDateTime;
  ToOne<ObjectBoxElement> timeDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> timePeriod = ToOne<ObjectBoxPeriod>();
}

@Entity()
class ObjectBoxBiologicallyDerivedProductStorage {
  ObjectBoxBiologicallyDerivedProductStorage({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.description,
    ObjectBoxElement? descriptionElement,
    this.temperature,
    ObjectBoxElement? temperatureElement,
    this.scale,
    ObjectBoxElement? scaleElement,
    ObjectBoxPeriod? duration,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.descriptionElement.target = descriptionElement;
    this.temperatureElement.target = temperatureElement;
    this.scaleElement.target = scaleElement;
    this.duration.target = duration;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  double? temperature;
  ToOne<ObjectBoxElement> temperatureElement = ToOne<ObjectBoxElement>();
  String? scale;
  ToOne<ObjectBoxElement> scaleElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> duration = ToOne<ObjectBoxPeriod>();
}
