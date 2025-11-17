import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'vision_prescription.g.dart';

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return VisionPrescription.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'status',
      status,
    );
    addField(
      'created',
      created,
    );
    addField(
      'patient',
      patient,
    );
    addField(
      'encounter',
      encounter,
    );
    addField(
      'dateWritten',
      dateWritten,
    );
    addField(
      'prescriber',
      prescriber,
    );
    addField(
      'lensSpecification',
      lensSpecification,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'status',
      'created',
      'patient',
      'encounter',
      'dateWritten',
      'prescriber',
      'lensSpecification',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'status':
        fields.add(status);
      case 'created':
        fields.add(created);
      case 'patient':
        fields.add(patient);
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'dateWritten':
        fields.add(dateWritten);
      case 'prescriber':
        fields.add(prescriber);
      case 'lensSpecification':
        fields.addAll(lensSpecification);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  VisionPrescription clone() => copyWith();

  /// Copy function for [VisionPrescription]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $VisionPrescriptionCopyWith<VisionPrescription> get copyWith =>
      _$VisionPrescriptionCopyWithImpl<VisionPrescription>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! VisionPrescription) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      created,
      o.created,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      patient,
      o.patient,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      dateWritten,
      o.dateWritten,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      prescriber,
      o.prescriber,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<VisionPrescriptionLensSpecification>(
      lensSpecification,
      o.lensSpecification,
    )) {
      return false;
    }
    return true;
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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return VisionPrescriptionLensSpecification.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'product',
      product,
    );
    addField(
      'eye',
      eye,
    );
    addField(
      'sphere',
      sphere,
    );
    addField(
      'cylinder',
      cylinder,
    );
    addField(
      'axis',
      axis,
    );
    addField(
      'prism',
      prism,
    );
    addField(
      'add',
      add,
    );
    addField(
      'power',
      power,
    );
    addField(
      'backCurve',
      backCurve,
    );
    addField(
      'diameter',
      diameter,
    );
    addField(
      'duration',
      duration,
    );
    addField(
      'color',
      color,
    );
    addField(
      'brand',
      brand,
    );
    addField(
      'note',
      note,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'product',
      'eye',
      'sphere',
      'cylinder',
      'axis',
      'prism',
      'add',
      'power',
      'backCurve',
      'diameter',
      'duration',
      'color',
      'brand',
      'note',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'product':
        fields.add(product);
      case 'eye':
        fields.add(eye);
      case 'sphere':
        if (sphere != null) {
          fields.add(sphere!);
        }
      case 'cylinder':
        if (cylinder != null) {
          fields.add(cylinder!);
        }
      case 'axis':
        if (axis != null) {
          fields.add(axis!);
        }
      case 'prism':
        if (prism != null) {
          fields.addAll(prism!);
        }
      case 'add':
        if (add != null) {
          fields.add(add!);
        }
      case 'power':
        if (power != null) {
          fields.add(power!);
        }
      case 'backCurve':
        if (backCurve != null) {
          fields.add(backCurve!);
        }
      case 'diameter':
        if (diameter != null) {
          fields.add(diameter!);
        }
      case 'duration':
        if (duration != null) {
          fields.add(duration!);
        }
      case 'color':
        if (color != null) {
          fields.add(color!);
        }
      case 'brand':
        if (brand != null) {
          fields.add(brand!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  VisionPrescriptionLensSpecification clone() => copyWith();

  /// Copy function for [VisionPrescriptionLensSpecification]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $VisionPrescriptionLensSpecificationCopyWith<
          VisionPrescriptionLensSpecification>
      get copyWith => _$VisionPrescriptionLensSpecificationCopyWithImpl<
              VisionPrescriptionLensSpecification>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! VisionPrescriptionLensSpecification) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      product,
      o.product,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      eye,
      o.eye,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      sphere,
      o.sphere,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      cylinder,
      o.cylinder,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      axis,
      o.axis,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<VisionPrescriptionPrism>(
      prism,
      o.prism,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      add,
      o.add,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      power,
      o.power,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      backCurve,
      o.backCurve,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      diameter,
      o.diameter,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      duration,
      o.duration,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      color,
      o.color,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      brand,
      o.brand,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    return true;
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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return VisionPrescriptionPrism.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'amount',
      amount,
    );
    addField(
      'base',
      base,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'amount',
      'base',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'amount':
        fields.add(amount);
      case 'base':
        fields.add(base);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  VisionPrescriptionPrism clone() => copyWith();

  /// Copy function for [VisionPrescriptionPrism]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $VisionPrescriptionPrismCopyWith<VisionPrescriptionPrism> get copyWith =>
      _$VisionPrescriptionPrismCopyWithImpl<VisionPrescriptionPrism>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! VisionPrescriptionPrism) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      amount,
      o.amount,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      base,
      o.base,
    )) {
      return false;
    }
    return true;
  }
}
