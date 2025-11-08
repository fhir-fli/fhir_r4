// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'research_element_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ResearchElementDefinitionCopyWith<T>
    extends $DomainResourceCopyWith<T> {
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
    FhirString? shortTitle,
    FhirString? subtitle,
    PublicationStatus? status,
    FhirBoolean? experimental,
    SubjectXResearchElementDefinition? subjectX,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<FhirString>? comment,
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
    ResearchElementType? type,
    VariableType? variableType,
    List<ResearchElementDefinitionCharacteristic>? characteristic,
    bool? disallowExtensions,
  });
}

class _$ResearchElementDefinitionCopyWithImpl<T>
    implements $ResearchElementDefinitionCopyWith<T> {
  final ResearchElementDefinition _value;
  final T Function(ResearchElementDefinition) _then;

  _$ResearchElementDefinitionCopyWithImpl(this._value, this._then);

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
    Object? shortTitle = fhirSentinel,
    Object? subtitle = fhirSentinel,
    Object? status = fhirSentinel,
    Object? experimental = fhirSentinel,
    Object? subjectX = fhirSentinel,
    Object? date = fhirSentinel,
    Object? publisher = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? description = fhirSentinel,
    Object? comment = fhirSentinel,
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
    Object? type = fhirSentinel,
    Object? variableType = fhirSentinel,
    Object? characteristic = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ResearchElementDefinition(
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
        shortTitle: identical(shortTitle, fhirSentinel)
            ? _value.shortTitle
            : shortTitle as FhirString?,
        subtitle: identical(subtitle, fhirSentinel)
            ? _value.subtitle
            : subtitle as FhirString?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as PublicationStatus?) ?? _value.status,
        experimental: identical(experimental, fhirSentinel)
            ? _value.experimental
            : experimental as FhirBoolean?,
        subjectX: identical(subjectX, fhirSentinel)
            ? _value.subjectX
            : subjectX as SubjectXResearchElementDefinition?,
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
        comment: identical(comment, fhirSentinel)
            ? _value.comment
            : comment as List<FhirString>?,
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
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as ResearchElementType?) ?? _value.type,
        variableType: identical(variableType, fhirSentinel)
            ? _value.variableType
            : variableType as VariableType?,
        characteristic: identical(characteristic, fhirSentinel)
            ? _value.characteristic
            : (characteristic
                    as List<ResearchElementDefinitionCharacteristic>?) ??
                _value.characteristic,
      ),
    );
  }
}

extension ResearchElementDefinitionCopyWithExtension
    on ResearchElementDefinition {
  $ResearchElementDefinitionCopyWith<ResearchElementDefinition> get copyWith =>
      _$ResearchElementDefinitionCopyWithImpl<ResearchElementDefinition>(
        this,
        (value) => value,
      );
}

abstract class $ResearchElementDefinitionCharacteristicCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    DefinitionXResearchElementDefinitionCharacteristic? definitionX,
    List<UsageContext>? usageContext,
    FhirBoolean? exclude,
    CodeableConcept? unitOfMeasure,
    FhirString? studyEffectiveDescription,
    StudyEffectiveXResearchElementDefinitionCharacteristic? studyEffectiveX,
    FhirDuration? studyEffectiveTimeFromStart,
    GroupMeasure? studyEffectiveGroupMeasure,
    FhirString? participantEffectiveDescription,
    ParticipantEffectiveXResearchElementDefinitionCharacteristic?
        participantEffectiveX,
    FhirDuration? participantEffectiveTimeFromStart,
    GroupMeasure? participantEffectiveGroupMeasure,
    bool? disallowExtensions,
  });
}

class _$ResearchElementDefinitionCharacteristicCopyWithImpl<T>
    implements $ResearchElementDefinitionCharacteristicCopyWith<T> {
  final ResearchElementDefinitionCharacteristic _value;
  final T Function(ResearchElementDefinitionCharacteristic) _then;

  _$ResearchElementDefinitionCharacteristicCopyWithImpl(
      this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? definitionX = fhirSentinel,
    Object? usageContext = fhirSentinel,
    Object? exclude = fhirSentinel,
    Object? unitOfMeasure = fhirSentinel,
    Object? studyEffectiveDescription = fhirSentinel,
    Object? studyEffectiveX = fhirSentinel,
    Object? studyEffectiveTimeFromStart = fhirSentinel,
    Object? studyEffectiveGroupMeasure = fhirSentinel,
    Object? participantEffectiveDescription = fhirSentinel,
    Object? participantEffectiveX = fhirSentinel,
    Object? participantEffectiveTimeFromStart = fhirSentinel,
    Object? participantEffectiveGroupMeasure = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ResearchElementDefinitionCharacteristic(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        definitionX: identical(definitionX, fhirSentinel)
            ? _value.definitionX
            : (definitionX
                    as DefinitionXResearchElementDefinitionCharacteristic?) ??
                _value.definitionX,
        usageContext: identical(usageContext, fhirSentinel)
            ? _value.usageContext
            : usageContext as List<UsageContext>?,
        exclude: identical(exclude, fhirSentinel)
            ? _value.exclude
            : exclude as FhirBoolean?,
        unitOfMeasure: identical(unitOfMeasure, fhirSentinel)
            ? _value.unitOfMeasure
            : unitOfMeasure as CodeableConcept?,
        studyEffectiveDescription:
            identical(studyEffectiveDescription, fhirSentinel)
                ? _value.studyEffectiveDescription
                : studyEffectiveDescription as FhirString?,
        studyEffectiveX: identical(studyEffectiveX, fhirSentinel)
            ? _value.studyEffectiveX
            : studyEffectiveX
                as StudyEffectiveXResearchElementDefinitionCharacteristic?,
        studyEffectiveTimeFromStart:
            identical(studyEffectiveTimeFromStart, fhirSentinel)
                ? _value.studyEffectiveTimeFromStart
                : studyEffectiveTimeFromStart as FhirDuration?,
        studyEffectiveGroupMeasure:
            identical(studyEffectiveGroupMeasure, fhirSentinel)
                ? _value.studyEffectiveGroupMeasure
                : studyEffectiveGroupMeasure as GroupMeasure?,
        participantEffectiveDescription:
            identical(participantEffectiveDescription, fhirSentinel)
                ? _value.participantEffectiveDescription
                : participantEffectiveDescription as FhirString?,
        participantEffectiveX: identical(participantEffectiveX, fhirSentinel)
            ? _value.participantEffectiveX
            : participantEffectiveX
                as ParticipantEffectiveXResearchElementDefinitionCharacteristic?,
        participantEffectiveTimeFromStart:
            identical(participantEffectiveTimeFromStart, fhirSentinel)
                ? _value.participantEffectiveTimeFromStart
                : participantEffectiveTimeFromStart as FhirDuration?,
        participantEffectiveGroupMeasure:
            identical(participantEffectiveGroupMeasure, fhirSentinel)
                ? _value.participantEffectiveGroupMeasure
                : participantEffectiveGroupMeasure as GroupMeasure?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ResearchElementDefinitionCharacteristicCopyWithExtension
    on ResearchElementDefinitionCharacteristic {
  $ResearchElementDefinitionCharacteristicCopyWith<
          ResearchElementDefinitionCharacteristic>
      get copyWith => _$ResearchElementDefinitionCharacteristicCopyWithImpl<
              ResearchElementDefinitionCharacteristic>(
            this,
            (value) => value,
          );
}
