// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'citation.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $CitationCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    PublicationStatus? status,
    FhirBoolean? experimental,
    FhirDateTime? date,
    FhirString? publisher,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    FhirMarkdown? copyright,
    FhirDate? approvalDate,
    FhirDate? lastReviewDate,
    Period? effectivePeriod,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<CitationSummary>? summary,
    List<CitationClassification>? classification,
    List<Annotation>? note,
    List<CodeableConcept>? currentState,
    List<CitationStatusDate>? statusDate,
    List<CitationRelatesTo>? relatesTo,
    CitationCitedArtifact? citedArtifact,
    bool? disallowExtensions,
  });
}

class _$CitationCopyWithImpl<T> implements $CitationCopyWith<T> {
  final Citation _value;
  final T Function(Citation) _then;

  _$CitationCopyWithImpl(this._value, this._then);

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
    Object? status = fhirSentinel,
    Object? experimental = fhirSentinel,
    Object? date = fhirSentinel,
    Object? publisher = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? description = fhirSentinel,
    Object? useContext = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? purpose = fhirSentinel,
    Object? copyright = fhirSentinel,
    Object? approvalDate = fhirSentinel,
    Object? lastReviewDate = fhirSentinel,
    Object? effectivePeriod = fhirSentinel,
    Object? author = fhirSentinel,
    Object? editor = fhirSentinel,
    Object? reviewer = fhirSentinel,
    Object? endorser = fhirSentinel,
    Object? summary = fhirSentinel,
    Object? classification = fhirSentinel,
    Object? note = fhirSentinel,
    Object? currentState = fhirSentinel,
    Object? statusDate = fhirSentinel,
    Object? relatesTo = fhirSentinel,
    Object? citedArtifact = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Citation(
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
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as PublicationStatus?) ?? _value.status,
        experimental: identical(experimental, fhirSentinel)
            ? _value.experimental
            : experimental as FhirBoolean?,
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
        summary: identical(summary, fhirSentinel)
            ? _value.summary
            : summary as List<CitationSummary>?,
        classification: identical(classification, fhirSentinel)
            ? _value.classification
            : classification as List<CitationClassification>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        currentState: identical(currentState, fhirSentinel)
            ? _value.currentState
            : currentState as List<CodeableConcept>?,
        statusDate: identical(statusDate, fhirSentinel)
            ? _value.statusDate
            : statusDate as List<CitationStatusDate>?,
        relatesTo: identical(relatesTo, fhirSentinel)
            ? _value.relatesTo
            : relatesTo as List<CitationRelatesTo>?,
        citedArtifact: identical(citedArtifact, fhirSentinel)
            ? _value.citedArtifact
            : citedArtifact as CitationCitedArtifact?,
      ),
    );
  }
}

extension CitationCopyWithExtension on Citation {
  $CitationCopyWith<Citation> get copyWith => _$CitationCopyWithImpl<Citation>(
        this,
        (value) => value,
      );
}

abstract class $CitationSummaryCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? style,
    FhirMarkdown? text,
    bool? disallowExtensions,
  });
}

class _$CitationSummaryCopyWithImpl<T> implements $CitationSummaryCopyWith<T> {
  final CitationSummary _value;
  final T Function(CitationSummary) _then;

  _$CitationSummaryCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? style = fhirSentinel,
    Object? text = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CitationSummary(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        style: identical(style, fhirSentinel)
            ? _value.style
            : style as CodeableConcept?,
        text: identical(text, fhirSentinel)
            ? _value.text
            : (text as FhirMarkdown?) ?? _value.text,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CitationSummaryCopyWithExtension on CitationSummary {
  $CitationSummaryCopyWith<CitationSummary> get copyWith =>
      _$CitationSummaryCopyWithImpl<CitationSummary>(
        this,
        (value) => value,
      );
}

abstract class $CitationClassificationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? classifier,
    bool? disallowExtensions,
  });
}

