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
          resourceType: R4ResourceType.ImagingStudy,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImagingStudy.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImagingStudy(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
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
      status: ImagingStudyStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      modality: json['modality'] != null
          ? (json['modality'] as List<dynamic>)
              .map<Coding>(
                (v) => Coding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      subject: Reference.fromJson(
        json['subject'] as Map<String, dynamic>,
      ),
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              json['encounter'] as Map<String, dynamic>,
            )
          : null,
      started: (json['started'] != null || json['_started'] != null)
          ? FhirDateTime.fromJson({
              'value': json['started'],
              '_value': json['_started'],
            })
          : null,
      basedOn: json['basedOn'] != null
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      referrer: json['referrer'] != null
          ? Reference.fromJson(
              json['referrer'] as Map<String, dynamic>,
            )
          : null,
      interpreter: json['interpreter'] != null
          ? (json['interpreter'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      endpoint: json['endpoint'] != null
          ? (json['endpoint'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      numberOfSeries:
          (json['numberOfSeries'] != null || json['_numberOfSeries'] != null)
              ? FhirUnsignedInt.fromJson({
                  'value': json['numberOfSeries'],
                  '_value': json['_numberOfSeries'],
                })
              : null,
      numberOfInstances: (json['numberOfInstances'] != null ||
              json['_numberOfInstances'] != null)
          ? FhirUnsignedInt.fromJson({
              'value': json['numberOfInstances'],
              '_value': json['_numberOfInstances'],
            })
          : null,
      procedureReference: json['procedureReference'] != null
          ? Reference.fromJson(
              json['procedureReference'] as Map<String, dynamic>,
            )
          : null,
      procedureCode: json['procedureCode'] != null
          ? (json['procedureCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      location: json['location'] != null
          ? Reference.fromJson(
              json['location'] as Map<String, dynamic>,
            )
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
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
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      series: json['series'] != null
          ? (json['series'] as List<dynamic>)
              .map<ImagingStudySeries>(
                (v) => ImagingStudySeries.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
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
    if (json is Map<String, Object?>) {
      return ImagingStudy.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

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
    if (modality != null && modality!.isNotEmpty) {
      json['modality'] = modality!.map((e) => e.toJson()).toList();
    }

    json['subject'] = subject.toJson();

    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }

    if (started != null) {
      addField('started', started);
    }

    if (basedOn != null && basedOn!.isNotEmpty) {
      json['basedOn'] = basedOn!.map((e) => e.toJson()).toList();
    }

    if (referrer != null) {
      json['referrer'] = referrer!.toJson();
    }

    if (interpreter != null && interpreter!.isNotEmpty) {
      json['interpreter'] = interpreter!.map((e) => e.toJson()).toList();
    }

    if (endpoint != null && endpoint!.isNotEmpty) {
      json['endpoint'] = endpoint!.map((e) => e.toJson()).toList();
    }

    if (numberOfSeries != null) {
      addField('numberOfSeries', numberOfSeries);
    }

    if (numberOfInstances != null) {
      addField('numberOfInstances', numberOfInstances);
    }

    if (procedureReference != null) {
      json['procedureReference'] = procedureReference!.toJson();
    }

    if (procedureCode != null && procedureCode!.isNotEmpty) {
      json['procedureCode'] = procedureCode!.map((e) => e.toJson()).toList();
    }

    if (location != null) {
      json['location'] = location!.toJson();
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] = reasonCode!.map((e) => e.toJson()).toList();
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map((e) => e.toJson()).toList();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    if (description != null) {
      addField('description', description);
    }

    if (series != null && series!.isNotEmpty) {
      json['series'] = series!.map((e) => e.toJson()).toList();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ImagingStudy(
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
      modality: modality ?? this.modality,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      started: started ?? this.started,
      basedOn: basedOn ?? this.basedOn,
      referrer: referrer ?? this.referrer,
      interpreter: interpreter ?? this.interpreter,
      endpoint: endpoint ?? this.endpoint,
      numberOfSeries: numberOfSeries ?? this.numberOfSeries,
      numberOfInstances: numberOfInstances ?? this.numberOfInstances,
      procedureReference: procedureReference ?? this.procedureReference,
      procedureCode: procedureCode ?? this.procedureCode,
      location: location ?? this.location,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      note: note ?? this.note,
      description: description ?? this.description,
      series: series ?? this.series,
    );
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImagingStudySeries.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImagingStudySeries(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      uid: FhirId.fromJson({
        'value': json['uid'],
        '_value': json['_uid'],
      }),
      number: (json['number'] != null || json['_number'] != null)
          ? FhirUnsignedInt.fromJson({
              'value': json['number'],
              '_value': json['_number'],
            })
          : null,
      modality: Coding.fromJson(
        json['modality'] as Map<String, dynamic>,
      ),
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      numberOfInstances: (json['numberOfInstances'] != null ||
              json['_numberOfInstances'] != null)
          ? FhirUnsignedInt.fromJson({
              'value': json['numberOfInstances'],
              '_value': json['_numberOfInstances'],
            })
          : null,
      endpoint: json['endpoint'] != null
          ? (json['endpoint'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      bodySite: json['bodySite'] != null
          ? Coding.fromJson(
              json['bodySite'] as Map<String, dynamic>,
            )
          : null,
      laterality: json['laterality'] != null
          ? Coding.fromJson(
              json['laterality'] as Map<String, dynamic>,
            )
          : null,
      specimen: json['specimen'] != null
          ? (json['specimen'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      started: (json['started'] != null || json['_started'] != null)
          ? FhirDateTime.fromJson({
              'value': json['started'],
              '_value': json['_started'],
            })
          : null,
      performer: json['performer'] != null
          ? (json['performer'] as List<dynamic>)
              .map<ImagingStudyPerformer>(
                (v) => ImagingStudyPerformer.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      instance: json['instance'] != null
          ? (json['instance'] as List<dynamic>)
              .map<ImagingStudyInstance>(
                (v) => ImagingStudyInstance.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
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
    if (json is Map<String, Object?>) {
      return ImagingStudySeries.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('uid', uid);
    if (number != null) {
      addField('number', number);
    }

    json['modality'] = modality.toJson();

    if (description != null) {
      addField('description', description);
    }

    if (numberOfInstances != null) {
      addField('numberOfInstances', numberOfInstances);
    }

    if (endpoint != null && endpoint!.isNotEmpty) {
      json['endpoint'] = endpoint!.map((e) => e.toJson()).toList();
    }

    if (bodySite != null) {
      json['bodySite'] = bodySite!.toJson();
    }

    if (laterality != null) {
      json['laterality'] = laterality!.toJson();
    }

    if (specimen != null && specimen!.isNotEmpty) {
      json['specimen'] = specimen!.map((e) => e.toJson()).toList();
    }

    if (started != null) {
      addField('started', started);
    }

    if (performer != null && performer!.isNotEmpty) {
      json['performer'] = performer!.map((e) => e.toJson()).toList();
    }

    if (instance != null && instance!.isNotEmpty) {
      json['instance'] = instance!.map((e) => e.toJson()).toList();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ImagingStudySeries(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      uid: uid ?? this.uid,
      number: number ?? this.number,
      modality: modality ?? this.modality,
      description: description ?? this.description,
      numberOfInstances: numberOfInstances ?? this.numberOfInstances,
      endpoint: endpoint ?? this.endpoint,
      bodySite: bodySite ?? this.bodySite,
      laterality: laterality ?? this.laterality,
      specimen: specimen ?? this.specimen,
      started: started ?? this.started,
      performer: performer ?? this.performer,
      instance: instance ?? this.instance,
    );
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImagingStudyPerformer.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImagingStudyPerformer(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      function_: json['function'] != null
          ? CodeableConcept.fromJson(
              json['function'] as Map<String, dynamic>,
            )
          : null,
      actor: Reference.fromJson(
        json['actor'] as Map<String, dynamic>,
      ),
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
    if (json is Map<String, Object?>) {
      return ImagingStudyPerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (function_ != null) {
      json['function'] = function_!.toJson();
    }

    json['actor'] = actor.toJson();

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ImagingStudyPerformer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      function_: function_ ?? this.function_,
      actor: actor ?? this.actor,
    );
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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImagingStudyInstance.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImagingStudyInstance(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      uid: FhirId.fromJson({
        'value': json['uid'],
        '_value': json['_uid'],
      }),
      sopClass: Coding.fromJson(
        json['sopClass'] as Map<String, dynamic>,
      ),
      number: (json['number'] != null || json['_number'] != null)
          ? FhirUnsignedInt.fromJson({
              'value': json['number'],
              '_value': json['_number'],
            })
          : null,
      title: (json['title'] != null || json['_title'] != null)
          ? FhirString.fromJson({
              'value': json['title'],
              '_value': json['_title'],
            })
          : null,
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
    if (json is Map<String, Object?>) {
      return ImagingStudyInstance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('uid', uid);
    json['sopClass'] = sopClass.toJson();

    if (number != null) {
      addField('number', number);
    }

    if (title != null) {
      addField('title', title);
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ImagingStudyInstance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      uid: uid ?? this.uid,
      sopClass: sopClass ?? this.sopClass,
      number: number ?? this.number,
      title: title ?? this.title,
    );
  }
}
