// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxIngredient {
  ObjectBoxIngredient({
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
    ObjectBoxIdentifier? identifier,
    required this.status,
    ObjectBoxElement? statusElement,
    List<ObjectBoxReference>? for_,
    ObjectBoxCodeableConcept? role,
    List<ObjectBoxCodeableConcept>? function_,
    this.allergenicIndicator,
    ObjectBoxElement? allergenicIndicatorElement,
    List<ObjectBoxIngredientManufacturer>? manufacturer,
    ObjectBoxIngredientSubstance? substance,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.target = identifier;
    this.statusElement.target = statusElement;
    this.for_.addAll(for_ ?? []);
    this.role.target = role;
    this.function_.addAll(function_ ?? []);
    this.allergenicIndicatorElement.target = allergenicIndicatorElement;
    this.manufacturer.addAll(manufacturer ?? []);
    this.substance.target = substance;
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
  ToOne<ObjectBoxIdentifier> identifier = ToOne<ObjectBoxIdentifier>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> for_ = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> role = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> function_ =
      ToMany<ObjectBoxCodeableConcept>();
  bool? allergenicIndicator;
  ToOne<ObjectBoxElement> allergenicIndicatorElement =
      ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIngredientManufacturer> manufacturer =
      ToMany<ObjectBoxIngredientManufacturer>();
  ToOne<ObjectBoxIngredientSubstance> substance =
      ToOne<ObjectBoxIngredientSubstance>();
}

@Entity()
class ObjectBoxIngredientManufacturer {
  ObjectBoxIngredientManufacturer({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.role,
    ObjectBoxElement? roleElement,
    ObjectBoxReference? manufacturer,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.roleElement.target = roleElement;
    this.manufacturer.target = manufacturer;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? role;
  ToOne<ObjectBoxElement> roleElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> manufacturer = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxIngredientSubstance {
  ObjectBoxIngredientSubstance({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableReference? code,
    List<ObjectBoxIngredientStrength>? strength,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
    this.strength.addAll(strength ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableReference> code = ToOne<ObjectBoxCodeableReference>();
  ToMany<ObjectBoxIngredientStrength> strength =
      ToMany<ObjectBoxIngredientStrength>();
}

@Entity()
class ObjectBoxIngredientStrength {
  ObjectBoxIngredientStrength({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxRatio? presentationRatio,
    ObjectBoxRatioRange? presentationRatioRange,
    this.textPresentation,
    ObjectBoxElement? textPresentationElement,
    ObjectBoxRatio? concentrationRatio,
    ObjectBoxRatioRange? concentrationRatioRange,
    this.textConcentration,
    ObjectBoxElement? textConcentrationElement,
    this.measurementPoint,
    ObjectBoxElement? measurementPointElement,
    List<ObjectBoxCodeableConcept>? country,
    List<ObjectBoxIngredientReferenceStrength>? referenceStrength,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.presentationRatio.target = presentationRatio;
    this.presentationRatioRange.target = presentationRatioRange;
    this.textPresentationElement.target = textPresentationElement;
    this.concentrationRatio.target = concentrationRatio;
    this.concentrationRatioRange.target = concentrationRatioRange;
    this.textConcentrationElement.target = textConcentrationElement;
    this.measurementPointElement.target = measurementPointElement;
    this.country.addAll(country ?? []);
    this.referenceStrength.addAll(referenceStrength ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxRatio> presentationRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxRatioRange> presentationRatioRange =
      ToOne<ObjectBoxRatioRange>();
  String? textPresentation;
  ToOne<ObjectBoxElement> textPresentationElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxRatio> concentrationRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxRatioRange> concentrationRatioRange =
      ToOne<ObjectBoxRatioRange>();
  String? textConcentration;
  ToOne<ObjectBoxElement> textConcentrationElement = ToOne<ObjectBoxElement>();
  String? measurementPoint;
  ToOne<ObjectBoxElement> measurementPointElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> country = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxIngredientReferenceStrength> referenceStrength =
      ToMany<ObjectBoxIngredientReferenceStrength>();
}

@Entity()
class ObjectBoxIngredientReferenceStrength {
  ObjectBoxIngredientReferenceStrength({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableReference? substance,
    ObjectBoxRatio? strengthRatio,
    ObjectBoxRatioRange? strengthRatioRange,
    this.measurementPoint,
    ObjectBoxElement? measurementPointElement,
    List<ObjectBoxCodeableConcept>? country,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.substance.target = substance;
    this.strengthRatio.target = strengthRatio;
    this.strengthRatioRange.target = strengthRatioRange;
    this.measurementPointElement.target = measurementPointElement;
    this.country.addAll(country ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableReference> substance =
      ToOne<ObjectBoxCodeableReference>();
  ToOne<ObjectBoxRatio> strengthRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxRatioRange> strengthRatioRange = ToOne<ObjectBoxRatioRange>();
  String? measurementPoint;
  ToOne<ObjectBoxElement> measurementPointElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> country = ToMany<ObjectBoxCodeableConcept>();
}
