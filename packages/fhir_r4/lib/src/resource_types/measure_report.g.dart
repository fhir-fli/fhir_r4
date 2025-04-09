// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'measure_report.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $MeasureReportCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    MeasureReportStatus? status,
    MeasureReportType? type,
    FhirCanonical? measure,
    Reference? subject,
    FhirDateTime? date,
    Reference? reporter,
    Period? period,
    CodeableConcept? improvementNotation,
    List<MeasureReportGroup>? group,
    List<Reference>? evaluatedResource,
    bool? disallowExtensions,
  });
}

class _$MeasureReportCopyWithImpl<T> implements $MeasureReportCopyWith<T> {
  final MeasureReport _value;
  final T Function(MeasureReport) _then;

  _$MeasureReportCopyWithImpl(this._value, this._then);

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
    Object? status = fhirSentinel,
    Object? type = fhirSentinel,
    Object? measure = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? date = fhirSentinel,
    Object? reporter = fhirSentinel,
    Object? period = fhirSentinel,
    Object? improvementNotation = fhirSentinel,
    Object? group = fhirSentinel,
    Object? evaluatedResource = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasureReport(
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
        status: status as MeasureReportStatus? ?? _value.status,
        type: type as MeasureReportType? ?? _value.type,
        measure: measure as FhirCanonical? ?? _value.measure,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        date:
            identical(date, fhirSentinel) ? _value.date : date as FhirDateTime?,
        reporter: identical(reporter, fhirSentinel)
            ? _value.reporter
            : reporter as Reference?,
        period: period as Period? ?? _value.period,
        improvementNotation: identical(improvementNotation, fhirSentinel)
            ? _value.improvementNotation
            : improvementNotation as CodeableConcept?,
        group: identical(group, fhirSentinel)
            ? _value.group
            : group as List<MeasureReportGroup>?,
        evaluatedResource: identical(evaluatedResource, fhirSentinel)
            ? _value.evaluatedResource
            : evaluatedResource as List<Reference>?,
      ),
    );
  }
}

extension MeasureReportCopyWithExtension on MeasureReport {
  $MeasureReportCopyWith<MeasureReport> get copyWith =>
      _$MeasureReportCopyWithImpl<MeasureReport>(
        this,
        (value) => value,
      );
}

abstract class $MeasureReportGroupCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    List<MeasureReportPopulation>? population,
    Quantity? measureScore,
    List<MeasureReportStratifier>? stratifier,
    bool? disallowExtensions,
  });
}

class _$MeasureReportGroupCopyWithImpl<T>
    implements $MeasureReportGroupCopyWith<T> {
  final MeasureReportGroup _value;
  final T Function(MeasureReportGroup) _then;

  _$MeasureReportGroupCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? population = fhirSentinel,
    Object? measureScore = fhirSentinel,
    Object? stratifier = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasureReportGroup(
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
        population: identical(population, fhirSentinel)
            ? _value.population
            : population as List<MeasureReportPopulation>?,
        measureScore: identical(measureScore, fhirSentinel)
            ? _value.measureScore
            : measureScore as Quantity?,
        stratifier: identical(stratifier, fhirSentinel)
            ? _value.stratifier
            : stratifier as List<MeasureReportStratifier>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MeasureReportGroupCopyWithExtension on MeasureReportGroup {
  $MeasureReportGroupCopyWith<MeasureReportGroup> get copyWith =>
      _$MeasureReportGroupCopyWithImpl<MeasureReportGroup>(
        this,
        (value) => value,
      );
}

abstract class $MeasureReportPopulationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirInteger? count,
    Reference? subjectResults,
    bool? disallowExtensions,
  });
}

class _$MeasureReportPopulationCopyWithImpl<T>
    implements $MeasureReportPopulationCopyWith<T> {
  final MeasureReportPopulation _value;
  final T Function(MeasureReportPopulation) _then;

  _$MeasureReportPopulationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? count = fhirSentinel,
    Object? subjectResults = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasureReportPopulation(
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
        count: identical(count, fhirSentinel)
            ? _value.count
            : count as FhirInteger?,
        subjectResults: identical(subjectResults, fhirSentinel)
            ? _value.subjectResults
            : subjectResults as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MeasureReportPopulationCopyWithExtension on MeasureReportPopulation {
  $MeasureReportPopulationCopyWith<MeasureReportPopulation> get copyWith =>
      _$MeasureReportPopulationCopyWithImpl<MeasureReportPopulation>(
        this,
        (value) => value,
      );
}

abstract class $MeasureReportStratifierCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? code,
    List<MeasureReportStratum>? stratum,
    bool? disallowExtensions,
  });
}