class _$CitationClassificationCopyWithImpl<T>
    implements $CitationClassificationCopyWith<T> {
  final CitationClassification _value;
  final T Function(CitationClassification) _then;

  _$CitationClassificationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? classifier = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CitationClassification(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        classifier: identical(classifier, fhirSentinel)
            ? _value.classifier
            : classifier as List<CodeableConcept>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CitationClassificationCopyWithExtension on CitationClassification {
  $CitationClassificationCopyWith<CitationClassification> get copyWith =>
      _$CitationClassificationCopyWithImpl<CitationClassification>(
        this,
        (value) => value,
      );
}

abstract class $CitationStatusDateCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? activity,
    FhirBoolean? actual,
    Period? period,
    bool? disallowExtensions,
  });
}

class _$CitationStatusDateCopyWithImpl<T>
    implements $CitationStatusDateCopyWith<T> {
  final CitationStatusDate _value;
  final T Function(CitationStatusDate) _then;

  _$CitationStatusDateCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? activity = fhirSentinel,
    Object? actual = fhirSentinel,
    Object? period = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CitationStatusDate(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        activity: identical(activity, fhirSentinel)
            ? _value.activity
            : (activity as CodeableConcept?) ?? _value.activity,
        actual: identical(actual, fhirSentinel)
            ? _value.actual
            : actual as FhirBoolean?,
        period: identical(period, fhirSentinel)
            ? _value.period
            : (period as Period?) ?? _value.period,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CitationStatusDateCopyWithExtension on CitationStatusDate {
  $CitationStatusDateCopyWith<CitationStatusDate> get copyWith =>
      _$CitationStatusDateCopyWithImpl<CitationStatusDate>(
        this,
        (value) => value,
      );
}

abstract class $CitationRelatesToCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? relationshipType,
    List<CodeableConcept>? targetClassifier,
    TargetXCitationRelatesTo? targetX,
    bool? disallowExtensions,
  });
}

class _$CitationRelatesToCopyWithImpl<T>
    implements $CitationRelatesToCopyWith<T> {
  final CitationRelatesTo _value;
  final T Function(CitationRelatesTo) _then;

  _$CitationRelatesToCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? relationshipType = fhirSentinel,
    Object? targetClassifier = fhirSentinel,
    Object? targetX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CitationRelatesTo(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        relationshipType: identical(relationshipType, fhirSentinel)
            ? _value.relationshipType
            : (relationshipType as CodeableConcept?) ?? _value.relationshipType,
        targetClassifier: identical(targetClassifier, fhirSentinel)
            ? _value.targetClassifier
            : targetClassifier as List<CodeableConcept>?,
        targetX: identical(targetX, fhirSentinel)
            ? _value.targetX
            : (targetX as TargetXCitationRelatesTo?) ?? _value.targetX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CitationRelatesToCopyWithExtension on CitationRelatesTo {
  $CitationRelatesToCopyWith<CitationRelatesTo> get copyWith =>
      _$CitationRelatesToCopyWithImpl<CitationRelatesTo>(
        this,
        (value) => value,
      );
}

abstract class $CitationCitedArtifactCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<Identifier>? relatedIdentifier,
    FhirDateTime? dateAccessed,
    CitationVersion? version,
    List<CodeableConcept>? currentState,
    List<CitationStatusDate>? statusDate,
    List<CitationTitle>? title,
    List<CitationAbstract>? abstract_,
    CitationPart? part_,
    List<CitationRelatesTo>? relatesTo,
    List<CitationPublicationForm>? publicationForm,
    List<CitationWebLocation>? webLocation,
    List<CitationClassification>? classification,
    CitationContributorship? contributorship,
    List<Annotation>? note,
    bool? disallowExtensions,
  });
}

