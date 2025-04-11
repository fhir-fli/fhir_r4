// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'research_study.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ResearchStudyCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    FhirString? title,
    List<Reference>? protocol,
    List<Reference>? partOf,
    ResearchStudyStatus? status,
    CodeableConcept? primaryPurposeType,
    CodeableConcept? phase,
    List<CodeableConcept>? category,
    List<CodeableConcept>? focus,
    List<CodeableConcept>? condition,
    List<ContactDetail>? contact,
    List<RelatedArtifact>? relatedArtifact,
    List<CodeableConcept>? keyword,
    List<CodeableConcept>? location,
    FhirMarkdown? description,
    List<Reference>? enrollment,
    Period? period,
    Reference? sponsor,
    Reference? principalInvestigator,
    List<Reference>? site,
    CodeableConcept? reasonStopped,
    List<Annotation>? note,
    List<ResearchStudyArm>? arm,
    List<ResearchStudyObjective>? objective,
    bool? disallowExtensions,
  });
}

class _$ResearchStudyCopyWithImpl<T> implements $ResearchStudyCopyWith<T> {
  final ResearchStudy _value;
  final T Function(ResearchStudy) _then;

  _$ResearchStudyCopyWithImpl(this._value, this._then);

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
    Object? title = fhirSentinel,
    Object? protocol = fhirSentinel,
    Object? partOf = fhirSentinel,
    Object? status = fhirSentinel,
    Object? primaryPurposeType = fhirSentinel,
    Object? phase = fhirSentinel,
    Object? category = fhirSentinel,
    Object? focus = fhirSentinel,
    Object? condition = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? relatedArtifact = fhirSentinel,
    Object? keyword = fhirSentinel,
    Object? location = fhirSentinel,
    Object? description = fhirSentinel,
    Object? enrollment = fhirSentinel,
    Object? period = fhirSentinel,
    Object? sponsor = fhirSentinel,
    Object? principalInvestigator = fhirSentinel,
    Object? site = fhirSentinel,
    Object? reasonStopped = fhirSentinel,
    Object? note = fhirSentinel,
    Object? arm = fhirSentinel,
    Object? objective = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ResearchStudy(
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
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        protocol: identical(protocol, fhirSentinel)
            ? _value.protocol
            : protocol as List<Reference>?,
        partOf: identical(partOf, fhirSentinel)
            ? _value.partOf
            : partOf as List<Reference>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as ResearchStudyStatus?) ?? _value.status,
        primaryPurposeType: identical(primaryPurposeType, fhirSentinel)
            ? _value.primaryPurposeType
            : primaryPurposeType as CodeableConcept?,
        phase: identical(phase, fhirSentinel)
            ? _value.phase
            : phase as CodeableConcept?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        focus: identical(focus, fhirSentinel)
            ? _value.focus
            : focus as List<CodeableConcept>?,
        condition: identical(condition, fhirSentinel)
            ? _value.condition
            : condition as List<CodeableConcept>?,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as List<ContactDetail>?,
        relatedArtifact: identical(relatedArtifact, fhirSentinel)
            ? _value.relatedArtifact
            : relatedArtifact as List<RelatedArtifact>?,
        keyword: identical(keyword, fhirSentinel)
            ? _value.keyword
            : keyword as List<CodeableConcept>?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as List<CodeableConcept>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        enrollment: identical(enrollment, fhirSentinel)
            ? _value.enrollment
            : enrollment as List<Reference>?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        sponsor: identical(sponsor, fhirSentinel)
            ? _value.sponsor
            : sponsor as Reference?,
        principalInvestigator: identical(principalInvestigator, fhirSentinel)
            ? _value.principalInvestigator
            : principalInvestigator as Reference?,
        site: identical(site, fhirSentinel)
            ? _value.site
            : site as List<Reference>?,
        reasonStopped: identical(reasonStopped, fhirSentinel)
            ? _value.reasonStopped
            : reasonStopped as CodeableConcept?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        arm: identical(arm, fhirSentinel)
            ? _value.arm
            : arm as List<ResearchStudyArm>?,
        objective: identical(objective, fhirSentinel)
            ? _value.objective
            : objective as List<ResearchStudyObjective>?,
      ),
    );
  }
}

extension ResearchStudyCopyWithExtension on ResearchStudy {
  $ResearchStudyCopyWith<ResearchStudy> get copyWith =>
      _$ResearchStudyCopyWithImpl<ResearchStudy>(
        this,
        (value) => value,
      );
}

abstract class $ResearchStudyArmCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    CodeableConcept? type,
    FhirString? description,
    bool? disallowExtensions,
  });
}

class _$ResearchStudyArmCopyWithImpl<T>
    implements $ResearchStudyArmCopyWith<T> {
  final ResearchStudyArm _value;
  final T Function(ResearchStudyArm) _then;

  _$ResearchStudyArmCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? type = fhirSentinel,
    Object? description = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ResearchStudyArm(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        name: identical(name, fhirSentinel)
            ? _value.name
            : (name as FhirString?) ?? _value.name,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ResearchStudyArmCopyWithExtension on ResearchStudyArm {
  $ResearchStudyArmCopyWith<ResearchStudyArm> get copyWith =>
      _$ResearchStudyArmCopyWithImpl<ResearchStudyArm>(
        this,
        (value) => value,
      );
}

abstract class $ResearchStudyObjectiveCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    CodeableConcept? type,
    bool? disallowExtensions,
  });
}

class _$ResearchStudyObjectiveCopyWithImpl<T>
    implements $ResearchStudyObjectiveCopyWith<T> {
  final ResearchStudyObjective _value;
  final T Function(ResearchStudyObjective) _then;

  _$ResearchStudyObjectiveCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? type = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ResearchStudyObjective(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ResearchStudyObjectiveCopyWithExtension on ResearchStudyObjective {
  $ResearchStudyObjectiveCopyWith<ResearchStudyObjective> get copyWith =>
      _$ResearchStudyObjectiveCopyWithImpl<ResearchStudyObjective>(
        this,
        (value) => value,
      );
}
