import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [VisionPrescription] /// An authorization for the provision of glasses and/or contact lenses to a
/// patient.
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

  /// [identifier] /// A unique identifier assigned to this vision prescription.
  final List<Identifier>? identifier;

  /// [status] /// The status of the resource instance.
  final FhirCode status;
  final Element? statusElement;

  /// [created] /// The date this resource was created.
  final FhirDateTime created;
  final Element? createdElement;

  /// [patient] /// A resource reference to the person to whom the vision prescription applies.
  final Reference patient;

  /// [encounter] /// A reference to a resource that identifies the particular occurrence of
  /// contact between patient and health care provider during which the
  /// prescription was issued.
  final Reference? encounter;

  /// [dateWritten] /// The date (and perhaps time) when the prescription was written.
  final FhirDateTime dateWritten;
  final Element? dateWrittenElement;

  /// [prescriber] /// The healthcare professional responsible for authorizing the prescription.
  final Reference prescriber;

  /// [lensSpecification] /// Contain the details of the individual lens specifications and serves as the
  /// authorization for the fullfillment by certified professionals.
  final List<VisionPrescriptionLensSpecification> lensSpecification;
  @override
  VisionPrescription clone() => throw UnimplementedError();
  VisionPrescription copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirCode? status,
    Element? statusElement,
    FhirDateTime? created,
    Element? createdElement,
    Reference? patient,
    Reference? encounter,
    FhirDateTime? dateWritten,
    Element? dateWrittenElement,
    Reference? prescriber,
    List<VisionPrescriptionLensSpecification>? lensSpecification,
  }) {
    return VisionPrescription(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      created: created ?? this.created,
      createdElement: createdElement ?? this.createdElement,
      patient: patient ?? this.patient,
      encounter: encounter ?? this.encounter,
      dateWritten: dateWritten ?? this.dateWritten,
      dateWrittenElement: dateWrittenElement ?? this.dateWrittenElement,
      prescriber: prescriber ?? this.prescriber,
      lensSpecification: lensSpecification ?? this.lensSpecification,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [VisionPrescriptionLensSpecification] /// Contain the details of the individual lens specifications and serves as the
/// authorization for the fullfillment by certified professionals.
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

  /// [product] /// Identifies the type of vision correction product which is required for the
  /// patient.
  final CodeableConcept product;

  /// [eye] /// The eye for which the lens specification applies.
  final FhirCode eye;
  final Element? eyeElement;

  /// [sphere] /// Lens power measured in dioptres (0.25 units).
  final FhirDecimal? sphere;
  final Element? sphereElement;

  /// [cylinder] /// Power adjustment for astigmatism measured in dioptres (0.25 units).
  final FhirDecimal? cylinder;
  final Element? cylinderElement;

  /// [axis] /// Adjustment for astigmatism measured in integer degrees.
  final FhirInteger? axis;
  final Element? axisElement;

  /// [prism] /// Allows for adjustment on two axis.
  final List<VisionPrescriptionPrism>? prism;

  /// [add] /// Power adjustment for multifocal lenses measured in dioptres (0.25 units).
  final FhirDecimal? add;
  final Element? addElement;

  /// [power] /// Contact lens power measured in dioptres (0.25 units).
  final FhirDecimal? power;
  final Element? powerElement;

  /// [backCurve] /// Back curvature measured in millimetres.
  final FhirDecimal? backCurve;
  final Element? backCurveElement;

  /// [diameter] /// Contact lens diameter measured in millimetres.
  final FhirDecimal? diameter;
  final Element? diameterElement;

  /// [duration] /// The recommended maximum wear period for the lens.
  final Quantity? duration;

  /// [color] /// Special color or pattern.
  final FhirString? color;
  final Element? colorElement;

  /// [brand] /// Brand recommendations or restrictions.
  final FhirString? brand;
  final Element? brandElement;

  /// [note] /// Notes for special requirements such as coatings and lens materials.
  final List<Annotation>? note;
  @override
  VisionPrescriptionLensSpecification clone() => throw UnimplementedError();
  VisionPrescriptionLensSpecification copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? product,
    FhirCode? eye,
    Element? eyeElement,
    FhirDecimal? sphere,
    Element? sphereElement,
    FhirDecimal? cylinder,
    Element? cylinderElement,
    FhirInteger? axis,
    Element? axisElement,
    List<VisionPrescriptionPrism>? prism,
    FhirDecimal? add,
    Element? addElement,
    FhirDecimal? power,
    Element? powerElement,
    FhirDecimal? backCurve,
    Element? backCurveElement,
    FhirDecimal? diameter,
    Element? diameterElement,
    Quantity? duration,
    FhirString? color,
    Element? colorElement,
    FhirString? brand,
    Element? brandElement,
    List<Annotation>? note,
  }) {
    return VisionPrescriptionLensSpecification(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      product: product ?? this.product,
      eye: eye ?? this.eye,
      eyeElement: eyeElement ?? this.eyeElement,
      sphere: sphere ?? this.sphere,
      sphereElement: sphereElement ?? this.sphereElement,
      cylinder: cylinder ?? this.cylinder,
      cylinderElement: cylinderElement ?? this.cylinderElement,
      axis: axis ?? this.axis,
      axisElement: axisElement ?? this.axisElement,
      prism: prism ?? this.prism,
      add: add ?? this.add,
      addElement: addElement ?? this.addElement,
      power: power ?? this.power,
      powerElement: powerElement ?? this.powerElement,
      backCurve: backCurve ?? this.backCurve,
      backCurveElement: backCurveElement ?? this.backCurveElement,
      diameter: diameter ?? this.diameter,
      diameterElement: diameterElement ?? this.diameterElement,
      duration: duration ?? this.duration,
      color: color ?? this.color,
      colorElement: colorElement ?? this.colorElement,
      brand: brand ?? this.brand,
      brandElement: brandElement ?? this.brandElement,
      note: note ?? this.note,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [VisionPrescriptionPrism] /// Allows for adjustment on two axis.
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

  /// [amount] /// Amount of prism to compensate for eye alignment in fractional units.
  final FhirDecimal amount;
  final Element? amountElement;

  /// [base] /// The relative base, or reference lens edge, for the prism.
  final FhirCode base;
  final Element? baseElement;
  @override
  VisionPrescriptionPrism clone() => throw UnimplementedError();
  VisionPrescriptionPrism copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDecimal? amount,
    Element? amountElement,
    FhirCode? base,
    Element? baseElement,
  }) {
    return VisionPrescriptionPrism(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      amount: amount ?? this.amount,
      amountElement: amountElement ?? this.amountElement,
      base: base ?? this.base,
      baseElement: baseElement ?? this.baseElement,
    );
  }
}
