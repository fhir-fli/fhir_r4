// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxIngredient {
  ObjectBoxIngredient({
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
    required this.status,
    this.statusElement,
    this.for_,
    required this.role,
    this.function_,
    this.allergenicIndicator,
    this.allergenicIndicatorElement,
    this.manufacturer,
    required this.substance,
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
  ToOne<ObjectBoxIdentifier>? identifier = ToOne<ObjectBoxIdentifier>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? for_ = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> role = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? function_ =
      ToMany<ObjectBoxCodeableConcept>();
  bool? allergenicIndicator;
  ToOne<ObjectBoxElement>? allergenicIndicatorElement =
      ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIngredientManufacturer>? manufacturer =
      ToMany<ObjectBoxIngredientManufacturer>();
  ToOne<ObjectBoxIngredientSubstance> substance =
      ToOne<ObjectBoxIngredientSubstance>();
}

@Entity()
class ObjectBoxIngredientManufacturer {
  ObjectBoxIngredientManufacturer({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.role,
    this.roleElement,
    required this.manufacturer,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? role;
  ToOne<ObjectBoxElement>? roleElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> manufacturer = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxIngredientSubstance {
  ObjectBoxIngredientSubstance({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.strength,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableReference> code = ToOne<ObjectBoxCodeableReference>();
  ToMany<ObjectBoxIngredientStrength>? strength =
      ToMany<ObjectBoxIngredientStrength>();
}

@Entity()
class ObjectBoxIngredientStrength {
  ObjectBoxIngredientStrength({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.presentationRatio,
    this.presentationRatioRange,
    this.textPresentation,
    this.textPresentationElement,
    this.concentrationRatio,
    this.concentrationRatioRange,
    this.textConcentration,
    this.textConcentrationElement,
    this.measurementPoint,
    this.measurementPointElement,
    this.country,
    this.referenceStrength,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxRatio>? presentationRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxRatioRange>? presentationRatioRange =
      ToOne<ObjectBoxRatioRange>();
  String? textPresentation;
  ToOne<ObjectBoxElement>? textPresentationElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxRatio>? concentrationRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxRatioRange>? concentrationRatioRange =
      ToOne<ObjectBoxRatioRange>();
  String? textConcentration;
  ToOne<ObjectBoxElement>? textConcentrationElement = ToOne<ObjectBoxElement>();
  String? measurementPoint;
  ToOne<ObjectBoxElement>? measurementPointElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? country =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxIngredientReferenceStrength>? referenceStrength =
      ToMany<ObjectBoxIngredientReferenceStrength>();
}

@Entity()
class ObjectBoxIngredientReferenceStrength {
  ObjectBoxIngredientReferenceStrength({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.substance,
    this.strengthRatio,
    this.strengthRatioRange,
    this.measurementPoint,
    this.measurementPointElement,
    this.country,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableReference>? substance =
      ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxRatio>? strengthRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxRatioRange>? strengthRatioRange = ToOne<ObjectBoxRatioRange>();
  String? measurementPoint;
  ToOne<ObjectBoxElement>? measurementPointElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? country =
      ToMany<ObjectBoxCodeableConcept>();
}
