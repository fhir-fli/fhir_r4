import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class VisionPrescriptionLensSpecification {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
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
  const VisionPrescriptionLensSpecification({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.product,
    this.eye,
    this.Eye,
    this.sphere,
    this.Sphere,
    this.cylinder,
    this.Cylinder,
    this.axis,
    this.Axis,
    this.prism,
    this.add,
    this.Add,
    this.power,
    this.Power,
    this.backCurve,
    this.BackCurve,
    this.diameter,
    this.Diameter,
    this.duration,
    this.color,
    this.Color,
    this.brand,
    this.Brand,
    this.note,
  });
}
