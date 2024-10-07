import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class VisionPrescription extends DomainResource {
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
  }) : super(resourceType: R4ResourceType.VisionPrescription);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final FhirDateTime created;
  final Element? createdElement;
  final Reference patient;
  final Reference? encounter;
  final FhirDateTime dateWritten;
  final Element? dateWrittenElement;
  final Reference prescriber;
  final List<VisionPrescriptionLensSpecification> lensSpecification;
  @override
  VisionPrescription clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class VisionPrescriptionLensSpecification extends BackboneElement {
  VisionPrescriptionLensSpecification({
    super.id,
    super.extension_,
    super.modifierExtension,
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
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept product;
  final FhirCode eye;
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
  @override
  VisionPrescriptionLensSpecification clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class VisionPrescriptionPrism extends BackboneElement {
  VisionPrescriptionPrism({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.amount,
    this.amountElement,
    required this.base,
    this.baseElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirDecimal amount;
  final Element? amountElement;
  final FhirCode base;
  final Element? baseElement;
  @override
  VisionPrescriptionPrism clone() => throw UnimplementedError();
}
