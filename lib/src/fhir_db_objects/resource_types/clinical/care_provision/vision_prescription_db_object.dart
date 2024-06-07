import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class VisionPrescriptionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> resourceType = ToOne<StringDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> created = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> createdElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> patient = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> encounter = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> dateWritten = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateWrittenElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> prescriber = ToOne<ReferenceDbObject>();
  final ToMany<VisionPrescriptionLensSpecificationDbObject> lensSpecification =
      ToMany<VisionPrescriptionLensSpecificationDbObject>();
  VisionPrescriptionDbObject({required this.id});
}

@Entity()
class VisionPrescriptionLensSpecificationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> product =
      ToOne<CodeableConceptDbObject>();
  final ToOne<FhirCodeDbObject> eye = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> eyeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> sphere = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> sphereElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> cylinder = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> cylinderElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> axis = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> axisElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<VisionPrescriptionPrismDbObject> prism =
      ToMany<VisionPrescriptionPrismDbObject>();
  final ToOne<FhirDecimalDbObject> add = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> addElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> power = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> powerElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> backCurve = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> backCurveElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> diameter = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> diameterElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<QuantityDbObject> duration = ToOne<QuantityDbObject>();
  final ToOne<StringDbObject> color = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> colorElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> brand = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> brandElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  VisionPrescriptionLensSpecificationDbObject({required this.id});
}

@Entity()
class VisionPrescriptionPrismDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirDecimalDbObject> amount = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> amountElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> base = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> baseElement =
      ToOne<PrimitiveElementDbObject>();
  VisionPrescriptionPrismDbObject({required this.id});
}
