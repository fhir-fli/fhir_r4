import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class VisionPrescription extends Resource {
  VisionPrescription({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.status,
    required this.created,
    required this.patient,
    this.encounter,
    required this.dateWritten,
    required this.prescriber,
    required this.lensSpecification,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String status;
  String created;
  ToOne<Reference> patient = ToOne<Reference>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  String dateWritten;
  ToOne<Reference> prescriber = ToOne<Reference>();
  ToMany<VisionPrescriptionLensSpecification> lensSpecification =
      ToMany<VisionPrescriptionLensSpecification>();
}

@Entity()
class VisionPrescriptionLensSpecification {
  VisionPrescriptionLensSpecification({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.product,
    required this.eye,
    this.sphere,
    this.cylinder,
    this.axis,
    this.prism,
    this.add,
    this.power,
    this.backCurve,
    this.diameter,
    this.duration,
    this.color,
    this.brand,
    this.note,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> product = ToOne<CodeableConcept>();
  String eye;
  double? sphere;
  double? cylinder;
  int? axis;
  ToMany<VisionPrescriptionPrism>? prism = ToMany<VisionPrescriptionPrism>();
  double? add;
  double? power;
  double? backCurve;
  double? diameter;
  ToOne<Quantity>? duration = ToOne<Quantity>();
  String? color;
  String? brand;
  ToMany<Annotation>? note = ToMany<Annotation>();
}

@Entity()
class VisionPrescriptionPrism {
  VisionPrescriptionPrism({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.amount,
    required this.base,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  double amount;
  String base;
}
