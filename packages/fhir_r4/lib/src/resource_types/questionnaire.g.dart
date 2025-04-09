// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'questionnaire.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $QuestionnaireCopyWith<T> extends $CanonicalResourceCopyWith<T> {
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
    List<FhirCanonical>? derivedFrom,
    PublicationStatus? status,
    FhirBoolean? experimental,
    List<FhirCode>? subjectType,
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
    List<Coding>? code,
    List<QuestionnaireItem>? item,
    bool? disallowExtensions,
  });
}

class _$QuestionnaireCopyWithImpl<T> implements $QuestionnaireCopyWith<T> {
  final Questionnaire _value;
  final T Function(Questionnaire) _then;

  _$QuestionnaireCopyWithImpl(this._value, this._then);

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
    Object? derivedFrom = fhirSentinel,
    Object? status = fhirSentinel,
    Object? experimental = fhirSentinel,
    Object? subjectType = fhirSentinel,
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
    Object? code = fhirSentinel,
    Object? item = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Questionnaire(
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
        derivedFrom: identical(derivedFrom, fhirSentinel)
            ? _value.derivedFrom
            : derivedFrom as List<FhirCanonical>?,
        status: status as PublicationStatus? ?? _value.status,
        experimental: identical(experimental, fhirSentinel)
            ? _value.experimental
            : experimental as FhirBoolean?,
        subjectType: identical(subjectType, fhirSentinel)
            ? _value.subjectType
            : subjectType as List<FhirCode>?,
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
        code:
            identical(code, fhirSentinel) ? _value.code : code as List<Coding>?,
        item: identical(item, fhirSentinel)
            ? _value.item
            : item as List<QuestionnaireItem>?,
      ),
    );
  }
}

extension QuestionnaireCopyWithExtension on Questionnaire {
  $QuestionnaireCopyWith<Questionnaire> get copyWith =>
      _$QuestionnaireCopyWithImpl<Questionnaire>(
        this,
        (value) => value,
      );
}

abstract class $QuestionnaireItemCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? linkId,
    FhirUri? definition,
    List<Coding>? code,
    FhirString? prefix,
    FhirString? text,
    QuestionnaireItemType? type,
    List<QuestionnaireEnableWhen>? enableWhen,
    EnableWhenBehavior? enableBehavior,
    FhirBoolean? required_,
    FhirBoolean? repeats,
    FhirBoolean? readOnly,
    FhirInteger? maxLength,
    FhirCanonical? answerValueSet,
    List<QuestionnaireAnswerOption>? answerOption,
    List<QuestionnaireInitial>? initial,
    List<QuestionnaireItem>? item,
    bool? disallowExtensions,
  });
}

class _$QuestionnaireItemCopyWithImpl<T>
    implements $QuestionnaireItemCopyWith<T> {
  final QuestionnaireItem _value;
  final T Function(QuestionnaireItem) _then;

  _$QuestionnaireItemCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? linkId = fhirSentinel,
    Object? definition = fhirSentinel,
    Object? code = fhirSentinel,
    Object? prefix = fhirSentinel,
    Object? text = fhirSentinel,
    Object? type = fhirSentinel,
    Object? enableWhen = fhirSentinel,
    Object? enableBehavior = fhirSentinel,
    Object? required_ = fhirSentinel,
    Object? repeats = fhirSentinel,
    Object? readOnly = fhirSentinel,
    Object? maxLength = fhirSentinel,
    Object? answerValueSet = fhirSentinel,
    Object? answerOption = fhirSentinel,
    Object? initial = fhirSentinel,
    Object? item = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      QuestionnaireItem(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        linkId: linkId as FhirString? ?? _value.linkId,
        definition: identical(definition, fhirSentinel)
            ? _value.definition
            : definition as FhirUri?,
        code:
            identical(code, fhirSentinel) ? _value.code : code as List<Coding>?,
        prefix: identical(prefix, fhirSentinel)
            ? _value.prefix
            : prefix as FhirString?,
        text: identical(text, fhirSentinel) ? _value.text : text as FhirString?,
        type: type as QuestionnaireItemType? ?? _value.type,
        enableWhen: identical(enableWhen, fhirSentinel)
            ? _value.enableWhen
            : enableWhen as List<QuestionnaireEnableWhen>?,
        enableBehavior: identical(enableBehavior, fhirSentinel)
            ? _value.enableBehavior
            : enableBehavior as EnableWhenBehavior?,
        required_: identical(required_, fhirSentinel)
            ? _value.required_
            : required_ as FhirBoolean?,
        repeats: identical(repeats, fhirSentinel)
            ? _value.repeats
            : repeats as FhirBoolean?,
        readOnly: identical(readOnly, fhirSentinel)
            ? _value.readOnly
            : readOnly as FhirBoolean?,
        maxLength: identical(maxLength, fhirSentinel)
            ? _value.maxLength
            : maxLength as FhirInteger?,
        answerValueSet: identical(answerValueSet, fhirSentinel)
            ? _value.answerValueSet
            : answerValueSet as FhirCanonical?,
        answerOption: identical(answerOption, fhirSentinel)
            ? _value.answerOption
            : answerOption as List<QuestionnaireAnswerOption>?,
        initial: identical(initial, fhirSentinel)
            ? _value.initial
            : initial as List<QuestionnaireInitial>?,
        item: identical(item, fhirSentinel)
            ? _value.item
            : item as List<QuestionnaireItem>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension QuestionnaireItemCopyWithExtension on QuestionnaireItem {
  $QuestionnaireItemCopyWith<QuestionnaireItem> get copyWith =>
      _$QuestionnaireItemCopyWithImpl<QuestionnaireItem>(
        this,
        (value) => value,
      );
}

abstract class $QuestionnaireEnableWhenCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? question,
    QuestionnaireItemOperator? operator_,
    FhirBoolean? answerX,
    bool? disallowExtensions,
  });
}

