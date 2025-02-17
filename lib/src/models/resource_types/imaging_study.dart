import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ImagingStudy]
/// Representation of the content produced in a DICOM imaging study. A
/// study comprises a set of series, each of which includes a set of
/// Service-Object Pair Instances (SOP Instances - images or other data)
/// acquired or produced in a common context. A series is of only one
/// modality (e.g. X-ray, CT, MR, ultrasound), but a study may have
/// multiple series of different modalities.
class ImagingStudy extends DomainResource {
  /// Primary constructor for
  /// [ImagingStudy]

  const ImagingStudy({
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
    this.modality,
    required this.subject,
    this.encounter,
    this.started,
    this.basedOn,
    this.referrer,
    this.interpreter,
    this.endpoint,
    this.numberOfSeries,
    this.numberOfInstances,
    this.procedureReference,
    this.procedureCode,
    this.location,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.description,
    this.series,
  }) : super(
          objectPath: 'ImagingStudy',
          resourceType: R4ResourceType.ImagingStudy,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ImagingStudy.empty() => ImagingStudy(
        status: ImagingStudyStatus.values.first,
        subject: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImagingStudy.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImagingStudy';
    return ImagingStudy(
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
      status: JsonParser.parsePrimitive<ImagingStudyStatus>(
        json,
        'status',
        ImagingStudyStatus.fromJson,
        '$objectPath.status',
      )!,
      modality: (json['modality'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modality',
              },
            ),
          )
          .toList(),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
        '$objectPath.subject',
      )!,
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
        '$objectPath.encounter',
      ),
      started: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'started',
        FhirDateTime.fromJson,
        '$objectPath.started',
      ),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.basedOn',
              },
            ),
          )
          .toList(),
      referrer: JsonParser.parseObject<Reference>(
        json,
        'referrer',
        Reference.fromJson,
        '$objectPath.referrer',
      ),
      interpreter: (json['interpreter'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.interpreter',
              },
            ),
          )
          .toList(),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.endpoint',
              },
            ),
          )
          .toList(),
      numberOfSeries: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'numberOfSeries',
        FhirUnsignedInt.fromJson,
        '$objectPath.numberOfSeries',
      ),
      numberOfInstances: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'numberOfInstances',
        FhirUnsignedInt.fromJson,
        '$objectPath.numberOfInstances',
      ),
      procedureReference: JsonParser.parseObject<Reference>(
        json,
        'procedureReference',
        Reference.fromJson,
        '$objectPath.procedureReference',
      ),
      procedureCode: (json['procedureCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.procedureCode',
              },
            ),
          )
          .toList(),
      location: JsonParser.parseObject<Reference>(
        json,
        'location',
        Reference.fromJson,
        '$objectPath.location',
      ),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonCode',
              },
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonReference',
              },
            ),
          )
          .toList(),
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
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      series: (json['series'] as List<dynamic>?)
          ?.map<ImagingStudySeries>(
            (v) => ImagingStudySeries.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.series',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ImagingStudy]
  /// from a [String] or [YamlMap] object
  factory ImagingStudy.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImagingStudy.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImagingStudy.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImagingStudy '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImagingStudy]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImagingStudy.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImagingStudy.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImagingStudy';

  /// [identifier]
  /// Identifiers for the ImagingStudy such as DICOM Study Instance UID, and
  /// Accession Number.
  final List<Identifier>? identifier;

  /// [status]
  /// The current state of the ImagingStudy.
  final ImagingStudyStatus status;

  /// [modality]
  /// A list of all the series.modality values that are actual acquisition
  /// modalities, i.e. those in the DICOM Context Group 29 (value set OID
  /// 1.2.840.10008.6.1.19).
  final List<Coding>? modality;

  /// [subject]
  /// The subject, typically a patient, of the imaging study.
  final Reference subject;

  /// [encounter]
  /// The healthcare event (e.g. a patient and healthcare provider
  /// interaction) during which this ImagingStudy is made.
  final Reference? encounter;

  /// [started]
  /// Date and time the study started.
  final FhirDateTime? started;

  /// [basedOn]
  /// A list of the diagnostic requests that resulted in this imaging study
  /// being performed.
  final List<Reference>? basedOn;

  /// [referrer]
  /// The requesting/referring physician.
  final Reference? referrer;

  /// [interpreter]
  /// Who read the study and interpreted the images or other content.
  final List<Reference>? interpreter;

  /// [endpoint]
  /// The network service providing access (e.g., query, view, or retrieval)
  /// for the study. See implementation notes for information about using
  /// DICOM endpoints. A study-level endpoint applies to each series in the
  /// study, unless overridden by a series-level endpoint with the same
  /// Endpoint.connectionType.
  final List<Reference>? endpoint;

  /// [numberOfSeries]
  /// Number of Series in the Study. This value given may be larger than the
  /// number of series elements this Resource contains due to resource
  /// availability, security, or other factors. This element should be
  /// present if any series elements are present.
  final FhirUnsignedInt? numberOfSeries;

  /// [numberOfInstances]
  /// Number of SOP Instances in Study. This value given may be larger than
  /// the number of instance elements this resource contains due to resource
  /// availability, security, or other factors. This element should be
  /// present if any instance elements are present.
  final FhirUnsignedInt? numberOfInstances;

  /// [procedureReference]
  /// The procedure which this ImagingStudy was part of.
  final Reference? procedureReference;

  /// [procedureCode]
  /// The code for the performed procedure type.
  final List<CodeableConcept>? procedureCode;

  /// [location]
  /// The principal physical location where the ImagingStudy was performed.
  final Reference? location;

  /// [reasonCode]
  /// Description of clinical condition indicating why the ImagingStudy was
  /// requested.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Indicates another resource whose existence justifies this Study.
  final List<Reference>? reasonReference;

  /// [note]
  /// Per the recommended DICOM mapping, this element is derived from the
  /// Study Description attribute (0008,1030). Observations or findings about
  /// the imaging study should be recorded in another resource, e.g.
  /// Observation, and not in this element.
  final List<Annotation>? note;

  /// [description]
  /// The Imaging Manager description of the study. Institution-generated
  /// description or classification of the Study (component) performed.
  final FhirString? description;

  /// [series]
  /// Each study has one or more series of images or other content.
  final List<ImagingStudySeries>? series;
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
    addField('modality', modality);
    addField('subject', subject);
    addField('encounter', encounter);
    addField('started', started);
    addField('basedOn', basedOn);
    addField('referrer', referrer);
    addField('interpreter', interpreter);
    addField('endpoint', endpoint);
    addField('numberOfSeries', numberOfSeries);
    addField('numberOfInstances', numberOfInstances);
    addField('procedureReference', procedureReference);
    addField('procedureCode', procedureCode);
    addField('location', location);
    addField('reasonCode', reasonCode);
    addField('reasonReference', reasonReference);
    addField('note', note);
    addField('description', description);
    addField('series', series);
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
      'modality',
      'subject',
      'encounter',
      'started',
      'basedOn',
      'referrer',
      'interpreter',
      'endpoint',
      'numberOfSeries',
      'numberOfInstances',
      'procedureReference',
      'procedureCode',
      'location',
      'reasonCode',
      'reasonReference',
      'note',
      'description',
      'series',
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
      case 'modality':
        if (modality != null) {
          fields.addAll(modality!);
        }
      case 'subject':
        fields.add(subject);
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'started':
        if (started != null) {
          fields.add(started!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'referrer':
        if (referrer != null) {
          fields.add(referrer!);
        }
      case 'interpreter':
        if (interpreter != null) {
          fields.addAll(interpreter!);
        }
      case 'endpoint':
        if (endpoint != null) {
          fields.addAll(endpoint!);
        }
      case 'numberOfSeries':
        if (numberOfSeries != null) {
          fields.add(numberOfSeries!);
        }
      case 'numberOfInstances':
        if (numberOfInstances != null) {
          fields.add(numberOfInstances!);
        }
      case 'procedureReference':
        if (procedureReference != null) {
          fields.add(procedureReference!);
        }
      case 'procedureCode':
        if (procedureCode != null) {
          fields.addAll(procedureCode!);
        }
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'reasonCode':
        if (reasonCode != null) {
          fields.addAll(reasonCode!);
        }
      case 'reasonReference':
        if (reasonReference != null) {
          fields.addAll(reasonReference!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'series':
        if (series != null) {
          fields.addAll(series!);
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
  ImagingStudy clone() => throw UnimplementedError();
  @override
  ImagingStudy copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    ImagingStudyStatus? status,
    List<Coding>? modality,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? started,
    List<Reference>? basedOn,
    Reference? referrer,
    List<Reference>? interpreter,
    List<Reference>? endpoint,
    FhirUnsignedInt? numberOfSeries,
    FhirUnsignedInt? numberOfInstances,
    Reference? procedureReference,
    List<CodeableConcept>? procedureCode,
    Reference? location,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Annotation>? note,
    FhirString? description,
    List<ImagingStudySeries>? series,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return ImagingStudy(
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
      modality: modality
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modality',
                ),
              )
              .toList() ??
          this.modality,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
      encounter: encounter?.copyWith(
            objectPath: '$newObjectPath.encounter',
          ) ??
          this.encounter,
      started: started?.copyWith(
            objectPath: '$newObjectPath.started',
          ) ??
          this.started,
      basedOn: basedOn
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.basedOn',
                ),
              )
              .toList() ??
          this.basedOn,
      referrer: referrer?.copyWith(
            objectPath: '$newObjectPath.referrer',
          ) ??
          this.referrer,
      interpreter: interpreter
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.interpreter',
                ),
              )
              .toList() ??
          this.interpreter,
      endpoint: endpoint
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.endpoint',
                ),
              )
              .toList() ??
          this.endpoint,
      numberOfSeries: numberOfSeries?.copyWith(
            objectPath: '$newObjectPath.numberOfSeries',
          ) ??
          this.numberOfSeries,
      numberOfInstances: numberOfInstances?.copyWith(
            objectPath: '$newObjectPath.numberOfInstances',
          ) ??
          this.numberOfInstances,
      procedureReference: procedureReference?.copyWith(
            objectPath: '$newObjectPath.procedureReference',
          ) ??
          this.procedureReference,
      procedureCode: procedureCode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.procedureCode',
                ),
              )
              .toList() ??
          this.procedureCode,
      location: location?.copyWith(
            objectPath: '$newObjectPath.location',
          ) ??
          this.location,
      reasonCode: reasonCode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reasonCode',
                ),
              )
              .toList() ??
          this.reasonCode,
      reasonReference: reasonReference
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reasonReference',
                ),
              )
              .toList() ??
          this.reasonReference,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      series: series
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.series',
                ),
              )
              .toList() ??
          this.series,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImagingStudy) {
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
    if (!listEquals<Coding>(
      modality,
      o.modality,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(subject, o.subject)) {
      return false;
    }
    if (!equalsDeepWithNull(encounter, o.encounter)) {
      return false;
    }
    if (!equalsDeepWithNull(started, o.started)) {
      return false;
    }
    if (!listEquals<Reference>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(referrer, o.referrer)) {
      return false;
    }
    if (!listEquals<Reference>(
      interpreter,
      o.interpreter,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      endpoint,
      o.endpoint,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(numberOfSeries, o.numberOfSeries)) {
      return false;
    }
    if (!equalsDeepWithNull(numberOfInstances, o.numberOfInstances)) {
      return false;
    }
    if (!equalsDeepWithNull(procedureReference, o.procedureReference)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      procedureCode,
      o.procedureCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(location, o.location)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      reasonCode,
      o.reasonCode,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      reasonReference,
      o.reasonReference,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!listEquals<ImagingStudySeries>(
      series,
      o.series,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImagingStudySeries]
/// Each study has one or more series of images or other content.
class ImagingStudySeries extends BackboneElement {
  /// Primary constructor for
  /// [ImagingStudySeries]

  const ImagingStudySeries({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.uid,
    this.number,
    required this.modality,
    this.description,
    this.numberOfInstances,
    this.endpoint,
    this.bodySite,
    this.laterality,
    this.specimen,
    this.started,
    this.performer,
    this.instance,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ImagingStudy.series',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ImagingStudySeries.empty() => ImagingStudySeries(
        uid: FhirId.empty(),
        modality: Coding.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImagingStudySeries.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImagingStudy.series';
    return ImagingStudySeries(
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
      uid: JsonParser.parsePrimitive<FhirId>(
        json,
        'uid',
        FhirId.fromJson,
        '$objectPath.uid',
      )!,
      number: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'number',
        FhirUnsignedInt.fromJson,
        '$objectPath.number',
      ),
      modality: JsonParser.parseObject<Coding>(
        json,
        'modality',
        Coding.fromJson,
        '$objectPath.modality',
      )!,
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      numberOfInstances: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'numberOfInstances',
        FhirUnsignedInt.fromJson,
        '$objectPath.numberOfInstances',
      ),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.endpoint',
              },
            ),
          )
          .toList(),
      bodySite: JsonParser.parseObject<Coding>(
        json,
        'bodySite',
        Coding.fromJson,
        '$objectPath.bodySite',
      ),
      laterality: JsonParser.parseObject<Coding>(
        json,
        'laterality',
        Coding.fromJson,
        '$objectPath.laterality',
      ),
      specimen: (json['specimen'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.specimen',
              },
            ),
          )
          .toList(),
      started: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'started',
        FhirDateTime.fromJson,
        '$objectPath.started',
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<ImagingStudyPerformer>(
            (v) => ImagingStudyPerformer.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performer',
              },
            ),
          )
          .toList(),
      instance: (json['instance'] as List<dynamic>?)
          ?.map<ImagingStudyInstance>(
            (v) => ImagingStudyInstance.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.instance',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ImagingStudySeries]
  /// from a [String] or [YamlMap] object
  factory ImagingStudySeries.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImagingStudySeries.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImagingStudySeries.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImagingStudySeries '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImagingStudySeries]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImagingStudySeries.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImagingStudySeries.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImagingStudySeries';

  /// [uid]
  /// The DICOM Series Instance UID for the series.
  final FhirId uid;

  /// [number]
  /// The numeric identifier of this series in the study.
  final FhirUnsignedInt? number;

  /// [modality]
  /// The modality of this series sequence.
  final Coding modality;

  /// [description]
  /// A description of the series.
  final FhirString? description;

  /// [numberOfInstances]
  /// Number of SOP Instances in the Study. The value given may be larger
  /// than the number of instance elements this resource contains due to
  /// resource availability, security, or other factors. This element should
  /// be present if any instance elements are present.
  final FhirUnsignedInt? numberOfInstances;

  /// [endpoint]
  /// The network service providing access (e.g., query, view, or retrieval)
  /// for this series. See implementation notes for information about using
  /// DICOM endpoints. A series-level endpoint, if present, has precedence
  /// over a study-level endpoint with the same Endpoint.connectionType.
  final List<Reference>? endpoint;

  /// [bodySite]
  /// The anatomic structures examined. See DICOM Part 16 Annex L
  /// (http://dicom.nema.org/medical/dicom/current/output/chtml/part16/chapter_L.html)
  /// for DICOM to SNOMED-CT mappings. The bodySite may indicate the
  /// laterality of body part imaged; if so, it shall be consistent with any
  /// content of ImagingStudy.series.laterality.
  final Coding? bodySite;

  /// [laterality]
  /// The laterality of the (possibly paired) anatomic structures examined.
  /// E.g., the left knee, both lungs, or unpaired abdomen. If present, shall
  /// be consistent with any laterality information indicated in
  /// ImagingStudy.series.bodySite.
  final Coding? laterality;

  /// [specimen]
  /// The specimen imaged, e.g., for whole slide imaging of a biopsy.
  final List<Reference>? specimen;

  /// [started]
  /// The date and time the series was started.
  final FhirDateTime? started;

  /// [performer]
  /// Indicates who or what performed the series and how they were involved.
  final List<ImagingStudyPerformer>? performer;

  /// [instance]
  /// A single SOP instance within the series, e.g. an image, or presentation
  /// state.
  final List<ImagingStudyInstance>? instance;
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
    addField('uid', uid);
    addField('number', number);
    addField('modality', modality);
    addField('description', description);
    addField('numberOfInstances', numberOfInstances);
    addField('endpoint', endpoint);
    addField('bodySite', bodySite);
    addField('laterality', laterality);
    addField('specimen', specimen);
    addField('started', started);
    addField('performer', performer);
    addField('instance', instance);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'uid',
      'number',
      'modality',
      'description',
      'numberOfInstances',
      'endpoint',
      'bodySite',
      'laterality',
      'specimen',
      'started',
      'performer',
      'instance',
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
      case 'uid':
        fields.add(uid);
      case 'number':
        if (number != null) {
          fields.add(number!);
        }
      case 'modality':
        fields.add(modality);
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'numberOfInstances':
        if (numberOfInstances != null) {
          fields.add(numberOfInstances!);
        }
      case 'endpoint':
        if (endpoint != null) {
          fields.addAll(endpoint!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.add(bodySite!);
        }
      case 'laterality':
        if (laterality != null) {
          fields.add(laterality!);
        }
      case 'specimen':
        if (specimen != null) {
          fields.addAll(specimen!);
        }
      case 'started':
        if (started != null) {
          fields.add(started!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'instance':
        if (instance != null) {
          fields.addAll(instance!);
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
  ImagingStudySeries clone() => throw UnimplementedError();
  @override
  ImagingStudySeries copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? uid,
    FhirUnsignedInt? number,
    Coding? modality,
    FhirString? description,
    FhirUnsignedInt? numberOfInstances,
    List<Reference>? endpoint,
    Coding? bodySite,
    Coding? laterality,
    List<Reference>? specimen,
    FhirDateTime? started,
    List<ImagingStudyPerformer>? performer,
    List<ImagingStudyInstance>? instance,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ImagingStudySeries(
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
      uid: uid?.copyWith(
            objectPath: '$newObjectPath.uid',
          ) ??
          this.uid,
      number: number?.copyWith(
            objectPath: '$newObjectPath.number',
          ) ??
          this.number,
      modality: modality?.copyWith(
            objectPath: '$newObjectPath.modality',
          ) ??
          this.modality,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      numberOfInstances: numberOfInstances?.copyWith(
            objectPath: '$newObjectPath.numberOfInstances',
          ) ??
          this.numberOfInstances,
      endpoint: endpoint
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.endpoint',
                ),
              )
              .toList() ??
          this.endpoint,
      bodySite: bodySite?.copyWith(
            objectPath: '$newObjectPath.bodySite',
          ) ??
          this.bodySite,
      laterality: laterality?.copyWith(
            objectPath: '$newObjectPath.laterality',
          ) ??
          this.laterality,
      specimen: specimen
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.specimen',
                ),
              )
              .toList() ??
          this.specimen,
      started: started?.copyWith(
            objectPath: '$newObjectPath.started',
          ) ??
          this.started,
      performer: performer
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.performer',
                ),
              )
              .toList() ??
          this.performer,
      instance: instance
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.instance',
                ),
              )
              .toList() ??
          this.instance,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImagingStudySeries) {
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
    if (!equalsDeepWithNull(uid, o.uid)) {
      return false;
    }
    if (!equalsDeepWithNull(number, o.number)) {
      return false;
    }
    if (!equalsDeepWithNull(modality, o.modality)) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!equalsDeepWithNull(numberOfInstances, o.numberOfInstances)) {
      return false;
    }
    if (!listEquals<Reference>(
      endpoint,
      o.endpoint,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(bodySite, o.bodySite)) {
      return false;
    }
    if (!equalsDeepWithNull(laterality, o.laterality)) {
      return false;
    }
    if (!listEquals<Reference>(
      specimen,
      o.specimen,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(started, o.started)) {
      return false;
    }
    if (!listEquals<ImagingStudyPerformer>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!listEquals<ImagingStudyInstance>(
      instance,
      o.instance,
    )) {
      return false;
    }
    return true;
  }
}