class _$CitationCitedArtifactCopyWithImpl<T>
    implements $CitationCitedArtifactCopyWith<T> {
  final CitationCitedArtifact _value;
  final T Function(CitationCitedArtifact) _then;

  _$CitationCitedArtifactCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? relatedIdentifier = fhirSentinel,
    Object? dateAccessed = fhirSentinel,
    Object? version = fhirSentinel,
    Object? currentState = fhirSentinel,
    Object? statusDate = fhirSentinel,
    Object? title = fhirSentinel,
    Object? abstract_ = fhirSentinel,
    Object? part_ = fhirSentinel,
    Object? relatesTo = fhirSentinel,
    Object? publicationForm = fhirSentinel,
    Object? webLocation = fhirSentinel,
    Object? classification = fhirSentinel,
    Object? contributorship = fhirSentinel,
    Object? note = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CitationCitedArtifact(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        relatedIdentifier: identical(relatedIdentifier, fhirSentinel)
            ? _value.relatedIdentifier
            : relatedIdentifier as List<Identifier>?,
        dateAccessed: identical(dateAccessed, fhirSentinel)
            ? _value.dateAccessed
            : dateAccessed as FhirDateTime?,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as CitationVersion?,
        currentState: identical(currentState, fhirSentinel)
            ? _value.currentState
            : currentState as List<CodeableConcept>?,
        statusDate: identical(statusDate, fhirSentinel)
            ? _value.statusDate
            : statusDate as List<CitationStatusDate>?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as List<CitationTitle>?,
        abstract_: identical(abstract_, fhirSentinel)
            ? _value.abstract_
            : abstract_ as List<CitationAbstract>?,
        part_: identical(part_, fhirSentinel)
            ? _value.part_
            : part_ as CitationPart?,
        relatesTo: identical(relatesTo, fhirSentinel)
            ? _value.relatesTo
            : relatesTo as List<CitationRelatesTo>?,
        publicationForm: identical(publicationForm, fhirSentinel)
            ? _value.publicationForm
            : publicationForm as List<CitationPublicationForm>?,
        webLocation: identical(webLocation, fhirSentinel)
            ? _value.webLocation
            : webLocation as List<CitationWebLocation>?,
        classification: identical(classification, fhirSentinel)
            ? _value.classification
            : classification as List<CitationClassification>?,
        contributorship: identical(contributorship, fhirSentinel)
            ? _value.contributorship
            : contributorship as CitationContributorship?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CitationCitedArtifactCopyWithExtension on CitationCitedArtifact {
  $CitationCitedArtifactCopyWith<CitationCitedArtifact> get copyWith =>
      _$CitationCitedArtifactCopyWithImpl<CitationCitedArtifact>(
        this,
        (value) => value,
      );
}

abstract class $CitationVersionCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? value,
    Reference? baseCitation,
    bool? disallowExtensions,
  });
}

class _$CitationVersionCopyWithImpl<T> implements $CitationVersionCopyWith<T> {
  final CitationVersion _value;
  final T Function(CitationVersion) _then;

  _$CitationVersionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? value = fhirSentinel,
    Object? baseCitation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CitationVersion(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        value: identical(value, fhirSentinel)
            ? _value.value
            : (value as FhirString?) ?? _value.value,
        baseCitation: identical(baseCitation, fhirSentinel)
            ? _value.baseCitation
            : baseCitation as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CitationVersionCopyWithExtension on CitationVersion {
  $CitationVersionCopyWith<CitationVersion> get copyWith =>
      _$CitationVersionCopyWithImpl<CitationVersion>(
        this,
        (value) => value,
      );
}

abstract class $CitationStatusDate1CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? activity,
    FhirBoolean? actual,
    Period? period,
    bool? disallowExtensions,
  });
}

class _$CitationStatusDate1CopyWithImpl<T>
    implements $CitationStatusDate1CopyWith<T> {
  final CitationStatusDate1 _value;
  final T Function(CitationStatusDate1) _then;

  _$CitationStatusDate1CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? activity = fhirSentinel,
    Object? actual = fhirSentinel,
    Object? period = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CitationStatusDate1(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        activity: identical(activity, fhirSentinel)
            ? _value.activity
            : (activity as CodeableConcept?) ?? _value.activity,
        actual: identical(actual, fhirSentinel)
            ? _value.actual
            : actual as FhirBoolean?,
        period: identical(period, fhirSentinel)
            ? _value.period
            : (period as Period?) ?? _value.period,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CitationStatusDate1CopyWithExtension on CitationStatusDate1 {
  $CitationStatusDate1CopyWith<CitationStatusDate1> get copyWith =>
      _$CitationStatusDate1CopyWithImpl<CitationStatusDate1>(
        this,
        (value) => value,
      );
}

abstract class $CitationTitleCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? type,
    CodeableConcept? language,
    FhirMarkdown? text,
    bool? disallowExtensions,
  });
}

