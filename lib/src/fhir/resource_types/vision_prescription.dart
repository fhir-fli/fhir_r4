import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.VisionPrescription);

  @override
  String get fhirType => 'VisionPrescription';

  @Id()
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this vision prescription.
  final List<Identifier>? identifier;

  /// [status] /// The status of the resource instance.
  final FinancialResourceStatusCodes status;
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    json['created'] = created.value;
    if (createdElement != null) {
      json['_created'] = createdElement!.toJson();
    }
    json['patient'] = patient.toJson();
    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }
    json['dateWritten'] = dateWritten.value;
    if (dateWrittenElement != null) {
      json['_dateWritten'] = dateWrittenElement!.toJson();
    }
    json['prescriber'] = prescriber.toJson();
    json['lensSpecification'] = lensSpecification
        .map<dynamic>((VisionPrescriptionLensSpecification v) => v.toJson())
        .toList();
    return json;
  }

  factory VisionPrescription.fromJson(Map<String, dynamic> json) {
    return VisionPrescription(
      id: json['id'] != null ? FhirString(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: FinancialResourceStatusCodes.fromJson(
          json['status'] as Map<String, dynamic>),
      created: FhirDateTime(json['created']),
      createdElement: json['_created'] != null
          ? Element.fromJson(json['_created'] as Map<String, dynamic>)
          : null,
      patient: Reference.fromJson(json['patient'] as Map<String, dynamic>),
      encounter: json['encounter'] != null
          ? Reference.fromJson(json['encounter'] as Map<String, dynamic>)
          : null,
      dateWritten: FhirDateTime(json['dateWritten']),
      dateWrittenElement: json['_dateWritten'] != null
          ? Element.fromJson(json['_dateWritten'] as Map<String, dynamic>)
          : null,
      prescriber:
          Reference.fromJson(json['prescriber'] as Map<String, dynamic>),
      lensSpecification: (json['lensSpecification'] as List<dynamic>)
          .map<VisionPrescriptionLensSpecification>((dynamic v) =>
              VisionPrescriptionLensSpecification.fromJson(
                  v as Map<String, dynamic>))
          .toList(),
    );
  }
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
  });

  @override
  String get fhirType => 'VisionPrescriptionLensSpecification';

  @Id()
  int dbId = 0;

  /// [product] /// Identifies the type of vision correction product which is required for the
  /// patient.
  final CodeableConcept product;

  /// [eye] /// The eye for which the lens specification applies.
  final VisionEyes eye;
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['product'] = product.toJson();
    json['eye'] = eye.toJson();
    if (sphere?.value != null) {
      json['sphere'] = sphere!.value;
    }
    if (sphereElement != null) {
      json['_sphere'] = sphereElement!.toJson();
    }
    if (cylinder?.value != null) {
      json['cylinder'] = cylinder!.value;
    }
    if (cylinderElement != null) {
      json['_cylinder'] = cylinderElement!.toJson();
    }
    if (axis?.value != null) {
      json['axis'] = axis!.value;
    }
    if (axisElement != null) {
      json['_axis'] = axisElement!.toJson();
    }
    if (prism != null && prism!.isNotEmpty) {
      json['prism'] = prism!
          .map<dynamic>((VisionPrescriptionPrism v) => v.toJson())
          .toList();
    }
    if (add?.value != null) {
      json['add'] = add!.value;
    }
    if (addElement != null) {
      json['_add'] = addElement!.toJson();
    }
    if (power?.value != null) {
      json['power'] = power!.value;
    }
    if (powerElement != null) {
      json['_power'] = powerElement!.toJson();
    }
    if (backCurve?.value != null) {
      json['backCurve'] = backCurve!.value;
    }
    if (backCurveElement != null) {
      json['_backCurve'] = backCurveElement!.toJson();
    }
    if (diameter?.value != null) {
      json['diameter'] = diameter!.value;
    }
    if (diameterElement != null) {
      json['_diameter'] = diameterElement!.toJson();
    }
    if (duration != null) {
      json['duration'] = duration!.toJson();
    }
    if (color?.value != null) {
      json['color'] = color!.value;
    }
    if (colorElement != null) {
      json['_color'] = colorElement!.toJson();
    }
    if (brand?.value != null) {
      json['brand'] = brand!.value;
    }
    if (brandElement != null) {
      json['_brand'] = brandElement!.toJson();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    return json;
  }

  factory VisionPrescriptionLensSpecification.fromJson(
      Map<String, dynamic> json) {
    return VisionPrescriptionLensSpecification(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      product:
          CodeableConcept.fromJson(json['product'] as Map<String, dynamic>),
      eye: VisionEyes.fromJson(json['eye'] as Map<String, dynamic>),
      sphere: json['sphere'] != null ? FhirDecimal(json['sphere']) : null,
      sphereElement: json['_sphere'] != null
          ? Element.fromJson(json['_sphere'] as Map<String, dynamic>)
          : null,
      cylinder: json['cylinder'] != null ? FhirDecimal(json['cylinder']) : null,
      cylinderElement: json['_cylinder'] != null
          ? Element.fromJson(json['_cylinder'] as Map<String, dynamic>)
          : null,
      axis: json['axis'] != null ? FhirInteger(json['axis']) : null,
      axisElement: json['_axis'] != null
          ? Element.fromJson(json['_axis'] as Map<String, dynamic>)
          : null,
      prism: json['prism'] != null
          ? (json['prism'] as List<dynamic>)
              .map<VisionPrescriptionPrism>((dynamic v) =>
                  VisionPrescriptionPrism.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      add: json['add'] != null ? FhirDecimal(json['add']) : null,
      addElement: json['_add'] != null
          ? Element.fromJson(json['_add'] as Map<String, dynamic>)
          : null,
      power: json['power'] != null ? FhirDecimal(json['power']) : null,
      powerElement: json['_power'] != null
          ? Element.fromJson(json['_power'] as Map<String, dynamic>)
          : null,
      backCurve:
          json['backCurve'] != null ? FhirDecimal(json['backCurve']) : null,
      backCurveElement: json['_backCurve'] != null
          ? Element.fromJson(json['_backCurve'] as Map<String, dynamic>)
          : null,
      diameter: json['diameter'] != null ? FhirDecimal(json['diameter']) : null,
      diameterElement: json['_diameter'] != null
          ? Element.fromJson(json['_diameter'] as Map<String, dynamic>)
          : null,
      duration: json['duration'] != null
          ? Quantity.fromJson(json['duration'] as Map<String, dynamic>)
          : null,
      color: json['color'] != null ? FhirString(json['color']) : null,
      colorElement: json['_color'] != null
          ? Element.fromJson(json['_color'] as Map<String, dynamic>)
          : null,
      brand: json['brand'] != null ? FhirString(json['brand']) : null,
      brandElement: json['_brand'] != null
          ? Element.fromJson(json['_brand'] as Map<String, dynamic>)
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  VisionPrescriptionLensSpecification clone() => throw UnimplementedError();
  @override
  VisionPrescriptionLensSpecification copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? product,
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
  });

  @override
  String get fhirType => 'VisionPrescriptionPrism';

  @Id()
  int dbId = 0;

  /// [amount] /// Amount of prism to compensate for eye alignment in fractional units.
  final FhirDecimal amount;
  final Element? amountElement;

  /// [base] /// The relative base, or reference lens edge, for the prism.
  final VisionBase base;
  final Element? baseElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['amount'] = amount.value;
    if (amountElement != null) {
      json['_amount'] = amountElement!.toJson();
    }
    json['base'] = base.toJson();
    return json;
  }

  factory VisionPrescriptionPrism.fromJson(Map<String, dynamic> json) {
    return VisionPrescriptionPrism(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      amount: FhirDecimal(json['amount']),
      amountElement: json['_amount'] != null
          ? Element.fromJson(json['_amount'] as Map<String, dynamic>)
          : null,
      base: VisionBase.fromJson(json['base'] as Map<String, dynamic>),
    );
  }
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
