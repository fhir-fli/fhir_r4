// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'measure.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $MeasureCopyWith<T> extends $CanonicalResourceCopyWith<T> {
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
    SubjectXMeasure? subjectX,
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
    FhirMarkdown? disclaimer,
    CodeableConcept? scoring,
    CodeableConcept? compositeScoring,
    List<CodeableConcept>? type,
    FhirString? riskAdjustment,
    FhirString? rateAggregation,
    FhirMarkdown? rationale,
    FhirMarkdown? clinicalRecommendationStatement,
    CodeableConcept? improvementNotation,
    List<FhirMarkdown>? definition,
    FhirMarkdown? guidance,
    List<MeasureGroup>? group,
    List<MeasureSupplementalData>? supplementalData,
    bool? disallowExtensions,
  });
}

class _$MeasureCopyWithImpl<T> implements $MeasureCopyWith<T> {
  final Measure _value;
  final T Function(Measure) _then;

  _$MeasureCopyWithImpl(this._value, this._then);

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
    Object? disclaimer = fhirSentinel,
    Object? scoring = fhirSentinel,
    Object? compositeScoring = fhirSentinel,
    Object? type = fhirSentinel,
    Object? riskAdjustment = fhirSentinel,
    Object? rateAggregation = fhirSentinel,
    Object? rationale = fhirSentinel,
    Object? clinicalRecommendationStatement = fhirSentinel,
    Object? improvementNotation = fhirSentinel,
    Object? definition = fhirSentinel,
    Object? guidance = fhirSentinel,
    Object? group = fhirSentinel,
    Object? supplementalData = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Measure(
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
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as PublicationStatus?) ?? _value.status,
        experimental: identical(experimental, fhirSentinel)
            ? _value.experimental
            : experimental as FhirBoolean?,
        subjectX: identical(subjectX, fhirSentinel)
            ? _value.subjectX
            : subjectX as SubjectXMeasure?,
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
        disclaimer: identical(disclaimer, fhirSentinel)
            ? _value.disclaimer
            : disclaimer as FhirMarkdown?,
        scoring: identical(scoring, fhirSentinel)
            ? _value.scoring
            : scoring as CodeableConcept?,
        compositeScoring: identical(compositeScoring, fhirSentinel)
            ? _value.compositeScoring
            : compositeScoring as CodeableConcept?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        riskAdjustment: identical(riskAdjustment, fhirSentinel)
            ? _value.riskAdjustment
            : riskAdjustment as FhirString?,
        rateAggregation: identical(rateAggregation, fhirSentinel)
            ? _value.rateAggregation
            : rateAggregation as FhirString?,
        rationale: identical(rationale, fhirSentinel)
            ? _value.rationale
            : rationale as FhirMarkdown?,
        clinicalRecommendationStatement:
            identical(clinicalRecommendationStatement, fhirSentinel)
                ? _value.clinicalRecommendationStatement
                : clinicalRecommendationStatement as FhirMarkdown?,
        improvementNotation: identical(improvementNotation, fhirSentinel)
            ? _value.improvementNotation
            : improvementNotation as CodeableConcept?,
        definition: identical(definition, fhirSentinel)
            ? _value.definition
            : definition as List<FhirMarkdown>?,
        guidance: identical(guidance, fhirSentinel)
            ? _value.guidance
            : guidance as FhirMarkdown?,
        group: identical(group, fhirSentinel)
            ? _value.group
            : group as List<MeasureGroup>?,
        supplementalData: identical(supplementalData, fhirSentinel)
            ? _value.supplementalData
            : supplementalData as List<MeasureSupplementalData>?,
      ),
    );
  }
}

extension MeasureCopyWithExtension on Measure {
  $MeasureCopyWith<Measure> get copyWith => _$MeasureCopyWithImpl<Measure>(
        this,
        (value) => value,
      );
}

abstract class $MeasureGroupCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirString? description,
    List<MeasurePopulation>? population,
    List<MeasureStratifier>? stratifier,
    bool? disallowExtensions,
  });
}

class _$MeasureGroupCopyWithImpl<T> implements $MeasureGroupCopyWith<T> {
  final MeasureGroup _value;
  final T Function(MeasureGroup) _then;

