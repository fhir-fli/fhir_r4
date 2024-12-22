import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [VisionPrescription]
/// An authorization for the provision of glasses and/or contact lenses to
/// a patient.
class VisionPrescription extends DomainResource {
  /// Primary constructor for
  /// [VisionPrescription]

  const VisionPrescription({
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
  }) : super(
          resourceType: R4ResourceType.VisionPrescription,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VisionPrescription.fromJson(
    Map<String, dynamic> json,
  ) {
    return VisionPrescription(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<FinancialResourceStatusCodes>(
        json,
        'status',
        FinancialResourceStatusCodes.fromJson,
      )!,
      created: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'created',
        FhirDateTime.fromJson,
      )!,
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
      )!,
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      dateWritten: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'dateWritten',
        FhirDateTime.fromJson,
      )!,
      prescriber: JsonParser.parseObject<Reference>(
        json,
        'prescriber',
        Reference.fromJson,
      )!,
      lensSpecification: (json['lensSpecification'] as List<dynamic>)
          .map<VisionPrescriptionLensSpecification>(
            (v) => VisionPrescriptionLensSpecification.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('status', status);
    addField('created', created);
    addField('patient', patient);
    addField('encounter', encounter);
    addField('dateWritten', dateWritten);
    addField('prescriber', prescriber);
    addField('lensSpecification', lensSpecification);
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
    );
  }
}

/// [VisionPrescriptionLensSpecification]
/// Contain the details of the individual lens specifications and serves as
/// the authorization for the fullfillment by certified professionals.
class VisionPrescriptionLensSpecification extends BackboneElement {
  /// Primary constructor for
  /// [VisionPrescriptionLensSpecification]

  const VisionPrescriptionLensSpecification({
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
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VisionPrescriptionLensSpecification.fromJson(
    Map<String, dynamic> json,
  ) {
    return VisionPrescriptionLensSpecification(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      product: JsonParser.parseObject<CodeableConcept>(
        json,
        'product',
        CodeableConcept.fromJson,
      )!,
      eye: JsonParser.parsePrimitive<VisionEyes>(
        json,
        'eye',
        VisionEyes.fromJson,
      )!,
      sphere: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'sphere',
        FhirDecimal.fromJson,
      ),
      cylinder: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'cylinder',
        FhirDecimal.fromJson,
      ),
      axis: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'axis',
        FhirInteger.fromJson,
      ),
      prism: (json['prism'] as List<dynamic>?)
          ?.map<VisionPrescriptionPrism>(
            (v) => VisionPrescriptionPrism.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      add: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'add',
        FhirDecimal.fromJson,
      ),
      power: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'power',
        FhirDecimal.fromJson,
      ),
      backCurve: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'backCurve',
        FhirDecimal.fromJson,
      ),
      diameter: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'diameter',
        FhirDecimal.fromJson,
      ),
      duration: JsonParser.parseObject<Quantity>(
        json,
        'duration',
        Quantity.fromJson,
      ),
      color: JsonParser.parsePrimitive<FhirString>(
        json,
        'color',
        FhirString.fromJson,
      ),
      brand: JsonParser.parsePrimitive<FhirString>(
        json,
        'brand',
        FhirString.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('product', product);
    addField('eye', eye);
    addField('sphere', sphere);
    addField('cylinder', cylinder);
    addField('axis', axis);
    addField('prism', prism);
    addField('add', add);
    addField('power', power);
    addField('backCurve', backCurve);
    addField('diameter', diameter);
    addField('duration', duration);
    addField('color', color);
    addField('brand', brand);
    addField('note', note);
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
    );
  }
}

/// [VisionPrescriptionPrism]
/// Allows for adjustment on two axis.
class VisionPrescriptionPrism extends BackboneElement {
  /// Primary constructor for
  /// [VisionPrescriptionPrism]

  const VisionPrescriptionPrism({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.amount,
    required this.base,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VisionPrescriptionPrism.fromJson(
    Map<String, dynamic> json,
  ) {
    return VisionPrescriptionPrism(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      amount: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'amount',
        FhirDecimal.fromJson,
      )!,
      base: JsonParser.parsePrimitive<VisionBase>(
        json,
        'base',
        VisionBase.fromJson,
      )!,
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
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
  }) {
    return VisionPrescriptionPrism(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      amount: amount ?? this.amount,
      base: base ?? this.base,
    );
  }
}
