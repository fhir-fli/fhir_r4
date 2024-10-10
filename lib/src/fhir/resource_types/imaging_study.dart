import 'dart:convert';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [ImagingStudy] /// Representation of the content produced in a DICOM imaging study. A study
/// comprises a set of series, each of which includes a set of Service-Object
/// Pair Instances (SOP Instances - images or other data) acquired or produced
/// in a common context. A series is of only one modality (e.g. X-ray, CT, MR,
/// ultrasound), but a study may have multiple series of different modalities.
class ImagingStudy extends DomainResource {
  ImagingStudy({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.statusElement,
    this.modality,
    required this.subject,
    this.encounter,
    this.started,
    this.startedElement,
    this.basedOn,
    this.referrer,
    this.interpreter,
    this.endpoint,
    this.numberOfSeries,
    this.numberOfSeriesElement,
    this.numberOfInstances,
    this.numberOfInstancesElement,
    this.procedureReference,
    this.procedureCode,
    this.location,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.description,
    this.descriptionElement,
    this.series,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.ImagingStudy);

  @override
  String get fhirType => 'ImagingStudy';

  /// [identifier] /// Identifiers for the ImagingStudy such as DICOM Study Instance UID, and
  /// Accession Number.
  final List<Identifier>? identifier;

  /// [status] /// The current state of the ImagingStudy.
  final ImagingStudyStatus status;
  final Element? statusElement;

  /// [modality] /// A list of all the series.modality values that are actual acquisition
  /// modalities, i.e. those in the DICOM Context Group 29 (value set OID
  /// 1.2.840.10008.6.1.19).
  final List<Coding>? modality;

  /// [subject] /// The subject, typically a patient, of the imaging study.
  final Reference subject;

  /// [encounter] /// The healthcare event (e.g. a patient and healthcare provider interaction)
  /// during which this ImagingStudy is made.
  final Reference? encounter;

  /// [started] /// Date and time the study started.
  final FhirDateTime? started;
  final Element? startedElement;

  /// [basedOn] /// A list of the diagnostic requests that resulted in this imaging study being
  /// performed.
  final List<Reference>? basedOn;

  /// [referrer] /// The requesting/referring physician.
  final Reference? referrer;

  /// [interpreter] /// Who read the study and interpreted the images or other content.
  final List<Reference>? interpreter;

  /// [endpoint] /// The network service providing access (e.g., query, view, or retrieval) for
  /// the study. See implementation notes for information about using DICOM
  /// endpoints. A study-level endpoint applies to each series in the study,
  /// unless overridden by a series-level endpoint with the same
  /// Endpoint.connectionType.
  final List<Reference>? endpoint;

  /// [numberOfSeries] /// Number of Series in the Study. This value given may be larger than the
  /// number of series elements this Resource contains due to resource
  /// availability, security, or other factors. This element should be present if
  /// any series elements are present.
  final FhirUnsignedInt? numberOfSeries;
  final Element? numberOfSeriesElement;

  /// [numberOfInstances] /// Number of SOP Instances in Study. This value given may be larger than the
  /// number of instance elements this resource contains due to resource
  /// availability, security, or other factors. This element should be present if
  /// any instance elements are present.
  final FhirUnsignedInt? numberOfInstances;
  final Element? numberOfInstancesElement;

  /// [procedureReference] /// The procedure which this ImagingStudy was part of.
  final Reference? procedureReference;

  /// [procedureCode] /// The code for the performed procedure type.
  final List<CodeableConcept>? procedureCode;

  /// [location] /// The principal physical location where the ImagingStudy was performed.
  final Reference? location;

  /// [reasonCode] /// Description of clinical condition indicating why the ImagingStudy was
  /// requested.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Indicates another resource whose existence justifies this Study.
  final List<Reference>? reasonReference;

  /// [note] /// Per the recommended DICOM mapping, this element is derived from the Study
  /// Description attribute (0008,1030). Observations or findings about the
  /// imaging study should be recorded in another resource, e.g. Observation, and
  /// not in this element.
  final List<Annotation>? note;

  /// [description] /// The Imaging Manager description of the study. Institution-generated
  /// description or classification of the Study (component) performed.
  final FhirString? description;
  final Element? descriptionElement;

  /// [series] /// Each study has one or more series of images or other content.
  final List<ImagingStudySeries>? series;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    if (modality != null && modality!.isNotEmpty) {
      json['modality'] =
          modality!.map<dynamic>((Coding v) => v.toJson()).toList();
    }
    json['subject'] = subject.toJson();
    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }
    if (started?.value != null) {
      json['started'] = started!.toJson();
    }
    if (startedElement != null) {
      json['_started'] = startedElement!.toJson();
    }
    if (basedOn != null && basedOn!.isNotEmpty) {
      json['basedOn'] =
          basedOn!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (referrer != null) {
      json['referrer'] = referrer!.toJson();
    }
    if (interpreter != null && interpreter!.isNotEmpty) {
      json['interpreter'] =
          interpreter!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (endpoint != null && endpoint!.isNotEmpty) {
      json['endpoint'] =
          endpoint!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (numberOfSeries?.value != null) {
      json['numberOfSeries'] = numberOfSeries!.toJson();
    }
    if (numberOfSeriesElement != null) {
      json['_numberOfSeries'] = numberOfSeriesElement!.toJson();
    }
    if (numberOfInstances?.value != null) {
      json['numberOfInstances'] = numberOfInstances!.toJson();
    }
    if (numberOfInstancesElement != null) {
      json['_numberOfInstances'] = numberOfInstancesElement!.toJson();
    }
    if (procedureReference != null) {
      json['procedureReference'] = procedureReference!.toJson();
    }
    if (procedureCode != null && procedureCode!.isNotEmpty) {
      json['procedureCode'] = procedureCode!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (location != null) {
      json['location'] = location!.toJson();
    }
    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] =
          reasonCode!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (series != null && series!.isNotEmpty) {
      json['series'] =
          series!.map<dynamic>((ImagingStudySeries v) => v.toJson()).toList();
    }
    return json;
  }

  factory ImagingStudy.fromJson(Map<String, dynamic> json) {
    return ImagingStudy(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(json['_language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: ImagingStudyStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(json['_status'] as Map<String, dynamic>)
          : null,
      modality: json['modality'] != null
          ? (json['modality'] as List<dynamic>)
              .map<Coding>(
                  (dynamic v) => Coding.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      subject: Reference.fromJson(json['subject'] as Map<String, dynamic>),
      encounter: json['encounter'] != null
          ? Reference.fromJson(json['encounter'] as Map<String, dynamic>)
          : null,
      started: json['started'] != null
          ? FhirDateTime.fromJson(json['started'])
          : null,
      startedElement: json['_started'] != null
          ? Element.fromJson(json['_started'] as Map<String, dynamic>)
          : null,
      basedOn: json['basedOn'] != null
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      referrer: json['referrer'] != null
          ? Reference.fromJson(json['referrer'] as Map<String, dynamic>)
          : null,
      interpreter: json['interpreter'] != null
          ? (json['interpreter'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      endpoint: json['endpoint'] != null
          ? (json['endpoint'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      numberOfSeries: json['numberOfSeries'] != null
          ? FhirUnsignedInt.fromJson(json['numberOfSeries'])
          : null,
      numberOfSeriesElement: json['_numberOfSeries'] != null
          ? Element.fromJson(json['_numberOfSeries'] as Map<String, dynamic>)
          : null,
      numberOfInstances: json['numberOfInstances'] != null
          ? FhirUnsignedInt.fromJson(json['numberOfInstances'])
          : null,
      numberOfInstancesElement: json['_numberOfInstances'] != null
          ? Element.fromJson(json['_numberOfInstances'] as Map<String, dynamic>)
          : null,
      procedureReference: json['procedureReference'] != null
          ? Reference.fromJson(
              json['procedureReference'] as Map<String, dynamic>)
          : null,
      procedureCode: json['procedureCode'] != null
          ? (json['procedureCode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      location: json['location'] != null
          ? Reference.fromJson(json['location'] as Map<String, dynamic>)
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      description: json['description'] != null
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      series: json['series'] != null
          ? (json['series'] as List<dynamic>)
              .map<ImagingStudySeries>((dynamic v) =>
                  ImagingStudySeries.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ImagingStudy clone() => throw UnimplementedError();
  @override
  ImagingStudy copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    ImagingStudyStatus? status,
    Element? statusElement,
    List<Coding>? modality,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? started,
    Element? startedElement,
    List<Reference>? basedOn,
    Reference? referrer,
    List<Reference>? interpreter,
    List<Reference>? endpoint,
    FhirUnsignedInt? numberOfSeries,
    Element? numberOfSeriesElement,
    FhirUnsignedInt? numberOfInstances,
    Element? numberOfInstancesElement,
    Reference? procedureReference,
    List<CodeableConcept>? procedureCode,
    Reference? location,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Annotation>? note,
    FhirString? description,
    Element? descriptionElement,
    List<ImagingStudySeries>? series,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ImagingStudy(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      modality: modality ?? this.modality,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      started: started ?? this.started,
      startedElement: startedElement ?? this.startedElement,
      basedOn: basedOn ?? this.basedOn,
      referrer: referrer ?? this.referrer,
      interpreter: interpreter ?? this.interpreter,
      endpoint: endpoint ?? this.endpoint,
      numberOfSeries: numberOfSeries ?? this.numberOfSeries,
      numberOfSeriesElement:
          numberOfSeriesElement ?? this.numberOfSeriesElement,
      numberOfInstances: numberOfInstances ?? this.numberOfInstances,
      numberOfInstancesElement:
          numberOfInstancesElement ?? this.numberOfInstancesElement,
      procedureReference: procedureReference ?? this.procedureReference,
      procedureCode: procedureCode ?? this.procedureCode,
      location: location ?? this.location,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      note: note ?? this.note,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      series: series ?? this.series,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ImagingStudy.fromYaml(dynamic yaml) => yaml is String
      ? ImagingStudy.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImagingStudy.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImagingStudy cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ImagingStudy.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImagingStudy.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ImagingStudySeries] /// Each study has one or more series of images or other content.
class ImagingStudySeries extends BackboneElement {
  ImagingStudySeries({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.uid,
    this.uidElement,
    this.number,
    this.numberElement,
    required this.modality,
    this.description,
    this.descriptionElement,
    this.numberOfInstances,
    this.numberOfInstancesElement,
    this.endpoint,
    this.bodySite,
    this.laterality,
    this.specimen,
    this.started,
    this.startedElement,
    this.performer,
    this.instance,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ImagingStudySeries';

  /// [uid] /// The DICOM Series Instance UID for the series.
  final FhirId uid;
  final Element? uidElement;

  /// [number] /// The numeric identifier of this series in the study.
  final FhirUnsignedInt? number;
  final Element? numberElement;

  /// [modality] /// The modality of this series sequence.
  final Coding modality;

  /// [description] /// A description of the series.
  final FhirString? description;
  final Element? descriptionElement;

  /// [numberOfInstances] /// Number of SOP Instances in the Study. The value given may be larger than
  /// the number of instance elements this resource contains due to resource
  /// availability, security, or other factors. This element should be present if
  /// any instance elements are present.
  final FhirUnsignedInt? numberOfInstances;
  final Element? numberOfInstancesElement;

  /// [endpoint] /// The network service providing access (e.g., query, view, or retrieval) for
  /// this series. See implementation notes for information about using DICOM
  /// endpoints. A series-level endpoint, if present, has precedence over a
  /// study-level endpoint with the same Endpoint.connectionType.
  final List<Reference>? endpoint;

  /// [bodySite] /// The anatomic structures examined. See DICOM Part 16 Annex L
  /// (http://dicom.nema.org/medical/dicom/current/output/chtml/part16/chapter_L.html)
  /// for DICOM to SNOMED-CT mappings. The bodySite may indicate the laterality
  /// of body part imaged; if so, it shall be consistent with any content of
  /// ImagingStudy.series.laterality.
  final Coding? bodySite;

  /// [laterality] /// The laterality of the (possibly paired) anatomic structures examined. E.g.,
  /// the left knee, both lungs, or unpaired abdomen. If present, shall be
  /// consistent with any laterality information indicated in
  /// ImagingStudy.series.bodySite.
  final Coding? laterality;

  /// [specimen] /// The specimen imaged, e.g., for whole slide imaging of a biopsy.
  final List<Reference>? specimen;

  /// [started] /// The date and time the series was started.
  final FhirDateTime? started;
  final Element? startedElement;

  /// [performer] /// Indicates who or what performed the series and how they were involved.
  final List<ImagingStudyPerformer>? performer;

  /// [instance] /// A single SOP instance within the series, e.g. an image, or presentation
  /// state.
  final List<ImagingStudyInstance>? instance;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['uid'] = uid.toJson();
    if (uidElement != null) {
      json['_uid'] = uidElement!.toJson();
    }
    if (number?.value != null) {
      json['number'] = number!.toJson();
    }
    if (numberElement != null) {
      json['_number'] = numberElement!.toJson();
    }
    json['modality'] = modality.toJson();
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (numberOfInstances?.value != null) {
      json['numberOfInstances'] = numberOfInstances!.toJson();
    }
    if (numberOfInstancesElement != null) {
      json['_numberOfInstances'] = numberOfInstancesElement!.toJson();
    }
    if (endpoint != null && endpoint!.isNotEmpty) {
      json['endpoint'] =
          endpoint!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (bodySite != null) {
      json['bodySite'] = bodySite!.toJson();
    }
    if (laterality != null) {
      json['laterality'] = laterality!.toJson();
    }
    if (specimen != null && specimen!.isNotEmpty) {
      json['specimen'] =
          specimen!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (started?.value != null) {
      json['started'] = started!.toJson();
    }
    if (startedElement != null) {
      json['_started'] = startedElement!.toJson();
    }
    if (performer != null && performer!.isNotEmpty) {
      json['performer'] = performer!
          .map<dynamic>((ImagingStudyPerformer v) => v.toJson())
          .toList();
    }
    if (instance != null && instance!.isNotEmpty) {
      json['instance'] = instance!
          .map<dynamic>((ImagingStudyInstance v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory ImagingStudySeries.fromJson(Map<String, dynamic> json) {
    return ImagingStudySeries(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      uid: FhirId.fromJson(json['uid']),
      uidElement: json['_uid'] != null
          ? Element.fromJson(json['_uid'] as Map<String, dynamic>)
          : null,
      number: json['number'] != null
          ? FhirUnsignedInt.fromJson(json['number'])
          : null,
      numberElement: json['_number'] != null
          ? Element.fromJson(json['_number'] as Map<String, dynamic>)
          : null,
      modality: Coding.fromJson(json['modality'] as Map<String, dynamic>),
      description: json['description'] != null
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      numberOfInstances: json['numberOfInstances'] != null
          ? FhirUnsignedInt.fromJson(json['numberOfInstances'])
          : null,
      numberOfInstancesElement: json['_numberOfInstances'] != null
          ? Element.fromJson(json['_numberOfInstances'] as Map<String, dynamic>)
          : null,
      endpoint: json['endpoint'] != null
          ? (json['endpoint'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      bodySite: json['bodySite'] != null
          ? Coding.fromJson(json['bodySite'] as Map<String, dynamic>)
          : null,
      laterality: json['laterality'] != null
          ? Coding.fromJson(json['laterality'] as Map<String, dynamic>)
          : null,
      specimen: json['specimen'] != null
          ? (json['specimen'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      started: json['started'] != null
          ? FhirDateTime.fromJson(json['started'])
          : null,
      startedElement: json['_started'] != null
          ? Element.fromJson(json['_started'] as Map<String, dynamic>)
          : null,
      performer: json['performer'] != null
          ? (json['performer'] as List<dynamic>)
              .map<ImagingStudyPerformer>((dynamic v) =>
                  ImagingStudyPerformer.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      instance: json['instance'] != null
          ? (json['instance'] as List<dynamic>)
              .map<ImagingStudyInstance>((dynamic v) =>
                  ImagingStudyInstance.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ImagingStudySeries clone() => throw UnimplementedError();
  @override
  ImagingStudySeries copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? uid,
    Element? uidElement,
    FhirUnsignedInt? number,
    Element? numberElement,
    Coding? modality,
    FhirString? description,
    Element? descriptionElement,
    FhirUnsignedInt? numberOfInstances,
    Element? numberOfInstancesElement,
    List<Reference>? endpoint,
    Coding? bodySite,
    Coding? laterality,
    List<Reference>? specimen,
    FhirDateTime? started,
    Element? startedElement,
    List<ImagingStudyPerformer>? performer,
    List<ImagingStudyInstance>? instance,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ImagingStudySeries(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      uid: uid ?? this.uid,
      uidElement: uidElement ?? this.uidElement,
      number: number ?? this.number,
      numberElement: numberElement ?? this.numberElement,
      modality: modality ?? this.modality,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      numberOfInstances: numberOfInstances ?? this.numberOfInstances,
      numberOfInstancesElement:
          numberOfInstancesElement ?? this.numberOfInstancesElement,
      endpoint: endpoint ?? this.endpoint,
      bodySite: bodySite ?? this.bodySite,
      laterality: laterality ?? this.laterality,
      specimen: specimen ?? this.specimen,
      started: started ?? this.started,
      startedElement: startedElement ?? this.startedElement,
      performer: performer ?? this.performer,
      instance: instance ?? this.instance,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ImagingStudySeries.fromYaml(dynamic yaml) => yaml is String
      ? ImagingStudySeries.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImagingStudySeries.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImagingStudySeries cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ImagingStudySeries.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImagingStudySeries.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ImagingStudyPerformer] /// Indicates who or what performed the series and how they were involved.
class ImagingStudyPerformer extends BackboneElement {
  ImagingStudyPerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ImagingStudyPerformer';

  /// [function_] /// Distinguishes the type of involvement of the performer in the series.
  final CodeableConcept? function_;

  /// [actor] /// Indicates who or what performed the series.
  final Reference actor;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (function_ != null) {
      json['function'] = function_!.toJson();
    }
    json['actor'] = actor.toJson();
    return json;
  }

  factory ImagingStudyPerformer.fromJson(Map<String, dynamic> json) {
    return ImagingStudyPerformer(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      function_: json['function'] != null
          ? CodeableConcept.fromJson(json['function'] as Map<String, dynamic>)
          : null,
      actor: Reference.fromJson(json['actor'] as Map<String, dynamic>),
    );
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ImagingStudyPerformer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      function_: function_ ?? this.function_,
      actor: actor ?? this.actor,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ImagingStudyPerformer.fromYaml(dynamic yaml) => yaml is String
      ? ImagingStudyPerformer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImagingStudyPerformer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImagingStudyPerformer cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ImagingStudyPerformer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImagingStudyPerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ImagingStudyInstance] /// A single SOP instance within the series, e.g. an image, or presentation
/// state.
class ImagingStudyInstance extends BackboneElement {
  ImagingStudyInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.uid,
    this.uidElement,
    required this.sopClass,
    this.number,
    this.numberElement,
    this.title,
    this.titleElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ImagingStudyInstance';

  /// [uid] /// The DICOM SOP Instance UID for this image or other DICOM content.
  final FhirId uid;
  final Element? uidElement;

  /// [sopClass] /// DICOM instance type.
  final Coding sopClass;

  /// [number] /// The number of instance in the series.
  final FhirUnsignedInt? number;
  final Element? numberElement;

  /// [title] /// The description of the instance.
  final FhirString? title;
  final Element? titleElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['uid'] = uid.toJson();
    if (uidElement != null) {
      json['_uid'] = uidElement!.toJson();
    }
    json['sopClass'] = sopClass.toJson();
    if (number?.value != null) {
      json['number'] = number!.toJson();
    }
    if (numberElement != null) {
      json['_number'] = numberElement!.toJson();
    }
    if (title?.value != null) {
      json['title'] = title!.toJson();
    }
    if (titleElement != null) {
      json['_title'] = titleElement!.toJson();
    }
    return json;
  }

  factory ImagingStudyInstance.fromJson(Map<String, dynamic> json) {
    return ImagingStudyInstance(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      uid: FhirId.fromJson(json['uid']),
      uidElement: json['_uid'] != null
          ? Element.fromJson(json['_uid'] as Map<String, dynamic>)
          : null,
      sopClass: Coding.fromJson(json['sopClass'] as Map<String, dynamic>),
      number: json['number'] != null
          ? FhirUnsignedInt.fromJson(json['number'])
          : null,
      numberElement: json['_number'] != null
          ? Element.fromJson(json['_number'] as Map<String, dynamic>)
          : null,
      title: json['title'] != null ? FhirString.fromJson(json['title']) : null,
      titleElement: json['_title'] != null
          ? Element.fromJson(json['_title'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ImagingStudyInstance clone() => throw UnimplementedError();
  @override
  ImagingStudyInstance copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? uid,
    Element? uidElement,
    Coding? sopClass,
    FhirUnsignedInt? number,
    Element? numberElement,
    FhirString? title,
    Element? titleElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ImagingStudyInstance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      uid: uid ?? this.uid,
      uidElement: uidElement ?? this.uidElement,
      sopClass: sopClass ?? this.sopClass,
      number: number ?? this.number,
      numberElement: numberElement ?? this.numberElement,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ImagingStudyInstance.fromYaml(dynamic yaml) => yaml is String
      ? ImagingStudyInstance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ImagingStudyInstance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ImagingStudyInstance cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ImagingStudyInstance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImagingStudyInstance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
