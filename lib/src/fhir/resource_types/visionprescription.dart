import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class VisionPrescription extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode? status;
  final Element? statusElement;
  final FhirDateTime? created;
  final Element? createdElement;
  final Reference patient;
  final Reference? encounter;
  final FhirDateTime? dateWritten;
  final Element? dateWrittenElement;
  final Reference prescriber;
  final List<VisionPrescriptionLensSpecification> lensSpecification;

  VisionPrescription({
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
    this.status,
    this.statusElement,
    this.created,
    this.createdElement,
    required this.patient,
    this.encounter,
    this.dateWritten,
    this.dateWrittenElement,
    required this.prescriber,
    required this.lensSpecification,
  }): super(resourceType: R4ResourceType.VisionPrescription);

@override
VisionPrescription clone() => this;

}


@Data()
@JsonCodable()
class VisionPrescriptionLensSpecification {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept product;
  final FhirCode? eye;
  final Element? eyeElement;
  final FhirDecimal? sphere;
  final Element? sphereElement;
  final FhirDecimal? cylinder;
  final Element? cylinderElement;
  final FhirInteger? axis;
  final Element? axisElement;
  final List<VisionPrescriptionPrism>? prism;
  final FhirDecimal? add;
  final Element? addElement;
  final FhirDecimal? power;
  final Element? powerElement;
  final FhirDecimal? backCurve;
  final Element? backCurveElement;
  final FhirDecimal? diameter;
  final Element? diameterElement;
  final Quantity? duration;
  final FhirString? color;
  final Element? colorElement;
  final FhirString? brand;
  final Element? brandElement;
  final List<Annotation>? note;

  VisionPrescriptionLensSpecification({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.product,
    this.eye,
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

}


@Data()
@JsonCodable()
class VisionPrescriptionPrism {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirDecimal? amount;
  final Element? amountElement;
  final FhirCode? base;
  final Element? baseElement;

  VisionPrescriptionPrism({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.amount,
    this.amountElement,
    this.base,
    this.baseElement,
  });

}