class _$CitationTitleCopyWithImpl<T> implements $CitationTitleCopyWith<T> {
  final CitationTitle _value;
  final T Function(CitationTitle) _then;

  _$CitationTitleCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? language = fhirSentinel,
    Object? text = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CitationTitle(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as CodeableConcept?,
        text: identical(text, fhirSentinel)
            ? _value.text
            : (text as FhirMarkdown?) ?? _value.text,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CitationTitleCopyWithExtension on CitationTitle {
  $CitationTitleCopyWith<CitationTitle> get copyWith =>
      _$CitationTitleCopyWithImpl<CitationTitle>(
        this,
        (value) => value,
      );
}

abstract class $CitationAbstractCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? language,
    FhirMarkdown? text,
    FhirMarkdown? copyright,
    bool? disallowExtensions,
  });
}

class _$CitationAbstractCopyWithImpl<T>
    implements $CitationAbstractCopyWith<T> {
  final CitationAbstract _value;
  final T Function(CitationAbstract) _then;

  _$CitationAbstractCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? language = fhirSentinel,
    Object? text = fhirSentinel,
    Object? copyright = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CitationAbstract(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as CodeableConcept?,
        text: identical(text, fhirSentinel)
            ? _value.text
            : (text as FhirMarkdown?) ?? _value.text,
        copyright: identical(copyright, fhirSentinel)
            ? _value.copyright
            : copyright as FhirMarkdown?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CitationAbstractCopyWithExtension on CitationAbstract {
  $CitationAbstractCopyWith<CitationAbstract> get copyWith =>
      _$CitationAbstractCopyWithImpl<CitationAbstract>(
        this,
        (value) => value,
      );
}

abstract class $CitationPartCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? value,
    Reference? baseCitation,
    bool? disallowExtensions,
  });
}

class _$CitationPartCopyWithImpl<T> implements $CitationPartCopyWith<T> {
  final CitationPart _value;
  final T Function(CitationPart) _then;

  _$CitationPartCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? value = fhirSentinel,
    Object? baseCitation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CitationPart(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        value: identical(value, fhirSentinel)
            ? _value.value
            : value as FhirString?,
        baseCitation: identical(baseCitation, fhirSentinel)
            ? _value.baseCitation
            : baseCitation as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CitationPartCopyWithExtension on CitationPart {
  $CitationPartCopyWith<CitationPart> get copyWith =>
      _$CitationPartCopyWithImpl<CitationPart>(
        this,
        (value) => value,
      );
}

abstract class $CitationRelatesTo1CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? relationshipType,
    List<CodeableConcept>? targetClassifier,
    TargetXCitationRelatesTo1? targetX,
    bool? disallowExtensions,
  });
}

class _$CitationRelatesTo1CopyWithImpl<T>
    implements $CitationRelatesTo1CopyWith<T> {
  final CitationRelatesTo1 _value;
  final T Function(CitationRelatesTo1) _then;

  _$CitationRelatesTo1CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? relationshipType = fhirSentinel,
    Object? targetClassifier = fhirSentinel,
    Object? targetX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CitationRelatesTo1(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        relationshipType: identical(relationshipType, fhirSentinel)
            ? _value.relationshipType
            : (relationshipType as CodeableConcept?) ?? _value.relationshipType,
        targetClassifier: identical(targetClassifier, fhirSentinel)
            ? _value.targetClassifier
            : targetClassifier as List<CodeableConcept>?,
        targetX: identical(targetX, fhirSentinel)
            ? _value.targetX
            : (targetX as TargetXCitationRelatesTo1?) ?? _value.targetX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CitationRelatesTo1CopyWithExtension on CitationRelatesTo1 {
  $CitationRelatesTo1CopyWith<CitationRelatesTo1> get copyWith =>
      _$CitationRelatesTo1CopyWithImpl<CitationRelatesTo1>(
        this,
        (value) => value,
      );
}

abstract class $CitationPublicationFormCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CitationPublishedIn? publishedIn,
    CitationPeriodicRelease? periodicRelease,
    FhirDateTime? articleDate,
    FhirDateTime? lastRevisionDate,
    List<CodeableConcept>? language,
    FhirString? accessionNumber,
    FhirString? pageString,
    FhirString? firstPage,
    FhirString? lastPage,
    FhirString? pageCount,
    FhirMarkdown? copyright,
    bool? disallowExtensions,
  });
}

