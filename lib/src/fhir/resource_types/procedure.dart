import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Procedure] /// An action that is or was performed on or for a patient. This can be a
/// physical intervention like an operation, or less invasive like long term
/// services, counseling, or hypnotherapy.
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
  }) : super(resourceType: R4ResourceType.Procedure);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this procedure by the performer or other
  /// systems which remain constant as the resource is updated and is propagated
  /// from server to server.
  final List<Identifier>? identifier;

  /// [instantiatesCanonical] /// The URL pointing to a FHIR-defined protocol, guideline, order set or other
  /// definition that is adhered to in whole or in part by this Procedure.
  final List<FhirCanonical>? instantiatesCanonical;
  final List<Element>? instantiatesCanonicalElement;

  /// [instantiatesUri] /// The URL pointing to an externally maintained protocol, guideline, order set
  /// or other definition that is adhered to in whole or in part by this
  /// Procedure.
  final List<FhirUri>? instantiatesUri;
  final List<Element>? instantiatesUriElement;

  /// [basedOn] /// A reference to a resource that contains details of the request for this
  /// procedure.
  final List<Reference>? basedOn;

  /// [partOf] /// A larger event of which this particular procedure is a component or step.
  final List<Reference>? partOf;

  /// [status] /// A code specifying the state of the procedure. Generally, this will be the
  /// in-progress or completed state.
  final FhirCode status;
  final Element? statusElement;

  /// [statusReason] /// Captures the reason for the current state of the procedure.
  final CodeableConcept? statusReason;

  /// [category] /// A code that classifies the procedure for searching, sorting and display
  /// purposes (e.g. "Surgical Procedure").
  final CodeableConcept? category;

  /// [code] /// The specific procedure that is performed. Use text if the exact nature of
  /// the procedure cannot be coded (e.g. "Laparoscopic Appendectomy").
  final CodeableConcept? code;

  /// [subject] /// The person, animal or group on which the procedure was performed.
  final Reference subject;

  /// [encounter] /// The Encounter during which this Procedure was created or performed or to
  /// which the creation of this record is tightly associated.
  final Reference? encounter;

  /// [performedDateTime] /// Estimated or actual date, date-time, period, or age when the procedure was
  /// performed. Allows a period to support complex procedures that span more
  /// than one date, and also allows for the length of the procedure to be
  /// captured.
  final FhirDateTime? performedDateTime;
  final Element? performedDateTimeElement;

  /// [performedPeriod] /// Estimated or actual date, date-time, period, or age when the procedure was
  /// performed. Allows a period to support complex procedures that span more
  /// than one date, and also allows for the length of the procedure to be
  /// captured.
  final Period? performedPeriod;

  /// [performedString] /// Estimated or actual date, date-time, period, or age when the procedure was
  /// performed. Allows a period to support complex procedures that span more
  /// than one date, and also allows for the length of the procedure to be
  /// captured.
  final FhirString? performedString;
  final Element? performedStringElement;

  /// [performedAge] /// Estimated or actual date, date-time, period, or age when the procedure was
  /// performed. Allows a period to support complex procedures that span more
  /// than one date, and also allows for the length of the procedure to be
  /// captured.
  final Age? performedAge;

  /// [performedRange] /// Estimated or actual date, date-time, period, or age when the procedure was
  /// performed. Allows a period to support complex procedures that span more
  /// than one date, and also allows for the length of the procedure to be
  /// captured.
  final Range? performedRange;

  /// [recorder] /// Individual who recorded the record and takes responsibility for its
  /// content.
  final Reference? recorder;

  /// [asserter] /// Individual who is making the procedure statement.
  final Reference? asserter;

  /// [performer] /// Limited to "real" people rather than equipment.
  final List<ProcedurePerformer>? performer;

  /// [location] /// The location where the procedure actually happened. E.g. a newborn at home,
  /// a tracheostomy at a restaurant.
  final Reference? location;

  /// [reasonCode] /// The coded reason why the procedure was performed. This may be a coded
  /// entity of some type, or may simply be present as text.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// The justification of why the procedure was performed.
  final List<Reference>? reasonReference;

  /// [bodySite] /// Detailed and structured anatomical location information. Multiple locations
  /// are allowed - e.g. multiple punch biopsies of a lesion.
  final List<CodeableConcept>? bodySite;

  /// [outcome] /// The outcome of the procedure - did it resolve the reasons for the procedure
  /// being performed?
  final CodeableConcept? outcome;

  /// [report] /// This could be a histology result, pathology report, surgical report, etc.
  final List<Reference>? report;

  /// [complication] /// Any complications that occurred during the procedure, or in the immediate
  /// post-performance period. These are generally tracked separately from the
  /// notes, which will typically describe the procedure itself rather than any
  /// 'post procedure' issues.
  final List<CodeableConcept>? complication;

  /// [complicationDetail] /// Any complications that occurred during the procedure, or in the immediate
  /// post-performance period.
  final List<Reference>? complicationDetail;

  /// [followUp] /// If the procedure required specific follow up - e.g. removal of sutures. The
  /// follow up may be represented as a simple note or could potentially be more
  /// complex, in which case the CarePlan resource can be used.
  final List<CodeableConcept>? followUp;

  /// [note] /// Any other notes and comments about the procedure.
  final List<Annotation>? note;

  /// [focalDevice] /// A device that is implanted, removed or otherwise manipulated (calibration,
  /// battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as
  /// a focal portion of the Procedure.
  final List<ProcedureFocalDevice>? focalDevice;

  /// [usedReference] /// Identifies medications, devices and any other substance used as part of the
  /// procedure.
  final List<Reference>? usedReference;

  /// [usedCode] /// Identifies coded items that were used as part of the procedure.
  final List<CodeableConcept>? usedCode;
  @override
  Procedure clone() => throw UnimplementedError();
  Procedure copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
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
    FhirCode? status,
    Element? statusElement,
    CodeableConcept? statusReason,
    CodeableConcept? category,
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
    CodeableConcept? outcome,
    List<Reference>? report,
    List<CodeableConcept>? complication,
    List<Reference>? complicationDetail,
    List<CodeableConcept>? followUp,
    List<Annotation>? note,
    List<ProcedureFocalDevice>? focalDevice,
    List<Reference>? usedReference,
    List<CodeableConcept>? usedCode,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ProcedurePerformer] /// Limited to "real" people rather than equipment.