/// [ImagingStudyPerformer]
/// Indicates who or what performed the series and how they were involved.
class ImagingStudyPerformer extends BackboneElement {
  /// Primary constructor for
  /// [ImagingStudyPerformer]

  const ImagingStudyPerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ImagingStudy.series.performer',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ImagingStudyPerformer.empty() => ImagingStudyPerformer(
        actor: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImagingStudyPerformer.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImagingStudy.series.performer';
    return ImagingStudyPerformer(
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
      function_: JsonParser.parseObject<CodeableConcept>(
        json,
        'function',
        CodeableConcept.fromJson,
        '$objectPath.function',
      ),
      actor: JsonParser.parseObject<Reference>(
        json,
        'actor',
        Reference.fromJson,
        '$objectPath.actor',
      )!,
    );
  }

  /// Deserialize [ImagingStudyPerformer]
  /// from a [String] or [YamlMap] object
  factory ImagingStudyPerformer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImagingStudyPerformer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImagingStudyPerformer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImagingStudyPerformer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImagingStudyPerformer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImagingStudyPerformer.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImagingStudyPerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImagingStudyPerformer';

  /// [function_]
  /// Distinguishes the type of involvement of the performer in the series.
  final CodeableConcept? function_;

  /// [actor]
  /// Indicates who or what performed the series.
  final Reference actor;
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
    addField('function', function_);
    addField('actor', actor);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'function',
      'actor',
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
      case 'function':
        if (function_ != null) {
          fields.add(function_!);
        }
      case 'actor':
        fields.add(actor);
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
  ImagingStudyPerformer clone() => throw UnimplementedError();
  @override
  ImagingStudyPerformer copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? function_,
    Reference? actor,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ImagingStudyPerformer(
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
      function_: function_?.copyWith(
            objectPath: '$newObjectPath.function',
          ) ??
          this.function_,
      actor: actor?.copyWith(
            objectPath: '$newObjectPath.actor',
          ) ??
          this.actor,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImagingStudyPerformer) {
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
    if (!equalsDeepWithNull(function_, o.function_)) {
      return false;
    }
    if (!equalsDeepWithNull(actor, o.actor)) {
      return false;
    }
    return true;
  }
}