class _$CitationPublicationFormCopyWithImpl<T>
    implements $CitationPublicationFormCopyWith<T> {
  final CitationPublicationForm _value;
  final T Function(CitationPublicationForm) _then;

  _$CitationPublicationFormCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? publishedIn = fhirSentinel,
    Object? periodicRelease = fhirSentinel,
    Object? articleDate = fhirSentinel,
    Object? lastRevisionDate = fhirSentinel,
    Object? language = fhirSentinel,
    Object? accessionNumber = fhirSentinel,
    Object? pageString = fhirSentinel,
    Object? firstPage = fhirSentinel,
    Object? lastPage = fhirSentinel,
    Object? pageCount = fhirSentinel,
    Object? copyright = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CitationPublicationForm(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        publishedIn: identical(publishedIn, fhirSentinel)
            ? _value.publishedIn
            : publishedIn as CitationPublishedIn?,
        periodicRelease: identical(periodicRelease, fhirSentinel)
            ? _value.periodicRelease
            : periodicRelease as CitationPeriodicRelease?,
        articleDate: identical(articleDate, fhirSentinel)
            ? _value.articleDate
            : articleDate as FhirDateTime?,
        lastRevisionDate: identical(lastRevisionDate, fhirSentinel)
            ? _value.lastRevisionDate
            : lastRevisionDate as FhirDateTime?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as List<CodeableConcept>?,
        accessionNumber: identical(accessionNumber, fhirSentinel)
            ? _value.accessionNumber
            : accessionNumber as FhirString?,
        pageString: identical(pageString, fhirSentinel)
            ? _value.pageString
            : pageString as FhirString?,
        firstPage: identical(firstPage, fhirSentinel)
            ? _value.firstPage
            : firstPage as FhirString?,
        lastPage: identical(lastPage, fhirSentinel)
            ? _value.lastPage
            : lastPage as FhirString?,
        pageCount: identical(pageCount, fhirSentinel)
            ? _value.pageCount
            : pageCount as FhirString?,
        copyright: identical(copyright, fhirSentinel)
            ? _value.copyright
            : copyright as FhirMarkdown?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CitationPublicationFormCopyWithExtension on CitationPublicationForm {
  $CitationPublicationFormCopyWith<CitationPublicationForm> get copyWith =>
      _$CitationPublicationFormCopyWithImpl<CitationPublicationForm>(
        this,
        (value) => value,
      );
}

abstract class $CitationPublishedInCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<Identifier>? identifier,
    FhirString? title,
    Reference? publisher,
    FhirString? publisherLocation,
    bool? disallowExtensions,
  });
}

class _$CitationPublishedInCopyWithImpl<T>
    implements $CitationPublishedInCopyWith<T> {
  final CitationPublishedIn _value;
  final T Function(CitationPublishedIn) _then;

  _$CitationPublishedInCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? title = fhirSentinel,
    Object? publisher = fhirSentinel,
    Object? publisherLocation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CitationPublishedIn(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        publisher: identical(publisher, fhirSentinel)
            ? _value.publisher
            : publisher as Reference?,
        publisherLocation: identical(publisherLocation, fhirSentinel)
            ? _value.publisherLocation
            : publisherLocation as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CitationPublishedInCopyWithExtension on CitationPublishedIn {
  $CitationPublishedInCopyWith<CitationPublishedIn> get copyWith =>
      _$CitationPublishedInCopyWithImpl<CitationPublishedIn>(
        this,
        (value) => value,
      );
}

abstract class $CitationPeriodicReleaseCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? citedMedium,
    FhirString? volume,
    FhirString? issue,
    CitationDateOfPublication? dateOfPublication,
    bool? disallowExtensions,
  });
}

