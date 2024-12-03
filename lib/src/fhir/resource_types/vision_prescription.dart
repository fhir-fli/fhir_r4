import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [VisionPrescription]
/// An authorization for the provision of glasses and/or contact lenses to
/// a patient.
class VisionPrescription extends DomainResource {
  /// Primary constructor for
  /// [VisionPrescription]

  VisionPrescription({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
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
  factory VisionPrescription.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return VisionPrescription(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: parseField<FhirUri>(
        json['implicitRules'],
        json['_implicitRules'],
        FhirUri.fromJson,
      ),
      language: parseField<CommonLanguages>(
        json['language'],
        json['_language'],
        CommonLanguages.fromJson,
      ),
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: parseList<Resource>(
        json['contained'] as List<dynamic>?,
        json['_contained'] as List<dynamic>?,
        Resource.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      identifier: parseList<Identifier>(
        json['identifier'] as List<dynamic>?,
        json['_identifier'] as List<dynamic>?,
        Identifier.fromJson,
      ),
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
      lensSpecification: parseList<VisionPrescriptionLensSpecification>(
        json['lensSpecification'] as List<dynamic>?,
        json['_lensSpecification'] as List<dynamic>?,
        VisionPrescriptionLensSpecification.fromJson,
      )!,
    );
  }

  /// Deserialize [VisionPrescription]
  /// from a [String] or [YamlMap] object
  factory VisionPrescription.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return VisionPrescription.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return VisionPrescription.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'VisionPrescription '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [VisionPrescription]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory VisionPrescription.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    addField('status', status);
    addField('created', created);
    json['patient'] = patient.toJson();

    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }

    addField('dateWritten', dateWritten);
    json['prescriber'] = prescriber.toJson();

    if (lensSpecification.isNotEmpty) {
      json['lensSpecification'] =
          lensSpecification.map((e) => e.toJson()).toList();
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
  /// Primary constructor for
  /// [VisionPrescriptionLensSpecification]

  VisionPrescriptionLensSpecification({
    super.id,
    super.extension_,
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
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return VisionPrescriptionLensSpecification(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      product: CodeableConcept.fromJson(
        json['product'] as Map<String, dynamic>,
      ),
      eye: VisionEyes.fromJson({
        'value': json['eye'],
        '_value': json['_eye'],
      }),
      sphere: parseField<FhirDecimal>(
        json['sphere'],
        json['_sphere'],
        FhirDecimal.fromJson,
      ),
      cylinder: parseField<FhirDecimal>(
        json['cylinder'],
        json['_cylinder'],
        FhirDecimal.fromJson,
      ),
      axis: parseField<FhirInteger>(
        json['axis'],
        json['_axis'],
        FhirInteger.fromJson,
      ),
      prism: parseList<VisionPrescriptionPrism>(
        json['prism'] as List<dynamic>?,
        json['_prism'] as List<dynamic>?,
        VisionPrescriptionPrism.fromJson,
      ),
      add: parseField<FhirDecimal>(
        json['add'],
        json['_add'],
        FhirDecimal.fromJson,
      ),
      power: parseField<FhirDecimal>(
        json['power'],
        json['_power'],
        FhirDecimal.fromJson,
      ),
      backCurve: parseField<FhirDecimal>(
        json['backCurve'],
        json['_backCurve'],
        FhirDecimal.fromJson,
      ),
      diameter: parseField<FhirDecimal>(
        json['diameter'],
        json['_diameter'],
        FhirDecimal.fromJson,
      ),
      duration: json['duration'] != null
          ? Quantity.fromJson(
              json['duration'] as Map<String, dynamic>,
            )
          : null,
      color: parseField<FhirString>(
        json['color'],
        json['_color'],
        FhirString.fromJson,
      ),
      brand: parseField<FhirString>(
        json['brand'],
        json['_brand'],
        FhirString.fromJson,
      ),
      note: parseList<Annotation>(
        json['note'] as List<dynamic>?,
        json['_note'] as List<dynamic>?,
        Annotation.fromJson,
      ),
    );
  }

  /// Deserialize [VisionPrescriptionLensSpecification]
  /// from a [String] or [YamlMap] object
  factory VisionPrescriptionLensSpecification.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return VisionPrescriptionLensSpecification.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return VisionPrescriptionLensSpecification.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'VisionPrescriptionLensSpecification '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [VisionPrescriptionLensSpecification]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory VisionPrescriptionLensSpecification.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['product'] = product.toJson();

    addField('eye', eye);
    addField('sphere', sphere);
    addField('cylinder', cylinder);
    addField('axis', axis);
    if (prism != null && prism!.isNotEmpty) {
      json['prism'] = prism!.map((e) => e.toJson()).toList();
    }

    addField('add', add);
    addField('power', power);
    addField('backCurve', backCurve);
    addField('diameter', diameter);
    if (duration != null) {
      json['duration'] = duration!.toJson();
    }

    addField('color', color);
    addField('brand', brand);
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
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
  /// Primary constructor for
  /// [VisionPrescriptionPrism]

  VisionPrescriptionPrism({
    super.id,
    super.extension_,
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
  factory VisionPrescriptionPrism.fromJson(
    Map<String, dynamic> json,
  ) {
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return VisionPrescriptionPrism(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      modifierExtension: parseList<FhirExtension>(
        json['modifierExtension'] as List<dynamic>?,
        json['_modifierExtension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
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

  /// Deserialize [VisionPrescriptionPrism]
  /// from a [String] or [YamlMap] object
  factory VisionPrescriptionPrism.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return VisionPrescriptionPrism.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return VisionPrescriptionPrism.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'VisionPrescriptionPrism '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [VisionPrescriptionPrism]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory VisionPrescriptionPrism.fromJsonString(
    String source,
  ) {
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

  /// [amount]
  /// Amount of prism to compensate for eye alignment in fractional units.
  final FhirDecimal amount;

  /// [base]
  /// The relative base, or reference lens edge, for the prism.
  final VisionBase base;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('amount', amount);
    addField('base', base);
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
