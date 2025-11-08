// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'procedure.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ProcedureCopyWith<T> extends $DomainResourceCopyWith<T> {
  @override
  T call({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    List<Reference>? basedOn,
    List<Reference>? partOf,
    EventStatus? status,
    CodeableConcept? statusReason,
    CodeableConcept? category,
    CodeableConcept? code,
    Reference? subject,
    Reference? encounter,
    PerformedXProcedure? performedX,
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
    bool? disallowExtensions,
  });
}

class _$ProcedureCopyWithImpl<T> implements $ProcedureCopyWith<T> {
  final Procedure _value;
  final T Function(Procedure) _then;

  _$ProcedureCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? meta = fhirSentinel,
    Object? implicitRules = fhirSentinel,
    Object? language = fhirSentinel,
    Object? text = fhirSentinel,
    Object? contained = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? instantiatesCanonical = fhirSentinel,
    Object? instantiatesUri = fhirSentinel,
    Object? basedOn = fhirSentinel,
    Object? partOf = fhirSentinel,
    Object? status = fhirSentinel,
    Object? statusReason = fhirSentinel,
    Object? category = fhirSentinel,
    Object? code = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? performedX = fhirSentinel,
    Object? recorder = fhirSentinel,
    Object? asserter = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? location = fhirSentinel,
    Object? reasonCode = fhirSentinel,
    Object? reasonReference = fhirSentinel,
    Object? bodySite = fhirSentinel,
    Object? outcome = fhirSentinel,
    Object? report = fhirSentinel,
    Object? complication = fhirSentinel,
    Object? complicationDetail = fhirSentinel,
    Object? followUp = fhirSentinel,
    Object? note = fhirSentinel,
    Object? focalDevice = fhirSentinel,
    Object? usedReference = fhirSentinel,
    Object? usedCode = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Procedure(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        meta: identical(meta, fhirSentinel) ? _value.meta : meta as FhirMeta?,
        implicitRules: identical(implicitRules, fhirSentinel)
            ? _value.implicitRules
            : implicitRules as FhirUri?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as CommonLanguages?,
        text: identical(text, fhirSentinel) ? _value.text : text as Narrative?,
        contained: identical(contained, fhirSentinel)
            ? _value.contained
            : contained as List<Resource>?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        instantiatesCanonical: identical(instantiatesCanonical, fhirSentinel)
            ? _value.instantiatesCanonical
            : instantiatesCanonical as List<FhirCanonical>?,
        instantiatesUri: identical(instantiatesUri, fhirSentinel)
            ? _value.instantiatesUri
            : instantiatesUri as List<FhirUri>?,
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as List<Reference>?,
        partOf: identical(partOf, fhirSentinel)
            ? _value.partOf
            : partOf as List<Reference>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as EventStatus?) ?? _value.status,
        statusReason: identical(statusReason, fhirSentinel)
            ? _value.statusReason
            : statusReason as CodeableConcept?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as CodeableConcept?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : (subject as Reference?) ?? _value.subject,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        performedX: identical(performedX, fhirSentinel)
            ? _value.performedX
            : performedX as PerformedXProcedure?,
        recorder: identical(recorder, fhirSentinel)
            ? _value.recorder
            : recorder as Reference?,
        asserter: identical(asserter, fhirSentinel)
            ? _value.asserter
            : asserter as Reference?,
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as List<ProcedurePerformer>?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as Reference?,
        reasonCode: identical(reasonCode, fhirSentinel)
            ? _value.reasonCode
            : reasonCode as List<CodeableConcept>?,
        reasonReference: identical(reasonReference, fhirSentinel)
            ? _value.reasonReference
            : reasonReference as List<Reference>?,
        bodySite: identical(bodySite, fhirSentinel)
            ? _value.bodySite
            : bodySite as List<CodeableConcept>?,
        outcome: identical(outcome, fhirSentinel)
            ? _value.outcome
            : outcome as CodeableConcept?,
        report: identical(report, fhirSentinel)
            ? _value.report
            : report as List<Reference>?,
        complication: identical(complication, fhirSentinel)
            ? _value.complication
            : complication as List<CodeableConcept>?,
        complicationDetail: identical(complicationDetail, fhirSentinel)
            ? _value.complicationDetail
            : complicationDetail as List<Reference>?,
        followUp: identical(followUp, fhirSentinel)
            ? _value.followUp
            : followUp as List<CodeableConcept>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        focalDevice: identical(focalDevice, fhirSentinel)
            ? _value.focalDevice
            : focalDevice as List<ProcedureFocalDevice>?,
        usedReference: identical(usedReference, fhirSentinel)
            ? _value.usedReference
            : usedReference as List<Reference>?,
        usedCode: identical(usedCode, fhirSentinel)
            ? _value.usedCode
            : usedCode as List<CodeableConcept>?,
      ),
    );
  }
}

extension ProcedureCopyWithExtension on Procedure {
  $ProcedureCopyWith<Procedure> get copyWith =>
      _$ProcedureCopyWithImpl<Procedure>(
        this,
        (value) => value,
      );
}

abstract class $ProcedurePerformerCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? function_,
    Reference? actor,
    Reference? onBehalfOf,
    bool? disallowExtensions,
  });
}

class _$ProcedurePerformerCopyWithImpl<T>
    implements $ProcedurePerformerCopyWith<T> {
  final ProcedurePerformer _value;
  final T Function(ProcedurePerformer) _then;

  _$ProcedurePerformerCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? function_ = fhirSentinel,
    Object? actor = fhirSentinel,
    Object? onBehalfOf = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ProcedurePerformer(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        function_: identical(function_, fhirSentinel)
            ? _value.function_
            : function_ as CodeableConcept?,
        actor: identical(actor, fhirSentinel)
            ? _value.actor
            : (actor as Reference?) ?? _value.actor,
        onBehalfOf: identical(onBehalfOf, fhirSentinel)
            ? _value.onBehalfOf
            : onBehalfOf as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ProcedurePerformerCopyWithExtension on ProcedurePerformer {
  $ProcedurePerformerCopyWith<ProcedurePerformer> get copyWith =>
      _$ProcedurePerformerCopyWithImpl<ProcedurePerformer>(
        this,
        (value) => value,
      );
}

abstract class $ProcedureFocalDeviceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? action,
    Reference? manipulated,
    bool? disallowExtensions,
  });
}

class _$ProcedureFocalDeviceCopyWithImpl<T>
    implements $ProcedureFocalDeviceCopyWith<T> {
  final ProcedureFocalDevice _value;
  final T Function(ProcedureFocalDevice) _then;

  _$ProcedureFocalDeviceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? action = fhirSentinel,
    Object? manipulated = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ProcedureFocalDevice(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        action: identical(action, fhirSentinel)
            ? _value.action
            : action as CodeableConcept?,
        manipulated: identical(manipulated, fhirSentinel)
            ? _value.manipulated
            : (manipulated as Reference?) ?? _value.manipulated,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ProcedureFocalDeviceCopyWithExtension on ProcedureFocalDevice {
  $ProcedureFocalDeviceCopyWith<ProcedureFocalDevice> get copyWith =>
      _$ProcedureFocalDeviceCopyWithImpl<ProcedureFocalDevice>(
        this,
        (value) => value,
      );
}
