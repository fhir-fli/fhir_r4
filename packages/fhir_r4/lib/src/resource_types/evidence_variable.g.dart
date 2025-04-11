// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'evidence_variable.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $EvidenceVariableCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    FhirDateTime? date,
    FhirMarkdown? description,
    List<Annotation>? note,
    List<UsageContext>? useContext,
    FhirString? publisher,
    List<ContactDetail>? contact,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<RelatedArtifact>? relatedArtifact,
    FhirBoolean? actual,
    CharacteristicCombination? characteristicCombination,
    List<EvidenceVariableCharacteristic>? characteristic,
    EvidenceVariableHandling? handling,
    List<EvidenceVariableCategory>? category,
    bool? disallowExtensions,
  });
}

class _$EvidenceVariableCopyWithImpl<T>
    implements $EvidenceVariableCopyWith<T> {
  final EvidenceVariable _value;
  final T Function(EvidenceVariable) _then;

  _$EvidenceVariableCopyWithImpl(this._value, this._then);

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
    Object? date = fhirSentinel,
    Object? description = fhirSentinel,
    Object? note = fhirSentinel,
    Object? useContext = fhirSentinel,
    Object? publisher = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? author = fhirSentinel,
    Object? editor = fhirSentinel,
    Object? reviewer = fhirSentinel,
    Object? endorser = fhirSentinel,
    Object? relatedArtifact = fhirSentinel,
    Object? actual = fhirSentinel,
    Object? characteristicCombination = fhirSentinel,
    Object? characteristic = fhirSentinel,
    Object? handling = fhirSentinel,
    Object? category = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EvidenceVariable(
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
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        useContext: identical(useContext, fhirSentinel)
            ? _value.useContext
            : useContext as List<UsageContext>?,
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
        relatedArtifact: identical(relatedArtifact, fhirSentinel)
            ? _value.relatedArtifact
            : relatedArtifact as List<RelatedArtifact>?,
        actual: identical(actual, fhirSentinel)
            ? _value.actual
            : actual as FhirBoolean?,
        characteristicCombination:
            identical(characteristicCombination, fhirSentinel)
                ? _value.characteristicCombination
                : characteristicCombination as CharacteristicCombination?,
        characteristic: identical(characteristic, fhirSentinel)
            ? _value.characteristic
            : characteristic as List<EvidenceVariableCharacteristic>?,
        handling: identical(handling, fhirSentinel)
            ? _value.handling
            : handling as EvidenceVariableHandling?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<EvidenceVariableCategory>?,
      ),
    );
  }
}

extension EvidenceVariableCopyWithExtension on EvidenceVariable {
  $EvidenceVariableCopyWith<EvidenceVariable> get copyWith =>
      _$EvidenceVariableCopyWithImpl<EvidenceVariable>(
        this,
        (value) => value,
      );
}

abstract class $EvidenceVariableCharacteristicCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Reference? definitionX,
    CodeableConcept? method,
    Reference? device,
    FhirBoolean? exclude,
    EvidenceVariableTimeFromStart? timeFromStart,
    GroupMeasure? groupMeasure,
    bool? disallowExtensions,
  });
}

class _$EvidenceVariableCharacteristicCopyWithImpl<T>
    implements $EvidenceVariableCharacteristicCopyWith<T> {
  final EvidenceVariableCharacteristic _value;
  final T Function(EvidenceVariableCharacteristic) _then;

  _$EvidenceVariableCharacteristicCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? description = fhirSentinel,
    Object? definitionX = fhirSentinel,
    Object? method = fhirSentinel,
    Object? device = fhirSentinel,
    Object? exclude = fhirSentinel,
    Object? timeFromStart = fhirSentinel,
    Object? groupMeasure = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EvidenceVariableCharacteristic(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        definitionX: identical(definitionX, fhirSentinel)
            ? _value.definitionX
            : (definitionX as Reference?) ?? _value.definitionX,
        method: identical(method, fhirSentinel)
            ? _value.method
            : method as CodeableConcept?,
        device: identical(device, fhirSentinel)
            ? _value.device
            : device as Reference?,
        exclude: identical(exclude, fhirSentinel)
            ? _value.exclude
            : exclude as FhirBoolean?,
        timeFromStart: identical(timeFromStart, fhirSentinel)
            ? _value.timeFromStart
            : timeFromStart as EvidenceVariableTimeFromStart?,
        groupMeasure: identical(groupMeasure, fhirSentinel)
            ? _value.groupMeasure
            : groupMeasure as GroupMeasure?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EvidenceVariableCharacteristicCopyWithExtension
    on EvidenceVariableCharacteristic {
  $EvidenceVariableCharacteristicCopyWith<EvidenceVariableCharacteristic>
      get copyWith => _$EvidenceVariableCharacteristicCopyWithImpl<
              EvidenceVariableCharacteristic>(
            this,
            (value) => value,
          );
}

abstract class $EvidenceVariableTimeFromStartCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    Quantity? quantity,
    Range? range,
    List<Annotation>? note,
    bool? disallowExtensions,
  });
}

class _$EvidenceVariableTimeFromStartCopyWithImpl<T>
    implements $EvidenceVariableTimeFromStartCopyWith<T> {
  final EvidenceVariableTimeFromStart _value;
  final T Function(EvidenceVariableTimeFromStart) _then;

  _$EvidenceVariableTimeFromStartCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? description = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? range = fhirSentinel,
    Object? note = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EvidenceVariableTimeFromStart(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        range: identical(range, fhirSentinel) ? _value.range : range as Range?,
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

extension EvidenceVariableTimeFromStartCopyWithExtension
    on EvidenceVariableTimeFromStart {
  $EvidenceVariableTimeFromStartCopyWith<EvidenceVariableTimeFromStart>
      get copyWith => _$EvidenceVariableTimeFromStartCopyWithImpl<
              EvidenceVariableTimeFromStart>(
            this,
            (value) => value,
          );
}

abstract class $EvidenceVariableCategoryCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    CodeableConcept? valueX,
    bool? disallowExtensions,
  });
}

class _$EvidenceVariableCategoryCopyWithImpl<T>
    implements $EvidenceVariableCategoryCopyWith<T> {
  final EvidenceVariableCategory _value;
  final T Function(EvidenceVariableCategory) _then;

  _$EvidenceVariableCategoryCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? name = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EvidenceVariableCategory(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : valueX as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EvidenceVariableCategoryCopyWithExtension
    on EvidenceVariableCategory {
  $EvidenceVariableCategoryCopyWith<EvidenceVariableCategory> get copyWith =>
      _$EvidenceVariableCategoryCopyWithImpl<EvidenceVariableCategory>(
        this,
        (value) => value,
      );
}
