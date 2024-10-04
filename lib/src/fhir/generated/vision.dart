import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class VisionPrescription {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirDateTime created;
  final PrimitiveElement createdElement;
  final Reference patient;
  final Reference encounter;
  final FhirDateTime dateWritten;
  final PrimitiveElement dateWrittenElement;
  final Reference prescriber;
  final List<VisionPrescriptionLensSpecification> lensSpecification;
  const VisionPrescription({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.status,
    required this.statusElement,
    required this.created,
    required this.createdElement,
    required this.patient,
    required this.encounter,
    required this.dateWritten,
    required this.dateWrittenElement,
    required this.prescriber,
    required this.lensSpecification,
  });
}

@Data()
@JsonCodable()
class VisionPrescriptionLensSpecification {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept product;
  final FhirCode eye;
  final PrimitiveElement eyeElement;
  final FhirDecimal sphere;
  final PrimitiveElement sphereElement;
  final FhirDecimal cylinder;
  final PrimitiveElement cylinderElement;
  final FhirInteger axis;
  final PrimitiveElement axisElement;
  final List<VisionPrescriptionPrism> prism;
  final FhirDecimal add;
  final PrimitiveElement addElement;
  final FhirDecimal power;
  final PrimitiveElement powerElement;
  final FhirDecimal backCurve;
  final PrimitiveElement backCurveElement;
  final FhirDecimal diameter;
  final PrimitiveElement diameterElement;
  final Quantity duration;
  final String color;
  final PrimitiveElement colorElement;
  final String brand;
  final PrimitiveElement brandElement;
  final List<Annotation> note;
  const VisionPrescriptionLensSpecification({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.product,
    required this.eye,
    required this.eyeElement,
    required this.sphere,
    required this.sphereElement,
    required this.cylinder,
    required this.cylinderElement,
    required this.axis,
    required this.axisElement,
    required this.prism,
    required this.add,
    required this.addElement,
    required this.power,
    required this.powerElement,
    required this.backCurve,
    required this.backCurveElement,
    required this.diameter,
    required this.diameterElement,
    required this.duration,
    required this.color,
    required this.colorElement,
    required this.brand,
    required this.brandElement,
    required this.note,
  });
}

@Data()
@JsonCodable()
class VisionPrescriptionPrism {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirDecimal amount;
  final PrimitiveElement amountElement;
  final FhirCode base;
  final PrimitiveElement baseElement;
  const VisionPrescriptionPrism({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.amount,
    required this.amountElement,
    required this.base,
    required this.baseElement,
  });
}