class _$CitationPeriodicReleaseCopyWithImpl<T>
    implements $CitationPeriodicReleaseCopyWith<T> {
  final CitationPeriodicRelease _value;
  final T Function(CitationPeriodicRelease) _then;

  _$CitationPeriodicReleaseCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? citedMedium = fhirSentinel,
    Object? volume = fhirSentinel,
    Object? issue = fhirSentinel,
    Object? dateOfPublication = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CitationPeriodicRelease(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        citedMedium: identical(citedMedium, fhirSentinel)
            ? _value.citedMedium
            : citedMedium as CodeableConcept?,
        volume: identical(volume, fhirSentinel)
            ? _value.volume
            : volume as FhirString?,
        issue: identical(issue, fhirSentinel)
            ? _value.issue
            : issue as FhirString?,
        dateOfPublication: identical(dateOfPublication, fhirSentinel)
            ? _value.dateOfPublication
            : dateOfPublication as CitationDateOfPublication?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CitationPeriodicReleaseCopyWithExtension on CitationPeriodicRelease {
  $CitationPeriodicReleaseCopyWith<CitationPeriodicRelease> get copyWith =>
      _$CitationPeriodicReleaseCopyWithImpl<CitationPeriodicRelease>(
        this,
        (value) => value,
      );
}

abstract class $CitationDateOfPublicationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDate? date,
    FhirString? year,
    FhirString? month,
    FhirString? day,
    FhirString? season,
    FhirString? text,
    bool? disallowExtensions,
  });
}

class _$CitationDateOfPublicationCopyWithImpl<T>
    implements $CitationDateOfPublicationCopyWith<T> {
  final CitationDateOfPublication _value;
  final T Function(CitationDateOfPublication) _then;

  _$CitationDateOfPublicationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? date = fhirSentinel,
    Object? year = fhirSentinel,
    Object? month = fhirSentinel,
    Object? day = fhirSentinel,
    Object? season = fhirSentinel,
    Object? text = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CitationDateOfPublication(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        date: identical(date, fhirSentinel) ? _value.date : date as FhirDate?,
        year: identical(year, fhirSentinel) ? _value.year : year as FhirString?,
        month: identical(month, fhirSentinel)
            ? _value.month
            : month as FhirString?,
        day: identical(day, fhirSentinel) ? _value.day : day as FhirString?,
        season: identical(season, fhirSentinel)
            ? _value.season
            : season as FhirString?,
        text: identical(text, fhirSentinel) ? _value.text : text as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CitationDateOfPublicationCopyWithExtension
    on CitationDateOfPublication {
  $CitationDateOfPublicationCopyWith<CitationDateOfPublication> get copyWith =>
      _$CitationDateOfPublicationCopyWithImpl<CitationDateOfPublication>(
        this,
        (value) => value,
      );
}

abstract class $CitationWebLocationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirUri? url,
    bool? disallowExtensions,
  });
}

class _$CitationWebLocationCopyWithImpl<T>
    implements $CitationWebLocationCopyWith<T> {
  final CitationWebLocation _value;
  final T Function(CitationWebLocation) _then;

  _$CitationWebLocationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? url = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CitationWebLocation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        url: identical(url, fhirSentinel) ? _value.url : url as FhirUri?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CitationWebLocationCopyWithExtension on CitationWebLocation {
  $CitationWebLocationCopyWith<CitationWebLocation> get copyWith =>
      _$CitationWebLocationCopyWithImpl<CitationWebLocation>(
        this,
        (value) => value,
      );
}

abstract class $CitationClassification1CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? classifier,
    CitationWhoClassified? whoClassified,
    bool? disallowExtensions,
  });
}

class _$CitationClassification1CopyWithImpl<T>
    implements $CitationClassification1CopyWith<T> {
  final CitationClassification1 _value;
  final T Function(CitationClassification1) _then;

  _$CitationClassification1CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? classifier = fhirSentinel,
    Object? whoClassified = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CitationClassification1(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        classifier: identical(classifier, fhirSentinel)
            ? _value.classifier
            : classifier as List<CodeableConcept>?,
        whoClassified: identical(whoClassified, fhirSentinel)
            ? _value.whoClassified
            : whoClassified as CitationWhoClassified?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CitationClassification1CopyWithExtension on CitationClassification1 {
  $CitationClassification1CopyWith<CitationClassification1> get copyWith =>
      _$CitationClassification1CopyWithImpl<CitationClassification1>(
        this,
        (value) => value,
      );
}

abstract class $CitationWhoClassifiedCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? person,
    Reference? organization,
    Reference? publisher,
    FhirString? classifierCopyright,
    FhirBoolean? freeToShare,
    bool? disallowExtensions,
  });
}

