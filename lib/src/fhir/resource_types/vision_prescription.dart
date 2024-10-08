import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'vision_prescription.g.dart';

/// [VisionPrescription] /// An authorization for the provision of glasses and/or contact lenses to a
/// patient.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    R4ResourceType? resourceType,
  }) : super(
            resourceType: R4ResourceType.VisionPrescription,
            fhirType: 'VisionPrescription');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this vision prescription.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// The status of the resource instance.
  @JsonKey(name: 'status')
  final FinancialResourceStatusCodes status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [created] /// The date this resource was created.
  @JsonKey(name: 'created')
  final FhirDateTime created;
  @JsonKey(name: '_created')
  final Element? createdElement;

  /// [patient] /// A resource reference to the person to whom the vision prescription applies.
  @JsonKey(name: 'patient')
  final Reference patient;

  /// [encounter] /// A reference to a resource that identifies the particular occurrence of
  /// contact between patient and health care provider during which the
  /// prescription was issued.
  @JsonKey(name: 'encounter')
  final Reference? encounter;

  /// [dateWritten] /// The date (and perhaps time) when the prescription was written.
  @JsonKey(name: 'dateWritten')
  final FhirDateTime dateWritten;
  @JsonKey(name: '_dateWritten')
  final Element? dateWrittenElement;

  /// [prescriber] /// The healthcare professional responsible for authorizing the prescription.
  @JsonKey(name: 'prescriber')
  final Reference prescriber;

  /// [lensSpecification] /// Contain the details of the individual lens specifications and serves as the
  /// authorization for the fullfillment by certified professionals.
  @JsonKey(name: 'lensSpecification')
  final List<VisionPrescriptionLensSpecification> lensSpecification;
  factory VisionPrescription.fromJson(Map<String, dynamic> json) =>
      _$VisionPrescriptionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VisionPrescriptionToJson(this);

  @override
  VisionPrescription clone() => throw UnimplementedError();
  @override
  VisionPrescription copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FinancialResourceStatusCodes? status,
    Element? statusElement,
    FhirDateTime? created,
    Element? createdElement,
    Reference? patient,
    Reference? encounter,
    FhirDateTime? dateWritten,
    Element? dateWrittenElement,
    Reference? prescriber,
    List<VisionPrescriptionLensSpecification>? lensSpecification,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory VisionPrescription.fromYaml(dynamic yaml) => yaml is String
      ? VisionPrescription.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? VisionPrescription.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'VisionPrescription cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory VisionPrescription.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return VisionPrescription.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [VisionPrescriptionLensSpecification] /// Contain the details of the individual lens specifications and serves as the
