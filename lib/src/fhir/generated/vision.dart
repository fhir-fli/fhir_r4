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
}


