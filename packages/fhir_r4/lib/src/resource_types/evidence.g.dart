// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'evidence.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $EvidenceCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    FhirString? title,
    Reference? citeAsX,
    PublicationStatus? status,
    FhirDateTime? date,
    List<UsageContext>? useContext,
    FhirDate? approvalDate,
    FhirDate? lastReviewDate,
    FhirString? publisher,
    List<ContactDetail>? contact,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<RelatedArtifact>? relatedArtifact,
    FhirMarkdown? description,
    FhirMarkdown? assertion,
    List<Annotation>? note,
    List<EvidenceVariableDefinition>? variableDefinition,
    CodeableConcept? synthesisType,
    CodeableConcept? studyType,
    List<EvidenceStatistic>? statistic,
    List<EvidenceCertainty>? certainty,
    List<CodeableConcept>? jurisdiction,
    bool? disallowExtensions,
  });
}

class _$EvidenceCopyWithImpl<T> implements $EvidenceCopyWith<T> {
  final Evidence _value;
  final T Function(Evidence) _then;

  _$EvidenceCopyWithImpl(this._value, this._then);

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
    Object? title = fhirSentinel,
    Object? citeAsX = fhirSentinel,
    Object? status = fhirSentinel,
    Object? date = fhirSentinel,
    Object? useContext = fhirSentinel,
    Object? approvalDate = fhirSentinel,
    Object? lastReviewDate = fhirSentinel,
    Object? publisher = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? author = fhirSentinel,
    Object? editor = fhirSentinel,
    Object? reviewer = fhirSentinel,
    Object? endorser = fhirSentinel,
    Object? relatedArtifact = fhirSentinel,
    Object? description = fhirSentinel,
    Object? assertion = fhirSentinel,
    Object? note = fhirSentinel,
    Object? variableDefinition = fhirSentinel,
    Object? synthesisType = fhirSentinel,
    Object? studyType = fhirSentinel,
    Object? statistic = fhirSentinel,
    Object? certainty = fhirSentinel,
    Object? jurisdiction = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Evidence(
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
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        citeAsX: identical(citeAsX, fhirSentinel)
            ? _value.citeAsX
            : citeAsX as Reference?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as PublicationStatus?) ?? _value.status,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        useContext: identical(useContext, fhirSentinel)
            ? _value.useContext
            : useContext as List<UsageContext>?,
        approvalDate: identical(approvalDate, fhirSentinel)
            ? _value.approvalDate
            : approvalDate as FhirDate?,
        lastReviewDate: identical(lastReviewDate, fhirSentinel)
            ? _value.lastReviewDate
            : lastReviewDate as FhirDate?,
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
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        assertion: identical(assertion, fhirSentinel)
            ? _value.assertion
            : assertion as FhirMarkdown?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        variableDefinition: identical(variableDefinition, fhirSentinel)
            ? _value.variableDefinition
            : (variableDefinition as List<EvidenceVariableDefinition>?) ??
                _value.variableDefinition,
        synthesisType: identical(synthesisType, fhirSentinel)
            ? _value.synthesisType
            : synthesisType as CodeableConcept?,
        studyType: identical(studyType, fhirSentinel)
            ? _value.studyType
            : studyType as CodeableConcept?,
        statistic: identical(statistic, fhirSentinel)
            ? _value.statistic
            : statistic as List<EvidenceStatistic>?,
        certainty: identical(certainty, fhirSentinel)
            ? _value.certainty
            : certainty as List<EvidenceCertainty>?,
      ),
    );
  }
}

extension EvidenceCopyWithExtension on Evidence {
  $EvidenceCopyWith<Evidence> get copyWith => _$EvidenceCopyWithImpl<Evidence>(
        this,
        (value) => value,
      );
}

abstract class $EvidenceVariableDefinitionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? description,
    List<Annotation>? note,
    CodeableConcept? variableRole,
    Reference? observed,
    Reference? intended,
    CodeableConcept? directnessMatch,
    bool? disallowExtensions,
  });
}

