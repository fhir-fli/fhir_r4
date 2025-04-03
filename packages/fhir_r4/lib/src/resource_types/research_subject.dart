import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ResearchSubject]
/// A physical entity which is the primary unit of operational and/or
/// administrative interest in a study.
class ResearchSubject extends DomainResource {
  /// Primary constructor for
  /// [ResearchSubject]

  const ResearchSubject({
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
    this.period,
    required this.study,
    required this.individual,
    this.assignedArm,
    this.actualArm,
    this.consent,
  }) : super(
          objectPath: 'ResearchSubject',
          resourceType: R4ResourceType.ResearchSubject,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ResearchSubject.empty() => ResearchSubject(
        status: ResearchSubjectStatus.values.first,
        study: Reference.empty(),
        individual: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchSubject.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ResearchSubject';
    return ResearchSubject(
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
      status: JsonParser.parsePrimitive<ResearchSubjectStatus>(
        json,
        'status',
        ResearchSubjectStatus.fromJson,
        '$objectPath.status',
      )!,
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
      ),
      study: JsonParser.parseObject<Reference>(
        json,
        'study',
        Reference.fromJson,
        '$objectPath.study',
      )!,
      individual: JsonParser.parseObject<Reference>(
        json,
        'individual',
        Reference.fromJson,
        '$objectPath.individual',
      )!,
      assignedArm: JsonParser.parsePrimitive<FhirString>(
        json,
        'assignedArm',
        FhirString.fromJson,
        '$objectPath.assignedArm',
      ),
      actualArm: JsonParser.parsePrimitive<FhirString>(
        json,
        'actualArm',
        FhirString.fromJson,
        '$objectPath.actualArm',
      ),
      consent: JsonParser.parseObject<Reference>(
        json,
        'consent',
        Reference.fromJson,
        '$objectPath.consent',
      ),
    );
  }

  /// Deserialize [ResearchSubject]
  /// from a [String] or [YamlMap] object
  factory ResearchSubject.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchSubject.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchSubject.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchSubject '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchSubject]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchSubject.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchSubject.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchSubject';

  /// [identifier]
  /// Identifiers assigned to this research subject for a study.
  final List<Identifier>? identifier;

  /// [status]
  /// The current state of the subject.
  final ResearchSubjectStatus status;

  /// [period]
  /// The dates the subject began and ended their participation in the study.
  final Period? period;

  /// [study]
  /// Reference to the study the subject is participating in.
  final Reference study;

  /// [individual]
  /// The record of the person or animal who is involved in the study.
  final Reference individual;

  /// [assignedArm]
  /// The name of the arm in the study the subject is expected to follow as
  /// part of this study.
  final FhirString? assignedArm;

  /// [actualArm]
  /// The name of the arm in the study the subject actually followed as part
  /// of this study.
  final FhirString? actualArm;

  /// [consent]
  /// A record of the patient's informed agreement to participate in the
  /// study.
  final Reference? consent;
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
      'period',
      period,
    );
    addField(
      'study',
      study,
    );
    addField(
      'individual',
      individual,
    );
    addField(
      'assignedArm',
      assignedArm,
    );
    addField(
      'actualArm',
      actualArm,
    );
    addField(
      'consent',
      consent,
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
      'period',
      'study',
      'individual',
      'assignedArm',
      'actualArm',
      'consent',
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
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'study':
        fields.add(study);
      case 'individual':
        fields.add(individual);
      case 'assignedArm':
        if (assignedArm != null) {
          fields.add(assignedArm!);
        }
      case 'actualArm':
        if (actualArm != null) {
          fields.add(actualArm!);
        }
      case 'consent':
        if (consent != null) {
          fields.add(consent!);
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
            final newList = [
              ...?contained,
              child,
            ];
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
            final newList = [
              ...?extension_,
              child,
            ];
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
            final newList = [
              ...?modifierExtension,
              child,
            ];
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
            final newList = [
              ...?identifier,
              child,
            ];
            return copyWith(identifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is ResearchSubjectStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'period':
        {
          if (child is Period) {
            return copyWith(period: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'study':
        {
          if (child is Reference) {
            return copyWith(study: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'individual':
        {
          if (child is Reference) {
            return copyWith(individual: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'assignedArm':
        {
          if (child is FhirString) {
            return copyWith(assignedArm: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'actualArm':
        {
          if (child is FhirString) {
            return copyWith(actualArm: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'consent':
        {
          if (child is Reference) {
            return copyWith(consent: child);
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
      case 'period':
        return ['Period'];
      case 'study':
        return ['Reference'];
      case 'individual':
        return ['Reference'];
      case 'assignedArm':
        return ['FhirString'];
      case 'actualArm':
        return ['FhirString'];
      case 'consent':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ResearchSubject]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ResearchSubject createProperty(
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
            status: ResearchSubjectStatus.empty(),
          );
        }
      case 'period':
        {
          return copyWith(
            period: Period.empty(),
          );
        }
      case 'study':
        {
          return copyWith(
            study: Reference.empty(),
          );
        }
      case 'individual':
        {
          return copyWith(
            individual: Reference.empty(),
          );
        }
      case 'assignedArm':
        {
          return copyWith(
            assignedArm: FhirString.empty(),
          );
        }
      case 'actualArm':
        {
          return copyWith(
            actualArm: FhirString.empty(),
          );
        }
      case 'consent':
        {
          return copyWith(
            consent: Reference.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ResearchSubject clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool period = false,
    bool assignedArm = false,
    bool actualArm = false,
    bool consent = false,
  }) {
    return ResearchSubject(
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
      period: period ? null : this.period,
      study: study,
      individual: individual,
      assignedArm: assignedArm ? null : this.assignedArm,
      actualArm: actualArm ? null : this.actualArm,
      consent: consent ? null : this.consent,
    );
  }

  @override
  ResearchSubject clone() => throw UnimplementedError();
  @override
  ResearchSubject copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    ResearchSubjectStatus? status,
    Period? period,
    Reference? study,
    Reference? individual,
    FhirString? assignedArm,
    FhirString? actualArm,
    Reference? consent,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return ResearchSubject(
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
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
      study: study?.copyWith(
            objectPath: '$newObjectPath.study',
          ) ??
          this.study,
      individual: individual?.copyWith(
            objectPath: '$newObjectPath.individual',
          ) ??
          this.individual,
      assignedArm: assignedArm?.copyWith(
            objectPath: '$newObjectPath.assignedArm',
          ) ??
          this.assignedArm,
      actualArm: actualArm?.copyWith(
            objectPath: '$newObjectPath.actualArm',
          ) ??
          this.actualArm,
      consent: consent?.copyWith(
            objectPath: '$newObjectPath.consent',
          ) ??
          this.consent,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ResearchSubject) {
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
      period,
      o.period,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      study,
      o.study,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      individual,
      o.individual,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      assignedArm,
      o.assignedArm,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      actualArm,
      o.actualArm,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      consent,
      o.consent,
    )) {
      return false;
    }
    return true;
  }
}
