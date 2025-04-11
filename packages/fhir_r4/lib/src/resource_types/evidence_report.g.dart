// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'evidence_report.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $EvidenceReportCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    PublicationStatus? status,
    List<UsageContext>? useContext,
    List<Identifier>? identifier,
    List<Identifier>? relatedIdentifier,
    Reference? citeAsX,
    CodeableConcept? type,
    List<Annotation>? note,
    List<RelatedArtifact>? relatedArtifact,
    EvidenceReportSubject? subject,
    FhirString? publisher,
    List<ContactDetail>? contact,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<EvidenceReportRelatesTo>? relatesTo,
    List<EvidenceReportSection>? section,
    bool? disallowExtensions,
  });
}

class _$EvidenceReportCopyWithImpl<T> implements $EvidenceReportCopyWith<T> {
  final EvidenceReport _value;
  final T Function(EvidenceReport) _then;

  _$EvidenceReportCopyWithImpl(this._value, this._then);

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
    Object? status = fhirSentinel,
    Object? useContext = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? relatedIdentifier = fhirSentinel,
    Object? citeAsX = fhirSentinel,
    Object? type = fhirSentinel,
    Object? note = fhirSentinel,
    Object? relatedArtifact = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? publisher = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? author = fhirSentinel,
    Object? editor = fhirSentinel,
    Object? reviewer = fhirSentinel,
    Object? endorser = fhirSentinel,
    Object? relatesTo = fhirSentinel,
    Object? section = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EvidenceReport(
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
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as PublicationStatus?) ?? _value.status,
        useContext: identical(useContext, fhirSentinel)
            ? _value.useContext
            : useContext as List<UsageContext>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        relatedIdentifier: identical(relatedIdentifier, fhirSentinel)
            ? _value.relatedIdentifier
            : relatedIdentifier as List<Identifier>?,
        citeAsX: identical(citeAsX, fhirSentinel)
            ? _value.citeAsX
            : citeAsX as Reference?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        relatedArtifact: identical(relatedArtifact, fhirSentinel)
            ? _value.relatedArtifact
            : relatedArtifact as List<RelatedArtifact>?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : (subject as EvidenceReportSubject?) ?? _value.subject,
        publisher: identical(publisher, fhirSentinel)
            ? _value.publisher
            : publisher as FhirString?,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as List<ContactDetail>?,
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
        relatesTo: identical(relatesTo, fhirSentinel)
            ? _value.relatesTo
            : relatesTo as List<EvidenceReportRelatesTo>?,
        section: identical(section, fhirSentinel)
            ? _value.section
            : section as List<EvidenceReportSection>?,
      ),
    );
  }
}

extension EvidenceReportCopyWithExtension on EvidenceReport {
  $EvidenceReportCopyWith<EvidenceReport> get copyWith =>
      _$EvidenceReportCopyWithImpl<EvidenceReport>(
        this,
        (value) => value,
      );
}

abstract class $EvidenceReportSubjectCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<EvidenceReportCharacteristic>? characteristic,
    List<Annotation>? note,
    bool? disallowExtensions,
  });
}

class _$EvidenceReportSubjectCopyWithImpl<T>
    implements $EvidenceReportSubjectCopyWith<T> {
  final EvidenceReportSubject _value;
  final T Function(EvidenceReportSubject) _then;

  _$EvidenceReportSubjectCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? characteristic = fhirSentinel,
    Object? note = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EvidenceReportSubject(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        characteristic: identical(characteristic, fhirSentinel)
            ? _value.characteristic
            : characteristic as List<EvidenceReportCharacteristic>?,
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

extension EvidenceReportSubjectCopyWithExtension on EvidenceReportSubject {
  $EvidenceReportSubjectCopyWith<EvidenceReportSubject> get copyWith =>
      _$EvidenceReportSubjectCopyWithImpl<EvidenceReportSubject>(
        this,
        (value) => value,
      );
}

abstract class $EvidenceReportCharacteristicCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    Reference? valueX,
    FhirBoolean? exclude,
    Period? period,
    bool? disallowExtensions,
  });
}

