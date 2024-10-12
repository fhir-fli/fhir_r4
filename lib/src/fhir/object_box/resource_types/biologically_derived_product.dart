// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxBiologicallyDerivedProduct {
  ObjectBoxBiologicallyDerivedProduct({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
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
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  String? productCategory;
  ToOne<ObjectBoxElement>? productCategoryElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? productCode =
      ToOne<ObjectBoxCodeableConcept>();
  String? status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? request = ToMany<ObjectBoxReference>();
  int? quantity;
  ToOne<ObjectBoxElement>? quantityElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? parent = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxBiologicallyDerivedProductCollection>? collection =
      ToOne<ObjectBoxBiologicallyDerivedProductCollection>();
  ToMany<ObjectBoxBiologicallyDerivedProductProcessing>? processing =
      ToMany<ObjectBoxBiologicallyDerivedProductProcessing>();
  ToOne<ObjectBoxBiologicallyDerivedProductManipulation>? manipulation =
      ToOne<ObjectBoxBiologicallyDerivedProductManipulation>();
  ToMany<ObjectBoxBiologicallyDerivedProductStorage>? storage =
      ToMany<ObjectBoxBiologicallyDerivedProductStorage>();
}

@Entity()
class ObjectBoxBiologicallyDerivedProductCollection {
  ObjectBoxBiologicallyDerivedProductCollection({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.collector,
    this.source,
    this.collectedDateTime,
    this.collectedDateTimeElement,
    this.collectedPeriod,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference>? collector = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? source = ToOne<ObjectBoxReference>();
  String? collectedDateTime;
  ToOne<ObjectBoxElement>? collectedDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? collectedPeriod = ToOne<ObjectBoxPeriod>();
}

@Entity()
class ObjectBoxBiologicallyDerivedProductProcessing {
  ObjectBoxBiologicallyDerivedProductProcessing({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.descriptionElement,
    this.procedure,
    this.additive,
    this.timeDateTime,
    this.timeDateTimeElement,
    this.timePeriod,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? procedure =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? additive = ToOne<ObjectBoxReference>();
  String? timeDateTime;
  ToOne<ObjectBoxElement>? timeDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? timePeriod = ToOne<ObjectBoxPeriod>();
}

@Entity()
class ObjectBoxBiologicallyDerivedProductManipulation {
  ObjectBoxBiologicallyDerivedProductManipulation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.descriptionElement,
    this.timeDateTime,
    this.timeDateTimeElement,
    this.timePeriod,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  String? timeDateTime;
  ToOne<ObjectBoxElement>? timeDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? timePeriod = ToOne<ObjectBoxPeriod>();
}

@Entity()
class ObjectBoxBiologicallyDerivedProductStorage {
  ObjectBoxBiologicallyDerivedProductStorage({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.descriptionElement,
    this.temperature,
    this.temperatureElement,
    this.scale,
    this.scaleElement,
    this.duration,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  double? temperature;
  ToOne<ObjectBoxElement>? temperatureElement = ToOne<ObjectBoxElement>();
  String? scale;
  ToOne<ObjectBoxElement>? scaleElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? duration = ToOne<ObjectBoxPeriod>();
}
