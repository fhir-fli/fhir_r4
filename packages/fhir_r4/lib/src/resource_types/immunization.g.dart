// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'immunization.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ImmunizationCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    ImmunizationStatusCodes? status,
    CodeableConcept? statusReason,
    CodeableConcept? vaccineCode,
    Reference? patient,
    Reference? encounter,
    FhirDateTime? occurrenceX,
    FhirDateTime? recorded,
    FhirBoolean? primarySource,
    CodeableConcept? reportOrigin,
    Reference? location,
    Reference? manufacturer,
    FhirString? lotNumber,
    FhirDate? expirationDate,
    CodeableConcept? site,
    CodeableConcept? route,
    Quantity? doseQuantity,
    List<ImmunizationPerformer>? performer,
    List<Annotation>? note,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    FhirBoolean? isSubpotent,
    List<CodeableConcept>? subpotentReason,
    List<ImmunizationEducation>? education,
    List<CodeableConcept>? programEligibility,
    CodeableConcept? fundingSource,
    List<ImmunizationReaction>? reaction,
    List<ImmunizationProtocolApplied>? protocolApplied,
    bool? disallowExtensions,
  });
}

class _$ImmunizationCopyWithImpl<T> implements $ImmunizationCopyWith<T> {
  final Immunization _value;
  final T Function(Immunization) _then;

  _$ImmunizationCopyWithImpl(this._value, this._then);

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
    Object? status = fhirSentinel,
    Object? statusReason = fhirSentinel,
    Object? vaccineCode = fhirSentinel,
    Object? patient = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? occurrenceX = fhirSentinel,
    Object? recorded = fhirSentinel,
    Object? primarySource = fhirSentinel,
    Object? reportOrigin = fhirSentinel,
    Object? location = fhirSentinel,
    Object? manufacturer = fhirSentinel,
    Object? lotNumber = fhirSentinel,
    Object? expirationDate = fhirSentinel,
    Object? site = fhirSentinel,
    Object? route = fhirSentinel,
    Object? doseQuantity = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? note = fhirSentinel,
    Object? reasonCode = fhirSentinel,
    Object? reasonReference = fhirSentinel,
    Object? isSubpotent = fhirSentinel,
    Object? subpotentReason = fhirSentinel,
    Object? education = fhirSentinel,
    Object? programEligibility = fhirSentinel,
    Object? fundingSource = fhirSentinel,
    Object? reaction = fhirSentinel,
    Object? protocolApplied = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Immunization(
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
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as ImmunizationStatusCodes?) ?? _value.status,
        statusReason: identical(statusReason, fhirSentinel)
            ? _value.statusReason
            : statusReason as CodeableConcept?,
        vaccineCode: identical(vaccineCode, fhirSentinel)
            ? _value.vaccineCode
            : (vaccineCode as CodeableConcept?) ?? _value.vaccineCode,
        patient: identical(patient, fhirSentinel)
            ? _value.patient
            : (patient as Reference?) ?? _value.patient,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        occurrenceX: identical(occurrenceX, fhirSentinel)
            ? _value.occurrenceX
            : (occurrenceX as FhirDateTime?) ?? _value.occurrenceX,
        recorded: identical(recorded, fhirSentinel)
            ? _value.recorded
            : recorded as FhirDateTime?,
        primarySource: identical(primarySource, fhirSentinel)
            ? _value.primarySource
            : primarySource as FhirBoolean?,
        reportOrigin: identical(reportOrigin, fhirSentinel)
            ? _value.reportOrigin
            : reportOrigin as CodeableConcept?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as Reference?,
        manufacturer: identical(manufacturer, fhirSentinel)
            ? _value.manufacturer
            : manufacturer as Reference?,
        lotNumber: identical(lotNumber, fhirSentinel)
            ? _value.lotNumber
            : lotNumber as FhirString?,
        expirationDate: identical(expirationDate, fhirSentinel)
            ? _value.expirationDate
            : expirationDate as FhirDate?,
        site: identical(site, fhirSentinel)
            ? _value.site
            : site as CodeableConcept?,
        route: identical(route, fhirSentinel)
            ? _value.route
            : route as CodeableConcept?,
        doseQuantity: identical(doseQuantity, fhirSentinel)
            ? _value.doseQuantity
            : doseQuantity as Quantity?,
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as List<ImmunizationPerformer>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        reasonCode: identical(reasonCode, fhirSentinel)
            ? _value.reasonCode
            : reasonCode as List<CodeableConcept>?,
        reasonReference: identical(reasonReference, fhirSentinel)
            ? _value.reasonReference
            : reasonReference as List<Reference>?,
        isSubpotent: identical(isSubpotent, fhirSentinel)
            ? _value.isSubpotent
            : isSubpotent as FhirBoolean?,
        subpotentReason: identical(subpotentReason, fhirSentinel)
            ? _value.subpotentReason
            : subpotentReason as List<CodeableConcept>?,
        education: identical(education, fhirSentinel)
            ? _value.education
            : education as List<ImmunizationEducation>?,
        programEligibility: identical(programEligibility, fhirSentinel)
            ? _value.programEligibility
            : programEligibility as List<CodeableConcept>?,
        fundingSource: identical(fundingSource, fhirSentinel)
            ? _value.fundingSource
            : fundingSource as CodeableConcept?,
        reaction: identical(reaction, fhirSentinel)
            ? _value.reaction
            : reaction as List<ImmunizationReaction>?,
        protocolApplied: identical(protocolApplied, fhirSentinel)
            ? _value.protocolApplied
            : protocolApplied as List<ImmunizationProtocolApplied>?,
      ),
    );
  }
}

