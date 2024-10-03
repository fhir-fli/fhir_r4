import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class VisionPrescriptionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'VisionPrescription';

  String? id;

  @ToOne()
  FhirMetaEntity? meta;

  String? implicitRules;

  @ToOne()
  PrimitiveElementEntity? implicitRulesElement;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  @ToOne()
  NarrativeEntity? text;

  @ToMany()
  List<ResourceEntity>? contained;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<IdentifierEntity>? identifier;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  String? created;

  @ToOne()
  PrimitiveElementEntity? createdElement;

  @ToOne()
  ReferenceEntity? patient;

  @ToOne()
  ReferenceEntity? encounter;

  String? dateWritten;

  @ToOne()
  PrimitiveElementEntity? dateWrittenElement;

  @ToOne()
  ReferenceEntity? prescriber;

  @ToMany()
  List<VisionPrescriptionLensSpecificationEntity>? lensSpecification;
}

class VisionPrescriptionLensSpecificationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? product;

  String? eye;

  @ToOne()
  PrimitiveElementEntity? eyeElement;

  double? sphere;

  @ToOne()
  PrimitiveElementEntity? sphereElement;

  double? cylinder;

  @ToOne()
  PrimitiveElementEntity? cylinderElement;

  int? axis;

  @ToOne()
  PrimitiveElementEntity? axisElement;

  @ToMany()
  List<VisionPrescriptionPrismEntity>? prism;

  double? add;

  @ToOne()
  PrimitiveElementEntity? addElement;

  double? power;

  @ToOne()
  PrimitiveElementEntity? powerElement;

  double? backCurve;

  @ToOne()
  PrimitiveElementEntity? backCurveElement;

  double? diameter;

  @ToOne()
  PrimitiveElementEntity? diameterElement;

  @ToOne()
  QuantityEntity? duration;

  String? color;

  @ToOne()
  PrimitiveElementEntity? colorElement;

  String? brand;

  @ToOne()
  PrimitiveElementEntity? brandElement;

  @ToMany()
  List<AnnotationEntity>? note;
}

class VisionPrescriptionPrismEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  double? amount;

  @ToOne()
  PrimitiveElementEntity? amountElement;

  String? base;

  @ToOne()
  PrimitiveElementEntity? baseElement;
}
