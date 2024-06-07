import 'package:realm/realm.dart';
@RealmModel()
class _VisionPrescriptionRealm {
  late _R4ResourceTypeRealm resourceType;
  @PrimaryKey() late String id;
  late _FhirMetaRealm meta;
  late _FhirUriRealm implicitRules;
  late _PrimitiveElementRealm implicitRulesElement;
  late _FhirCodeRealm language;
  late _PrimitiveElementRealm languageElement;
  late _NarrativeRealm text;
  late List<_ResourceRealm> contained;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_IdentifierRealm> identifier;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late String created;
  late _PrimitiveElementRealm createdElement;
  late _ReferenceRealm patient;
  late _ReferenceRealm encounter;
  late String dateWritten;
  late _PrimitiveElementRealm dateWrittenElement;
  late _ReferenceRealm prescriber;
  late List<_VisionPrescriptionLensSpecificationRealm> lensSpecification;
}
@RealmModel()
class _VisionPrescriptionLensSpecificationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm product;
  late _FhirCodeRealm eye;
  late _PrimitiveElementRealm eyeElement;
  late _FhirDecimalRealm sphere;
  late _PrimitiveElementRealm sphereElement;
  late _FhirDecimalRealm cylinder;
  late _PrimitiveElementRealm cylinderElement;
  late _FhirIntegerRealm axis;
  late _PrimitiveElementRealm axisElement;
  late List<_VisionPrescriptionPrismRealm> prism;
  late _FhirDecimalRealm add;
  late _PrimitiveElementRealm addElement;
  late _FhirDecimalRealm power;
  late _PrimitiveElementRealm powerElement;
  late _FhirDecimalRealm backCurve;
  late _PrimitiveElementRealm backCurveElement;
  late _FhirDecimalRealm diameter;
  late _PrimitiveElementRealm diameterElement;
  late _QuantityRealm duration;
  late String color;
  late _PrimitiveElementRealm colorElement;
  late String brand;
  late _PrimitiveElementRealm brandElement;
  late List<_AnnotationRealm> note;
}
@RealmModel()
class _VisionPrescriptionPrismRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirDecimalRealm amount;
  late _PrimitiveElementRealm amountElement;
  late _FhirCodeRealm base;
  late _PrimitiveElementRealm baseElement;
}
