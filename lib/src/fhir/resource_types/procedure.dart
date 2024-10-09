import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'procedure.g.dart';

/// [Procedure] /// An action that is or was performed on or for a patient. This can be a
/// physical intervention like an operation, or less invasive like long term
/// services, counseling, or hypnotherapy.
@JsonSerializable()
class Procedure extends DomainResource {
  Procedure({
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
    this.instantiatesCanonical,
    this.instantiatesCanonicalElement,
    this.instantiatesUri,
    this.instantiatesUriElement,
    this.basedOn,
    this.partOf,
    required this.status,
    this.statusElement,
    this.statusReason,
    this.category,
    this.code,
    required this.subject,
    this.encounter,
    this.performedDateTime,
    this.performedDateTimeElement,
    this.performedPeriod,
    this.performedString,
    this.performedStringElement,
    this.performedAge,
    this.performedRange,
    this.recorder,
    this.asserter,
    this.performer,
    this.location,
    this.reasonCode,
    this.reasonReference,
    this.bodySite,
    this.outcome,
    this.report,
    this.complication,
    this.complicationDetail,
    this.followUp,
    this.note,
    this.focalDevice,
    this.usedReference,
    this.usedCode,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.Procedure);
  @override
  String get fhirType => 'Procedure';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this procedure by the performer or other
  /// systems which remain constant as the resource is updated and is propagated
  /// from server to server.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [instantiatesCanonical] /// The URL pointing to a FHIR-defined protocol, guideline, order set or other
  /// definition that is adhered to in whole or in part by this Procedure.
  @JsonKey(name: 'instantiatesCanonical')
  final List<FhirCanonical>? instantiatesCanonical;
  @JsonKey(name: '_instantiatesCanonical')
  final List<Element>? instantiatesCanonicalElement;

  /// [instantiatesUri] /// The URL pointing to an externally maintained protocol, guideline, order set
  /// or other definition that is adhered to in whole or in part by this
  /// Procedure.
  @JsonKey(name: 'instantiatesUri')
  final List<FhirUri>? instantiatesUri;
  @JsonKey(name: '_instantiatesUri')
  final List<Element>? instantiatesUriElement;

  /// [basedOn] /// A reference to a resource that contains details of the request for this
  /// procedure.
  @JsonKey(name: 'basedOn')
  final List<Reference>? basedOn;

  /// [partOf] /// A larger event of which this particular procedure is a component or step.
  @JsonKey(name: 'partOf')
  final List<Reference>? partOf;

  /// [status] /// A code specifying the state of the procedure. Generally, this will be the
  /// in-progress or completed state.
  @JsonKey(name: 'status')
  final EventStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [statusReason] /// Captures the reason for the current state of the procedure.
  @JsonKey(name: 'statusReason')
  final CodeableConcept? statusReason;

  /// [category] /// A code that classifies the procedure for searching, sorting and display
  /// purposes (e.g. "Surgical Procedure").
  @JsonKey(name: 'category')
  final ProcedureCategoryCodesSNOMEDCT? category;

  /// [code] /// The specific procedure that is performed. Use text if the exact nature of
  /// the procedure cannot be coded (e.g. "Laparoscopic Appendectomy").
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [subject] /// The person, animal or group on which the procedure was performed.
  @JsonKey(name: 'subject')
  final Reference subject;

  /// [encounter] /// The Encounter during which this Procedure was created or performed or to
  /// which the creation of this record is tightly associated.
  @JsonKey(name: 'encounter')
  final Reference? encounter;

  /// [performedDateTime] /// Estimated or actual date, date-time, period, or age when the procedure was
  /// performed. Allows a period to support complex procedures that span more
  /// than one date, and also allows for the length of the procedure to be
  /// captured.
  @JsonKey(name: 'performedDateTime')
  final FhirDateTime? performedDateTime;
  @JsonKey(name: '_performedDateTime')
  final Element? performedDateTimeElement;

  /// [performedPeriod] /// Estimated or actual date, date-time, period, or age when the procedure was
  /// performed. Allows a period to support complex procedures that span more
  /// than one date, and also allows for the length of the procedure to be
  /// captured.
  @JsonKey(name: 'performedPeriod')
  final Period? performedPeriod;

  /// [performedString] /// Estimated or actual date, date-time, period, or age when the procedure was
  /// performed. Allows a period to support complex procedures that span more
  /// than one date, and also allows for the length of the procedure to be
  /// captured.
  @JsonKey(name: 'performedString')
  final FhirString? performedString;
  @JsonKey(name: '_performedString')
  final Element? performedStringElement;

  /// [performedAge] /// Estimated or actual date, date-time, period, or age when the procedure was
  /// performed. Allows a period to support complex procedures that span more
  /// than one date, and also allows for the length of the procedure to be
  /// captured.
  @JsonKey(name: 'performedAge')
  final Age? performedAge;

  /// [performedRange] /// Estimated or actual date, date-time, period, or age when the procedure was
  /// performed. Allows a period to support complex procedures that span more
  /// than one date, and also allows for the length of the procedure to be
  /// captured.
  @JsonKey(name: 'performedRange')
  final Range? performedRange;

  /// [recorder] /// Individual who recorded the record and takes responsibility for its
  /// content.
  @JsonKey(name: 'recorder')
  final Reference? recorder;

  /// [asserter] /// Individual who is making the procedure statement.
  @JsonKey(name: 'asserter')
  final Reference? asserter;

  /// [performer] /// Limited to "real" people rather than equipment.
  @JsonKey(name: 'performer')
  final List<ProcedurePerformer>? performer;

  /// [location] /// The location where the procedure actually happened. E.g. a newborn at home,
  /// a tracheostomy at a restaurant.
  @JsonKey(name: 'location')
  final Reference? location;

  /// [reasonCode] /// The coded reason why the procedure was performed. This may be a coded
  /// entity of some type, or may simply be present as text.
  @JsonKey(name: 'reasonCode')
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// The justification of why the procedure was performed.
  @JsonKey(name: 'reasonReference')
  final List<Reference>? reasonReference;

  /// [bodySite] /// Detailed and structured anatomical location information. Multiple locations
  /// are allowed - e.g. multiple punch biopsies of a lesion.
  @JsonKey(name: 'bodySite')
  final List<CodeableConcept>? bodySite;

  /// [outcome] /// The outcome of the procedure - did it resolve the reasons for the procedure
  /// being performed?
  @JsonKey(name: 'outcome')
  final ProcedureOutcomeCodesSNOMEDCT? outcome;

  /// [report] /// This could be a histology result, pathology report, surgical report, etc.
  @JsonKey(name: 'report')
  final List<Reference>? report;

  /// [complication] /// Any complications that occurred during the procedure, or in the immediate
  /// post-performance period. These are generally tracked separately from the
  /// notes, which will typically describe the procedure itself rather than any
  /// 'post procedure' issues.
  @JsonKey(name: 'complication')
  final List<ConditionProblemDiagnosisCodes>? complication;

  /// [complicationDetail] /// Any complications that occurred during the procedure, or in the immediate
  /// post-performance period.
  @JsonKey(name: 'complicationDetail')
  final List<Reference>? complicationDetail;

  /// [followUp] /// If the procedure required specific follow up - e.g. removal of sutures. The
  /// follow up may be represented as a simple note or could potentially be more
  /// complex, in which case the CarePlan resource can be used.
  @JsonKey(name: 'followUp')
  final List<ProcedureFollowUpCodesSNOMEDCT>? followUp;

  /// [note] /// Any other notes and comments about the procedure.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [focalDevice] /// A device that is implanted, removed or otherwise manipulated (calibration,
  /// battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as
  /// a focal portion of the Procedure.
  @JsonKey(name: 'focalDevice')
  final List<ProcedureFocalDevice>? focalDevice;

  /// [usedReference] /// Identifies medications, devices and any other substance used as part of the
  /// procedure.
  @JsonKey(name: 'usedReference')
  final List<Reference>? usedReference;

  /// [usedCode] /// Identifies coded items that were used as part of the procedure.
  @JsonKey(name: 'usedCode')
  final List<CodeableConcept>? usedCode;
  factory Procedure.fromJson(Map<String, dynamic> json) =>
      _$ProcedureFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProcedureToJson(this);

  @override
  Procedure clone() => throw UnimplementedError();
  @override
  Procedure copyWith({
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
    List<FhirCanonical>? instantiatesCanonical,
    List<Element>? instantiatesCanonicalElement,
    List<FhirUri>? instantiatesUri,
    List<Element>? instantiatesUriElement,
    List<Reference>? basedOn,
    List<Reference>? partOf,
    EventStatus? status,
    Element? statusElement,
    CodeableConcept? statusReason,
    ProcedureCategoryCodesSNOMEDCT? category,
    CodeableConcept? code,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? performedDateTime,
    Element? performedDateTimeElement,
    Period? performedPeriod,
    FhirString? performedString,
    Element? performedStringElement,
    Age? performedAge,
    Range? performedRange,
    Reference? recorder,
    Reference? asserter,
    List<ProcedurePerformer>? performer,
    Reference? location,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<CodeableConcept>? bodySite,
    ProcedureOutcomeCodesSNOMEDCT? outcome,
    List<Reference>? report,
    List<ConditionProblemDiagnosisCodes>? complication,
    List<Reference>? complicationDetail,
    List<ProcedureFollowUpCodesSNOMEDCT>? followUp,
    List<Annotation>? note,
    List<ProcedureFocalDevice>? focalDevice,
    List<Reference>? usedReference,
    List<CodeableConcept>? usedCode,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Procedure(
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
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesCanonicalElement:
          instantiatesCanonicalElement ?? this.instantiatesCanonicalElement,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      instantiatesUriElement:
          instantiatesUriElement ?? this.instantiatesUriElement,
      basedOn: basedOn ?? this.basedOn,
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      statusReason: statusReason ?? this.statusReason,
      category: category ?? this.category,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      performedDateTime: performedDateTime ?? this.performedDateTime,
      performedDateTimeElement:
          performedDateTimeElement ?? this.performedDateTimeElement,
      performedPeriod: performedPeriod ?? this.performedPeriod,
      performedString: performedString ?? this.performedString,
      performedStringElement:
          performedStringElement ?? this.performedStringElement,
      performedAge: performedAge ?? this.performedAge,
      performedRange: performedRange ?? this.performedRange,
      recorder: recorder ?? this.recorder,
      asserter: asserter ?? this.asserter,
      performer: performer ?? this.performer,
      location: location ?? this.location,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      bodySite: bodySite ?? this.bodySite,
      outcome: outcome ?? this.outcome,
      report: report ?? this.report,
      complication: complication ?? this.complication,
      complicationDetail: complicationDetail ?? this.complicationDetail,
      followUp: followUp ?? this.followUp,
      note: note ?? this.note,
      focalDevice: focalDevice ?? this.focalDevice,
      usedReference: usedReference ?? this.usedReference,
      usedCode: usedCode ?? this.usedCode,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Procedure.fromYaml(dynamic yaml) => yaml is String
      ? Procedure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Procedure.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Procedure cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Procedure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Procedure.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ProcedurePerformer] /// Limited to "real" people rather than equipment.
@JsonSerializable()
class ProcedurePerformer extends BackboneElement {
  ProcedurePerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    this.onBehalfOf,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ProcedurePerformer';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [function_] /// Distinguishes the type of involvement of the performer in the procedure.
  /// For example, surgeon, anaesthetist, endoscopist.
  @JsonKey(name: 'function')
  final CodeableConcept? function_;

  /// [actor] /// The practitioner who was involved in the procedure.
  @JsonKey(name: 'actor')
  final Reference actor;

  /// [onBehalfOf] /// The organization the device or practitioner was acting on behalf of.
  @JsonKey(name: 'onBehalfOf')
  final Reference? onBehalfOf;
  factory ProcedurePerformer.fromJson(Map<String, dynamic> json) =>
      _$ProcedurePerformerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProcedurePerformerToJson(this);

  @override
  ProcedurePerformer clone() => throw UnimplementedError();
  @override
  ProcedurePerformer copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? function_,
    Reference? actor,
    Reference? onBehalfOf,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ProcedurePerformer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      function_: function_ ?? this.function_,
      actor: actor ?? this.actor,
      onBehalfOf: onBehalfOf ?? this.onBehalfOf,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ProcedurePerformer.fromYaml(dynamic yaml) => yaml is String
      ? ProcedurePerformer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ProcedurePerformer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ProcedurePerformer cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ProcedurePerformer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ProcedurePerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ProcedureFocalDevice] /// A device that is implanted, removed or otherwise manipulated (calibration,
/// battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as
/// a focal portion of the Procedure.
@JsonSerializable()
class ProcedureFocalDevice extends BackboneElement {
  ProcedureFocalDevice({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.action,
    required this.manipulated,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ProcedureFocalDevice';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [action] /// The kind of change that happened to the device during the procedure.
  @JsonKey(name: 'action')
  final CodeableConcept? action;

  /// [manipulated] /// The device that was manipulated (changed) during the procedure.
  @JsonKey(name: 'manipulated')
  final Reference manipulated;
  factory ProcedureFocalDevice.fromJson(Map<String, dynamic> json) =>
      _$ProcedureFocalDeviceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProcedureFocalDeviceToJson(this);

  @override
  ProcedureFocalDevice clone() => throw UnimplementedError();
  @override
  ProcedureFocalDevice copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? action,
    Reference? manipulated,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ProcedureFocalDevice(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      action: action ?? this.action,
      manipulated: manipulated ?? this.manipulated,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ProcedureFocalDevice.fromYaml(dynamic yaml) => yaml is String
      ? ProcedureFocalDevice.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ProcedureFocalDevice.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ProcedureFocalDevice cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ProcedureFocalDevice.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ProcedureFocalDevice.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