class _$CitationWhoClassifiedCopyWithImpl<T>
    implements $CitationWhoClassifiedCopyWith<T> {
  final CitationWhoClassified _value;
  final T Function(CitationWhoClassified) _then;

  _$CitationWhoClassifiedCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? person = fhirSentinel,
    Object? organization = fhirSentinel,
    Object? publisher = fhirSentinel,
    Object? classifierCopyright = fhirSentinel,
    Object? freeToShare = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CitationWhoClassified(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        person: identical(person, fhirSentinel)
            ? _value.person
            : person as Reference?,
        organization: identical(organization, fhirSentinel)
            ? _value.organization
            : organization as Reference?,
        publisher: identical(publisher, fhirSentinel)
            ? _value.publisher
            : publisher as Reference?,
        classifierCopyright: identical(classifierCopyright, fhirSentinel)
            ? _value.classifierCopyright
            : classifierCopyright as FhirString?,
        freeToShare: identical(freeToShare, fhirSentinel)
            ? _value.freeToShare
            : freeToShare as FhirBoolean?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CitationWhoClassifiedCopyWithExtension on CitationWhoClassified {
  $CitationWhoClassifiedCopyWith<CitationWhoClassified> get copyWith =>
      _$CitationWhoClassifiedCopyWithImpl<CitationWhoClassified>(
        this,
        (value) => value,
      );
}

abstract class $CitationContributorshipCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? complete,
    List<CitationEntry>? entry,
    List<CitationSummary>? summary,
    bool? disallowExtensions,
  });
}

class _$CitationContributorshipCopyWithImpl<T>
    implements $CitationContributorshipCopyWith<T> {
  final CitationContributorship _value;
  final T Function(CitationContributorship) _then;

  _$CitationContributorshipCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? complete = fhirSentinel,
    Object? entry = fhirSentinel,
    Object? summary = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CitationContributorship(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        complete: identical(complete, fhirSentinel)
            ? _value.complete
            : complete as FhirBoolean?,
        entry: identical(entry, fhirSentinel)
            ? _value.entry
            : entry as List<CitationEntry>?,
        summary: identical(summary, fhirSentinel)
            ? _value.summary
            : summary as List<CitationSummary>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CitationContributorshipCopyWithExtension on CitationContributorship {
  $CitationContributorshipCopyWith<CitationContributorship> get copyWith =>
      _$CitationContributorshipCopyWithImpl<CitationContributorship>(
        this,
        (value) => value,
      );
}

abstract class $CitationEntryCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    HumanName? name,
    FhirString? initials,
    FhirString? collectiveName,
    List<Identifier>? identifier,
    List<CitationAffiliationInfo>? affiliationInfo,
    List<Address>? address,
    List<ContactPoint>? telecom,
    List<CodeableConcept>? contributionType,
    CodeableConcept? role,
    List<CitationContributionInstance>? contributionInstance,
    FhirBoolean? correspondingContact,
    FhirPositiveInt? listOrder,
    bool? disallowExtensions,
  });
}

class _$CitationEntryCopyWithImpl<T> implements $CitationEntryCopyWith<T> {
  final CitationEntry _value;
  final T Function(CitationEntry) _then;

