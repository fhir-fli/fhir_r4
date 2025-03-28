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
          objectPath: 'VisionPrescription',
          resourceType: R4ResourceType.VisionPrescription,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory VisionPrescription.empty() => VisionPrescription(
        status: FinancialResourceStatusCodes.values.first,
        created: FhirDateTime.empty(),
        patient: Reference.empty(),
        dateWritten: FhirDateTime.empty(),
        prescriber: Reference.empty(),
        lensSpecification: <VisionPrescriptionLensSpecification>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VisionPrescription.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'VisionPrescription';
    return VisionPrescription(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<FinancialResourceStatusCodes>(
        json,
        'status',
        FinancialResourceStatusCodes.fromJson,
        '$objectPath.status',
      )!,
      created: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'created',
        FhirDateTime.fromJson,
        '$objectPath.created',
      )!,
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
        '$objectPath.patient',
      )!,
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
        '$objectPath.encounter',
      ),
      dateWritten: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'dateWritten',
        FhirDateTime.fromJson,
        '$objectPath.dateWritten',
      )!,
      prescriber: JsonParser.parseObject<Reference>(
        json,
        'prescriber',
        Reference.fromJson,
        '$objectPath.prescriber',
      )!,
      lensSpecification: (json['lensSpecification'] as List<dynamic>)
          .map<VisionPrescriptionLensSpecification>(
            (v) => VisionPrescriptionLensSpecification.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.lensSpecification',
              },
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            // Add all elements from passed list
            final newList = [...?contained, ...child];
            return copyWith(contained: newList);
          } else if (child is Resource) {
            // Add single element to existing list or create new list
            final newList = [...?contained, child];
            return copyWith(contained: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            // Add all elements from passed list
            final newList = [...?identifier, ...child];
            return copyWith(identifier: newList);
          } else if (child is Identifier) {
            // Add single element to existing list or create new list
            final newList = [...?identifier, child];
            return copyWith(identifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is FinancialResourceStatusCodes) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'created':
        {
          if (child is FhirDateTime) {
            return copyWith(created: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patient':
        {
          if (child is Reference) {
            return copyWith(patient: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'encounter':
        {
          if (child is Reference) {
            return copyWith(encounter: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dateWritten':
        {
          if (child is FhirDateTime) {
            return copyWith(dateWritten: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'prescriber':
        {
          if (child is Reference) {
            return copyWith(prescriber: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'lensSpecification':
        {
          if (child is List<VisionPrescriptionLensSpecification>) {
            // Add all elements from passed list
            final newList = [...lensSpecification, ...child];
            return copyWith(lensSpecification: newList);
          } else if (child is VisionPrescriptionLensSpecification) {
            // Add single element to existing list or create new list
            final newList = [...lensSpecification, child];
            return copyWith(lensSpecification: newList);
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
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'identifier':
        return ['Identifier'];
      case 'status':
        return ['FhirCode'];
      case 'created':
        return ['FhirDateTime'];
      case 'patient':
        return ['Reference'];
      case 'encounter':
        return ['Reference'];
      case 'dateWritten':
        return ['FhirDateTime'];
      case 'prescriber':
        return ['Reference'];
      case 'lensSpecification':
        return ['VisionPrescriptionLensSpecification'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [VisionPrescription]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  VisionPrescription createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'meta':
        {
          return copyWith(
            meta: FhirMeta.empty(),
          );
        }
      case 'implicitRules':
        {
          return copyWith(
            implicitRules: FhirUri.empty(),
          );
        }
      case 'language':
        {
          return copyWith(
            language: CommonLanguages.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: Narrative.empty(),
          );
        }
      case 'contained':
        {
          return copyWith(
            contained: <Resource>[],
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: <Identifier>[],
          );
        }
      case 'status':
        {
          return copyWith(
            status: FinancialResourceStatusCodes.empty(),
          );
        }
      case 'created':
        {
          return copyWith(
            created: FhirDateTime.empty(),
          );
        }
      case 'patient':
        {
          return copyWith(
            patient: Reference.empty(),
          );
        }
      case 'encounter':
        {
          return copyWith(
            encounter: Reference.empty(),
          );
        }
      case 'dateWritten':
        {
          return copyWith(
            dateWritten: FhirDateTime.empty(),
          );
        }
      case 'prescriber':
        {
          return copyWith(
            prescriber: Reference.empty(),
          );
        }
      case 'lensSpecification':
        {
          return copyWith(
            lensSpecification: <VisionPrescriptionLensSpecification>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  VisionPrescription clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool encounter = false,
  }) {
    return VisionPrescription(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      status: status,
      created: created,
      patient: patient,
      encounter: encounter ? null : this.encounter,
      dateWritten: dateWritten,
      prescriber: prescriber,
      lensSpecification: lensSpecification,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return VisionPrescription(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      created: created?.copyWith(
            objectPath: '$newObjectPath.created',
          ) ??
          this.created,
      patient: patient?.copyWith(
            objectPath: '$newObjectPath.patient',
          ) ??
          this.patient,
      encounter: encounter?.copyWith(
            objectPath: '$newObjectPath.encounter',
          ) ??
          this.encounter,
      dateWritten: dateWritten?.copyWith(
            objectPath: '$newObjectPath.dateWritten',
          ) ??
          this.dateWritten,
      prescriber: prescriber?.copyWith(
            objectPath: '$newObjectPath.prescriber',
          ) ??
          this.prescriber,
      lensSpecification: lensSpecification
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.lensSpecification',
                ),
              )
              .toList() ??
          this.lensSpecification,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! VisionPrescription) {
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
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
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
    if (!listEquals<VisionPrescriptionLensSpecification>(
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
  }) : super(
          objectPath: 'VisionPrescription.lensSpecification',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory VisionPrescriptionLensSpecification.empty() =>
      VisionPrescriptionLensSpecification(
        product: CodeableConcept.empty(),
        eye: VisionEyes.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VisionPrescriptionLensSpecification.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'VisionPrescription.lensSpecification';
    return VisionPrescriptionLensSpecification(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      product: JsonParser.parseObject<CodeableConcept>(
        json,
        'product',
        CodeableConcept.fromJson,
        '$objectPath.product',
      )!,
      eye: JsonParser.parsePrimitive<VisionEyes>(
        json,
        'eye',
        VisionEyes.fromJson,
        '$objectPath.eye',
      )!,
      sphere: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'sphere',
        FhirDecimal.fromJson,
        '$objectPath.sphere',
      ),
      cylinder: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'cylinder',
        FhirDecimal.fromJson,
        '$objectPath.cylinder',
      ),
      axis: JsonParser.parsePrimitive<FhirInteger>(
        json,
        'axis',
        FhirInteger.fromJson,
        '$objectPath.axis',
      ),
      prism: (json['prism'] as List<dynamic>?)
          ?.map<VisionPrescriptionPrism>(
            (v) => VisionPrescriptionPrism.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.prism',
              },
            ),
          )
          .toList(),
      add: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'add',
        FhirDecimal.fromJson,
        '$objectPath.add',
      ),
      power: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'power',
        FhirDecimal.fromJson,
        '$objectPath.power',
      ),
      backCurve: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'backCurve',
        FhirDecimal.fromJson,
        '$objectPath.backCurve',
      ),
      diameter: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'diameter',
        FhirDecimal.fromJson,
        '$objectPath.diameter',
      ),
      duration: JsonParser.parseObject<Quantity>(
        json,
        'duration',
        Quantity.fromJson,
        '$objectPath.duration',
      ),
      color: JsonParser.parsePrimitive<FhirString>(
        json,
        'color',
        FhirString.fromJson,
        '$objectPath.color',
      ),
      brand: JsonParser.parsePrimitive<FhirString>(
        json,
        'brand',
        FhirString.fromJson,
        '$objectPath.brand',
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'product':
        {
          if (child is CodeableConcept) {
            return copyWith(product: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'eye':
        {
          if (child is VisionEyes) {
            return copyWith(eye: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sphere':
        {
          if (child is FhirDecimal) {
            return copyWith(sphere: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'cylinder':
        {
          if (child is FhirDecimal) {
            return copyWith(cylinder: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'axis':
        {
          if (child is FhirInteger) {
            return copyWith(axis: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'prism':
        {
          if (child is List<VisionPrescriptionPrism>) {
            // Add all elements from passed list
            final newList = [...?prism, ...child];
            return copyWith(prism: newList);
          } else if (child is VisionPrescriptionPrism) {
            // Add single element to existing list or create new list
            final newList = [...?prism, child];
            return copyWith(prism: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'add':
        {
          if (child is FhirDecimal) {
            return copyWith(add: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'power':
        {
          if (child is FhirDecimal) {
            return copyWith(power: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'backCurve':
        {
          if (child is FhirDecimal) {
            return copyWith(backCurve: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'diameter':
        {
          if (child is FhirDecimal) {
            return copyWith(diameter: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'duration':
        {
          if (child is Quantity) {
            return copyWith(duration: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'color':
        {
          if (child is FhirString) {
            return copyWith(color: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'brand':
        {
          if (child is FhirString) {
            return copyWith(brand: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            // Add all elements from passed list
            final newList = [...?note, ...child];
            return copyWith(note: newList);
          } else if (child is Annotation) {
            // Add single element to existing list or create new list
            final newList = [...?note, child];
            return copyWith(note: newList);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'product':
        return ['CodeableConcept'];
      case 'eye':
        return ['FhirCode'];
      case 'sphere':
        return ['FhirDecimal'];
      case 'cylinder':
        return ['FhirDecimal'];
      case 'axis':
        return ['FhirInteger'];
      case 'prism':
        return ['VisionPrescriptionPrism'];
      case 'add':
        return ['FhirDecimal'];
      case 'power':
        return ['FhirDecimal'];
      case 'backCurve':
        return ['FhirDecimal'];
      case 'diameter':
        return ['FhirDecimal'];
      case 'duration':
        return ['Quantity'];
      case 'color':
        return ['FhirString'];
      case 'brand':
        return ['FhirString'];
      case 'note':
        return ['Annotation'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [VisionPrescriptionLensSpecification]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  VisionPrescriptionLensSpecification createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'product':
        {
          return copyWith(
            product: CodeableConcept.empty(),
          );
        }
      case 'eye':
        {
          return copyWith(
            eye: VisionEyes.empty(),
          );
        }
      case 'sphere':
        {
          return copyWith(
            sphere: FhirDecimal.empty(),
          );
        }
      case 'cylinder':
        {
          return copyWith(
            cylinder: FhirDecimal.empty(),
          );
        }
      case 'axis':
        {
          return copyWith(
            axis: FhirInteger.empty(),
          );
        }
      case 'prism':
        {
          return copyWith(
            prism: <VisionPrescriptionPrism>[],
          );
        }
      case 'add':
        {
          return copyWith(
            add: FhirDecimal.empty(),
          );
        }
      case 'power':
        {
          return copyWith(
            power: FhirDecimal.empty(),
          );
        }
      case 'backCurve':
        {
          return copyWith(
            backCurve: FhirDecimal.empty(),
          );
        }
      case 'diameter':
        {
          return copyWith(
            diameter: FhirDecimal.empty(),
          );
        }
      case 'duration':
        {
          return copyWith(
            duration: Quantity.empty(),
          );
        }
      case 'color':
        {
          return copyWith(
            color: FhirString.empty(),
          );
        }
      case 'brand':
        {
          return copyWith(
            brand: FhirString.empty(),
          );
        }
      case 'note':
        {
          return copyWith(
            note: <Annotation>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  VisionPrescriptionLensSpecification clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
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
    return VisionPrescriptionLensSpecification(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      product: product,
      eye: eye,
      sphere: sphere ? null : this.sphere,
      cylinder: cylinder ? null : this.cylinder,
      axis: axis ? null : this.axis,
      prism: prism ? null : this.prism,
      add: add ? null : this.add,
      power: power ? null : this.power,
      backCurve: backCurve ? null : this.backCurve,
      diameter: diameter ? null : this.diameter,
      duration: duration ? null : this.duration,
      color: color ? null : this.color,
      brand: brand ? null : this.brand,
      note: note ? null : this.note,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return VisionPrescriptionLensSpecification(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      product: product?.copyWith(
            objectPath: '$newObjectPath.product',
          ) ??
          this.product,
      eye: eye?.copyWith(
            objectPath: '$newObjectPath.eye',
          ) ??
          this.eye,
      sphere: sphere?.copyWith(
            objectPath: '$newObjectPath.sphere',
          ) ??
          this.sphere,
      cylinder: cylinder?.copyWith(
            objectPath: '$newObjectPath.cylinder',
          ) ??
          this.cylinder,
      axis: axis?.copyWith(
            objectPath: '$newObjectPath.axis',
          ) ??
          this.axis,
      prism: prism
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.prism',
                ),
              )
              .toList() ??
          this.prism,
      add: add?.copyWith(
            objectPath: '$newObjectPath.add',
          ) ??
          this.add,
      power: power?.copyWith(
            objectPath: '$newObjectPath.power',
          ) ??
          this.power,
      backCurve: backCurve?.copyWith(
            objectPath: '$newObjectPath.backCurve',
          ) ??
          this.backCurve,
      diameter: diameter?.copyWith(
            objectPath: '$newObjectPath.diameter',
          ) ??
          this.diameter,
      duration: duration?.copyWith(
            objectPath: '$newObjectPath.duration',
          ) ??
          this.duration,
      color: color?.copyWith(
            objectPath: '$newObjectPath.color',
          ) ??
          this.color,
      brand: brand?.copyWith(
            objectPath: '$newObjectPath.brand',
          ) ??
          this.brand,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! VisionPrescriptionLensSpecification) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
    if (!listEquals<VisionPrescriptionPrism>(
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
    if (!listEquals<Annotation>(
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
  }) : super(
          objectPath: 'VisionPrescription.lensSpecification.prism',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory VisionPrescriptionPrism.empty() => VisionPrescriptionPrism(
        amount: FhirDecimal.empty(),
        base: VisionBase.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory VisionPrescriptionPrism.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'VisionPrescription.lensSpecification.prism';
    return VisionPrescriptionPrism(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      amount: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'amount',
        FhirDecimal.fromJson,
        '$objectPath.amount',
      )!,
      base: JsonParser.parsePrimitive<VisionBase>(
        json,
        'base',
        VisionBase.fromJson,
        '$objectPath.base',
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'amount':
        {
          if (child is FhirDecimal) {
            return copyWith(amount: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'base':
        {
          if (child is VisionBase) {
            return copyWith(base: child);
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'amount':
        return ['FhirDecimal'];
      case 'base':
        return ['FhirCode'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [VisionPrescriptionPrism]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  VisionPrescriptionPrism createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'amount':
        {
          return copyWith(
            amount: FhirDecimal.empty(),
          );
        }
      case 'base':
        {
          return copyWith(
            base: VisionBase.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  VisionPrescriptionPrism clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
  }) {
    return VisionPrescriptionPrism(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      amount: amount,
      base: base,
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
    VisionBase? base,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return VisionPrescriptionPrism(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      amount: amount?.copyWith(
            objectPath: '$newObjectPath.amount',
          ) ??
          this.amount,
      base: base?.copyWith(
            objectPath: '$newObjectPath.base',
          ) ??
          this.base,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! VisionPrescriptionPrism) {
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
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
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