class _$QuestionnaireEnableWhenCopyWithImpl<T>
    implements $QuestionnaireEnableWhenCopyWith<T> {
  final QuestionnaireEnableWhen _value;
  final T Function(QuestionnaireEnableWhen) _then;

  _$QuestionnaireEnableWhenCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? question = fhirSentinel,
    Object? operator_ = fhirSentinel,
    Object? answerX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      QuestionnaireEnableWhen(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        question: question as FhirString? ?? _value.question,
        operator_: operator_ as QuestionnaireItemOperator? ?? _value.operator_,
        answerX: answerX as FhirBoolean? ?? _value.answerX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension QuestionnaireEnableWhenCopyWithExtension on QuestionnaireEnableWhen {
  $QuestionnaireEnableWhenCopyWith<QuestionnaireEnableWhen> get copyWith =>
      _$QuestionnaireEnableWhenCopyWithImpl<QuestionnaireEnableWhen>(
        this,
        (value) => value,
      );
}

abstract class $QuestionnaireAnswerOptionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? valueX,
    FhirBoolean? initialSelected,
    bool? disallowExtensions,
  });
}

class _$QuestionnaireAnswerOptionCopyWithImpl<T>
    implements $QuestionnaireAnswerOptionCopyWith<T> {
  final QuestionnaireAnswerOption _value;
  final T Function(QuestionnaireAnswerOption) _then;

  _$QuestionnaireAnswerOptionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? initialSelected = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      QuestionnaireAnswerOption(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        valueX: valueX as FhirInteger? ?? _value.valueX,
        initialSelected: identical(initialSelected, fhirSentinel)
            ? _value.initialSelected
            : initialSelected as FhirBoolean?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension QuestionnaireAnswerOptionCopyWithExtension
    on QuestionnaireAnswerOption {
  $QuestionnaireAnswerOptionCopyWith<QuestionnaireAnswerOption> get copyWith =>
      _$QuestionnaireAnswerOptionCopyWithImpl<QuestionnaireAnswerOption>(
        this,
        (value) => value,
      );
}

abstract class $QuestionnaireInitialCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? valueX,
    bool? disallowExtensions,
  });
}

class _$QuestionnaireInitialCopyWithImpl<T>
    implements $QuestionnaireInitialCopyWith<T> {
  final QuestionnaireInitial _value;
  final T Function(QuestionnaireInitial) _then;

  _$QuestionnaireInitialCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      QuestionnaireInitial(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        valueX: valueX as FhirBoolean? ?? _value.valueX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension QuestionnaireInitialCopyWithExtension on QuestionnaireInitial {
  $QuestionnaireInitialCopyWith<QuestionnaireInitial> get copyWith =>
      _$QuestionnaireInitialCopyWithImpl<QuestionnaireInitial>(
        this,
        (value) => value,
      );
}