class _$EvidenceReportCharacteristicCopyWithImpl<T>
    implements $EvidenceReportCharacteristicCopyWith<T> {
  final EvidenceReportCharacteristic _value;
  final T Function(EvidenceReportCharacteristic) _then;

  _$EvidenceReportCharacteristicCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? exclude = fhirSentinel,
    Object? period = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EvidenceReportCharacteristic(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as CodeableConcept?) ?? _value.code,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : (valueX as Reference?) ?? _value.valueX,
        exclude: identical(exclude, fhirSentinel)
            ? _value.exclude
            : exclude as FhirBoolean?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EvidenceReportCharacteristicCopyWithExtension
    on EvidenceReportCharacteristic {
  $EvidenceReportCharacteristicCopyWith<EvidenceReportCharacteristic>
      get copyWith => _$EvidenceReportCharacteristicCopyWithImpl<
              EvidenceReportCharacteristic>(
            this,
            (value) => value,
          );
}

abstract class $EvidenceReportRelatesToCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ReportRelationshipType? code,
    Identifier? targetX,
    bool? disallowExtensions,
  });
}

class _$EvidenceReportRelatesToCopyWithImpl<T>
    implements $EvidenceReportRelatesToCopyWith<T> {
  final EvidenceReportRelatesTo _value;
  final T Function(EvidenceReportRelatesTo) _then;

  _$EvidenceReportRelatesToCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? targetX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EvidenceReportRelatesTo(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : (code as ReportRelationshipType?) ?? _value.code,
        targetX: identical(targetX, fhirSentinel)
            ? _value.targetX
            : (targetX as Identifier?) ?? _value.targetX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EvidenceReportRelatesToCopyWithExtension on EvidenceReportRelatesTo {
  $EvidenceReportRelatesToCopyWith<EvidenceReportRelatesTo> get copyWith =>
      _$EvidenceReportRelatesToCopyWithImpl<EvidenceReportRelatesTo>(
        this,
        (value) => value,
      );
}

abstract class $EvidenceReportSectionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? title,
    CodeableConcept? focus,
    Reference? focusReference,
    List<Reference>? author,
    Narrative? text,
    ListMode? mode,
    CodeableConcept? orderedBy,
    List<CodeableConcept>? entryClassifier,
    List<Reference>? entryReference,
    List<Quantity>? entryQuantity,
    CodeableConcept? emptyReason,
    List<EvidenceReportSection>? section,
    bool? disallowExtensions,
  });
}

class _$EvidenceReportSectionCopyWithImpl<T>
    implements $EvidenceReportSectionCopyWith<T> {
  final EvidenceReportSection _value;
  final T Function(EvidenceReportSection) _then;

  _$EvidenceReportSectionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? title = fhirSentinel,
    Object? focus = fhirSentinel,
    Object? focusReference = fhirSentinel,
    Object? author = fhirSentinel,
    Object? text = fhirSentinel,
    Object? mode = fhirSentinel,
    Object? orderedBy = fhirSentinel,
    Object? entryClassifier = fhirSentinel,
    Object? entryReference = fhirSentinel,
    Object? entryQuantity = fhirSentinel,
    Object? emptyReason = fhirSentinel,
    Object? section = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EvidenceReportSection(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        focus: identical(focus, fhirSentinel)
            ? _value.focus
            : focus as CodeableConcept?,
        focusReference: identical(focusReference, fhirSentinel)
            ? _value.focusReference
            : focusReference as Reference?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as List<Reference>?,
        text: identical(text, fhirSentinel) ? _value.text : text as Narrative?,
        mode: identical(mode, fhirSentinel) ? _value.mode : mode as ListMode?,
        orderedBy: identical(orderedBy, fhirSentinel)
            ? _value.orderedBy
            : orderedBy as CodeableConcept?,
        entryClassifier: identical(entryClassifier, fhirSentinel)
            ? _value.entryClassifier
            : entryClassifier as List<CodeableConcept>?,
        entryReference: identical(entryReference, fhirSentinel)
            ? _value.entryReference
            : entryReference as List<Reference>?,
        entryQuantity: identical(entryQuantity, fhirSentinel)
            ? _value.entryQuantity
            : entryQuantity as List<Quantity>?,
        emptyReason: identical(emptyReason, fhirSentinel)
            ? _value.emptyReason
            : emptyReason as CodeableConcept?,
        section: identical(section, fhirSentinel)
            ? _value.section
            : section as List<EvidenceReportSection>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EvidenceReportSectionCopyWithExtension on EvidenceReportSection {
  $EvidenceReportSectionCopyWith<EvidenceReportSection> get copyWith =>
      _$EvidenceReportSectionCopyWithImpl<EvidenceReportSection>(
        this,
        (value) => value,
      );
}
