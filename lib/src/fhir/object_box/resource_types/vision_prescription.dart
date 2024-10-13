// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxVisionPrescription {
  ObjectBoxVisionPrescription({
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
    required this.status,
    ObjectBoxElement? statusElement,
    required this.created,
    ObjectBoxElement? createdElement,
    ObjectBoxReference? patient,
    ObjectBoxReference? encounter,
    required this.dateWritten,
    ObjectBoxElement? dateWrittenElement,
    ObjectBoxReference? prescriber,
    List<ObjectBoxVisionPrescriptionLensSpecification>? lensSpecification,
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
    this.statusElement.target = statusElement;
    this.createdElement.target = createdElement;
    this.patient.target = patient;
    this.encounter.target = encounter;
    this.dateWrittenElement.target = dateWrittenElement;
    this.prescriber.target = prescriber;
    this.lensSpecification.addAll(lensSpecification ?? []);
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
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  String created;
  ToOne<ObjectBoxElement> createdElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> encounter = ToOne<ObjectBoxReference>();
  String dateWritten;
  ToOne<ObjectBoxElement> dateWrittenElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> prescriber = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxVisionPrescriptionLensSpecification> lensSpecification =
      ToMany<ObjectBoxVisionPrescriptionLensSpecification>();
}

@Entity()
class ObjectBoxVisionPrescriptionLensSpecification {
  ObjectBoxVisionPrescriptionLensSpecification({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? product,
    required this.eye,
    ObjectBoxElement? eyeElement,
    this.sphere,
    ObjectBoxElement? sphereElement,
    this.cylinder,
    ObjectBoxElement? cylinderElement,
    this.axis,
    ObjectBoxElement? axisElement,
    List<ObjectBoxVisionPrescriptionPrism>? prism,
    this.add,
    ObjectBoxElement? addElement,
    this.power,
    ObjectBoxElement? powerElement,
    this.backCurve,
    ObjectBoxElement? backCurveElement,
    this.diameter,
    ObjectBoxElement? diameterElement,
    ObjectBoxQuantity? duration,
    this.color,
    ObjectBoxElement? colorElement,
    this.brand,
    ObjectBoxElement? brandElement,
    List<ObjectBoxAnnotation>? note,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.product.target = product;
    this.eyeElement.target = eyeElement;
    this.sphereElement.target = sphereElement;
    this.cylinderElement.target = cylinderElement;
    this.axisElement.target = axisElement;
    this.prism.addAll(prism ?? []);
    this.addElement.target = addElement;
    this.powerElement.target = powerElement;
    this.backCurveElement.target = backCurveElement;
    this.diameterElement.target = diameterElement;
    this.duration.target = duration;
    this.colorElement.target = colorElement;
    this.brandElement.target = brandElement;
    this.note.addAll(note ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> product = ToOne<ObjectBoxCodeableConcept>();
  String eye;
  ToOne<ObjectBoxElement> eyeElement = ToOne<ObjectBoxElement>();
  double? sphere;
  ToOne<ObjectBoxElement> sphereElement = ToOne<ObjectBoxElement>();
  double? cylinder;
  ToOne<ObjectBoxElement> cylinderElement = ToOne<ObjectBoxElement>();
  int? axis;
  ToOne<ObjectBoxElement> axisElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxVisionPrescriptionPrism> prism =
      ToMany<ObjectBoxVisionPrescriptionPrism>();
  double? add;
  ToOne<ObjectBoxElement> addElement = ToOne<ObjectBoxElement>();
  double? power;
  ToOne<ObjectBoxElement> powerElement = ToOne<ObjectBoxElement>();
  double? backCurve;
  ToOne<ObjectBoxElement> backCurveElement = ToOne<ObjectBoxElement>();
  double? diameter;
  ToOne<ObjectBoxElement> diameterElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity> duration = ToOne<ObjectBoxQuantity>();
  String? color;
  ToOne<ObjectBoxElement> colorElement = ToOne<ObjectBoxElement>();
  String? brand;
  ToOne<ObjectBoxElement> brandElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
}

@Entity()
class ObjectBoxVisionPrescriptionPrism {
  ObjectBoxVisionPrescriptionPrism({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.amount,
    ObjectBoxElement? amountElement,
    required this.base,
    ObjectBoxElement? baseElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.amountElement.target = amountElement;
    this.baseElement.target = baseElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  double amount;
  ToOne<ObjectBoxElement> amountElement = ToOne<ObjectBoxElement>();
  String base;
  ToOne<ObjectBoxElement> baseElement = ToOne<ObjectBoxElement>();
}