class _$EvidenceVariableDefinitionCopyWithImpl<T>
    implements $EvidenceVariableDefinitionCopyWith<T> {
  final EvidenceVariableDefinition _value;
  final T Function(EvidenceVariableDefinition) _then;

  _$EvidenceVariableDefinitionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? description = fhirSentinel,
    Object? note = fhirSentinel,
    Object? variableRole = fhirSentinel,
    Object? observed = fhirSentinel,
    Object? intended = fhirSentinel,
    Object? directnessMatch = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EvidenceVariableDefinition(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirMarkdown?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        variableRole: identical(variableRole, fhirSentinel)
            ? _value.variableRole
            : (variableRole as CodeableConcept?) ?? _value.variableRole,
        observed: identical(observed, fhirSentinel)
            ? _value.observed
            : observed as Reference?,
        intended: identical(intended, fhirSentinel)
            ? _value.intended
            : intended as Reference?,
        directnessMatch: identical(directnessMatch, fhirSentinel)
            ? _value.directnessMatch
            : directnessMatch as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EvidenceVariableDefinitionCopyWithExtension
    on EvidenceVariableDefinition {
  $EvidenceVariableDefinitionCopyWith<EvidenceVariableDefinition>
      get copyWith =>
          _$EvidenceVariableDefinitionCopyWithImpl<EvidenceVariableDefinition>(
            this,
            (value) => value,
          );
}

abstract class $EvidenceStatisticCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    List<Annotation>? note,
    CodeableConcept? statisticType,
    CodeableConcept? category,
    Quantity? quantity,
    FhirUnsignedInt? numberOfEvents,
    FhirUnsignedInt? numberAffected,
    EvidenceSampleSize? sampleSize,
    List<EvidenceAttributeEstimate>? attributeEstimate,
    List<EvidenceModelCharacteristic>? modelCharacteristic,
    bool? disallowExtensions,
  });
}

class _$EvidenceStatisticCopyWithImpl<T>
    implements $EvidenceStatisticCopyWith<T> {
  final EvidenceStatistic _value;
  final T Function(EvidenceStatistic) _then;

  _$EvidenceStatisticCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? description = fhirSentinel,
    Object? note = fhirSentinel,
    Object? statisticType = fhirSentinel,
    Object? category = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? numberOfEvents = fhirSentinel,
    Object? numberAffected = fhirSentinel,
    Object? sampleSize = fhirSentinel,
    Object? attributeEstimate = fhirSentinel,
    Object? modelCharacteristic = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EvidenceStatistic(
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
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        statisticType: identical(statisticType, fhirSentinel)
            ? _value.statisticType
            : statisticType as CodeableConcept?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as CodeableConcept?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        numberOfEvents: identical(numberOfEvents, fhirSentinel)
            ? _value.numberOfEvents
            : numberOfEvents as FhirUnsignedInt?,
        numberAffected: identical(numberAffected, fhirSentinel)
            ? _value.numberAffected
            : numberAffected as FhirUnsignedInt?,
        sampleSize: identical(sampleSize, fhirSentinel)
            ? _value.sampleSize
            : sampleSize as EvidenceSampleSize?,
        attributeEstimate: identical(attributeEstimate, fhirSentinel)
            ? _value.attributeEstimate
            : attributeEstimate as List<EvidenceAttributeEstimate>?,
        modelCharacteristic: identical(modelCharacteristic, fhirSentinel)
            ? _value.modelCharacteristic
            : modelCharacteristic as List<EvidenceModelCharacteristic>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EvidenceStatisticCopyWithExtension on EvidenceStatistic {
  $EvidenceStatisticCopyWith<EvidenceStatistic> get copyWith =>
      _$EvidenceStatisticCopyWithImpl<EvidenceStatistic>(
        this,
        (value) => value,
      );
}

abstract class $EvidenceSampleSizeCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    List<Annotation>? note,
    FhirUnsignedInt? numberOfStudies,
    FhirUnsignedInt? numberOfParticipants,
    FhirUnsignedInt? knownDataCount,
    bool? disallowExtensions,
  });
}

