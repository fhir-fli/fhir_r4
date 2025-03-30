import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        yamlMapToJson,
        yamlToJson,
        R4ResourceType,
        StringExtensionForFHIR,
        VisionPrescription,
        VisionPrescriptionLensSpecification,
        VisionPrescriptionPrism;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [VisionPrescriptionBuilder]
/// An authorization for the provision of glasses and/or contact lenses to
/// a patient.
class VisionPrescriptionBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [VisionPrescriptionBuilder]

  VisionPrescriptionBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
    this.created,
    this.patient,
    this.encounter,
    this.dateWritten,
    this.prescriber,
    this.lensSpecification,
  }) : super(
          objectPath: 'VisionPrescription',
          resourceType: R4ResourceType.VisionPrescription,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory VisionPrescriptionBuilder.empty() => VisionPrescriptionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VisionPrescriptionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'VisionPrescription';
    return VisionPrescriptionBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<FinancialResourceStatusCodesBuilder>(
        json,
        'status',
        FinancialResourceStatusCodesBuilder.fromJson,
        '$objectPath.status',
      ),
      created: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'created',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.created',
      ),
      patient: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'patient',
        ReferenceBuilder.fromJson,
        '$objectPath.patient',
      ),
      encounter: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'encounter',
        ReferenceBuilder.fromJson,
        '$objectPath.encounter',
      ),
      dateWritten: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'dateWritten',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.dateWritten',
      ),
      prescriber: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'prescriber',
        ReferenceBuilder.fromJson,
        '$objectPath.prescriber',
      ),
      lensSpecification: (json['lensSpecification'] as List<dynamic>?)
          ?.map<VisionPrescriptionLensSpecificationBuilder>(
            (v) => VisionPrescriptionLensSpecificationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.lensSpecification',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [VisionPrescriptionBuilder]
  /// from a [String] or [YamlMap] object
  factory VisionPrescriptionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return VisionPrescriptionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return VisionPrescriptionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'VisionPrescriptionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [VisionPrescriptionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory VisionPrescriptionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return VisionPrescriptionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'VisionPrescription';

  /// [identifier]
  /// A unique identifier assigned to this vision prescription.
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// The status of the resource instance.
  FinancialResourceStatusCodesBuilder? status;

  /// [created]
  /// The date this resource was created.
  FhirDateTimeBuilder? created;

  /// [patient]
  /// A resource reference to the person to whom the vision prescription
  /// applies.
  ReferenceBuilder? patient;

  /// [encounter]
  /// A reference to a resource that identifies the particular occurrence of
  /// contact between patient and health care provider during which the
  /// prescription was issued.
  ReferenceBuilder? encounter;

  /// [dateWritten]
  /// The date (and perhaps time) when the prescription was written.
  FhirDateTimeBuilder? dateWritten;

  /// [prescriber]
  /// The healthcare professional responsible for authorizing the
  /// prescription.
  ReferenceBuilder? prescriber;

  /// [lensSpecification]
  /// Contain the details of the individual lens specifications and serves as
  /// the authorization for the fullfillment by certified professionals.
  List<VisionPrescriptionLensSpecificationBuilder>? lensSpecification;

  /// Converts a VisionPrescriptionBuilder to [VisionPrescription]
  VisionPrescription build() => VisionPrescription.fromJson(toJson());

  /// Converts a [VisionPrescriptionBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (status != null) {
          fields.add(status!);
        }
      case 'created':
        if (created != null) {
          fields.add(created!);
        }
      case 'patient':
        if (patient != null) {
          fields.add(patient!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'dateWritten':
        if (dateWritten != null) {
          fields.add(dateWritten!);
        }
      case 'prescriber':
        if (prescriber != null) {
          fields.add(prescriber!);
        }
      case 'lensSpecification':
        if (lensSpecification != null) {
          fields.addAll(lensSpecification!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [...(contained ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [...(identifier ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is FinancialResourceStatusCodesBuilder) {
            status = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'created':
        {
          if (child is FhirDateTimeBuilder) {
            created = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patient':
        {
          if (child is ReferenceBuilder) {
            patient = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'encounter':
        {
          if (child is ReferenceBuilder) {
            encounter = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dateWritten':
        {
          if (child is FhirDateTimeBuilder) {
            dateWritten = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'prescriber':
        {
          if (child is ReferenceBuilder) {
            prescriber = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'lensSpecification':
        {
          if (child is List<VisionPrescriptionLensSpecificationBuilder>) {
            // Replace or create new list
            lensSpecification = child;
            return;
          } else if (child is VisionPrescriptionLensSpecificationBuilder) {
            // Add single element to existing list or create new list
            lensSpecification = [...(lensSpecification ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'created':
        return ['FhirDateTimeBuilder'];
      case 'patient':
        return ['ReferenceBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'dateWritten':
        return ['FhirDateTimeBuilder'];
      case 'prescriber':
        return ['ReferenceBuilder'];
      case 'lensSpecification':
        return ['VisionPrescriptionLensSpecificationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [VisionPrescriptionBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'status':
        {
          status = FinancialResourceStatusCodesBuilder.empty();
          return;
        }
      case 'created':
        {
          created = FhirDateTimeBuilder.empty();
          return;
        }
      case 'patient':
        {
          patient = ReferenceBuilder.empty();
          return;
        }
      case 'encounter':
        {
          encounter = ReferenceBuilder.empty();
          return;
        }
      case 'dateWritten':
        {
          dateWritten = FhirDateTimeBuilder.empty();
          return;
        }
      case 'prescriber':
        {
          prescriber = ReferenceBuilder.empty();
          return;
        }
      case 'lensSpecification':
        {
          lensSpecification = <VisionPrescriptionLensSpecificationBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool status = false,
    bool created = false,
    bool patient = false,
    bool encounter = false,
    bool dateWritten = false,
    bool prescriber = false,
    bool lensSpecification = false,
  }) {
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (identifier) this.identifier = null;
    if (status) this.status = null;
    if (created) this.created = null;
    if (patient) this.patient = null;
    if (encounter) this.encounter = null;
    if (dateWritten) this.dateWritten = null;
    if (prescriber) this.prescriber = null;
    if (lensSpecification) this.lensSpecification = null;
  }

  @override
  VisionPrescriptionBuilder clone() => throw UnimplementedError();
  @override
  VisionPrescriptionBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    FinancialResourceStatusCodesBuilder? status,
    FhirDateTimeBuilder? created,
    ReferenceBuilder? patient,
    ReferenceBuilder? encounter,
    FhirDateTimeBuilder? dateWritten,
    ReferenceBuilder? prescriber,
    List<VisionPrescriptionLensSpecificationBuilder>? lensSpecification,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = VisionPrescriptionBuilder(
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

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! VisionPrescriptionBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      created,
      o.created,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      patient,
      o.patient,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dateWritten,
      o.dateWritten,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      prescriber,
      o.prescriber,
    )) {
      return false;
    }
    if (!listEquals<VisionPrescriptionLensSpecificationBuilder>(
      lensSpecification,
      o.lensSpecification,
    )) {
      return false;
    }
    return true;
  }
}

/// [VisionPrescriptionLensSpecificationBuilder]
/// Contain the details of the individual lens specifications and serves as
/// the authorization for the fullfillment by certified professionals.
class VisionPrescriptionLensSpecificationBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [VisionPrescriptionLensSpecificationBuilder]

  VisionPrescriptionLensSpecificationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.product,
    this.eye,
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
  }) : super(
          objectPath: 'VisionPrescription.lensSpecification',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory VisionPrescriptionLensSpecificationBuilder.empty() =>
      VisionPrescriptionLensSpecificationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VisionPrescriptionLensSpecificationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'VisionPrescription.lensSpecification';
    return VisionPrescriptionLensSpecificationBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      product: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'product',
        CodeableConceptBuilder.fromJson,
        '$objectPath.product',
      ),
      eye: JsonParser.parsePrimitive<VisionEyesBuilder>(
        json,
        'eye',
        VisionEyesBuilder.fromJson,
        '$objectPath.eye',
      ),
      sphere: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'sphere',
        FhirDecimalBuilder.fromJson,
        '$objectPath.sphere',
      ),
      cylinder: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'cylinder',
        FhirDecimalBuilder.fromJson,
        '$objectPath.cylinder',
      ),
      axis: JsonParser.parsePrimitive<FhirIntegerBuilder>(
        json,
        'axis',
        FhirIntegerBuilder.fromJson,
        '$objectPath.axis',
      ),
      prism: (json['prism'] as List<dynamic>?)
          ?.map<VisionPrescriptionPrismBuilder>(
            (v) => VisionPrescriptionPrismBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.prism',
              },
            ),
          )
          .toList(),
      add: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'add',
        FhirDecimalBuilder.fromJson,
        '$objectPath.add',
      ),
      power: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'power',
        FhirDecimalBuilder.fromJson,
        '$objectPath.power',
      ),
      backCurve: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'backCurve',
        FhirDecimalBuilder.fromJson,
        '$objectPath.backCurve',
      ),
      diameter: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'diameter',
        FhirDecimalBuilder.fromJson,
        '$objectPath.diameter',
      ),
      duration: JsonParser.parseObject<QuantityBuilder>(
        json,
        'duration',
        QuantityBuilder.fromJson,
        '$objectPath.duration',
      ),
      color: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'color',
        FhirStringBuilder.fromJson,
        '$objectPath.color',
      ),
      brand: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'brand',
        FhirStringBuilder.fromJson,
        '$objectPath.brand',
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [VisionPrescriptionLensSpecificationBuilder]
  /// from a [String] or [YamlMap] object
  factory VisionPrescriptionLensSpecificationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return VisionPrescriptionLensSpecificationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return VisionPrescriptionLensSpecificationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'VisionPrescriptionLensSpecificationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [VisionPrescriptionLensSpecificationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory VisionPrescriptionLensSpecificationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return VisionPrescriptionLensSpecificationBuilder.fromJson(json);
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
  CodeableConceptBuilder? product;

  /// [eye]
  /// The eye for which the lens specification applies.
  VisionEyesBuilder? eye;

  /// [sphere]
  /// Lens power measured in dioptres (0.25 units).
  FhirDecimalBuilder? sphere;

  /// [cylinder]
  /// Power adjustment for astigmatism measured in dioptres (0.25 units).
  FhirDecimalBuilder? cylinder;

  /// [axis]
  /// Adjustment for astigmatism measured in integer degrees.
  FhirIntegerBuilder? axis;

  /// [prism]
  /// Allows for adjustment on two axis.
  List<VisionPrescriptionPrismBuilder>? prism;

  /// [add]
  /// Power adjustment for multifocal lenses measured in dioptres (0.25
  /// units).
  FhirDecimalBuilder? add;

  /// [power]
  /// Contact lens power measured in dioptres (0.25 units).
  FhirDecimalBuilder? power;

  /// [backCurve]
  /// Back curvature measured in millimetres.
  FhirDecimalBuilder? backCurve;

  /// [diameter]
  /// Contact lens diameter measured in millimetres.
  FhirDecimalBuilder? diameter;

  /// [duration]
  /// The recommended maximum wear period for the lens.
  QuantityBuilder? duration;

  /// [color]
  /// Special color or pattern.
  FhirStringBuilder? color;

  /// [brand]
  /// Brand recommendations or restrictions.
  FhirStringBuilder? brand;

  /// [note]
  /// Notes for special requirements such as coatings and lens materials.
  List<AnnotationBuilder>? note;

  /// Converts a VisionPrescriptionLensSpecificationBuilder to [VisionPrescriptionLensSpecification]
  VisionPrescriptionLensSpecification build() =>
      VisionPrescriptionLensSpecification.fromJson(toJson());

  /// Converts a [VisionPrescriptionLensSpecificationBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (product != null) {
          fields.add(product!);
        }
      case 'eye':
        if (eye != null) {
          fields.add(eye!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'product':
        {
          if (child is CodeableConceptBuilder) {
            product = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'eye':
        {
          if (child is VisionEyesBuilder) {
            eye = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sphere':
        {
          if (child is FhirDecimalBuilder) {
            sphere = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'cylinder':
        {
          if (child is FhirDecimalBuilder) {
            cylinder = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'axis':
        {
          if (child is FhirIntegerBuilder) {
            axis = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'prism':
        {
          if (child is List<VisionPrescriptionPrismBuilder>) {
            // Replace or create new list
            prism = child;
            return;
          } else if (child is VisionPrescriptionPrismBuilder) {
            // Add single element to existing list or create new list
            prism = [...(prism ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'add':
        {
          if (child is FhirDecimalBuilder) {
            add = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'power':
        {
          if (child is FhirDecimalBuilder) {
            power = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'backCurve':
        {
          if (child is FhirDecimalBuilder) {
            backCurve = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'diameter':
        {
          if (child is FhirDecimalBuilder) {
            diameter = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'duration':
        {
          if (child is QuantityBuilder) {
            duration = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'color':
        {
          if (child is FhirStringBuilder) {
            color = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'brand':
        {
          if (child is FhirStringBuilder) {
            brand = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [...(note ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'product':
        return ['CodeableConceptBuilder'];
      case 'eye':
        return ['FhirCodeEnumBuilder'];
      case 'sphere':
        return ['FhirDecimalBuilder'];
      case 'cylinder':
        return ['FhirDecimalBuilder'];
      case 'axis':
        return ['FhirIntegerBuilder'];
      case 'prism':
        return ['VisionPrescriptionPrismBuilder'];
      case 'add':
        return ['FhirDecimalBuilder'];
      case 'power':
        return ['FhirDecimalBuilder'];
      case 'backCurve':
        return ['FhirDecimalBuilder'];
      case 'diameter':
        return ['FhirDecimalBuilder'];
      case 'duration':
        return ['QuantityBuilder'];
      case 'color':
        return ['FhirStringBuilder'];
      case 'brand':
        return ['FhirStringBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [VisionPrescriptionLensSpecificationBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'product':
        {
          product = CodeableConceptBuilder.empty();
          return;
        }
      case 'eye':
        {
          eye = VisionEyesBuilder.empty();
          return;
        }
      case 'sphere':
        {
          sphere = FhirDecimalBuilder.empty();
          return;
        }
      case 'cylinder':
        {
          cylinder = FhirDecimalBuilder.empty();
          return;
        }
      case 'axis':
        {
          axis = FhirIntegerBuilder.empty();
          return;
        }
      case 'prism':
        {
          prism = <VisionPrescriptionPrismBuilder>[];
          return;
        }
      case 'add':
        {
          add = FhirDecimalBuilder.empty();
          return;
        }
      case 'power':
        {
          power = FhirDecimalBuilder.empty();
          return;
        }
      case 'backCurve':
        {
          backCurve = FhirDecimalBuilder.empty();
          return;
        }
      case 'diameter':
        {
          diameter = FhirDecimalBuilder.empty();
          return;
        }
      case 'duration':
        {
          duration = QuantityBuilder.empty();
          return;
        }
      case 'color':
        {
          color = FhirStringBuilder.empty();
          return;
        }
      case 'brand':
        {
          brand = FhirStringBuilder.empty();
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool product = false,
    bool eye = false,
    bool sphere = false,
    bool cylinder = false,
    bool axis = false,
    bool prism = false,
    bool add = false,
    bool power = false,
    bool backCurve = false,
    bool diameter = false,
    bool duration = false,
    bool color = false,
    bool brand = false,
    bool note = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (product) this.product = null;
    if (eye) this.eye = null;
    if (sphere) this.sphere = null;
    if (cylinder) this.cylinder = null;
    if (axis) this.axis = null;
    if (prism) this.prism = null;
    if (add) this.add = null;
    if (power) this.power = null;
    if (backCurve) this.backCurve = null;
    if (diameter) this.diameter = null;
    if (duration) this.duration = null;
    if (color) this.color = null;
    if (brand) this.brand = null;
    if (note) this.note = null;
  }

  @override
  VisionPrescriptionLensSpecificationBuilder clone() =>
      throw UnimplementedError();
  @override
  VisionPrescriptionLensSpecificationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? product,
    VisionEyesBuilder? eye,
    FhirDecimalBuilder? sphere,
    FhirDecimalBuilder? cylinder,
    FhirIntegerBuilder? axis,
    List<VisionPrescriptionPrismBuilder>? prism,
    FhirDecimalBuilder? add,
    FhirDecimalBuilder? power,
    FhirDecimalBuilder? backCurve,
    FhirDecimalBuilder? diameter,
    QuantityBuilder? duration,
    FhirStringBuilder? color,
    FhirStringBuilder? brand,
    List<AnnotationBuilder>? note,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = VisionPrescriptionLensSpecificationBuilder(
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

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! VisionPrescriptionLensSpecificationBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      product,
      o.product,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      eye,
      o.eye,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sphere,
      o.sphere,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      cylinder,
      o.cylinder,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      axis,
      o.axis,
    )) {
      return false;
    }
    if (!listEquals<VisionPrescriptionPrismBuilder>(
      prism,
      o.prism,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      add,
      o.add,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      power,
      o.power,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      backCurve,
      o.backCurve,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      diameter,
      o.diameter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      duration,
      o.duration,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      color,
      o.color,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      brand,
      o.brand,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    return true;
  }
}

/// [VisionPrescriptionPrismBuilder]
/// Allows for adjustment on two axis.
class VisionPrescriptionPrismBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [VisionPrescriptionPrismBuilder]

  VisionPrescriptionPrismBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.amount,
    this.base,
    super.disallowExtensions,
  }) : super(
          objectPath: 'VisionPrescription.lensSpecification.prism',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory VisionPrescriptionPrismBuilder.empty() =>
      VisionPrescriptionPrismBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VisionPrescriptionPrismBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'VisionPrescription.lensSpecification.prism';
    return VisionPrescriptionPrismBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      amount: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'amount',
        FhirDecimalBuilder.fromJson,
        '$objectPath.amount',
      ),
      base: JsonParser.parsePrimitive<VisionBaseBuilder>(
        json,
        'base',
        VisionBaseBuilder.fromJson,
        '$objectPath.base',
      ),
    );
  }

  /// Deserialize [VisionPrescriptionPrismBuilder]
  /// from a [String] or [YamlMap] object
  factory VisionPrescriptionPrismBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return VisionPrescriptionPrismBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return VisionPrescriptionPrismBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'VisionPrescriptionPrismBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [VisionPrescriptionPrismBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory VisionPrescriptionPrismBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return VisionPrescriptionPrismBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'VisionPrescriptionPrism';

  /// [amount]
  /// Amount of prism to compensate for eye alignment in fractional units.
  FhirDecimalBuilder? amount;

  /// [base]
  /// The relative base, or reference lens edge, for the prism.
  VisionBaseBuilder? base;

  /// Converts a VisionPrescriptionPrismBuilder to [VisionPrescriptionPrism]
  VisionPrescriptionPrism build() => VisionPrescriptionPrism.fromJson(toJson());

  /// Converts a [VisionPrescriptionPrismBuilder] to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (amount != null) {
          fields.add(amount!);
        }
      case 'base':
        if (base != null) {
          fields.add(base!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'amount':
        {
          if (child is FhirDecimalBuilder) {
            amount = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'base':
        {
          if (child is VisionBaseBuilder) {
            base = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'amount':
        return ['FhirDecimalBuilder'];
      case 'base':
        return ['FhirCodeEnumBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [VisionPrescriptionPrismBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'amount':
        {
          amount = FhirDecimalBuilder.empty();
          return;
        }
      case 'base':
        {
          base = VisionBaseBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool amount = false,
    bool base = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (amount) this.amount = null;
    if (base) this.base = null;
  }

  @override
  VisionPrescriptionPrismBuilder clone() => throw UnimplementedError();
  @override
  VisionPrescriptionPrismBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirDecimalBuilder? amount,
    VisionBaseBuilder? base,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = VisionPrescriptionPrismBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      amount: amount ?? this.amount,
      base: base ?? this.base,
    );

    newResult.objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! VisionPrescriptionPrismBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amount,
      o.amount,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      base,
      o.base,
    )) {
      return false;
    }
    return true;
  }
}