/// authorization for the fullfillment by certified professionals.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'VisionPrescriptionLensSpecification');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [product] /// Identifies the type of vision correction product which is required for the
  /// patient.
  @JsonKey(name: 'product')
  final ExampleVisionPrescriptionProductCodes product;

  /// [eye] /// The eye for which the lens specification applies.
  @JsonKey(name: 'eye')
  final VisionEyes eye;
  @JsonKey(name: '_eye')
  final Element? eyeElement;

  /// [sphere] /// Lens power measured in dioptres (0.25 units).
  @JsonKey(name: 'sphere')
  final FhirDecimal? sphere;
  @JsonKey(name: '_sphere')
  final Element? sphereElement;

  /// [cylinder] /// Power adjustment for astigmatism measured in dioptres (0.25 units).
  @JsonKey(name: 'cylinder')
  final FhirDecimal? cylinder;
  @JsonKey(name: '_cylinder')
  final Element? cylinderElement;

  /// [axis] /// Adjustment for astigmatism measured in integer degrees.
  @JsonKey(name: 'axis')
  final FhirInteger? axis;
  @JsonKey(name: '_axis')
  final Element? axisElement;

  /// [prism] /// Allows for adjustment on two axis.
  @JsonKey(name: 'prism')
  final List<VisionPrescriptionPrism>? prism;

  /// [add] /// Power adjustment for multifocal lenses measured in dioptres (0.25 units).
  @JsonKey(name: 'add')
  final FhirDecimal? add;
  @JsonKey(name: '_add')
  final Element? addElement;

  /// [power] /// Contact lens power measured in dioptres (0.25 units).
  @JsonKey(name: 'power')
  final FhirDecimal? power;
  @JsonKey(name: '_power')
  final Element? powerElement;

  /// [backCurve] /// Back curvature measured in millimetres.
  @JsonKey(name: 'backCurve')
  final FhirDecimal? backCurve;
  @JsonKey(name: '_backCurve')
  final Element? backCurveElement;

  /// [diameter] /// Contact lens diameter measured in millimetres.
  @JsonKey(name: 'diameter')
  final FhirDecimal? diameter;
  @JsonKey(name: '_diameter')
  final Element? diameterElement;

  /// [duration] /// The recommended maximum wear period for the lens.
  @JsonKey(name: 'duration')
  final Quantity? duration;

  /// [color] /// Special color or pattern.
  @JsonKey(name: 'color')
  final FhirString? color;
  @JsonKey(name: '_color')
  final Element? colorElement;

  /// [brand] /// Brand recommendations or restrictions.
  @JsonKey(name: 'brand')
  final FhirString? brand;
  @JsonKey(name: '_brand')
  final Element? brandElement;

  /// [note] /// Notes for special requirements such as coatings and lens materials.
  @JsonKey(name: 'note')
  final List<Annotation>? note;
  factory VisionPrescriptionLensSpecification.fromJson(
          Map<String, dynamic> json) =>
      _$VisionPrescriptionLensSpecificationFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$VisionPrescriptionLensSpecificationToJson(this);

  @override
  VisionPrescriptionLensSpecification clone() => throw UnimplementedError();
  @override
  VisionPrescriptionLensSpecification copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ExampleVisionPrescriptionProductCodes? product,
    VisionEyes? eye,
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory VisionPrescriptionLensSpecification.fromYaml(dynamic yaml) => yaml
          is String
      ? VisionPrescriptionLensSpecification.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? VisionPrescriptionLensSpecification.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'VisionPrescriptionLensSpecification cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory VisionPrescriptionLensSpecification.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return VisionPrescriptionLensSpecification.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [VisionPrescriptionPrism] /// Allows for adjustment on two axis.
@JsonSerializable()
class VisionPrescriptionPrism extends BackboneElement {
  VisionPrescriptionPrism({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.amount,
    this.amountElement,
    required this.base,
    this.baseElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'VisionPrescriptionPrism');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [amount] /// Amount of prism to compensate for eye alignment in fractional units.
  @JsonKey(name: 'amount')
  final FhirDecimal amount;
  @JsonKey(name: '_amount')
  final Element? amountElement;

  /// [base] /// The relative base, or reference lens edge, for the prism.
  @JsonKey(name: 'base')
  final VisionBase base;
  @JsonKey(name: '_base')
  final Element? baseElement;
  factory VisionPrescriptionPrism.fromJson(Map<String, dynamic> json) =>
      _$VisionPrescriptionPrismFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VisionPrescriptionPrismToJson(this);

  @override
  VisionPrescriptionPrism clone() => throw UnimplementedError();
  @override
  VisionPrescriptionPrism copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDecimal? amount,
    Element? amountElement,
    VisionBase? base,
    Element? baseElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return VisionPrescriptionPrism(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      amount: amount ?? this.amount,
      amountElement: amountElement ?? this.amountElement,
      base: base ?? this.base,
      baseElement: baseElement ?? this.baseElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory VisionPrescriptionPrism.fromYaml(dynamic yaml) => yaml is String
      ? VisionPrescriptionPrism.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? VisionPrescriptionPrism.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'VisionPrescriptionPrism cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory VisionPrescriptionPrism.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return VisionPrescriptionPrism.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