class _$EvidenceSampleSizeCopyWithImpl<T>
    implements $EvidenceSampleSizeCopyWith<T> {
  final EvidenceSampleSize _value;
  final T Function(EvidenceSampleSize) _then;

  _$EvidenceSampleSizeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? description = fhirSentinel,
    Object? note = fhirSentinel,
    Object? numberOfStudies = fhirSentinel,
    Object? numberOfParticipants = fhirSentinel,
    Object? knownDataCount = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EvidenceSampleSize(
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
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        numberOfStudies: identical(numberOfStudies, fhirSentinel)
            ? _value.numberOfStudies
            : numberOfStudies as FhirUnsignedInt?,
        numberOfParticipants: identical(numberOfParticipants, fhirSentinel)
            ? _value.numberOfParticipants
            : numberOfParticipants as FhirUnsignedInt?,
        knownDataCount: identical(knownDataCount, fhirSentinel)
            ? _value.knownDataCount
            : knownDataCount as FhirUnsignedInt?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EvidenceSampleSizeCopyWithExtension on EvidenceSampleSize {
  $EvidenceSampleSizeCopyWith<EvidenceSampleSize> get copyWith =>
      _$EvidenceSampleSizeCopyWithImpl<EvidenceSampleSize>(
        this,
        (value) => value,
      );
}

abstract class $EvidenceAttributeEstimateCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    List<Annotation>? note,
    CodeableConcept? type,
    Quantity? quantity,
    FhirDecimal? level,
    Range? range,
    List<EvidenceAttributeEstimate>? attributeEstimate,
    bool? disallowExtensions,
  });
}

class _$EvidenceAttributeEstimateCopyWithImpl<T>
    implements $EvidenceAttributeEstimateCopyWith<T> {
  final EvidenceAttributeEstimate _value;
  final T Function(EvidenceAttributeEstimate) _then;

  _$EvidenceAttributeEstimateCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? description = fhirSentinel,
    Object? note = fhirSentinel,
    Object? type = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? level = fhirSentinel,
    Object? range = fhirSentinel,
    Object? attributeEstimate = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EvidenceAttributeEstimate(
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
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        level: identical(level, fhirSentinel)
            ? _value.level
            : level as FhirDecimal?,
        range: identical(range, fhirSentinel) ? _value.range : range as Range?,
        attributeEstimate: identical(attributeEstimate, fhirSentinel)
            ? _value.attributeEstimate
            : attributeEstimate as List<EvidenceAttributeEstimate>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EvidenceAttributeEstimateCopyWithExtension
    on EvidenceAttributeEstimate {
  $EvidenceAttributeEstimateCopyWith<EvidenceAttributeEstimate> get copyWith =>
      _$EvidenceAttributeEstimateCopyWithImpl<EvidenceAttributeEstimate>(
        this,
        (value) => value,
      );
}

abstract class $EvidenceModelCharacteristicCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    Quantity? value,
    List<EvidenceModelCharacteristicVariable>? variable,
    List<EvidenceAttributeEstimate>? attributeEstimate,
    bool? disallowExtensions,
  });
}