/// [ImagingStudyInstance]
/// A single SOP instance within the series, e.g. an image, or presentation
/// state.
class ImagingStudyInstance extends BackboneElement {
  /// Primary constructor for
  /// [ImagingStudyInstance]

  const ImagingStudyInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.uid,
    required this.sopClass,
    this.number,
    this.title,
    super.disallowExtensions,
  }) : super(
          objectPath: 'ImagingStudy.series.instance',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ImagingStudyInstance.empty() => ImagingStudyInstance(
        uid: FhirId.empty(),
        sopClass: Coding.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImagingStudyInstance.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImagingStudy.series.instance';
    return ImagingStudyInstance(
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
      uid: JsonParser.parsePrimitive<FhirId>(
        json,
        'uid',
        FhirId.fromJson,
        '$objectPath.uid',
      )!,
      sopClass: JsonParser.parseObject<Coding>(
        json,
        'sopClass',
        Coding.fromJson,
        '$objectPath.sopClass',
      )!,
      number: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'number',
        FhirUnsignedInt.fromJson,
        '$objectPath.number',
      ),
      title: JsonParser.parsePrimitive<FhirString>(
        json,
        'title',
        FhirString.fromJson,
        '$objectPath.title',
      ),
    );
  }

  /// Deserialize [ImagingStudyInstance]
  /// from a [String] or [YamlMap] object
  factory ImagingStudyInstance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImagingStudyInstance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImagingStudyInstance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImagingStudyInstance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImagingStudyInstance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImagingStudyInstance.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImagingStudyInstance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImagingStudyInstance';

  /// [uid]
  /// The DICOM SOP Instance UID for this image or other DICOM content.
  final FhirId uid;

  /// [sopClass]
  /// DICOM instance type.
  final Coding sopClass;

  /// [number]
  /// The number of instance in the series.
  final FhirUnsignedInt? number;

  /// [title]
  /// The description of the instance.
  final FhirString? title;
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
    addField('uid', uid);
    addField('sopClass', sopClass);
    addField('number', number);
    addField('title', title);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'uid',
      'sopClass',
      'number',
      'title',
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
      case 'uid':
        fields.add(uid);
      case 'sopClass':
        fields.add(sopClass);
      case 'number':
        if (number != null) {
          fields.add(number!);
        }
      case 'title':
        if (title != null) {
          fields.add(title!);
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
  ImagingStudyInstance clone() => throw UnimplementedError();
  @override
  ImagingStudyInstance copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? uid,
    Coding? sopClass,
    FhirUnsignedInt? number,
    FhirString? title,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ImagingStudyInstance(
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
      uid: uid?.copyWith(
            objectPath: '$newObjectPath.uid',
          ) ??
          this.uid,
      sopClass: sopClass?.copyWith(
            objectPath: '$newObjectPath.sopClass',
          ) ??
          this.sopClass,
      number: number?.copyWith(
            objectPath: '$newObjectPath.number',
          ) ??
          this.number,
      title: title?.copyWith(
            objectPath: '$newObjectPath.title',
          ) ??
          this.title,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImagingStudyInstance) {
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
    if (!equalsDeepWithNull(uid, o.uid)) {
      return false;
    }
    if (!equalsDeepWithNull(sopClass, o.sopClass)) {
      return false;
    }
    if (!equalsDeepWithNull(number, o.number)) {
      return false;
    }
    if (!equalsDeepWithNull(title, o.title)) {
      return false;
    }
    return true;
  }
}
