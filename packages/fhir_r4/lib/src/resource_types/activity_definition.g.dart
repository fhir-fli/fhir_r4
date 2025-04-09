// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'activity_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ActivityDefinitionCopyWith<T>
    extends $CanonicalResourceCopyWith<T> {
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
    FhirUri? url,
    List<Identifier>? identifier,
    FhirString? version,
    FhirString? name,
    FhirString? title,
    FhirString? subtitle,
    PublicationStatus? status,
    FhirBoolean? experimental,
    CodeableConcept? subjectX,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirString? usage,
    FhirMarkdown? copyright,
    FhirDate? approvalDate,
    FhirDate? lastReviewDate,
    Period? effectivePeriod,
    List<CodeableConcept>? topic,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<RelatedArtifact>? relatedArtifact,
    List<FhirCanonical>? library_,
    RequestResourceType? kind,
    FhirCanonical? profile,
    CodeableConcept? code,
    RequestIntent? intent,
    RequestPriority? priority,
    FhirBoolean? doNotPerform,
    Timing? timingX,
    Reference? location,
    List<ActivityDefinitionParticipant>? participant,
    Reference? productX,
    Quantity? quantity,
    List<Dosage>? dosage,
    List<CodeableConcept>? bodySite,
    List<Reference>? specimenRequirement,
    List<Reference>? observationRequirement,
    List<Reference>? observationResultRequirement,
    FhirCanonical? transform,
    List<ActivityDefinitionDynamicValue>? dynamicValue,
    bool? disallowExtensions,
  });
}

class _$ActivityDefinitionCopyWithImpl<T>
    implements $ActivityDefinitionCopyWith<T> {
  final ActivityDefinition _value;
  final T Function(ActivityDefinition) _then;

  _$ActivityDefinitionCopyWithImpl(this._value, this._then);

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
    Object? url = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? version = fhirSentinel,
    Object? name = fhirSentinel,
    Object? title = fhirSentinel,
    Object? subtitle = fhirSentinel,
    Object? status = fhirSentinel,
    Object? experimental = fhirSentinel,
    Object? subjectX = fhirSentinel,
    Object? date = fhirSentinel,
    Object? publisher = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? description = fhirSentinel,
    Object? useContext = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? purpose = fhirSentinel,
    Object? usage = fhirSentinel,
    Object? copyright = fhirSentinel,
    Object? approvalDate = fhirSentinel,
    Object? lastReviewDate = fhirSentinel,
    Object? effectivePeriod = fhirSentinel,
    Object? topic = fhirSentinel,
    Object? author = fhirSentinel,
    Object? editor = fhirSentinel,
    Object? reviewer = fhirSentinel,
    Object? endorser = fhirSentinel,
    Object? relatedArtifact = fhirSentinel,
    Object? library_ = fhirSentinel,
    Object? kind = fhirSentinel,
    Object? profile = fhirSentinel,
    Object? code = fhirSentinel,
    Object? intent = fhirSentinel,
    Object? priority = fhirSentinel,
    Object? doNotPerform = fhirSentinel,
    Object? timingX = fhirSentinel,
    Object? location = fhirSentinel,
    Object? participant = fhirSentinel,
    Object? productX = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? dosage = fhirSentinel,
    Object? bodySite = fhirSentinel,
    Object? specimenRequirement = fhirSentinel,
    Object? observationRequirement = fhirSentinel,
    Object? observationResultRequirement = fhirSentinel,
    Object? transform = fhirSentinel,
    Object? dynamicValue = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ActivityDefinition(
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
        url: identical(url, fhirSentinel) ? _value.url : url as FhirUri?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as FhirString?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        subtitle: identical(subtitle, fhirSentinel)
            ? _value.subtitle
            : subtitle as FhirString?,
        status: status as PublicationStatus? ?? _value.status,
        experimental: identical(experimental, fhirSentinel)
            ? _value.experimental
            : experimental as FhirBoolean?,
        subjectX: identical(subjectX, fhirSentinel)
            ? _value.subjectX
            : subjectX as CodeableConcept?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        publisher: identical(publisher, fhirSentinel)
            ? _value.publisher
            : publisher as FhirString?,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as List<ContactDetail>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        useContext: identical(useContext, fhirSentinel)
            ? _value.useContext
            : useContext as List<UsageContext>?,
        jurisdiction: identical(jurisdiction, fhirSentinel)
            ? _value.jurisdiction
            : jurisdiction as List<CodeableConcept>?,
        purpose: identical(purpose, fhirSentinel)
            ? _value.purpose
            : purpose as FhirMarkdown?,
        usage: identical(usage, fhirSentinel)
            ? _value.usage
            : usage as FhirString?,
        copyright: identical(copyright, fhirSentinel)
            ? _value.copyright
            : copyright as FhirMarkdown?,
        approvalDate: identical(approvalDate, fhirSentinel)
            ? _value.approvalDate
            : approvalDate as FhirDate?,
        lastReviewDate: identical(lastReviewDate, fhirSentinel)
            ? _value.lastReviewDate
            : lastReviewDate as FhirDate?,
        effectivePeriod: identical(effectivePeriod, fhirSentinel)
            ? _value.effectivePeriod
            : effectivePeriod as Period?,
        topic: identical(topic, fhirSentinel)
            ? _value.topic
            : topic as List<CodeableConcept>?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as List<ContactDetail>?,
        editor: identical(editor, fhirSentinel)
            ? _value.editor
            : editor as List<ContactDetail>?,
        reviewer: identical(reviewer, fhirSentinel)
            ? _value.reviewer
            : reviewer as List<ContactDetail>?,
        endorser: identical(endorser, fhirSentinel)
            ? _value.endorser
            : endorser as List<ContactDetail>?,
        relatedArtifact: identical(relatedArtifact, fhirSentinel)
            ? _value.relatedArtifact
            : relatedArtifact as List<RelatedArtifact>?,
        library_: identical(library_, fhirSentinel)
            ? _value.library_
            : library_ as List<FhirCanonical>?,
        kind: identical(kind, fhirSentinel)
            ? _value.kind
            : kind as RequestResourceType?,
        profile: identical(profile, fhirSentinel)
            ? _value.profile
            : profile as FhirCanonical?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        intent: identical(intent, fhirSentinel)
            ? _value.intent
            : intent as RequestIntent?,
        priority: identical(priority, fhirSentinel)
            ? _value.priority
            : priority as RequestPriority?,
        doNotPerform: identical(doNotPerform, fhirSentinel)
            ? _value.doNotPerform
            : doNotPerform as FhirBoolean?,
        timingX: identical(timingX, fhirSentinel)
            ? _value.timingX
            : timingX as Timing?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as Reference?,
        participant: identical(participant, fhirSentinel)
            ? _value.participant
            : participant as List<ActivityDefinitionParticipant>?,
        productX: identical(productX, fhirSentinel)
            ? _value.productX
            : productX as Reference?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        dosage: identical(dosage, fhirSentinel)
            ? _value.dosage
            : dosage as List<Dosage>?,
        bodySite: identical(bodySite, fhirSentinel)
            ? _value.bodySite
            : bodySite as List<CodeableConcept>?,
        specimenRequirement: identical(specimenRequirement, fhirSentinel)
            ? _value.specimenRequirement
            : specimenRequirement as List<Reference>?,
        observationRequirement: identical(observationRequirement, fhirSentinel)
            ? _value.observationRequirement
            : observationRequirement as List<Reference>?,
        observationResultRequirement:
            identical(observationResultRequirement, fhirSentinel)
                ? _value.observationResultRequirement
                : observationResultRequirement as List<Reference>?,
        transform: identical(transform, fhirSentinel)
            ? _value.transform
            : transform as FhirCanonical?,
        dynamicValue: identical(dynamicValue, fhirSentinel)
            ? _value.dynamicValue
            : dynamicValue as List<ActivityDefinitionDynamicValue>?,
      ),
    );
  }
}