extension ImmunizationCopyWithExtension on Immunization {
  $ImmunizationCopyWith<Immunization> get copyWith =>
      _$ImmunizationCopyWithImpl<Immunization>(
        this,
        (value) => value,
      );
}

abstract class $ImmunizationPerformerCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? function_,
    Reference? actor,
    bool? disallowExtensions,
  });
}

class _$ImmunizationPerformerCopyWithImpl<T>
    implements $ImmunizationPerformerCopyWith<T> {
  final ImmunizationPerformer _value;
  final T Function(ImmunizationPerformer) _then;

  _$ImmunizationPerformerCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? function_ = fhirSentinel,
    Object? actor = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImmunizationPerformer(
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
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImmunizationPerformerCopyWithExtension on ImmunizationPerformer {
  $ImmunizationPerformerCopyWith<ImmunizationPerformer> get copyWith =>
      _$ImmunizationPerformerCopyWithImpl<ImmunizationPerformer>(
        this,
        (value) => value,
      );
}

abstract class $ImmunizationEducationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? documentType,
    FhirUri? reference,
    FhirDateTime? publicationDate,
    FhirDateTime? presentationDate,
    bool? disallowExtensions,
  });
}

class _$ImmunizationEducationCopyWithImpl<T>
    implements $ImmunizationEducationCopyWith<T> {
  final ImmunizationEducation _value;
  final T Function(ImmunizationEducation) _then;

  _$ImmunizationEducationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? documentType = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? publicationDate = fhirSentinel,
    Object? presentationDate = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImmunizationEducation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        documentType: identical(documentType, fhirSentinel)
            ? _value.documentType
            : documentType as FhirString?,
        reference: identical(reference, fhirSentinel)
            ? _value.reference
            : reference as FhirUri?,
        publicationDate: identical(publicationDate, fhirSentinel)
            ? _value.publicationDate
            : publicationDate as FhirDateTime?,
        presentationDate: identical(presentationDate, fhirSentinel)
            ? _value.presentationDate
            : presentationDate as FhirDateTime?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImmunizationEducationCopyWithExtension on ImmunizationEducation {
  $ImmunizationEducationCopyWith<ImmunizationEducation> get copyWith =>
      _$ImmunizationEducationCopyWithImpl<ImmunizationEducation>(
        this,
        (value) => value,
      );
}

abstract class $ImmunizationReactionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDateTime? date,
    Reference? detail,
    FhirBoolean? reported,
    bool? disallowExtensions,
  });
}

class _$ImmunizationReactionCopyWithImpl<T>
    implements $ImmunizationReactionCopyWith<T> {
  final ImmunizationReaction _value;
  final T Function(ImmunizationReaction) _then;

  _$ImmunizationReactionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? date = fhirSentinel,
    Object? detail = fhirSentinel,
    Object? reported = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImmunizationReaction(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        detail: identical(detail, fhirSentinel)
            ? _value.detail
            : detail as Reference?,
        reported: identical(reported, fhirSentinel)
            ? _value.reported
            : reported as FhirBoolean?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImmunizationReactionCopyWithExtension on ImmunizationReaction {
  $ImmunizationReactionCopyWith<ImmunizationReaction> get copyWith =>
      _$ImmunizationReactionCopyWithImpl<ImmunizationReaction>(
        this,
        (value) => value,
      );
}

abstract class $ImmunizationProtocolAppliedCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? series,
    Reference? authority,
    List<CodeableConcept>? targetDisease,
    FhirPositiveInt? doseNumberX,
    FhirPositiveInt? seriesDosesX,
    bool? disallowExtensions,
  });
}

class _$ImmunizationProtocolAppliedCopyWithImpl<T>
    implements $ImmunizationProtocolAppliedCopyWith<T> {
  final ImmunizationProtocolApplied _value;
  final T Function(ImmunizationProtocolApplied) _then;

  _$ImmunizationProtocolAppliedCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? series = fhirSentinel,
    Object? authority = fhirSentinel,
    Object? targetDisease = fhirSentinel,
    Object? doseNumberX = fhirSentinel,
    Object? seriesDosesX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ImmunizationProtocolApplied(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        series: identical(series, fhirSentinel)
            ? _value.series
            : series as FhirString?,
        authority: identical(authority, fhirSentinel)
            ? _value.authority
            : authority as Reference?,
        targetDisease: identical(targetDisease, fhirSentinel)
            ? _value.targetDisease
            : targetDisease as List<CodeableConcept>?,
        doseNumberX: identical(doseNumberX, fhirSentinel)
            ? _value.doseNumberX
            : (doseNumberX as FhirPositiveInt?) ?? _value.doseNumberX,
        seriesDosesX: identical(seriesDosesX, fhirSentinel)
            ? _value.seriesDosesX
            : seriesDosesX as FhirPositiveInt?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ImmunizationProtocolAppliedCopyWithExtension
    on ImmunizationProtocolApplied {
  $ImmunizationProtocolAppliedCopyWith<ImmunizationProtocolApplied>
      get copyWith => _$ImmunizationProtocolAppliedCopyWithImpl<
              ImmunizationProtocolApplied>(
            this,
            (value) => value,
          );
}
