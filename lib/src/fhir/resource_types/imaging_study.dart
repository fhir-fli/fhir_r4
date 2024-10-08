import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'imaging_study.g.dart';

/// [ImagingStudy] /// Representation of the content produced in a DICOM imaging study. A study
/// comprises a set of series, each of which includes a set of Service-Object
/// Pair Instances (SOP Instances - images or other data) acquired or produced
/// in a common context. A series is of only one modality (e.g. X-ray, CT, MR,
/// ultrasound), but a study may have multiple series of different modalities.
@JsonSerializable()
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
    R4ResourceType? resourceType,
  }) : super(
            resourceType: R4ResourceType.ImagingStudy,
            fhirType: 'ImagingStudy');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifiers for the ImagingStudy such as DICOM Study Instance UID, and
  /// Accession Number.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// The current state of the ImagingStudy.
  @JsonKey(name: 'status')
  final ImagingStudyStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [modality] /// A list of all the series.modality values that are actual acquisition
  /// modalities, i.e. those in the DICOM Context Group 29 (value set OID
  /// 1.2.840.10008.6.1.19).
  @JsonKey(name: 'modality')
  final List<Coding>? modality;

  /// [subject] /// The subject, typically a patient, of the imaging study.
  @JsonKey(name: 'subject')
  final Reference subject;

  /// [encounter] /// The healthcare event (e.g. a patient and healthcare provider interaction)
  /// during which this ImagingStudy is made.
  @JsonKey(name: 'encounter')
  final Reference? encounter;

  /// [started] /// Date and time the study started.
  @JsonKey(name: 'started')
  final FhirDateTime? started;
  @JsonKey(name: '_started')
  final Element? startedElement;

  /// [basedOn] /// A list of the diagnostic requests that resulted in this imaging study being
  /// performed.
  @JsonKey(name: 'basedOn')
  final List<Reference>? basedOn;

  /// [referrer] /// The requesting/referring physician.
  @JsonKey(name: 'referrer')
  final Reference? referrer;

  /// [interpreter] /// Who read the study and interpreted the images or other content.
  @JsonKey(name: 'interpreter')
  final List<Reference>? interpreter;

  /// [endpoint] /// The network service providing access (e.g., query, view, or retrieval) for
  /// the study. See implementation notes for information about using DICOM
  /// endpoints. A study-level endpoint applies to each series in the study,
  /// unless overridden by a series-level endpoint with the same
  /// Endpoint.connectionType.
  @JsonKey(name: 'endpoint')
  final List<Reference>? endpoint;

  /// [numberOfSeries] /// Number of Series in the Study. This value given may be larger than the
  /// number of series elements this Resource contains due to resource
  /// availability, security, or other factors. This element should be present if
  /// any series elements are present.
  @JsonKey(name: 'numberOfSeries')
  final FhirUnsignedInt? numberOfSeries;
  @JsonKey(name: '_numberOfSeries')
  final Element? numberOfSeriesElement;

  /// [numberOfInstances] /// Number of SOP Instances in Study. This value given may be larger than the
  /// number of instance elements this resource contains due to resource
  /// availability, security, or other factors. This element should be present if
  /// any instance elements are present.
  @JsonKey(name: 'numberOfInstances')
  final FhirUnsignedInt? numberOfInstances;
  @JsonKey(name: '_numberOfInstances')
  final Element? numberOfInstancesElement;

  /// [procedureReference] /// The procedure which this ImagingStudy was part of.
  @JsonKey(name: 'procedureReference')
  final Reference? procedureReference;

  /// [procedureCode] /// The code for the performed procedure type.
  @JsonKey(name: 'procedureCode')
  final List<CodeableConcept>? procedureCode;

  /// [location] /// The principal physical location where the ImagingStudy was performed.
  @JsonKey(name: 'location')
  final Reference? location;

  /// [reasonCode] /// Description of clinical condition indicating why the ImagingStudy was
  /// requested.
  @JsonKey(name: 'reasonCode')
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Indicates another resource whose existence justifies this Study.
  @JsonKey(name: 'reasonReference')
  final List<Reference>? reasonReference;

  /// [note] /// Per the recommended DICOM mapping, this element is derived from the Study
  /// Description attribute (0008,1030). Observations or findings about the
  /// imaging study should be recorded in another resource, e.g. Observation, and
  /// not in this element.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [description] /// The Imaging Manager description of the study. Institution-generated
  /// description or classification of the Study (component) performed.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [series] /// Each study has one or more series of images or other content.
  @JsonKey(name: 'series')
  final List<ImagingStudySeries>? series;
  factory ImagingStudy.fromJson(Map<String, dynamic> json) =>
      _$ImagingStudyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImagingStudyToJson(this);

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
@JsonSerializable()
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
  }) : super(fhirType: 'ImagingStudySeries');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [uid] /// The DICOM Series Instance UID for the series.
  @JsonKey(name: 'uid')
  final FhirId uid;
  @JsonKey(name: '_uid')
  final Element? uidElement;

  /// [number] /// The numeric identifier of this series in the study.
  @JsonKey(name: 'number')
  final FhirUnsignedInt? number;
  @JsonKey(name: '_number')
  final Element? numberElement;

  /// [modality] /// The modality of this series sequence.
  @JsonKey(name: 'modality')
  final Coding modality;

  /// [description] /// A description of the series.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [numberOfInstances] /// Number of SOP Instances in the Study. The value given may be larger than
  /// the number of instance elements this resource contains due to resource
  /// availability, security, or other factors. This element should be present if
  /// any instance elements are present.
  @JsonKey(name: 'numberOfInstances')
  final FhirUnsignedInt? numberOfInstances;
  @JsonKey(name: '_numberOfInstances')
  final Element? numberOfInstancesElement;

  /// [endpoint] /// The network service providing access (e.g., query, view, or retrieval) for
  /// this series. See implementation notes for information about using DICOM
  /// endpoints. A series-level endpoint, if present, has precedence over a
  /// study-level endpoint with the same Endpoint.connectionType.
  @JsonKey(name: 'endpoint')
  final List<Reference>? endpoint;

  /// [bodySite] /// The anatomic structures examined. See DICOM Part 16 Annex L
  /// (http://dicom.nema.org/medical/dicom/current/output/chtml/part16/chapter_L.html)
  /// for DICOM to SNOMED-CT mappings. The bodySite may indicate the laterality
  /// of body part imaged; if so, it shall be consistent with any content of
  /// ImagingStudy.series.laterality.
  @JsonKey(name: 'bodySite')
  final Coding? bodySite;

  /// [laterality] /// The laterality of the (possibly paired) anatomic structures examined. E.g.,
  /// the left knee, both lungs, or unpaired abdomen. If present, shall be
  /// consistent with any laterality information indicated in
  /// ImagingStudy.series.bodySite.
  @JsonKey(name: 'laterality')
  final Laterality? laterality;

  /// [specimen] /// The specimen imaged, e.g., for whole slide imaging of a biopsy.
  @JsonKey(name: 'specimen')
  final List<Reference>? specimen;

  /// [started] /// The date and time the series was started.
  @JsonKey(name: 'started')
  final FhirDateTime? started;
  @JsonKey(name: '_started')
  final Element? startedElement;

  /// [performer] /// Indicates who or what performed the series and how they were involved.
  @JsonKey(name: 'performer')
  final List<ImagingStudyPerformer>? performer;

  /// [instance] /// A single SOP instance within the series, e.g. an image, or presentation
  /// state.
  @JsonKey(name: 'instance')
  final List<ImagingStudyInstance>? instance;
  factory ImagingStudySeries.fromJson(Map<String, dynamic> json) =>
      _$ImagingStudySeriesFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImagingStudySeriesToJson(this);

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
    Laterality? laterality,
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
@JsonSerializable()
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
  }) : super(fhirType: 'ImagingStudyPerformer');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [function_] /// Distinguishes the type of involvement of the performer in the series.
  @JsonKey(name: 'function')
  final ImagingStudySeriesPerformerFunction? function_;

  /// [actor] /// Indicates who or what performed the series.
  @JsonKey(name: 'actor')
  final Reference actor;
  factory ImagingStudyPerformer.fromJson(Map<String, dynamic> json) =>
      _$ImagingStudyPerformerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImagingStudyPerformerToJson(this);

  @override
  ImagingStudyPerformer clone() => throw UnimplementedError();
  @override
  ImagingStudyPerformer copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ImagingStudySeriesPerformerFunction? function_,
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
@JsonSerializable()
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
  }) : super(fhirType: 'ImagingStudyInstance');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [uid] /// The DICOM SOP Instance UID for this image or other DICOM content.
  @JsonKey(name: 'uid')
  final FhirId uid;
  @JsonKey(name: '_uid')
  final Element? uidElement;

  /// [sopClass] /// DICOM instance type.
  @JsonKey(name: 'sopClass')
  final Coding sopClass;

  /// [number] /// The number of instance in the series.
  @JsonKey(name: 'number')
  final FhirUnsignedInt? number;
  @JsonKey(name: '_number')
  final Element? numberElement;

  /// [title] /// The description of the instance.
  @JsonKey(name: 'title')
  final FhirString? title;
  @JsonKey(name: '_title')
  final Element? titleElement;
  factory ImagingStudyInstance.fromJson(Map<String, dynamic> json) =>
      _$ImagingStudyInstanceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImagingStudyInstanceToJson(this);

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