class ProcedurePerformer extends BackboneElement {
  ProcedurePerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    this.onBehalfOf,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [function_] /// Distinguishes the type of involvement of the performer in the procedure.
  /// For example, surgeon, anaesthetist, endoscopist.
  final CodeableConcept? function_;

  /// [actor] /// The practitioner who was involved in the procedure.
  final Reference actor;

  /// [onBehalfOf] /// The organization the device or practitioner was acting on behalf of.
  final Reference? onBehalfOf;
  @override
  ProcedurePerformer clone() => throw UnimplementedError();
  ProcedurePerformer copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? function_,
    Reference? actor,
    Reference? onBehalfOf,
  }) {
    return ProcedurePerformer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      function_: function_ ?? this.function_,
      actor: actor ?? this.actor,
      onBehalfOf: onBehalfOf ?? this.onBehalfOf,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ProcedureFocalDevice] /// A device that is implanted, removed or otherwise manipulated (calibration,
/// battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as
/// a focal portion of the Procedure.
class ProcedureFocalDevice extends BackboneElement {
  ProcedureFocalDevice({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.action,
    required this.manipulated,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [action] /// The kind of change that happened to the device during the procedure.
  final CodeableConcept? action;

  /// [manipulated] /// The device that was manipulated (changed) during the procedure.
  final Reference manipulated;
  @override
  ProcedureFocalDevice clone() => throw UnimplementedError();
  ProcedureFocalDevice copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? action,
    Reference? manipulated,
  }) {
    return ProcedureFocalDevice(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      action: action ?? this.action,
      manipulated: manipulated ?? this.manipulated,
    );
  }
}
