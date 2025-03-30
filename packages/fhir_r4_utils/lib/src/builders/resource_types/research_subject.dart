import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        yamlMapToJson,
        yamlToJson,
        R4ResourceType,
        StringExtensionForFHIR,
        ResearchSubject;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [ResearchSubjectBuilder]
/// A physical entity which is the primary unit of operational and/or
/// administrative interest in a study.
class ResearchSubjectBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ResearchSubjectBuilder]

  ResearchSubjectBuilder({
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
    this.period,
    this.study,
    this.individual,
    this.assignedArm,
    this.actualArm,
    this.consent,
  }) : super(
          objectPath: 'ResearchSubject',
          resourceType: R4ResourceType.ResearchSubject,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ResearchSubjectBuilder.empty() => ResearchSubjectBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchSubjectBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ResearchSubject';
    return ResearchSubjectBuilder(
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
      status: JsonParser.parsePrimitive<ResearchSubjectStatusBuilder>(
        json,
        'status',
        ResearchSubjectStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
      study: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'study',
        ReferenceBuilder.fromJson,
        '$objectPath.study',
      ),
      individual: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'individual',
        ReferenceBuilder.fromJson,
        '$objectPath.individual',
      ),
      assignedArm: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'assignedArm',
        FhirStringBuilder.fromJson,
        '$objectPath.assignedArm',
      ),
      actualArm: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'actualArm',
        FhirStringBuilder.fromJson,
        '$objectPath.actualArm',
      ),
      consent: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'consent',
        ReferenceBuilder.fromJson,
        '$objectPath.consent',
      ),
    );
  }

  /// Deserialize [ResearchSubjectBuilder]
  /// from a [String] or [YamlMap] object
  factory ResearchSubjectBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchSubjectBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchSubjectBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchSubjectBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchSubjectBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchSubjectBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ResearchSubjectBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ResearchSubject';

  /// [identifier]
  /// Identifiers assigned to this research subject for a study.
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// The current state of the subject.
  ResearchSubjectStatusBuilder? status;

  /// [period]
  /// The dates the subject began and ended their participation in the study.
  PeriodBuilder? period;

  /// [study]
  /// Reference to the study the subject is participating in.
  ReferenceBuilder? study;

  /// [individual]
  /// The record of the person or animal who is involved in the study.
  ReferenceBuilder? individual;

  /// [assignedArm]
  /// The name of the arm in the study the subject is expected to follow as
  /// part of this study.
  FhirStringBuilder? assignedArm;

  /// [actualArm]
  /// The name of the arm in the study the subject actually followed as part
  /// of this study.
  FhirStringBuilder? actualArm;

  /// [consent]
  /// A record of the patient's informed agreement to participate in the
  /// study.
  ReferenceBuilder? consent;

  /// Converts a ResearchSubjectBuilder to [ResearchSubject]
  ResearchSubject build() => ResearchSubject.fromJson(toJson());

  /// Converts a [ResearchSubjectBuilder] to a [Map<String, dynamic>]
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
    addField('period', period);
    addField('study', study);
    addField('individual', individual);
    addField('assignedArm', assignedArm);
    addField('actualArm', actualArm);
    addField('consent', consent);
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
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'study':
        if (study != null) {
          fields.add(study!);
        }
      case 'individual':
        if (individual != null) {
          fields.add(individual!);
        }
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
          if (child is ResearchSubjectStatusBuilder) {
            status = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'period':
        {
          if (child is PeriodBuilder) {
            period = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'study':
        {
          if (child is ReferenceBuilder) {
            study = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'individual':
        {
          if (child is ReferenceBuilder) {
            individual = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'assignedArm':
        {
          if (child is FhirStringBuilder) {
            assignedArm = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'actualArm':
        {
          if (child is FhirStringBuilder) {
            actualArm = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'consent':
        {
          if (child is ReferenceBuilder) {
            consent = child;
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
      case 'period':
        return ['PeriodBuilder'];
      case 'study':
        return ['ReferenceBuilder'];
      case 'individual':
        return ['ReferenceBuilder'];
      case 'assignedArm':
        return ['FhirStringBuilder'];
      case 'actualArm':
        return ['FhirStringBuilder'];
      case 'consent':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ResearchSubjectBuilder]
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
          status = ResearchSubjectStatusBuilder.empty();
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      case 'study':
        {
          study = ReferenceBuilder.empty();
          return;
        }
      case 'individual':
        {
          individual = ReferenceBuilder.empty();
          return;
        }
      case 'assignedArm':
        {
          assignedArm = FhirStringBuilder.empty();
          return;
        }
      case 'actualArm':
        {
          actualArm = FhirStringBuilder.empty();
          return;
        }
      case 'consent':
        {
          consent = ReferenceBuilder.empty();
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
    bool period = false,
    bool study = false,
    bool individual = false,
    bool assignedArm = false,
    bool actualArm = false,
    bool consent = false,
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
    if (period) this.period = null;
    if (study) this.study = null;
    if (individual) this.individual = null;
    if (assignedArm) this.assignedArm = null;
    if (actualArm) this.actualArm = null;
    if (consent) this.consent = null;
  }

  @override
  ResearchSubjectBuilder clone() => throw UnimplementedError();
  @override
  ResearchSubjectBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    ResearchSubjectStatusBuilder? status,
    PeriodBuilder? period,
    ReferenceBuilder? study,
    ReferenceBuilder? individual,
    FhirStringBuilder? assignedArm,
    FhirStringBuilder? actualArm,
    ReferenceBuilder? consent,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ResearchSubjectBuilder(
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
      period: period ?? this.period,
      study: study ?? this.study,
      individual: individual ?? this.individual,
      assignedArm: assignedArm ?? this.assignedArm,
      actualArm: actualArm ?? this.actualArm,
      consent: consent ?? this.consent,
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
    if (o is! ResearchSubjectBuilder) {
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
