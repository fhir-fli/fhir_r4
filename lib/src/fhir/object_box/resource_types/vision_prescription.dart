// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxVisionPrescription {
  ObjectBoxVisionPrescription({
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
    required this.created,
    this.createdElement,
    required this.patient,
    this.encounter,
    required this.dateWritten,
    this.dateWrittenElement,
    required this.prescriber,
    required this.lensSpecification,
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
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  String created;
  ToOne<ObjectBoxElement>? createdElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? encounter = ToOne<ObjectBoxReference>();
  String dateWritten;
  ToOne<ObjectBoxElement>? dateWrittenElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> prescriber = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxVisionPrescriptionLensSpecification> lensSpecification =
      ToMany<ObjectBoxVisionPrescriptionLensSpecification>();
}

@Entity()
class ObjectBoxVisionPrescriptionLensSpecification {
  ObjectBoxVisionPrescriptionLensSpecification({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.product,
    required this.eye,
    this.eyeElement,
    this.sphere,
    this.sphereElement,
    this.cylinder,
    this.cylinderElement,
    this.axis,
    this.axisElement,
    this.prism,
    this.add,
    this.addElement,
    this.power,
    this.powerElement,
    this.backCurve,
    this.backCurveElement,
    this.diameter,
    this.diameterElement,
    this.duration,
    this.color,
    this.colorElement,
    this.brand,
    this.brandElement,
    this.note,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> product = ToOne<ObjectBoxCodeableConcept>();
  String eye;
  ToOne<ObjectBoxElement>? eyeElement = ToOne<ObjectBoxElement>();
  double? sphere;
  ToOne<ObjectBoxElement>? sphereElement = ToOne<ObjectBoxElement>();
  double? cylinder;
  ToOne<ObjectBoxElement>? cylinderElement = ToOne<ObjectBoxElement>();
  int? axis;
  ToOne<ObjectBoxElement>? axisElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxVisionPrescriptionPrism>? prism =
      ToMany<ObjectBoxVisionPrescriptionPrism>();
  double? add;
  ToOne<ObjectBoxElement>? addElement = ToOne<ObjectBoxElement>();
  double? power;
  ToOne<ObjectBoxElement>? powerElement = ToOne<ObjectBoxElement>();
  double? backCurve;
  ToOne<ObjectBoxElement>? backCurveElement = ToOne<ObjectBoxElement>();
  double? diameter;
  ToOne<ObjectBoxElement>? diameterElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity>? duration = ToOne<ObjectBoxQuantity>();
  String? color;
  ToOne<ObjectBoxElement>? colorElement = ToOne<ObjectBoxElement>();
  String? brand;
  ToOne<ObjectBoxElement>? brandElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
}

@Entity()
class ObjectBoxVisionPrescriptionPrism {
  ObjectBoxVisionPrescriptionPrism({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.amount,
    this.amountElement,
    required this.base,
    this.baseElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  double amount;
  ToOne<ObjectBoxElement>? amountElement = ToOne<ObjectBoxElement>();
  String base;
  ToOne<ObjectBoxElement>? baseElement = ToOne<ObjectBoxElement>();
}