  _$MeasureGroupCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? description = fhirSentinel,
    Object? population = fhirSentinel,
    Object? stratifier = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasureGroup(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        population: identical(population, fhirSentinel)
            ? _value.population
            : population as List<MeasurePopulation>?,
        stratifier: identical(stratifier, fhirSentinel)
            ? _value.stratifier
            : stratifier as List<MeasureStratifier>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MeasureGroupCopyWithExtension on MeasureGroup {
  $MeasureGroupCopyWith<MeasureGroup> get copyWith =>
      _$MeasureGroupCopyWithImpl<MeasureGroup>(
        this,
        (value) => value,
      );
}

abstract class $MeasurePopulationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirString? description,
    FhirExpression? criteria,
    bool? disallowExtensions,
  });
}

class _$MeasurePopulationCopyWithImpl<T>
    implements $MeasurePopulationCopyWith<T> {
  final MeasurePopulation _value;
  final T Function(MeasurePopulation) _then;

  _$MeasurePopulationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? description = fhirSentinel,
    Object? criteria = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasurePopulation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        criteria: identical(criteria, fhirSentinel)
            ? _value.criteria
            : (criteria as FhirExpression?) ?? _value.criteria,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MeasurePopulationCopyWithExtension on MeasurePopulation {
  $MeasurePopulationCopyWith<MeasurePopulation> get copyWith =>
      _$MeasurePopulationCopyWithImpl<MeasurePopulation>(
        this,
        (value) => value,
      );
}

abstract class $MeasureStratifierCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirString? description,
    FhirExpression? criteria,
    List<MeasureComponent>? component,
    bool? disallowExtensions,
  });
}

class _$MeasureStratifierCopyWithImpl<T>
    implements $MeasureStratifierCopyWith<T> {
  final MeasureStratifier _value;
  final T Function(MeasureStratifier) _then;

  _$MeasureStratifierCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? description = fhirSentinel,
    Object? criteria = fhirSentinel,
    Object? component = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasureStratifier(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        criteria: identical(criteria, fhirSentinel)
            ? _value.criteria
            : criteria as FhirExpression?,
        component: identical(component, fhirSentinel)
            ? _value.component
            : component as List<MeasureComponent>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MeasureStratifierCopyWithExtension on MeasureStratifier {
  $MeasureStratifierCopyWith<MeasureStratifier> get copyWith =>
      _$MeasureStratifierCopyWithImpl<MeasureStratifier>(
        this,
        (value) => value,
      );
}

abstract class $MeasureComponentCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirString? description,
    FhirExpression? criteria,
    bool? disallowExtensions,
  });
}

class _$MeasureComponentCopyWithImpl<T>
    implements $MeasureComponentCopyWith<T> {
  final MeasureComponent _value;
  final T Function(MeasureComponent) _then;

  _$MeasureComponentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? description = fhirSentinel,
    Object? criteria = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasureComponent(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        criteria: identical(criteria, fhirSentinel)
            ? _value.criteria
            : (criteria as FhirExpression?) ?? _value.criteria,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MeasureComponentCopyWithExtension on MeasureComponent {
  $MeasureComponentCopyWith<MeasureComponent> get copyWith =>
      _$MeasureComponentCopyWithImpl<MeasureComponent>(
        this,
        (value) => value,
      );
}

abstract class $MeasureSupplementalDataCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    List<CodeableConcept>? usage,
    FhirString? description,
    FhirExpression? criteria,
    bool? disallowExtensions,
  });
}

class _$MeasureSupplementalDataCopyWithImpl<T>
    implements $MeasureSupplementalDataCopyWith<T> {
  final MeasureSupplementalData _value;
  final T Function(MeasureSupplementalData) _then;

  _$MeasureSupplementalDataCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? usage = fhirSentinel,
    Object? description = fhirSentinel,
    Object? criteria = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasureSupplementalData(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        usage: identical(usage, fhirSentinel)
            ? _value.usage
            : usage as List<CodeableConcept>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        criteria: identical(criteria, fhirSentinel)
            ? _value.criteria
            : (criteria as FhirExpression?) ?? _value.criteria,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MeasureSupplementalDataCopyWithExtension on MeasureSupplementalData {
  $MeasureSupplementalDataCopyWith<MeasureSupplementalData> get copyWith =>
      _$MeasureSupplementalDataCopyWithImpl<MeasureSupplementalData>(
        this,
        (value) => value,
      );
}
