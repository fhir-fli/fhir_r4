import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [DetectedIssue]
/// Indicates an actual or potential clinical issue with or between one or
/// more active or proposed clinical actions for a patient; e.g. Drug-drug
/// interaction, Ineffective treatment frequency, Procedure-condition
/// conflict, etc.
class DetectedIssue extends DomainResource {
  /// Primary constructor for
  /// [DetectedIssue]

  const DetectedIssue({
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
    this.code,
    this.severity,
    this.patient,
    this.identifiedX,
    this.author,
    this.implicated,
    this.evidence,
    this.detail,
    this.reference,
    this.mitigation,
  }) : super(
          objectPath: 'DetectedIssue',
          resourceType: R4ResourceType.DetectedIssue,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory DetectedIssue.empty() => DetectedIssue(
        status: ObservationStatus.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DetectedIssue.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DetectedIssue';
    return DetectedIssue(
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
      status: JsonParser.parsePrimitive<ObservationStatus>(
        json,
        'status',
        ObservationStatus.fromJson,
        '$objectPath.status',
      )!,
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      severity: JsonParser.parsePrimitive<DetectedIssueSeverity>(
        json,
        'severity',
        DetectedIssueSeverity.fromJson,
        '$objectPath.severity',
      ),
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
        '$objectPath.patient',
      ),
      identifiedX: JsonParser.parsePolymorphic<IdentifiedXDetectedIssue>(
        json,
        {
          'identifiedDateTime': FhirDateTime.fromJson,
          'identifiedPeriod': Period.fromJson,
        },
        objectPath,
      ),
      author: JsonParser.parseObject<Reference>(
        json,
        'author',
        Reference.fromJson,
        '$objectPath.author',
      ),
      implicated: (json['implicated'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.implicated',
              },
            ),
          )
          .toList(),
      evidence: (json['evidence'] as List<dynamic>?)
          ?.map<DetectedIssueEvidence>(
            (v) => DetectedIssueEvidence.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.evidence',
              },
            ),
          )
          .toList(),
      detail: JsonParser.parsePrimitive<FhirString>(
        json,
        'detail',
        FhirString.fromJson,
        '$objectPath.detail',
      ),
      reference: JsonParser.parsePrimitive<FhirUri>(
        json,
        'reference',
        FhirUri.fromJson,
        '$objectPath.reference',
      ),
      mitigation: (json['mitigation'] as List<dynamic>?)
          ?.map<DetectedIssueMitigation>(
            (v) => DetectedIssueMitigation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.mitigation',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DetectedIssue]
  /// from a [String] or [YamlMap] object
  factory DetectedIssue.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DetectedIssue.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DetectedIssue.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DetectedIssue '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DetectedIssue]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DetectedIssue.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DetectedIssue.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DetectedIssue';

  /// [identifier]
  /// Business identifier associated with the detected issue record.
  final List<Identifier>? identifier;

  /// [status]
  /// Indicates the status of the detected issue.
  final ObservationStatus status;

  /// [code]
  /// Identifies the general type of issue identified.
  final CodeableConcept? code;

  /// [severity]
  /// Indicates the degree of importance associated with the identified issue
  /// based on the potential impact on the patient.
  final DetectedIssueSeverity? severity;

  /// [patient]
  /// Indicates the patient whose record the detected issue is associated
  /// with.
  final Reference? patient;

  /// [identifiedX]
  /// The date or period when the detected issue was initially identified.
  final IdentifiedXDetectedIssue? identifiedX;

  /// Getter for [identifiedDateTime] as a FhirDateTime
  FhirDateTime? get identifiedDateTime => identifiedX?.isAs<FhirDateTime>();

  /// Getter for [identifiedPeriod] as a Period
  Period? get identifiedPeriod => identifiedX?.isAs<Period>();

  /// [author]
  /// Individual or device responsible for the issue being raised. For
  /// example, a decision support application or a pharmacist conducting a
  /// medication review.
  final Reference? author;

  /// [implicated]
  /// Indicates the resource representing the current activity or proposed
  /// activity that is potentially problematic.
  final List<Reference>? implicated;

  /// [evidence]
  /// Supporting evidence or manifestations that provide the basis for
  /// identifying the detected issue such as a GuidanceResponse or
  /// MeasureReport.
  final List<DetectedIssueEvidence>? evidence;

  /// [detail]
  /// A textual explanation of the detected issue.
  final FhirString? detail;

  /// [reference]
  /// The literature, knowledge-base or similar reference that describes the
  /// propensity for the detected issue identified.
  final FhirUri? reference;

  /// [mitigation]
  /// Indicates an action that has been taken or is committed to reduce or
  /// eliminate the likelihood of the risk identified by the detected issue
  /// from manifesting. Can also reflect an observation of known mitigating
  /// factors that may reduce/eliminate the need for any action.
  final List<DetectedIssueMitigation>? mitigation;
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
    addField('code', code);
    addField('severity', severity);
    addField('patient', patient);
    if (identifiedX != null) {
      final fhirType = identifiedX!.fhirType;
      addField('identified${fhirType.capitalize()}', identifiedX);
    }

    addField('author', author);
    addField('implicated', implicated);
    addField('evidence', evidence);
    addField('detail', detail);
    addField('reference', reference);
    addField('mitigation', mitigation);
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
      'code',
      'severity',
      'patient',
      'identifiedX',
      'author',
      'implicated',
      'evidence',
      'detail',
      'reference',
      'mitigation',
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
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'severity':
        if (severity != null) {
          fields.add(severity!);
        }
      case 'patient':
        if (patient != null) {
          fields.add(patient!);
        }
      case 'identified':
        fields.add(identifiedX!);
      case 'identifiedX':
        fields.add(identifiedX!);
      case 'identifiedDateTime':
        if (identifiedX is FhirDateTime) {
          fields.add(identifiedX!);
        }
      case 'identifiedPeriod':
        if (identifiedX is Period) {
          fields.add(identifiedX!);
        }
      case 'author':
        if (author != null) {
          fields.add(author!);
        }
      case 'implicated':
        if (implicated != null) {
          fields.addAll(implicated!);
        }
      case 'evidence':
        if (evidence != null) {
          fields.addAll(evidence!);
        }
      case 'detail':
        if (detail != null) {
          fields.add(detail!);
        }
      case 'reference':
        if (reference != null) {
          fields.add(reference!);
        }
      case 'mitigation':
        if (mitigation != null) {
          fields.addAll(mitigation!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            return copyWith(contained: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'status':
        {
          if (child is ObservationStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'severity':
        {
          if (child is DetectedIssueSeverity) {
            return copyWith(severity: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'patient':
        {
          if (child is Reference) {
            return copyWith(patient: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifiedX':
        {
          if (child is IdentifiedXDetectedIssue) {
            // child is e.g. SubjectX union
            return copyWith(identifiedX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifiedFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(identifiedX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifiedPeriod':
        {
          if (child is Period) {
            return copyWith(identifiedX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'author':
        {
          if (child is Reference) {
            return copyWith(author: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'implicated':
        {
          if (child is List<Reference>) {
            return copyWith(implicated: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'evidence':
        {
          if (child is List<DetectedIssueEvidence>) {
            return copyWith(evidence: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'detail':
        {
          if (child is FhirString) {
            return copyWith(detail: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'reference':
        {
          if (child is FhirUri) {
            return copyWith(reference: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'mitigation':
        {
          if (child is List<DetectedIssueMitigation>) {
            return copyWith(mitigation: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
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
      case 'code':
        return ['CodeableConcept'];
      case 'severity':
        return ['FhirCode'];
      case 'patient':
        return ['Reference'];
      case 'identified':
      case 'identifiedX':
        return ['FhirDateTime', 'Period'];
      case 'identifiedDateTime':
        return ['FhirDateTime'];
      case 'identifiedPeriod':
        return ['Period'];
      case 'author':
        return ['Reference'];
      case 'implicated':
        return ['Reference'];
      case 'evidence':
        return ['DetectedIssueEvidence'];
      case 'detail':
        return ['FhirString'];
      case 'reference':
        return ['FhirUri'];
      case 'mitigation':
        return ['DetectedIssueMitigation'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DetectedIssue]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  DetectedIssue createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'meta':
        {
          return copyWith(meta: FhirMeta.empty());
        }
      case 'implicitRules':
        {
          return copyWith(implicitRules: FhirUri.empty());
        }
      case 'language':
        {
          return copyWith(language: CommonLanguages.empty());
        }
      case 'text':
        {
          return copyWith(text: Narrative.empty());
        }
      case 'contained':
        {
          return copyWith(contained: <Resource>[]);
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'identifier':
        {
          return copyWith(identifier: <Identifier>[]);
        }
      case 'status':
        {
          return copyWith(status: ObservationStatus.empty());
        }
      case 'code':
        {
          return copyWith(code: CodeableConcept.empty());
        }
      case 'severity':
        {
          return copyWith(severity: DetectedIssueSeverity.empty());
        }
      case 'patient':
        {
          return copyWith(patient: Reference.empty());
        }
      case 'identified':
      case 'identifiedX':
      case 'identifiedDateTime':
        {
          return copyWith(identifiedX: FhirDateTime.empty());
        }
      case 'identifiedPeriod':
        {
          return copyWith(identifiedX: Period.empty());
        }
      case 'author':
        {
          return copyWith(author: Reference.empty());
        }
      case 'implicated':
        {
          return copyWith(implicated: <Reference>[]);
        }
      case 'evidence':
        {
          return copyWith(evidence: <DetectedIssueEvidence>[]);
        }
      case 'detail':
        {
          return copyWith(detail: FhirString.empty());
        }
      case 'reference':
        {
          return copyWith(reference: FhirUri.empty());
        }
      case 'mitigation':
        {
          return copyWith(mitigation: <DetectedIssueMitigation>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  DetectedIssue clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool code = false,
    bool severity = false,
    bool patient = false,
    bool identified = false,
    bool author = false,
    bool implicated = false,
    bool evidence = false,
    bool detail = false,
    bool reference = false,
    bool mitigation = false,
  }) {
    return DetectedIssue(
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
      code: code ? null : this.code,
      severity: severity ? null : this.severity,
      patient: patient ? null : this.patient,
      identifiedX: identified ? null : identifiedX,
      author: author ? null : this.author,
      implicated: implicated ? null : this.implicated,
      evidence: evidence ? null : this.evidence,
      detail: detail ? null : this.detail,
      reference: reference ? null : this.reference,
      mitigation: mitigation ? null : this.mitigation,
    );
  }

  @override
  DetectedIssue clone() => throw UnimplementedError();
  @override
  DetectedIssue copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    ObservationStatus? status,
    CodeableConcept? code,
    DetectedIssueSeverity? severity,
    Reference? patient,
    IdentifiedXDetectedIssue? identifiedX,
    Reference? author,
    List<Reference>? implicated,
    List<DetectedIssueEvidence>? evidence,
    FhirString? detail,
    FhirUri? reference,
    List<DetectedIssueMitigation>? mitigation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return DetectedIssue(
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
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      severity: severity?.copyWith(
            objectPath: '$newObjectPath.severity',
          ) ??
          this.severity,
      patient: patient?.copyWith(
            objectPath: '$newObjectPath.patient',
          ) ??
          this.patient,
      identifiedX: identifiedX?.copyWith(
            objectPath: '$newObjectPath.identifiedX',
          ) as IdentifiedXDetectedIssue? ??
          this.identifiedX,
      author: author?.copyWith(
            objectPath: '$newObjectPath.author',
          ) ??
          this.author,
      implicated: implicated
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.implicated',
                ),
              )
              .toList() ??
          this.implicated,
      evidence: evidence
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.evidence',
                ),
              )
              .toList() ??
          this.evidence,
      detail: detail?.copyWith(
            objectPath: '$newObjectPath.detail',
          ) ??
          this.detail,
      reference: reference?.copyWith(
            objectPath: '$newObjectPath.reference',
          ) ??
          this.reference,
      mitigation: mitigation
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.mitigation',
                ),
              )
              .toList() ??
          this.mitigation,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DetectedIssue) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
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
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!equalsDeepWithNull(severity, o.severity)) {
      return false;
    }
    if (!equalsDeepWithNull(patient, o.patient)) {
      return false;
    }
    if (!equalsDeepWithNull(identifiedX, o.identifiedX)) {
      return false;
    }
    if (!equalsDeepWithNull(author, o.author)) {
      return false;
    }
    if (!listEquals<Reference>(
      implicated,
      o.implicated,
    )) {
      return false;
    }
    if (!listEquals<DetectedIssueEvidence>(
      evidence,
      o.evidence,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(detail, o.detail)) {
      return false;
    }
    if (!equalsDeepWithNull(reference, o.reference)) {
      return false;
    }
    if (!listEquals<DetectedIssueMitigation>(
      mitigation,
      o.mitigation,
    )) {
      return false;
    }
    return true;
  }
}

/// [DetectedIssueEvidence]
/// Supporting evidence or manifestations that provide the basis for
/// identifying the detected issue such as a GuidanceResponse or
/// MeasureReport.
class DetectedIssueEvidence extends BackboneElement {
  /// Primary constructor for
  /// [DetectedIssueEvidence]

  const DetectedIssueEvidence({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.detail,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DetectedIssue.evidence',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory DetectedIssueEvidence.empty() => const DetectedIssueEvidence();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DetectedIssueEvidence.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DetectedIssue.evidence';
    return DetectedIssueEvidence(
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
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.code',
              },
            ),
          )
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.detail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DetectedIssueEvidence]
  /// from a [String] or [YamlMap] object
  factory DetectedIssueEvidence.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DetectedIssueEvidence.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DetectedIssueEvidence.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DetectedIssueEvidence '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DetectedIssueEvidence]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DetectedIssueEvidence.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DetectedIssueEvidence.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DetectedIssueEvidence';

  /// [code]
  /// A manifestation that led to the recording of this detected issue.
  final List<CodeableConcept>? code;

  /// [detail]
  /// Links to resources that constitute evidence for the detected issue such
  /// as a GuidanceResponse or MeasureReport.
  final List<Reference>? detail;
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
    addField('code', code);
    addField('detail', detail);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'detail',
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
      case 'code':
        if (code != null) {
          fields.addAll(code!);
        }
      case 'detail':
        if (detail != null) {
          fields.addAll(detail!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'code':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'detail':
        {
          if (child is List<Reference>) {
            return copyWith(detail: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
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
      case 'code':
        return ['CodeableConcept'];
      case 'detail':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DetectedIssueEvidence]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  DetectedIssueEvidence createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'code':
        {
          return copyWith(code: <CodeableConcept>[]);
        }
      case 'detail':
        {
          return copyWith(detail: <Reference>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  DetectedIssueEvidence clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool code = false,
    bool detail = false,
  }) {
    return DetectedIssueEvidence(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      code: code ? null : this.code,
      detail: detail ? null : this.detail,
    );
  }

  @override
  DetectedIssueEvidence clone() => throw UnimplementedError();
  @override
  DetectedIssueEvidence copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? code,
    List<Reference>? detail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return DetectedIssueEvidence(
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
      code: code
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.code',
                ),
              )
              .toList() ??
          this.code,
      detail: detail
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.detail',
                ),
              )
              .toList() ??
          this.detail,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DetectedIssueEvidence) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!listEquals<CodeableConcept>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      detail,
      o.detail,
    )) {
      return false;
    }
    return true;
  }
}

/// [DetectedIssueMitigation]
/// Indicates an action that has been taken or is committed to reduce or
/// eliminate the likelihood of the risk identified by the detected issue
/// from manifesting. Can also reflect an observation of known mitigating
/// factors that may reduce/eliminate the need for any action.
class DetectedIssueMitigation extends BackboneElement {
  /// Primary constructor for
  /// [DetectedIssueMitigation]

  const DetectedIssueMitigation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.action,
    this.date,
    this.author,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DetectedIssue.mitigation',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory DetectedIssueMitigation.empty() => DetectedIssueMitigation(
        action: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DetectedIssueMitigation.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DetectedIssue.mitigation';
    return DetectedIssueMitigation(
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
      action: JsonParser.parseObject<CodeableConcept>(
        json,
        'action',
        CodeableConcept.fromJson,
        '$objectPath.action',
      )!,
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
        '$objectPath.date',
      ),
      author: JsonParser.parseObject<Reference>(
        json,
        'author',
        Reference.fromJson,
        '$objectPath.author',
      ),
    );
  }

  /// Deserialize [DetectedIssueMitigation]
  /// from a [String] or [YamlMap] object
  factory DetectedIssueMitigation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DetectedIssueMitigation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DetectedIssueMitigation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DetectedIssueMitigation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DetectedIssueMitigation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DetectedIssueMitigation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DetectedIssueMitigation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DetectedIssueMitigation';

  /// [action]
  /// Describes the action that was taken or the observation that was made
  /// that reduces/eliminates the risk associated with the identified issue.
  final CodeableConcept action;

  /// [date]
  /// Indicates when the mitigating action was documented.
  final FhirDateTime? date;

  /// [author]
  /// Identifies the practitioner who determined the mitigation and takes
  /// responsibility for the mitigation step occurring.
  final Reference? author;
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
    addField('action', action);
    addField('date', date);
    addField('author', author);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'action',
      'date',
      'author',
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
      case 'action':
        fields.add(action);
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'author':
        if (author != null) {
          fields.add(author!);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'action':
        {
          if (child is CodeableConcept) {
            return copyWith(action: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'date':
        {
          if (child is FhirDateTime) {
            return copyWith(date: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'author':
        {
          if (child is Reference) {
            return copyWith(author: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
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
      case 'action':
        return ['CodeableConcept'];
      case 'date':
        return ['FhirDateTime'];
      case 'author':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DetectedIssueMitigation]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  DetectedIssueMitigation createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'action':
        {
          return copyWith(action: CodeableConcept.empty());
        }
      case 'date':
        {
          return copyWith(date: FhirDateTime.empty());
        }
      case 'author':
        {
          return copyWith(author: Reference.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  DetectedIssueMitigation clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool date = false,
    bool author = false,
  }) {
    return DetectedIssueMitigation(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      action: action,
      date: date ? null : this.date,
      author: author ? null : this.author,
    );
  }

  @override
  DetectedIssueMitigation clone() => throw UnimplementedError();
  @override
  DetectedIssueMitigation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? action,
    FhirDateTime? date,
    Reference? author,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return DetectedIssueMitigation(
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
      action: action?.copyWith(
            objectPath: '$newObjectPath.action',
          ) ??
          this.action,
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
      author: author?.copyWith(
            objectPath: '$newObjectPath.author',
          ) ??
          this.author,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DetectedIssueMitigation) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(action, o.action)) {
      return false;
    }
    if (!equalsDeepWithNull(date, o.date)) {
      return false;
    }
    if (!equalsDeepWithNull(author, o.author)) {
      return false;
    }
    return true;
  }
}