extension ActivityDefinitionCopyWithExtension on ActivityDefinition {
  $ActivityDefinitionCopyWith<ActivityDefinition> get copyWith =>
      _$ActivityDefinitionCopyWithImpl<ActivityDefinition>(
        this,
        (value) => value,
      );
}

abstract class $ActivityDefinitionParticipantCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ActionParticipantType? type,
    CodeableConcept? role,
    bool? disallowExtensions,
  });
}

class _$ActivityDefinitionParticipantCopyWithImpl<T>
    implements $ActivityDefinitionParticipantCopyWith<T> {
  final ActivityDefinitionParticipant _value;
  final T Function(ActivityDefinitionParticipant) _then;

  _$ActivityDefinitionParticipantCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? role = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ActivityDefinitionParticipant(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: type as ActionParticipantType? ?? _value.type,
        role: identical(role, fhirSentinel)
            ? _value.role
            : role as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ActivityDefinitionParticipantCopyWithExtension
    on ActivityDefinitionParticipant {
  $ActivityDefinitionParticipantCopyWith<ActivityDefinitionParticipant>
      get copyWith => _$ActivityDefinitionParticipantCopyWithImpl<
              ActivityDefinitionParticipant>(
            this,
            (value) => value,
          );
}

abstract class $ActivityDefinitionDynamicValueCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? path,
    FhirExpression? expression,
    bool? disallowExtensions,
  });
}

class _$ActivityDefinitionDynamicValueCopyWithImpl<T>
    implements $ActivityDefinitionDynamicValueCopyWith<T> {
  final ActivityDefinitionDynamicValue _value;
  final T Function(ActivityDefinitionDynamicValue) _then;

  _$ActivityDefinitionDynamicValueCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? path = fhirSentinel,
    Object? expression = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ActivityDefinitionDynamicValue(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        path: path as FhirString? ?? _value.path,
        expression: expression as FhirExpression? ?? _value.expression,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ActivityDefinitionDynamicValueCopyWithExtension
    on ActivityDefinitionDynamicValue {
  $ActivityDefinitionDynamicValueCopyWith<ActivityDefinitionDynamicValue>
      get copyWith => _$ActivityDefinitionDynamicValueCopyWithImpl<
              ActivityDefinitionDynamicValue>(
            this,
            (value) => value,
          );
}
