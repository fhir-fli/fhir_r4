import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [VisionPrescription]
/// An authorization for the provision of glasses and/or contact lenses to
/// a patient.
class VisionPrescription extends DomainResource {
  /// Primary constructor for [VisionPrescription]

  VisionPrescription({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    required this.created,
    required this.patient,
    this.encounter,
    required this.dateWritten,
    required this.prescriber,
    required this.lensSpecification,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.VisionPrescription,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VisionPrescription.fromJson(Map<String, dynamic> json) {
    return VisionPrescription(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: FinancialResourceStatusCodes.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      created: FhirDateTime.fromJson({
        'value': json['created'],
        '_value': json['_created'],
      }),
      patient: Reference.fromJson(
        json['patient'] as Map<String, dynamic>,
      ),
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              json['encounter'] as Map<String, dynamic>,
            )
          : null,
      dateWritten: FhirDateTime.fromJson({
        'value': json['dateWritten'],
        '_value': json['_dateWritten'],
      }),
      prescriber: Reference.fromJson(
        json['prescriber'] as Map<String, dynamic>,
      ),
      lensSpecification:
          ensureNonNullList((json['lensSpecification'] as List<dynamic>)
              .map<VisionPrescriptionLensSpecification>(
                (v) => VisionPrescriptionLensSpecification.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()),
    );
  }

  /// Deserialize [VisionPrescription] from a [String]
  /// or [YamlMap] object
  factory VisionPrescription.fromYaml(dynamic yaml) => yaml is String
      ? VisionPrescription.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? VisionPrescription.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('VisionPrescription cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [VisionPrescription]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory VisionPrescription.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return VisionPrescription.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'VisionPrescription';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// A unique identifier assigned to this vision prescription.
  final List<Identifier>? identifier;

  /// [status]
  /// The status of the resource instance.
  final FinancialResourceStatusCodes status;

  /// [created]
  /// The date this resource was created.
  final FhirDateTime created;

  /// [patient]
  /// A resource reference to the person to whom the vision prescription
  /// applies.
  final Reference patient;

  /// [encounter]
  /// A reference to a resource that identifies the particular occurrence of
  /// contact between patient and health care provider during which the
  /// prescription was issued.
  final Reference? encounter;

  /// [dateWritten]
  /// The date (and perhaps time) when the prescription was written.
  final FhirDateTime dateWritten;

  /// [prescriber]
  /// The healthcare professional responsible for authorizing the
  /// prescription.
  final Reference prescriber;

  /// [lensSpecification]
  /// Contain the details of the individual lens specifications and serves as
  /// the authorization for the fullfillment by certified professionals.
  final List<VisionPrescriptionLensSpecification> lensSpecification;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final primitiveJson = id!.toJson();
      json['id'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_id'] = primitiveJson['_value'];
      }
    }

    if (meta != null) {
      final primitiveJson = meta!.toJson();
      json['meta'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_meta'] = primitiveJson['_value'];
      }
    }

    if (implicitRules != null) {
      final primitiveJson = implicitRules!.toJson();
      json['implicitRules'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_implicitRules'] = primitiveJson['_value'];
      }
    }

    if (language != null) {
      final primitiveJson = language!.toJson();
      json['language'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_language'] = primitiveJson['_value'];
      }
    }

    if (text != null) {
      final primitiveJson = text!.toJson();
      json['text'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_text'] = primitiveJson['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final primitiveList = contained!.map((e) => e.toJson()).toList();
      json['contained'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_contained'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final primitiveList = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_extension'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final primitiveList = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final primitiveList = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_identifier'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (status != null) {
      final primitiveJson = status!.toJson();
      json['status'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_status'] = primitiveJson['_value'];
      }
    }

    if (created != null) {
      final primitiveJson = created!.toJson();
      json['created'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_created'] = primitiveJson['_value'];
      }
    }

    if (patient != null) {
      final primitiveJson = patient!.toJson();
      json['patient'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_patient'] = primitiveJson['_value'];
      }
    }

    if (encounter != null) {
      final primitiveJson = encounter!.toJson();
      json['encounter'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_encounter'] = primitiveJson['_value'];
      }
    }

    if (dateWritten != null) {
      final primitiveJson = dateWritten!.toJson();
      json['dateWritten'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_dateWritten'] = primitiveJson['_value'];
      }
    }

    if (prescriber != null) {
      final primitiveJson = prescriber!.toJson();
      json['prescriber'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_prescriber'] = primitiveJson['_value'];
      }
    }

    if (lensSpecification != null && lensSpecification!.isNotEmpty) {
      final primitiveList = lensSpecification!.map((e) => e.toJson()).toList();
      json['lensSpecification'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_lensSpecification'] =
            primitiveList.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  VisionPrescription clone() => throw UnimplementedError();
  @override
  VisionPrescription copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FinancialResourceStatusCodes? status,
    FhirDateTime? created,
    Reference? patient,
    Reference? encounter,
    FhirDateTime? dateWritten,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      created: created ?? this.created,
      patient: patient ?? this.patient,
      encounter: encounter ?? this.encounter,
      dateWritten: dateWritten ?? this.dateWritten,
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
}

/// [VisionPrescriptionLensSpecification]
/// Contain the details of the individual lens specifications and serves as
/// the authorization for the fullfillment by certified professionals.
class VisionPrescriptionLensSpecification extends BackboneElement {
  /// Primary constructor for [VisionPrescriptionLensSpecification]

  VisionPrescriptionLensSpecification({
    super.id,
    this.extension_,
    super.modifierExtension,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VisionPrescriptionLensSpecification.fromJson(
      Map<String, dynamic> json) {
    return VisionPrescriptionLensSpecification(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      product: CodeableConcept.fromJson(
        json['product'] as Map<String, dynamic>,
      ),
      eye: VisionEyes.fromJson({
        'value': json['eye'],
        '_value': json['_eye'],
      }),
      sphere: json['sphere'] != null
          ? FhirDecimal.fromJson({
              'value': json['sphere'],
              '_value': json['_sphere'],
            })
          : null,
      cylinder: json['cylinder'] != null
          ? FhirDecimal.fromJson({
              'value': json['cylinder'],
              '_value': json['_cylinder'],
            })
          : null,
      axis: json['axis'] != null
          ? FhirInteger.fromJson({
              'value': json['axis'],
              '_value': json['_axis'],
            })
          : null,
      prism: json['prism'] != null
          ? (json['prism'] as List<dynamic>)
              .map<VisionPrescriptionPrism>(
                (v) => VisionPrescriptionPrism.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      add: json['add'] != null
          ? FhirDecimal.fromJson({
              'value': json['add'],
              '_value': json['_add'],
            })
          : null,
      power: json['power'] != null
          ? FhirDecimal.fromJson({
              'value': json['power'],
              '_value': json['_power'],
            })
          : null,
      backCurve: json['backCurve'] != null
          ? FhirDecimal.fromJson({
              'value': json['backCurve'],
              '_value': json['_backCurve'],
            })
          : null,
      diameter: json['diameter'] != null
          ? FhirDecimal.fromJson({
              'value': json['diameter'],
              '_value': json['_diameter'],
            })
          : null,
      duration: json['duration'] != null
          ? Quantity.fromJson(
              json['duration'] as Map<String, dynamic>,
            )
          : null,
      color: json['color'] != null
          ? FhirString.fromJson({
              'value': json['color'],
              '_value': json['_color'],
            })
          : null,
      brand: json['brand'] != null
          ? FhirString.fromJson({
              'value': json['brand'],
              '_value': json['_brand'],
            })
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [VisionPrescriptionLensSpecification] from a [String]
  /// or [YamlMap] object
  factory VisionPrescriptionLensSpecification.fromYaml(dynamic yaml) => yaml
          is String
      ? VisionPrescriptionLensSpecification.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? VisionPrescriptionLensSpecification.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'VisionPrescriptionLensSpecification cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [VisionPrescriptionLensSpecification]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory VisionPrescriptionLensSpecification.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return VisionPrescriptionLensSpecification.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'VisionPrescriptionLensSpecification';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [product]
  /// Identifies the type of vision correction product which is required for
  /// the patient.
  final CodeableConcept product;

  /// [eye]
  /// The eye for which the lens specification applies.
  final VisionEyes eye;

  /// [sphere]
  /// Lens power measured in dioptres (0.25 units).
  final FhirDecimal? sphere;

  /// [cylinder]
  /// Power adjustment for astigmatism measured in dioptres (0.25 units).
  final FhirDecimal? cylinder;

  /// [axis]
  /// Adjustment for astigmatism measured in integer degrees.
  final FhirInteger? axis;

  /// [prism]
  /// Allows for adjustment on two axis.
  final List<VisionPrescriptionPrism>? prism;

  /// [add]
  /// Power adjustment for multifocal lenses measured in dioptres (0.25
  /// units).
  final FhirDecimal? add;

  /// [power]
  /// Contact lens power measured in dioptres (0.25 units).
  final FhirDecimal? power;

  /// [backCurve]
  /// Back curvature measured in millimetres.
  final FhirDecimal? backCurve;

  /// [diameter]
  /// Contact lens diameter measured in millimetres.
  final FhirDecimal? diameter;

  /// [duration]
  /// The recommended maximum wear period for the lens.
  final Quantity? duration;

  /// [color]
  /// Special color or pattern.
  final FhirString? color;

  /// [brand]
  /// Brand recommendations or restrictions.
  final FhirString? brand;

  /// [note]
  /// Notes for special requirements such as coatings and lens materials.
  final List<Annotation>? note;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final primitiveJson = id!.toJson();
      json['id'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_id'] = primitiveJson['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final primitiveList = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_extension'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final primitiveList = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (product != null) {
      final primitiveJson = product!.toJson();
      json['product'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_product'] = primitiveJson['_value'];
      }
    }

    if (eye != null) {
      final primitiveJson = eye!.toJson();
      json['eye'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_eye'] = primitiveJson['_value'];
      }
    }

    if (sphere != null) {
      final primitiveJson = sphere!.toJson();
      json['sphere'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_sphere'] = primitiveJson['_value'];
      }
    }

    if (cylinder != null) {
      final primitiveJson = cylinder!.toJson();
      json['cylinder'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_cylinder'] = primitiveJson['_value'];
      }
    }

    if (axis != null) {
      final primitiveJson = axis!.toJson();
      json['axis'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_axis'] = primitiveJson['_value'];
      }
    }

    if (prism != null && prism!.isNotEmpty) {
      final primitiveList = prism!.map((e) => e.toJson()).toList();
      json['prism'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_prism'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (add != null) {
      final primitiveJson = add!.toJson();
      json['add'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_add'] = primitiveJson['_value'];
      }
    }

    if (power != null) {
      final primitiveJson = power!.toJson();
      json['power'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_power'] = primitiveJson['_value'];
      }
    }

    if (backCurve != null) {
      final primitiveJson = backCurve!.toJson();
      json['backCurve'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_backCurve'] = primitiveJson['_value'];
      }
    }

    if (diameter != null) {
      final primitiveJson = diameter!.toJson();
      json['diameter'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_diameter'] = primitiveJson['_value'];
      }
    }

    if (duration != null) {
      final primitiveJson = duration!.toJson();
      json['duration'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_duration'] = primitiveJson['_value'];
      }
    }

    if (color != null) {
      final primitiveJson = color!.toJson();
      json['color'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_color'] = primitiveJson['_value'];
      }
    }

    if (brand != null) {
      final primitiveJson = brand!.toJson();
      json['brand'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_brand'] = primitiveJson['_value'];
      }
    }

    if (note != null && note!.isNotEmpty) {
      final primitiveList = note!.map((e) => e.toJson()).toList();
      json['note'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_note'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    return json;
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
    FhirDecimal? sphere,
    FhirDecimal? cylinder,
    FhirInteger? axis,
    List<VisionPrescriptionPrism>? prism,
    FhirDecimal? add,
    FhirDecimal? power,
    FhirDecimal? backCurve,
    FhirDecimal? diameter,
    Quantity? duration,
    FhirString? color,
    FhirString? brand,
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
      sphere: sphere ?? this.sphere,
      cylinder: cylinder ?? this.cylinder,
      axis: axis ?? this.axis,
      prism: prism ?? this.prism,
      add: add ?? this.add,
      power: power ?? this.power,
      backCurve: backCurve ?? this.backCurve,
      diameter: diameter ?? this.diameter,
      duration: duration ?? this.duration,
      color: color ?? this.color,
      brand: brand ?? this.brand,
      note: note ?? this.note,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [VisionPrescriptionPrism]
/// Allows for adjustment on two axis.
class VisionPrescriptionPrism extends BackboneElement {
  /// Primary constructor for [VisionPrescriptionPrism]

  VisionPrescriptionPrism({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.amount,
    required this.base,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VisionPrescriptionPrism.fromJson(Map<String, dynamic> json) {
    return VisionPrescriptionPrism(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      amount: FhirDecimal.fromJson({
        'value': json['amount'],
        '_value': json['_amount'],
      }),
      base: VisionBase.fromJson({
        'value': json['base'],
        '_value': json['_base'],
      }),
    );
  }

  /// Deserialize [VisionPrescriptionPrism] from a [String]
  /// or [YamlMap] object
  factory VisionPrescriptionPrism.fromYaml(dynamic yaml) => yaml is String
      ? VisionPrescriptionPrism.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? VisionPrescriptionPrism.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'VisionPrescriptionPrism cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [VisionPrescriptionPrism]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory VisionPrescriptionPrism.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return VisionPrescriptionPrism.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'VisionPrescriptionPrism';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [amount]
  /// Amount of prism to compensate for eye alignment in fractional units.
  final FhirDecimal amount;

  /// [base]
  /// The relative base, or reference lens edge, for the prism.
  final VisionBase base;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final primitiveJson = id!.toJson();
      json['id'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_id'] = primitiveJson['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final primitiveList = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_extension'] = primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final primitiveList = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = primitiveList.map((e) => e['value']).toList();
      if (primitiveList.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            primitiveList.map((e) => e['_value']).toList();
      }
    }

    if (amount != null) {
      final primitiveJson = amount!.toJson();
      json['amount'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_amount'] = primitiveJson['_value'];
      }
    }

    if (base != null) {
      final primitiveJson = base!.toJson();
      json['base'] = primitiveJson['value'];
      if (primitiveJson['_value'] != null) {
        json['_base'] = primitiveJson['_value'];
      }
    }

    return json;
  }

  @override
  VisionPrescriptionPrism clone() => throw UnimplementedError();
  @override
  VisionPrescriptionPrism copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDecimal? amount,
    VisionBase? base,
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
      base: base ?? this.base,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
