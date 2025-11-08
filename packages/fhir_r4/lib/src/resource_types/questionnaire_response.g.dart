// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'questionnaire_response.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $QuestionnaireResponseCopyWith<T>
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
    Identifier? identifier,
    List<Reference>? basedOn,
    List<Reference>? partOf,
    FhirCanonical? questionnaire,
    QuestionnaireResponseStatus? status,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? authored,
    Reference? author,
    Reference? source,
    List<QuestionnaireResponseItem>? item,
    bool? disallowExtensions,
  });
}

class _$QuestionnaireResponseCopyWithImpl<T>
    implements $QuestionnaireResponseCopyWith<T> {
  final QuestionnaireResponse _value;
  final T Function(QuestionnaireResponse) _then;

  _$QuestionnaireResponseCopyWithImpl(this._value, this._then);

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
    Object? basedOn = fhirSentinel,
    Object? partOf = fhirSentinel,
    Object? questionnaire = fhirSentinel,
    Object? status = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? authored = fhirSentinel,
    Object? author = fhirSentinel,
    Object? source = fhirSentinel,
    Object? item = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      QuestionnaireResponse(
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
            : identifier as Identifier?,
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as List<Reference>?,
        partOf: identical(partOf, fhirSentinel)
            ? _value.partOf
            : partOf as List<Reference>?,
        questionnaire: identical(questionnaire, fhirSentinel)
            ? _value.questionnaire
            : questionnaire as FhirCanonical?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as QuestionnaireResponseStatus?) ?? _value.status,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        authored: identical(authored, fhirSentinel)
            ? _value.authored
            : authored as FhirDateTime?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as Reference?,
        source: identical(source, fhirSentinel)
            ? _value.source
            : source as Reference?,
        item: identical(item, fhirSentinel)
            ? _value.item
            : item as List<QuestionnaireResponseItem>?,
      ),
    );
  }
}

extension QuestionnaireResponseCopyWithExtension on QuestionnaireResponse {
  $QuestionnaireResponseCopyWith<QuestionnaireResponse> get copyWith =>
      _$QuestionnaireResponseCopyWithImpl<QuestionnaireResponse>(
        this,
        (value) => value,
      );
}

abstract class $QuestionnaireResponseItemCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? linkId,
    FhirUri? definition,
    FhirString? text,
    List<QuestionnaireResponseAnswer>? answer,
    List<QuestionnaireResponseItem>? item,
    bool? disallowExtensions,
  });
}

class _$QuestionnaireResponseItemCopyWithImpl<T>
    implements $QuestionnaireResponseItemCopyWith<T> {
  final QuestionnaireResponseItem _value;
  final T Function(QuestionnaireResponseItem) _then;

  _$QuestionnaireResponseItemCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? linkId = fhirSentinel,
    Object? definition = fhirSentinel,
    Object? text = fhirSentinel,
    Object? answer = fhirSentinel,
    Object? item = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      QuestionnaireResponseItem(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        linkId: identical(linkId, fhirSentinel)
            ? _value.linkId
            : (linkId as FhirString?) ?? _value.linkId,
        definition: identical(definition, fhirSentinel)
            ? _value.definition
            : definition as FhirUri?,
        text: identical(text, fhirSentinel) ? _value.text : text as FhirString?,
        answer: identical(answer, fhirSentinel)
            ? _value.answer
            : answer as List<QuestionnaireResponseAnswer>?,
        item: identical(item, fhirSentinel)
            ? _value.item
            : item as List<QuestionnaireResponseItem>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension QuestionnaireResponseItemCopyWithExtension
    on QuestionnaireResponseItem {
  $QuestionnaireResponseItemCopyWith<QuestionnaireResponseItem> get copyWith =>
      _$QuestionnaireResponseItemCopyWithImpl<QuestionnaireResponseItem>(
        this,
        (value) => value,
      );
}

abstract class $QuestionnaireResponseAnswerCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ValueXQuestionnaireResponseAnswer? valueX,
    List<QuestionnaireResponseItem>? item,
    bool? disallowExtensions,
  });
}

class _$QuestionnaireResponseAnswerCopyWithImpl<T>
    implements $QuestionnaireResponseAnswerCopyWith<T> {
  final QuestionnaireResponseAnswer _value;
  final T Function(QuestionnaireResponseAnswer) _then;

  _$QuestionnaireResponseAnswerCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? item = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      QuestionnaireResponseAnswer(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : valueX as ValueXQuestionnaireResponseAnswer?,
        item: identical(item, fhirSentinel)
            ? _value.item
            : item as List<QuestionnaireResponseItem>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension QuestionnaireResponseAnswerCopyWithExtension
    on QuestionnaireResponseAnswer {
  $QuestionnaireResponseAnswerCopyWith<QuestionnaireResponseAnswer>
      get copyWith => _$QuestionnaireResponseAnswerCopyWithImpl<
              QuestionnaireResponseAnswer>(
            this,
            (value) => value,
          );
}
