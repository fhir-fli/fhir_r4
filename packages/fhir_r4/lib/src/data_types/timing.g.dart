// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'timing.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $TimingCopyWith<T> extends $BackboneTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirDateTime>? event,
    TimingRepeat? repeat,
    CodeableConcept? code,
    bool? disallowExtensions,
  });
}

class _$TimingCopyWithImpl<T> implements $TimingCopyWith<T> {
  final Timing _value;
  final T Function(Timing) _then;

  _$TimingCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? event = fhirSentinel,
    Object? repeat = fhirSentinel,
    Object? code = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Timing(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        event: identical(event, fhirSentinel)
            ? _value.event
            : event as List<FhirDateTime>?,
        repeat: identical(repeat, fhirSentinel)
            ? _value.repeat
            : repeat as TimingRepeat?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TimingCopyWithExtension on Timing {
  $TimingCopyWith<Timing> get copyWith => _$TimingCopyWithImpl<Timing>(
        this,
        (value) => value,
      );
}

abstract class $TimingRepeatCopyWith<T> extends $ElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirDuration? boundsX,
    FhirPositiveInt? count,
    FhirPositiveInt? countMax,
    FhirDecimal? duration,
    FhirDecimal? durationMax,
    UnitsOfTime? durationUnit,
    FhirPositiveInt? frequency,
    FhirPositiveInt? frequencyMax,
    FhirDecimal? period,
    FhirDecimal? periodMax,
    UnitsOfTime? periodUnit,
    List<DaysOfWeek>? dayOfWeek,
    List<FhirTime>? timeOfDay,
    List<EventTiming>? when,
    FhirUnsignedInt? offset,
    bool? disallowExtensions,
  });
}

class _$TimingRepeatCopyWithImpl<T> implements $TimingRepeatCopyWith<T> {
  final TimingRepeat _value;
  final T Function(TimingRepeat) _then;

  _$TimingRepeatCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? boundsX = fhirSentinel,
    Object? count = fhirSentinel,
    Object? countMax = fhirSentinel,
    Object? duration = fhirSentinel,
    Object? durationMax = fhirSentinel,
    Object? durationUnit = fhirSentinel,
    Object? frequency = fhirSentinel,
    Object? frequencyMax = fhirSentinel,
    Object? period = fhirSentinel,
    Object? periodMax = fhirSentinel,
    Object? periodUnit = fhirSentinel,
    Object? dayOfWeek = fhirSentinel,
    Object? timeOfDay = fhirSentinel,
    Object? when = fhirSentinel,
    Object? offset = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      TimingRepeat(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        boundsX: identical(boundsX, fhirSentinel)
            ? _value.boundsX
            : boundsX as FhirDuration?,
        count: identical(count, fhirSentinel)
            ? _value.count
            : count as FhirPositiveInt?,
        countMax: identical(countMax, fhirSentinel)
            ? _value.countMax
            : countMax as FhirPositiveInt?,
        duration: identical(duration, fhirSentinel)
            ? _value.duration
            : duration as FhirDecimal?,
        durationMax: identical(durationMax, fhirSentinel)
            ? _value.durationMax
            : durationMax as FhirDecimal?,
        durationUnit: identical(durationUnit, fhirSentinel)
            ? _value.durationUnit
            : durationUnit as UnitsOfTime?,
        frequency: identical(frequency, fhirSentinel)
            ? _value.frequency
            : frequency as FhirPositiveInt?,
        frequencyMax: identical(frequencyMax, fhirSentinel)
            ? _value.frequencyMax
            : frequencyMax as FhirPositiveInt?,
        period: identical(period, fhirSentinel)
            ? _value.period
            : period as FhirDecimal?,
        periodMax: identical(periodMax, fhirSentinel)
            ? _value.periodMax
            : periodMax as FhirDecimal?,
        periodUnit: identical(periodUnit, fhirSentinel)
            ? _value.periodUnit
            : periodUnit as UnitsOfTime?,
        dayOfWeek: identical(dayOfWeek, fhirSentinel)
            ? _value.dayOfWeek
            : dayOfWeek as List<DaysOfWeek>?,
        timeOfDay: identical(timeOfDay, fhirSentinel)
            ? _value.timeOfDay
            : timeOfDay as List<FhirTime>?,
        when: identical(when, fhirSentinel)
            ? _value.when
            : when as List<EventTiming>?,
        offset: identical(offset, fhirSentinel)
            ? _value.offset
            : offset as FhirUnsignedInt?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension TimingRepeatCopyWithExtension on TimingRepeat {
  $TimingRepeatCopyWith<TimingRepeat> get copyWith =>
      _$TimingRepeatCopyWithImpl<TimingRepeat>(
        this,
        (value) => value,
      );
}
