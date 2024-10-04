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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirDateTime created;
  final PrimitiveElement Created;
  final Reference patient;
  final Reference encounter;
  final FhirDateTime dateWritten;
  final PrimitiveElement DateWritten;
  final Reference prescriber;
  final List<VisionPrescriptionLensSpecification> lensSpecification;
}

@Data()
@JsonCodable()
class VisionPrescriptionLensSpecification {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept product;
  final FhirCode eye;
  final PrimitiveElement Eye;
  final FhirDecimal sphere;
  final PrimitiveElement Sphere;
  final FhirDecimal cylinder;
  final PrimitiveElement Cylinder;
  final FhirInteger axis;
  final PrimitiveElement Axis;
  final List<VisionPrescriptionPrism> prism;
  final FhirDecimal add;
  final PrimitiveElement Add;
  final FhirDecimal power;
  final PrimitiveElement Power;
  final FhirDecimal backCurve;
  final PrimitiveElement BackCurve;
  final FhirDecimal diameter;
  final PrimitiveElement Diameter;
  final Quantity duration;
  final String color;
  final PrimitiveElement Color;
  final String brand;
  final PrimitiveElement Brand;
  final List<Annotation> note;
}

@Data()
@JsonCodable()
class VisionPrescriptionPrism {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirDecimal amount;
  final PrimitiveElement Amount;
  final FhirCode base;
  final PrimitiveElement Base;
}