  _$CitationEntryCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? initials = fhirSentinel,
    Object? collectiveName = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? affiliationInfo = fhirSentinel,
    Object? address = fhirSentinel,
    Object? telecom = fhirSentinel,
    Object? contributionType = fhirSentinel,
    Object? role = fhirSentinel,
    Object? contributionInstance = fhirSentinel,
    Object? correspondingContact = fhirSentinel,
    Object? listOrder = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CitationEntry(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        name: identical(name, fhirSentinel) ? _value.name : name as HumanName?,
        initials: identical(initials, fhirSentinel)
            ? _value.initials
            : initials as FhirString?,
        collectiveName: identical(collectiveName, fhirSentinel)
            ? _value.collectiveName
            : collectiveName as FhirString?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        affiliationInfo: identical(affiliationInfo, fhirSentinel)
            ? _value.affiliationInfo
            : affiliationInfo as List<CitationAffiliationInfo>?,
        address: identical(address, fhirSentinel)
            ? _value.address
            : address as List<Address>?,
        telecom: identical(telecom, fhirSentinel)
            ? _value.telecom
            : telecom as List<ContactPoint>?,
        contributionType: identical(contributionType, fhirSentinel)
            ? _value.contributionType
            : contributionType as List<CodeableConcept>?,
        role: identical(role, fhirSentinel)
            ? _value.role
            : role as CodeableConcept?,
        contributionInstance: identical(contributionInstance, fhirSentinel)
            ? _value.contributionInstance
            : contributionInstance as List<CitationContributionInstance>?,
        correspondingContact: identical(correspondingContact, fhirSentinel)
            ? _value.correspondingContact
            : correspondingContact as FhirBoolean?,
        listOrder: identical(listOrder, fhirSentinel)
            ? _value.listOrder
            : listOrder as FhirPositiveInt?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CitationEntryCopyWithExtension on CitationEntry {
  $CitationEntryCopyWith<CitationEntry> get copyWith =>
      _$CitationEntryCopyWithImpl<CitationEntry>(
        this,
        (value) => value,
      );
}

abstract class $CitationAffiliationInfoCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? affiliation,
    FhirString? role,
    List<Identifier>? identifier,
    bool? disallowExtensions,
  });
}

class _$CitationAffiliationInfoCopyWithImpl<T>
    implements $CitationAffiliationInfoCopyWith<T> {
  final CitationAffiliationInfo _value;
  final T Function(CitationAffiliationInfo) _then;

  _$CitationAffiliationInfoCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? affiliation = fhirSentinel,
    Object? role = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CitationAffiliationInfo(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        affiliation: identical(affiliation, fhirSentinel)
            ? _value.affiliation
            : affiliation as FhirString?,
        role: identical(role, fhirSentinel) ? _value.role : role as FhirString?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CitationAffiliationInfoCopyWithExtension on CitationAffiliationInfo {
  $CitationAffiliationInfoCopyWith<CitationAffiliationInfo> get copyWith =>
      _$CitationAffiliationInfoCopyWithImpl<CitationAffiliationInfo>(
        this,
        (value) => value,
      );
}

abstract class $CitationContributionInstanceCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirDateTime? time,
    bool? disallowExtensions,
  });
}

class _$CitationContributionInstanceCopyWithImpl<T>
    implements $CitationContributionInstanceCopyWith<T> {
  final CitationContributionInstance _value;
  final T Function(CitationContributionInstance) _then;

  _$CitationContributionInstanceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? time = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CitationContributionInstance(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as CodeableConcept?) ?? _value.type,
        time:
            identical(time, fhirSentinel) ? _value.time : time as FhirDateTime?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CitationContributionInstanceCopyWithExtension
    on CitationContributionInstance {
  $CitationContributionInstanceCopyWith<CitationContributionInstance>
      get copyWith => _$CitationContributionInstanceCopyWithImpl<
              CitationContributionInstance>(
            this,
            (value) => value,
          );
}

abstract class $CitationSummary1CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? style,
    CodeableConcept? source,
    FhirMarkdown? value,
    bool? disallowExtensions,
  });
}

class _$CitationSummary1CopyWithImpl<T>
    implements $CitationSummary1CopyWith<T> {
  final CitationSummary1 _value;
  final T Function(CitationSummary1) _then;

  _$CitationSummary1CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? style = fhirSentinel,
    Object? source = fhirSentinel,
    Object? value = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CitationSummary1(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        style: identical(style, fhirSentinel)
            ? _value.style
            : style as CodeableConcept?,
        source: identical(source, fhirSentinel)
            ? _value.source
            : source as CodeableConcept?,
        value: identical(value, fhirSentinel)
            ? _value.value
            : (value as FhirMarkdown?) ?? _value.value,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CitationSummary1CopyWithExtension on CitationSummary1 {
  $CitationSummary1CopyWith<CitationSummary1> get copyWith =>
      _$CitationSummary1CopyWithImpl<CitationSummary1>(
        this,
        (value) => value,
      );
}