class _$MeasureReportStratifierCopyWithImpl<T>
    implements $MeasureReportStratifierCopyWith<T> {
  final MeasureReportStratifier _value;
  final T Function(MeasureReportStratifier) _then;

  _$MeasureReportStratifierCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? stratum = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasureReportStratifier(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as List<CodeableConcept>?,
        stratum: identical(stratum, fhirSentinel)
            ? _value.stratum
            : stratum as List<MeasureReportStratum>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MeasureReportStratifierCopyWithExtension on MeasureReportStratifier {
  $MeasureReportStratifierCopyWith<MeasureReportStratifier> get copyWith =>
      _$MeasureReportStratifierCopyWithImpl<MeasureReportStratifier>(
        this,
        (value) => value,
      );
}

abstract class $MeasureReportStratumCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? value,
    List<MeasureReportComponent>? component,
    List<MeasureReportPopulation>? population,
    Quantity? measureScore,
    bool? disallowExtensions,
  });
}

class _$MeasureReportStratumCopyWithImpl<T>
    implements $MeasureReportStratumCopyWith<T> {
  final MeasureReportStratum _value;
  final T Function(MeasureReportStratum) _then;

  _$MeasureReportStratumCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? value = fhirSentinel,
    Object? component = fhirSentinel,
    Object? population = fhirSentinel,
    Object? measureScore = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasureReportStratum(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        value: identical(value, fhirSentinel)
            ? _value.value
            : value as CodeableConcept?,
        component: identical(component, fhirSentinel)
            ? _value.component
            : component as List<MeasureReportComponent>?,
        population: identical(population, fhirSentinel)
            ? _value.population
            : population as List<MeasureReportPopulation>?,
        measureScore: identical(measureScore, fhirSentinel)
            ? _value.measureScore
            : measureScore as Quantity?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MeasureReportStratumCopyWithExtension on MeasureReportStratum {
  $MeasureReportStratumCopyWith<MeasureReportStratum> get copyWith =>
      _$MeasureReportStratumCopyWithImpl<MeasureReportStratum>(
        this,
        (value) => value,
      );
}

abstract class $MeasureReportComponentCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    CodeableConcept? value,
    bool? disallowExtensions,
  });
}

class _$MeasureReportComponentCopyWithImpl<T>
    implements $MeasureReportComponentCopyWith<T> {
  final MeasureReportComponent _value;
  final T Function(MeasureReportComponent) _then;

  _$MeasureReportComponentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? value = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasureReportComponent(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        code: code as CodeableConcept? ?? _value.code,
        value: value as CodeableConcept? ?? _value.value,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MeasureReportComponentCopyWithExtension on MeasureReportComponent {
  $MeasureReportComponentCopyWith<MeasureReportComponent> get copyWith =>
      _$MeasureReportComponentCopyWithImpl<MeasureReportComponent>(
        this,
        (value) => value,
      );
}

abstract class $MeasureReportPopulation1CopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    FhirInteger? count,
    Reference? subjectResults,
    bool? disallowExtensions,
  });
}

class _$MeasureReportPopulation1CopyWithImpl<T>
    implements $MeasureReportPopulation1CopyWith<T> {
  final MeasureReportPopulation1 _value;
  final T Function(MeasureReportPopulation1) _then;

  _$MeasureReportPopulation1CopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? code = fhirSentinel,
    Object? count = fhirSentinel,
    Object? subjectResults = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      MeasureReportPopulation1(
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
        count: identical(count, fhirSentinel)
            ? _value.count
            : count as FhirInteger?,
        subjectResults: identical(subjectResults, fhirSentinel)
            ? _value.subjectResults
            : subjectResults as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MeasureReportPopulation1CopyWithExtension
    on MeasureReportPopulation1 {
  $MeasureReportPopulation1CopyWith<MeasureReportPopulation1> get copyWith =>
      _$MeasureReportPopulation1CopyWithImpl<MeasureReportPopulation1>(
        this,
        (value) => value,
      );
}