class _$EvidenceModelCharacteristicCopyWithImpl<T>
    implements $EvidenceModelCharacteristicCopyWith<T> {
  final EvidenceModelCharacteristic _value;
  final T Function(EvidenceModelCharacteristic) _then;

  _$EvidenceModelCharacteristicCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? value = fhirSentinel,
    Object? variable = fhirSentinel,
    Object? attributeEstimate = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EvidenceModelCharacteristic(
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
        value:
            identical(value, fhirSentinel) ? _value.value : value as Quantity?,
        variable: identical(variable, fhirSentinel)
            ? _value.variable
            : variable as List<EvidenceModelCharacteristicVariable>?,
        attributeEstimate: identical(attributeEstimate, fhirSentinel)
            ? _value.attributeEstimate
            : attributeEstimate as List<EvidenceAttributeEstimate>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EvidenceModelCharacteristicCopyWithExtension
    on EvidenceModelCharacteristic {
  $EvidenceModelCharacteristicCopyWith<EvidenceModelCharacteristic>
      get copyWith => _$EvidenceModelCharacteristicCopyWithImpl<
              EvidenceModelCharacteristic>(
            this,
            (value) => value,
          );
}

abstract class $EvidenceModelCharacteristicVariableCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? variableDefinition,
    EvidenceVariableHandling? handling,
    List<CodeableConcept>? valueCategory,
    List<Quantity>? valueQuantity,
    List<Range>? valueRange,
    bool? disallowExtensions,
  });
}

class _$EvidenceModelCharacteristicVariableCopyWithImpl<T>
    implements $EvidenceModelCharacteristicVariableCopyWith<T> {
  final EvidenceModelCharacteristicVariable _value;
  final T Function(EvidenceModelCharacteristicVariable) _then;

  _$EvidenceModelCharacteristicVariableCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? variableDefinition = fhirSentinel,
    Object? handling = fhirSentinel,
    Object? valueCategory = fhirSentinel,
    Object? valueQuantity = fhirSentinel,
    Object? valueRange = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EvidenceModelCharacteristicVariable(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        variableDefinition: identical(variableDefinition, fhirSentinel)
            ? _value.variableDefinition
            : (variableDefinition as Reference?) ?? _value.variableDefinition,
        handling: identical(handling, fhirSentinel)
            ? _value.handling
            : handling as EvidenceVariableHandling?,
        valueCategory: identical(valueCategory, fhirSentinel)
            ? _value.valueCategory
            : valueCategory as List<CodeableConcept>?,
        valueQuantity: identical(valueQuantity, fhirSentinel)
            ? _value.valueQuantity
            : valueQuantity as List<Quantity>?,
        valueRange: identical(valueRange, fhirSentinel)
            ? _value.valueRange
            : valueRange as List<Range>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EvidenceModelCharacteristicVariableCopyWithExtension
    on EvidenceModelCharacteristicVariable {
  $EvidenceModelCharacteristicVariableCopyWith<
          EvidenceModelCharacteristicVariable>
      get copyWith => _$EvidenceModelCharacteristicVariableCopyWithImpl<
              EvidenceModelCharacteristicVariable>(
            this,
            (value) => value,
          );
}

abstract class $EvidenceCertaintyCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? description,
    List<Annotation>? note,
    CodeableConcept? type,
    CodeableConcept? rating,
    FhirString? rater,
    List<EvidenceCertainty>? subcomponent,
    bool? disallowExtensions,
  });
}

class _$EvidenceCertaintyCopyWithImpl<T>
    implements $EvidenceCertaintyCopyWith<T> {
  final EvidenceCertainty _value;
  final T Function(EvidenceCertainty) _then;

  _$EvidenceCertaintyCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? description = fhirSentinel,
    Object? note = fhirSentinel,
    Object? type = fhirSentinel,
    Object? rating = fhirSentinel,
    Object? rater = fhirSentinel,
    Object? subcomponent = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      EvidenceCertainty(
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
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        rating: identical(rating, fhirSentinel)
            ? _value.rating
            : rating as CodeableConcept?,
        rater: identical(rater, fhirSentinel)
            ? _value.rater
            : rater as FhirString?,
        subcomponent: identical(subcomponent, fhirSentinel)
            ? _value.subcomponent
            : subcomponent as List<EvidenceCertainty>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension EvidenceCertaintyCopyWithExtension on EvidenceCertainty {
  $EvidenceCertaintyCopyWith<EvidenceCertainty> get copyWith =>
      _$EvidenceCertaintyCopyWithImpl<EvidenceCertainty>(
        this,
        (value) => value,
      );
}
