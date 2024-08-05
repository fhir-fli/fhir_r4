// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Timing _$TimingFromJson(Map<String, dynamic> json) {
  return _Timing.fromJson(json);
}

/// @nodoc
mixin _$Timing {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [event] Identifies specific times when the event occurs.
  List<FhirDateTime>? get event => throw _privateConstructorUsedError;

  /// [eventElement] Extensions for event
  @JsonKey(name: '_event')
  List<PrimitiveElement>? get eventElement =>
      throw _privateConstructorUsedError;

  /// [repeat] A set of rules that describe when the event is scheduled.
  TimingRepeat? get repeat => throw _privateConstructorUsedError;

  /// [code] A code for the timing schedule (or just text in code.text). Some
  /// codes such as BID are ubiquitous, but many institutions define their own
  /// additional codes. If a code is provided, the code is understood to be a
  /// complete statement of whatever is specified in the structured timing data,
  /// and either the code or the data may be used to interpret the Timing, with
  /// the exception that .repeat.bounds still applies over the code (and is not
  ///  contained in the code).
  CodeableConcept? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimingCopyWith<Timing> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimingCopyWith<$Res> {
  factory $TimingCopyWith(Timing value, $Res Function(Timing) then) =
      _$TimingCopyWithImpl<$Res, Timing>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<FhirDateTime>? event,
      @JsonKey(name: '_event') List<PrimitiveElement>? eventElement,
      TimingRepeat? repeat,
      CodeableConcept? code});

  $TimingRepeatCopyWith<$Res>? get repeat;
  $CodeableConceptCopyWith<$Res>? get code;
}

/// @nodoc
class _$TimingCopyWithImpl<$Res, $Val extends Timing>
    implements $TimingCopyWith<$Res> {
  _$TimingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? event = freezed,
    Object? eventElement = freezed,
    Object? repeat = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as List<FhirDateTime>?,
      eventElement: freezed == eventElement
          ? _value.eventElement
          : eventElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      repeat: freezed == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as TimingRepeat?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimingRepeatCopyWith<$Res>? get repeat {
    if (_value.repeat == null) {
      return null;
    }

    return $TimingRepeatCopyWith<$Res>(_value.repeat!, (value) {
      return _then(_value.copyWith(repeat: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get code {
    if (_value.code == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.code!, (value) {
      return _then(_value.copyWith(code: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimingImplCopyWith<$Res> implements $TimingCopyWith<$Res> {
  factory _$$TimingImplCopyWith(
          _$TimingImpl value, $Res Function(_$TimingImpl) then) =
      __$$TimingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<FhirDateTime>? event,
      @JsonKey(name: '_event') List<PrimitiveElement>? eventElement,
      TimingRepeat? repeat,
      CodeableConcept? code});

  @override
  $TimingRepeatCopyWith<$Res>? get repeat;
  @override
  $CodeableConceptCopyWith<$Res>? get code;
}

/// @nodoc
class __$$TimingImplCopyWithImpl<$Res>
    extends _$TimingCopyWithImpl<$Res, _$TimingImpl>
    implements _$$TimingImplCopyWith<$Res> {
  __$$TimingImplCopyWithImpl(
      _$TimingImpl _value, $Res Function(_$TimingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? event = freezed,
    Object? eventElement = freezed,
    Object? repeat = freezed,
    Object? code = freezed,
  }) {
    return _then(_$TimingImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      event: freezed == event
          ? _value._event
          : event // ignore: cast_nullable_to_non_nullable
              as List<FhirDateTime>?,
      eventElement: freezed == eventElement
          ? _value._eventElement
          : eventElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      repeat: freezed == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as TimingRepeat?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimingImpl extends _Timing {
  _$TimingImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<FhirDateTime>? event,
      @JsonKey(name: '_event') final List<PrimitiveElement>? eventElement,
      this.repeat,
      this.code})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _event = event,
        _eventElement = eventElement,
        super._();

  factory _$TimingImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimingImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [event] Identifies specific times when the event occurs.
  final List<FhirDateTime>? _event;

  /// [event] Identifies specific times when the event occurs.
  @override
  List<FhirDateTime>? get event {
    final value = _event;
    if (value == null) return null;
    if (_event is EqualUnmodifiableListView) return _event;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [eventElement] Extensions for event
  final List<PrimitiveElement>? _eventElement;

  /// [eventElement] Extensions for event
  @override
  @JsonKey(name: '_event')
  List<PrimitiveElement>? get eventElement {
    final value = _eventElement;
    if (value == null) return null;
    if (_eventElement is EqualUnmodifiableListView) return _eventElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [repeat] A set of rules that describe when the event is scheduled.
  @override
  final TimingRepeat? repeat;

  /// [code] A code for the timing schedule (or just text in code.text). Some
  /// codes such as BID are ubiquitous, but many institutions define their own
  /// additional codes. If a code is provided, the code is understood to be a
  /// complete statement of whatever is specified in the structured timing data,
  /// and either the code or the data may be used to interpret the Timing, with
  /// the exception that .repeat.bounds still applies over the code (and is not
  ///  contained in the code).
  @override
  final CodeableConcept? code;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimingImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other._event, _event) &&
            const DeepCollectionEquality()
                .equals(other._eventElement, _eventElement) &&
            (identical(other.repeat, repeat) || other.repeat == repeat) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_event),
      const DeepCollectionEquality().hash(_eventElement),
      repeat,
      code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimingImplCopyWith<_$TimingImpl> get copyWith =>
      __$$TimingImplCopyWithImpl<_$TimingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimingImplToJson(
      this,
    );
  }
}

abstract class _Timing extends Timing {
  factory _Timing(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<FhirDateTime>? event,
      @JsonKey(name: '_event') final List<PrimitiveElement>? eventElement,
      final TimingRepeat? repeat,
      final CodeableConcept? code}) = _$TimingImpl;
  _Timing._() : super._();

  factory _Timing.fromJson(Map<String, dynamic> json) = _$TimingImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [event] Identifies specific times when the event occurs.
  List<FhirDateTime>? get event;
  @override

  /// [eventElement] Extensions for event
  @JsonKey(name: '_event')
  List<PrimitiveElement>? get eventElement;
  @override

  /// [repeat] A set of rules that describe when the event is scheduled.
  TimingRepeat? get repeat;
  @override

  /// [code] A code for the timing schedule (or just text in code.text). Some
  /// codes such as BID are ubiquitous, but many institutions define their own
  /// additional codes. If a code is provided, the code is understood to be a
  /// complete statement of whatever is specified in the structured timing data,
  /// and either the code or the data may be used to interpret the Timing, with
  /// the exception that .repeat.bounds still applies over the code (and is not
  ///  contained in the code).
  CodeableConcept? get code;
  @override
  @JsonKey(ignore: true)
  _$$TimingImplCopyWith<_$TimingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TimingRepeat _$TimingRepeatFromJson(Map<String, dynamic> json) {
  return _TimingRepeat.fromJson(json);
}

/// @nodoc
mixin _$TimingRepeat {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [boundsDuration] Either a duration for the length of the timing schedule,
  /// a range of possible length, or outer bounds for start and/or end limits of
  ///  the timing schedule.
  FhirDuration? get boundsDuration => throw _privateConstructorUsedError;

  /// [boundsRange] Either a duration for the length of the timing schedule, a
  /// range of possible length, or outer bounds for start and/or end limits of
  ///  the timing schedule.
  Range? get boundsRange => throw _privateConstructorUsedError;

  /// [boundsPeriod] Either a duration for the length of the timing schedule, a
  /// range of possible length, or outer bounds for start and/or end limits of
  ///  the timing schedule.
  Period? get boundsPeriod => throw _privateConstructorUsedError;

  /// [count] A total count of the desired number of repetitions across the
  /// duration of the entire timing specification. If countMax is present, this
  ///  element indicates the lower bound of the allowed range of count values.
  FhirPositiveInt? get count => throw _privateConstructorUsedError;

  /// [countElement] Extensions for count
  @JsonKey(name: '_count')
  PrimitiveElement? get countElement => throw _privateConstructorUsedError;

  /// [countMax] If present, indicates that the count is a range - so to
  ///  perform the action between [count] and [countMax] times.
  FhirPositiveInt? get countMax => throw _privateConstructorUsedError;

  /// [countMaxElement] Extensions for countMax
  @JsonKey(name: '_countMax')
  PrimitiveElement? get countMaxElement => throw _privateConstructorUsedError;

  /// [duration] How long this thing happens for when it happens. If
  /// durationMax is present, this element indicates the lower bound of the
  ///  allowed range of the duration.
  FhirDecimal? get duration => throw _privateConstructorUsedError;

  /// [durationElement] Extensions for duration
  @JsonKey(name: '_duration')
  PrimitiveElement? get durationElement => throw _privateConstructorUsedError;

  /// [durationMax] If present, indicates that the duration is a range - so to
  ///  perform the action between [duration] and [durationMax] time length.
  FhirDecimal? get durationMax => throw _privateConstructorUsedError;

  /// [durationMaxElement] Extensions for durationMax
  @JsonKey(name: '_durationMax')
  PrimitiveElement? get durationMaxElement =>
      throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: TimingRepeatDurationUnit.unknown)
  TimingRepeatDurationUnit? get durationUnit =>
      throw _privateConstructorUsedError;

  /// [durationUnitElement] Extensions for durationUnit
  @JsonKey(name: '_durationUnit')
  PrimitiveElement? get durationUnitElement =>
      throw _privateConstructorUsedError;

  /// [frequency] The number of times to repeat the action within the specified
  /// period. If frequencyMax is present, this element indicates the lower bound
  ///  of the allowed range of the frequency.
  FhirPositiveInt? get frequency => throw _privateConstructorUsedError;

  /// [frequencyElement] Extensions for frequency
  @JsonKey(name: '_frequency')
  PrimitiveElement? get frequencyElement => throw _privateConstructorUsedError;

  /// [frequencyMax] If present, indicates that the frequency is a range - so
  /// to repeat between [frequency] and [frequencyMax] times within the period
  ///  or period range.
  FhirPositiveInt? get frequencyMax => throw _privateConstructorUsedError;

  /// [frequencyMaxElement] Extensions for frequencyMax
  @JsonKey(name: '_frequencyMax')
  PrimitiveElement? get frequencyMaxElement =>
      throw _privateConstructorUsedError;

  /// [period] Indicates the duration of time over which repetitions are to
  /// occur; e.g. to express "3 times per day", 3 would be the frequency and "1
  /// day" would be the period. If periodMax is present, this element indicates
  ///  the lower bound of the allowed range of the period length.
  FhirDecimal? get period => throw _privateConstructorUsedError;

  /// [periodElement] Extensions for period
  @JsonKey(name: '_period')
  PrimitiveElement? get periodElement => throw _privateConstructorUsedError;

  /// [periodMax] If present, indicates that the period is a range from [period]
  /// to [periodMax], allowing expressing concepts such as "do this once every
  /// 3-5 days.
  FhirDecimal? get periodMax => throw _privateConstructorUsedError;

  /// [periodMaxElement] Extensions for periodMax
  @JsonKey(name: '_periodMax')
  PrimitiveElement? get periodMaxElement => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: TimingRepeatPeriodUnit.unknown)
  TimingRepeatPeriodUnit? get periodUnit => throw _privateConstructorUsedError;

  /// [periodUnitElement] Extensions for periodUnit
  @JsonKey(name: '_periodUnit')
  PrimitiveElement? get periodUnitElement => throw _privateConstructorUsedError;

  /// [dayOfWeek] If one or more days of week is provided, then the action
  ///  happens only on the specified day(s).
  List<FhirCode>? get dayOfWeek => throw _privateConstructorUsedError;

  /// [dayOfWeekElement] Extensions for dayOfWeek
  @JsonKey(name: '_dayOfWeek')
  List<PrimitiveElement>? get dayOfWeekElement =>
      throw _privateConstructorUsedError;

  /// [timeOfDay] Specified time of day for action to take place.
  List<FhirTime>? get timeOfDay => throw _privateConstructorUsedError;

  /// [timeOfDayElement] Extensions for timeOfDay
  @JsonKey(name: '_timeOfDay')
  List<PrimitiveElement>? get timeOfDayElement =>
      throw _privateConstructorUsedError;

  /// [when] An approximate time period during the day, potentially linked to
  ///  an event of daily living that indicates when the action should occur.
  List<TimingRepeatWhen>? get when => throw _privateConstructorUsedError;

  /// [whenElement] Extensions for when
  @JsonKey(name: '_when')
  List<PrimitiveElement>? get whenElement => throw _privateConstructorUsedError;

  /// [offset] The number of minutes from the event. If the event code does not
  /// indicate whether the minutes is before or after the event, then the offset
  ///  is assumed to be after the event.
  FhirUnsignedInt? get offset => throw _privateConstructorUsedError;

  /// [offsetElement] Extensions for offset
  @JsonKey(name: '_offset')
  PrimitiveElement? get offsetElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimingRepeatCopyWith<TimingRepeat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimingRepeatCopyWith<$Res> {
  factory $TimingRepeatCopyWith(
          TimingRepeat value, $Res Function(TimingRepeat) then) =
      _$TimingRepeatCopyWithImpl<$Res, TimingRepeat>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirDuration? boundsDuration,
      Range? boundsRange,
      Period? boundsPeriod,
      FhirPositiveInt? count,
      @JsonKey(name: '_count') PrimitiveElement? countElement,
      FhirPositiveInt? countMax,
      @JsonKey(name: '_countMax') PrimitiveElement? countMaxElement,
      FhirDecimal? duration,
      @JsonKey(name: '_duration') PrimitiveElement? durationElement,
      FhirDecimal? durationMax,
      @JsonKey(name: '_durationMax') PrimitiveElement? durationMaxElement,
      @JsonKey(unknownEnumValue: TimingRepeatDurationUnit.unknown)
      TimingRepeatDurationUnit? durationUnit,
      @JsonKey(name: '_durationUnit') PrimitiveElement? durationUnitElement,
      FhirPositiveInt? frequency,
      @JsonKey(name: '_frequency') PrimitiveElement? frequencyElement,
      FhirPositiveInt? frequencyMax,
      @JsonKey(name: '_frequencyMax') PrimitiveElement? frequencyMaxElement,
      FhirDecimal? period,
      @JsonKey(name: '_period') PrimitiveElement? periodElement,
      FhirDecimal? periodMax,
      @JsonKey(name: '_periodMax') PrimitiveElement? periodMaxElement,
      @JsonKey(unknownEnumValue: TimingRepeatPeriodUnit.unknown)
      TimingRepeatPeriodUnit? periodUnit,
      @JsonKey(name: '_periodUnit') PrimitiveElement? periodUnitElement,
      List<FhirCode>? dayOfWeek,
      @JsonKey(name: '_dayOfWeek') List<PrimitiveElement>? dayOfWeekElement,
      List<FhirTime>? timeOfDay,
      @JsonKey(name: '_timeOfDay') List<PrimitiveElement>? timeOfDayElement,
      List<TimingRepeatWhen>? when,
      @JsonKey(name: '_when') List<PrimitiveElement>? whenElement,
      FhirUnsignedInt? offset,
      @JsonKey(name: '_offset') PrimitiveElement? offsetElement});

  $FhirDurationCopyWith<$Res>? get boundsDuration;
  $RangeCopyWith<$Res>? get boundsRange;
  $PeriodCopyWith<$Res>? get boundsPeriod;
}

/// @nodoc
class _$TimingRepeatCopyWithImpl<$Res, $Val extends TimingRepeat>
    implements $TimingRepeatCopyWith<$Res> {
  _$TimingRepeatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? boundsDuration = freezed,
    Object? boundsRange = freezed,
    Object? boundsPeriod = freezed,
    Object? count = freezed,
    Object? countElement = freezed,
    Object? countMax = freezed,
    Object? countMaxElement = freezed,
    Object? duration = freezed,
    Object? durationElement = freezed,
    Object? durationMax = freezed,
    Object? durationMaxElement = freezed,
    Object? durationUnit = freezed,
    Object? durationUnitElement = freezed,
    Object? frequency = freezed,
    Object? frequencyElement = freezed,
    Object? frequencyMax = freezed,
    Object? frequencyMaxElement = freezed,
    Object? period = freezed,
    Object? periodElement = freezed,
    Object? periodMax = freezed,
    Object? periodMaxElement = freezed,
    Object? periodUnit = freezed,
    Object? periodUnitElement = freezed,
    Object? dayOfWeek = freezed,
    Object? dayOfWeekElement = freezed,
    Object? timeOfDay = freezed,
    Object? timeOfDayElement = freezed,
    Object? when = freezed,
    Object? whenElement = freezed,
    Object? offset = freezed,
    Object? offsetElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      boundsDuration: freezed == boundsDuration
          ? _value.boundsDuration
          : boundsDuration // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      boundsRange: freezed == boundsRange
          ? _value.boundsRange
          : boundsRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      boundsPeriod: freezed == boundsPeriod
          ? _value.boundsPeriod
          : boundsPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      countElement: freezed == countElement
          ? _value.countElement
          : countElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      countMax: freezed == countMax
          ? _value.countMax
          : countMax // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      countMaxElement: freezed == countMaxElement
          ? _value.countMaxElement
          : countMaxElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      durationElement: freezed == durationElement
          ? _value.durationElement
          : durationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      durationMax: freezed == durationMax
          ? _value.durationMax
          : durationMax // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      durationMaxElement: freezed == durationMaxElement
          ? _value.durationMaxElement
          : durationMaxElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      durationUnit: freezed == durationUnit
          ? _value.durationUnit
          : durationUnit // ignore: cast_nullable_to_non_nullable
              as TimingRepeatDurationUnit?,
      durationUnitElement: freezed == durationUnitElement
          ? _value.durationUnitElement
          : durationUnitElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      frequencyElement: freezed == frequencyElement
          ? _value.frequencyElement
          : frequencyElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      frequencyMax: freezed == frequencyMax
          ? _value.frequencyMax
          : frequencyMax // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      frequencyMaxElement: freezed == frequencyMaxElement
          ? _value.frequencyMaxElement
          : frequencyMaxElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      periodElement: freezed == periodElement
          ? _value.periodElement
          : periodElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      periodMax: freezed == periodMax
          ? _value.periodMax
          : periodMax // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      periodMaxElement: freezed == periodMaxElement
          ? _value.periodMaxElement
          : periodMaxElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      periodUnit: freezed == periodUnit
          ? _value.periodUnit
          : periodUnit // ignore: cast_nullable_to_non_nullable
              as TimingRepeatPeriodUnit?,
      periodUnitElement: freezed == periodUnitElement
          ? _value.periodUnitElement
          : periodUnitElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      dayOfWeek: freezed == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      dayOfWeekElement: freezed == dayOfWeekElement
          ? _value.dayOfWeekElement
          : dayOfWeekElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      timeOfDay: freezed == timeOfDay
          ? _value.timeOfDay
          : timeOfDay // ignore: cast_nullable_to_non_nullable
              as List<FhirTime>?,
      timeOfDayElement: freezed == timeOfDayElement
          ? _value.timeOfDayElement
          : timeOfDayElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      when: freezed == when
          ? _value.when
          : when // ignore: cast_nullable_to_non_nullable
              as List<TimingRepeatWhen>?,
      whenElement: freezed == whenElement
          ? _value.whenElement
          : whenElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      offsetElement: freezed == offsetElement
          ? _value.offsetElement
          : offsetElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirDurationCopyWith<$Res>? get boundsDuration {
    if (_value.boundsDuration == null) {
      return null;
    }

    return $FhirDurationCopyWith<$Res>(_value.boundsDuration!, (value) {
      return _then(_value.copyWith(boundsDuration: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get boundsRange {
    if (_value.boundsRange == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.boundsRange!, (value) {
      return _then(_value.copyWith(boundsRange: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get boundsPeriod {
    if (_value.boundsPeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.boundsPeriod!, (value) {
      return _then(_value.copyWith(boundsPeriod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimingRepeatImplCopyWith<$Res>
    implements $TimingRepeatCopyWith<$Res> {
  factory _$$TimingRepeatImplCopyWith(
          _$TimingRepeatImpl value, $Res Function(_$TimingRepeatImpl) then) =
      __$$TimingRepeatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirDuration? boundsDuration,
      Range? boundsRange,
      Period? boundsPeriod,
      FhirPositiveInt? count,
      @JsonKey(name: '_count') PrimitiveElement? countElement,
      FhirPositiveInt? countMax,
      @JsonKey(name: '_countMax') PrimitiveElement? countMaxElement,
      FhirDecimal? duration,
      @JsonKey(name: '_duration') PrimitiveElement? durationElement,
      FhirDecimal? durationMax,
      @JsonKey(name: '_durationMax') PrimitiveElement? durationMaxElement,
      @JsonKey(unknownEnumValue: TimingRepeatDurationUnit.unknown)
      TimingRepeatDurationUnit? durationUnit,
      @JsonKey(name: '_durationUnit') PrimitiveElement? durationUnitElement,
      FhirPositiveInt? frequency,
      @JsonKey(name: '_frequency') PrimitiveElement? frequencyElement,
      FhirPositiveInt? frequencyMax,
      @JsonKey(name: '_frequencyMax') PrimitiveElement? frequencyMaxElement,
      FhirDecimal? period,
      @JsonKey(name: '_period') PrimitiveElement? periodElement,
      FhirDecimal? periodMax,
      @JsonKey(name: '_periodMax') PrimitiveElement? periodMaxElement,
      @JsonKey(unknownEnumValue: TimingRepeatPeriodUnit.unknown)
      TimingRepeatPeriodUnit? periodUnit,
      @JsonKey(name: '_periodUnit') PrimitiveElement? periodUnitElement,
      List<FhirCode>? dayOfWeek,
      @JsonKey(name: '_dayOfWeek') List<PrimitiveElement>? dayOfWeekElement,
      List<FhirTime>? timeOfDay,
      @JsonKey(name: '_timeOfDay') List<PrimitiveElement>? timeOfDayElement,
      List<TimingRepeatWhen>? when,
      @JsonKey(name: '_when') List<PrimitiveElement>? whenElement,
      FhirUnsignedInt? offset,
      @JsonKey(name: '_offset') PrimitiveElement? offsetElement});

  @override
  $FhirDurationCopyWith<$Res>? get boundsDuration;
  @override
  $RangeCopyWith<$Res>? get boundsRange;
  @override
  $PeriodCopyWith<$Res>? get boundsPeriod;
}

/// @nodoc
class __$$TimingRepeatImplCopyWithImpl<$Res>
    extends _$TimingRepeatCopyWithImpl<$Res, _$TimingRepeatImpl>
    implements _$$TimingRepeatImplCopyWith<$Res> {
  __$$TimingRepeatImplCopyWithImpl(
      _$TimingRepeatImpl _value, $Res Function(_$TimingRepeatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? boundsDuration = freezed,
    Object? boundsRange = freezed,
    Object? boundsPeriod = freezed,
    Object? count = freezed,
    Object? countElement = freezed,
    Object? countMax = freezed,
    Object? countMaxElement = freezed,
    Object? duration = freezed,
    Object? durationElement = freezed,
    Object? durationMax = freezed,
    Object? durationMaxElement = freezed,
    Object? durationUnit = freezed,
    Object? durationUnitElement = freezed,
    Object? frequency = freezed,
    Object? frequencyElement = freezed,
    Object? frequencyMax = freezed,
    Object? frequencyMaxElement = freezed,
    Object? period = freezed,
    Object? periodElement = freezed,
    Object? periodMax = freezed,
    Object? periodMaxElement = freezed,
    Object? periodUnit = freezed,
    Object? periodUnitElement = freezed,
    Object? dayOfWeek = freezed,
    Object? dayOfWeekElement = freezed,
    Object? timeOfDay = freezed,
    Object? timeOfDayElement = freezed,
    Object? when = freezed,
    Object? whenElement = freezed,
    Object? offset = freezed,
    Object? offsetElement = freezed,
  }) {
    return _then(_$TimingRepeatImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      boundsDuration: freezed == boundsDuration
          ? _value.boundsDuration
          : boundsDuration // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      boundsRange: freezed == boundsRange
          ? _value.boundsRange
          : boundsRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      boundsPeriod: freezed == boundsPeriod
          ? _value.boundsPeriod
          : boundsPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      countElement: freezed == countElement
          ? _value.countElement
          : countElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      countMax: freezed == countMax
          ? _value.countMax
          : countMax // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      countMaxElement: freezed == countMaxElement
          ? _value.countMaxElement
          : countMaxElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      durationElement: freezed == durationElement
          ? _value.durationElement
          : durationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      durationMax: freezed == durationMax
          ? _value.durationMax
          : durationMax // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      durationMaxElement: freezed == durationMaxElement
          ? _value.durationMaxElement
          : durationMaxElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      durationUnit: freezed == durationUnit
          ? _value.durationUnit
          : durationUnit // ignore: cast_nullable_to_non_nullable
              as TimingRepeatDurationUnit?,
      durationUnitElement: freezed == durationUnitElement
          ? _value.durationUnitElement
          : durationUnitElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      frequencyElement: freezed == frequencyElement
          ? _value.frequencyElement
          : frequencyElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      frequencyMax: freezed == frequencyMax
          ? _value.frequencyMax
          : frequencyMax // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      frequencyMaxElement: freezed == frequencyMaxElement
          ? _value.frequencyMaxElement
          : frequencyMaxElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      periodElement: freezed == periodElement
          ? _value.periodElement
          : periodElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      periodMax: freezed == periodMax
          ? _value.periodMax
          : periodMax // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      periodMaxElement: freezed == periodMaxElement
          ? _value.periodMaxElement
          : periodMaxElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      periodUnit: freezed == periodUnit
          ? _value.periodUnit
          : periodUnit // ignore: cast_nullable_to_non_nullable
              as TimingRepeatPeriodUnit?,
      periodUnitElement: freezed == periodUnitElement
          ? _value.periodUnitElement
          : periodUnitElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      dayOfWeek: freezed == dayOfWeek
          ? _value._dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      dayOfWeekElement: freezed == dayOfWeekElement
          ? _value._dayOfWeekElement
          : dayOfWeekElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      timeOfDay: freezed == timeOfDay
          ? _value._timeOfDay
          : timeOfDay // ignore: cast_nullable_to_non_nullable
              as List<FhirTime>?,
      timeOfDayElement: freezed == timeOfDayElement
          ? _value._timeOfDayElement
          : timeOfDayElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      when: freezed == when
          ? _value._when
          : when // ignore: cast_nullable_to_non_nullable
              as List<TimingRepeatWhen>?,
      whenElement: freezed == whenElement
          ? _value._whenElement
          : whenElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      offsetElement: freezed == offsetElement
          ? _value.offsetElement
          : offsetElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimingRepeatImpl extends _TimingRepeat {
  _$TimingRepeatImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.boundsDuration,
      this.boundsRange,
      this.boundsPeriod,
      this.count,
      @JsonKey(name: '_count') this.countElement,
      this.countMax,
      @JsonKey(name: '_countMax') this.countMaxElement,
      this.duration,
      @JsonKey(name: '_duration') this.durationElement,
      this.durationMax,
      @JsonKey(name: '_durationMax') this.durationMaxElement,
      @JsonKey(unknownEnumValue: TimingRepeatDurationUnit.unknown)
      this.durationUnit,
      @JsonKey(name: '_durationUnit') this.durationUnitElement,
      this.frequency,
      @JsonKey(name: '_frequency') this.frequencyElement,
      this.frequencyMax,
      @JsonKey(name: '_frequencyMax') this.frequencyMaxElement,
      this.period,
      @JsonKey(name: '_period') this.periodElement,
      this.periodMax,
      @JsonKey(name: '_periodMax') this.periodMaxElement,
      @JsonKey(unknownEnumValue: TimingRepeatPeriodUnit.unknown)
      this.periodUnit,
      @JsonKey(name: '_periodUnit') this.periodUnitElement,
      final List<FhirCode>? dayOfWeek,
      @JsonKey(name: '_dayOfWeek')
      final List<PrimitiveElement>? dayOfWeekElement,
      final List<FhirTime>? timeOfDay,
      @JsonKey(name: '_timeOfDay')
      final List<PrimitiveElement>? timeOfDayElement,
      final List<TimingRepeatWhen>? when,
      @JsonKey(name: '_when') final List<PrimitiveElement>? whenElement,
      this.offset,
      @JsonKey(name: '_offset') this.offsetElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _dayOfWeek = dayOfWeek,
        _dayOfWeekElement = dayOfWeekElement,
        _timeOfDay = timeOfDay,
        _timeOfDayElement = timeOfDayElement,
        _when = when,
        _whenElement = whenElement,
        super._();

  factory _$TimingRepeatImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimingRepeatImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [boundsDuration] Either a duration for the length of the timing schedule,
  /// a range of possible length, or outer bounds for start and/or end limits of
  ///  the timing schedule.
  @override
  final FhirDuration? boundsDuration;

  /// [boundsRange] Either a duration for the length of the timing schedule, a
  /// range of possible length, or outer bounds for start and/or end limits of
  ///  the timing schedule.
  @override
  final Range? boundsRange;

  /// [boundsPeriod] Either a duration for the length of the timing schedule, a
  /// range of possible length, or outer bounds for start and/or end limits of
  ///  the timing schedule.
  @override
  final Period? boundsPeriod;

  /// [count] A total count of the desired number of repetitions across the
  /// duration of the entire timing specification. If countMax is present, this
  ///  element indicates the lower bound of the allowed range of count values.
  @override
  final FhirPositiveInt? count;

  /// [countElement] Extensions for count
  @override
  @JsonKey(name: '_count')
  final PrimitiveElement? countElement;

  /// [countMax] If present, indicates that the count is a range - so to
  ///  perform the action between [count] and [countMax] times.
  @override
  final FhirPositiveInt? countMax;

  /// [countMaxElement] Extensions for countMax
  @override
  @JsonKey(name: '_countMax')
  final PrimitiveElement? countMaxElement;

  /// [duration] How long this thing happens for when it happens. If
  /// durationMax is present, this element indicates the lower bound of the
  ///  allowed range of the duration.
  @override
  final FhirDecimal? duration;

  /// [durationElement] Extensions for duration
  @override
  @JsonKey(name: '_duration')
  final PrimitiveElement? durationElement;

  /// [durationMax] If present, indicates that the duration is a range - so to
  ///  perform the action between [duration] and [durationMax] time length.
  @override
  final FhirDecimal? durationMax;

  /// [durationMaxElement] Extensions for durationMax
  @override
  @JsonKey(name: '_durationMax')
  final PrimitiveElement? durationMaxElement;
  @override
  @JsonKey(unknownEnumValue: TimingRepeatDurationUnit.unknown)
  final TimingRepeatDurationUnit? durationUnit;

  /// [durationUnitElement] Extensions for durationUnit
  @override
  @JsonKey(name: '_durationUnit')
  final PrimitiveElement? durationUnitElement;

  /// [frequency] The number of times to repeat the action within the specified
  /// period. If frequencyMax is present, this element indicates the lower bound
  ///  of the allowed range of the frequency.
  @override
  final FhirPositiveInt? frequency;

  /// [frequencyElement] Extensions for frequency
  @override
  @JsonKey(name: '_frequency')
  final PrimitiveElement? frequencyElement;

  /// [frequencyMax] If present, indicates that the frequency is a range - so
  /// to repeat between [frequency] and [frequencyMax] times within the period
  ///  or period range.
  @override
  final FhirPositiveInt? frequencyMax;

  /// [frequencyMaxElement] Extensions for frequencyMax
  @override
  @JsonKey(name: '_frequencyMax')
  final PrimitiveElement? frequencyMaxElement;

  /// [period] Indicates the duration of time over which repetitions are to
  /// occur; e.g. to express "3 times per day", 3 would be the frequency and "1
  /// day" would be the period. If periodMax is present, this element indicates
  ///  the lower bound of the allowed range of the period length.
  @override
  final FhirDecimal? period;

  /// [periodElement] Extensions for period
  @override
  @JsonKey(name: '_period')
  final PrimitiveElement? periodElement;

  /// [periodMax] If present, indicates that the period is a range from [period]
  /// to [periodMax], allowing expressing concepts such as "do this once every
  /// 3-5 days.
  @override
  final FhirDecimal? periodMax;

  /// [periodMaxElement] Extensions for periodMax
  @override
  @JsonKey(name: '_periodMax')
  final PrimitiveElement? periodMaxElement;
  @override
  @JsonKey(unknownEnumValue: TimingRepeatPeriodUnit.unknown)
  final TimingRepeatPeriodUnit? periodUnit;

  /// [periodUnitElement] Extensions for periodUnit
  @override
  @JsonKey(name: '_periodUnit')
  final PrimitiveElement? periodUnitElement;

  /// [dayOfWeek] If one or more days of week is provided, then the action
  ///  happens only on the specified day(s).
  final List<FhirCode>? _dayOfWeek;

  /// [dayOfWeek] If one or more days of week is provided, then the action
  ///  happens only on the specified day(s).
  @override
  List<FhirCode>? get dayOfWeek {
    final value = _dayOfWeek;
    if (value == null) return null;
    if (_dayOfWeek is EqualUnmodifiableListView) return _dayOfWeek;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [dayOfWeekElement] Extensions for dayOfWeek
  final List<PrimitiveElement>? _dayOfWeekElement;

  /// [dayOfWeekElement] Extensions for dayOfWeek
  @override
  @JsonKey(name: '_dayOfWeek')
  List<PrimitiveElement>? get dayOfWeekElement {
    final value = _dayOfWeekElement;
    if (value == null) return null;
    if (_dayOfWeekElement is EqualUnmodifiableListView)
      return _dayOfWeekElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [timeOfDay] Specified time of day for action to take place.
  final List<FhirTime>? _timeOfDay;

  /// [timeOfDay] Specified time of day for action to take place.
  @override
  List<FhirTime>? get timeOfDay {
    final value = _timeOfDay;
    if (value == null) return null;
    if (_timeOfDay is EqualUnmodifiableListView) return _timeOfDay;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [timeOfDayElement] Extensions for timeOfDay
  final List<PrimitiveElement>? _timeOfDayElement;

  /// [timeOfDayElement] Extensions for timeOfDay
  @override
  @JsonKey(name: '_timeOfDay')
  List<PrimitiveElement>? get timeOfDayElement {
    final value = _timeOfDayElement;
    if (value == null) return null;
    if (_timeOfDayElement is EqualUnmodifiableListView)
      return _timeOfDayElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [when] An approximate time period during the day, potentially linked to
  ///  an event of daily living that indicates when the action should occur.
  final List<TimingRepeatWhen>? _when;

  /// [when] An approximate time period during the day, potentially linked to
  ///  an event of daily living that indicates when the action should occur.
  @override
  List<TimingRepeatWhen>? get when {
    final value = _when;
    if (value == null) return null;
    if (_when is EqualUnmodifiableListView) return _when;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [whenElement] Extensions for when
  final List<PrimitiveElement>? _whenElement;

  /// [whenElement] Extensions for when
  @override
  @JsonKey(name: '_when')
  List<PrimitiveElement>? get whenElement {
    final value = _whenElement;
    if (value == null) return null;
    if (_whenElement is EqualUnmodifiableListView) return _whenElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [offset] The number of minutes from the event. If the event code does not
  /// indicate whether the minutes is before or after the event, then the offset
  ///  is assumed to be after the event.
  @override
  final FhirUnsignedInt? offset;

  /// [offsetElement] Extensions for offset
  @override
  @JsonKey(name: '_offset')
  final PrimitiveElement? offsetElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimingRepeatImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.boundsDuration, boundsDuration) ||
                other.boundsDuration == boundsDuration) &&
            (identical(other.boundsRange, boundsRange) ||
                other.boundsRange == boundsRange) &&
            (identical(other.boundsPeriod, boundsPeriod) ||
                other.boundsPeriod == boundsPeriod) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.countElement, countElement) ||
                other.countElement == countElement) &&
            (identical(other.countMax, countMax) ||
                other.countMax == countMax) &&
            (identical(other.countMaxElement, countMaxElement) ||
                other.countMaxElement == countMaxElement) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.durationElement, durationElement) ||
                other.durationElement == durationElement) &&
            (identical(other.durationMax, durationMax) ||
                other.durationMax == durationMax) &&
            (identical(other.durationMaxElement, durationMaxElement) ||
                other.durationMaxElement == durationMaxElement) &&
            (identical(other.durationUnit, durationUnit) ||
                other.durationUnit == durationUnit) &&
            (identical(other.durationUnitElement, durationUnitElement) ||
                other.durationUnitElement == durationUnitElement) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.frequencyElement, frequencyElement) ||
                other.frequencyElement == frequencyElement) &&
            (identical(other.frequencyMax, frequencyMax) ||
                other.frequencyMax == frequencyMax) &&
            (identical(other.frequencyMaxElement, frequencyMaxElement) ||
                other.frequencyMaxElement == frequencyMaxElement) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.periodElement, periodElement) ||
                other.periodElement == periodElement) &&
            (identical(other.periodMax, periodMax) ||
                other.periodMax == periodMax) &&
            (identical(other.periodMaxElement, periodMaxElement) ||
                other.periodMaxElement == periodMaxElement) &&
            (identical(other.periodUnit, periodUnit) ||
                other.periodUnit == periodUnit) &&
            (identical(other.periodUnitElement, periodUnitElement) ||
                other.periodUnitElement == periodUnitElement) &&
            const DeepCollectionEquality()
                .equals(other._dayOfWeek, _dayOfWeek) &&
            const DeepCollectionEquality()
                .equals(other._dayOfWeekElement, _dayOfWeekElement) &&
            const DeepCollectionEquality()
                .equals(other._timeOfDay, _timeOfDay) &&
            const DeepCollectionEquality()
                .equals(other._timeOfDayElement, _timeOfDayElement) &&
            const DeepCollectionEquality().equals(other._when, _when) &&
            const DeepCollectionEquality()
                .equals(other._whenElement, _whenElement) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.offsetElement, offsetElement) ||
                other.offsetElement == offsetElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        boundsDuration,
        boundsRange,
        boundsPeriod,
        count,
        countElement,
        countMax,
        countMaxElement,
        duration,
        durationElement,
        durationMax,
        durationMaxElement,
        durationUnit,
        durationUnitElement,
        frequency,
        frequencyElement,
        frequencyMax,
        frequencyMaxElement,
        period,
        periodElement,
        periodMax,
        periodMaxElement,
        periodUnit,
        periodUnitElement,
        const DeepCollectionEquality().hash(_dayOfWeek),
        const DeepCollectionEquality().hash(_dayOfWeekElement),
        const DeepCollectionEquality().hash(_timeOfDay),
        const DeepCollectionEquality().hash(_timeOfDayElement),
        const DeepCollectionEquality().hash(_when),
        const DeepCollectionEquality().hash(_whenElement),
        offset,
        offsetElement
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimingRepeatImplCopyWith<_$TimingRepeatImpl> get copyWith =>
      __$$TimingRepeatImplCopyWithImpl<_$TimingRepeatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimingRepeatImplToJson(
      this,
    );
  }
}

abstract class _TimingRepeat extends TimingRepeat {
  factory _TimingRepeat(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirDuration? boundsDuration,
      final Range? boundsRange,
      final Period? boundsPeriod,
      final FhirPositiveInt? count,
      @JsonKey(name: '_count') final PrimitiveElement? countElement,
      final FhirPositiveInt? countMax,
      @JsonKey(name: '_countMax') final PrimitiveElement? countMaxElement,
      final FhirDecimal? duration,
      @JsonKey(name: '_duration') final PrimitiveElement? durationElement,
      final FhirDecimal? durationMax,
      @JsonKey(name: '_durationMax') final PrimitiveElement? durationMaxElement,
      @JsonKey(unknownEnumValue: TimingRepeatDurationUnit.unknown)
      final TimingRepeatDurationUnit? durationUnit,
      @JsonKey(name: '_durationUnit')
      final PrimitiveElement? durationUnitElement,
      final FhirPositiveInt? frequency,
      @JsonKey(name: '_frequency') final PrimitiveElement? frequencyElement,
      final FhirPositiveInt? frequencyMax,
      @JsonKey(name: '_frequencyMax')
      final PrimitiveElement? frequencyMaxElement,
      final FhirDecimal? period,
      @JsonKey(name: '_period') final PrimitiveElement? periodElement,
      final FhirDecimal? periodMax,
      @JsonKey(name: '_periodMax') final PrimitiveElement? periodMaxElement,
      @JsonKey(unknownEnumValue: TimingRepeatPeriodUnit.unknown)
      final TimingRepeatPeriodUnit? periodUnit,
      @JsonKey(name: '_periodUnit') final PrimitiveElement? periodUnitElement,
      final List<FhirCode>? dayOfWeek,
      @JsonKey(name: '_dayOfWeek')
      final List<PrimitiveElement>? dayOfWeekElement,
      final List<FhirTime>? timeOfDay,
      @JsonKey(name: '_timeOfDay')
      final List<PrimitiveElement>? timeOfDayElement,
      final List<TimingRepeatWhen>? when,
      @JsonKey(name: '_when') final List<PrimitiveElement>? whenElement,
      final FhirUnsignedInt? offset,
      @JsonKey(name: '_offset')
      final PrimitiveElement? offsetElement}) = _$TimingRepeatImpl;
  _TimingRepeat._() : super._();

  factory _TimingRepeat.fromJson(Map<String, dynamic> json) =
      _$TimingRepeatImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [boundsDuration] Either a duration for the length of the timing schedule,
  /// a range of possible length, or outer bounds for start and/or end limits of
  ///  the timing schedule.
  FhirDuration? get boundsDuration;
  @override

  /// [boundsRange] Either a duration for the length of the timing schedule, a
  /// range of possible length, or outer bounds for start and/or end limits of
  ///  the timing schedule.
  Range? get boundsRange;
  @override

  /// [boundsPeriod] Either a duration for the length of the timing schedule, a
  /// range of possible length, or outer bounds for start and/or end limits of
  ///  the timing schedule.
  Period? get boundsPeriod;
  @override

  /// [count] A total count of the desired number of repetitions across the
  /// duration of the entire timing specification. If countMax is present, this
  ///  element indicates the lower bound of the allowed range of count values.
  FhirPositiveInt? get count;
  @override

  /// [countElement] Extensions for count
  @JsonKey(name: '_count')
  PrimitiveElement? get countElement;
  @override

  /// [countMax] If present, indicates that the count is a range - so to
  ///  perform the action between [count] and [countMax] times.
  FhirPositiveInt? get countMax;
  @override

  /// [countMaxElement] Extensions for countMax
  @JsonKey(name: '_countMax')
  PrimitiveElement? get countMaxElement;
  @override

  /// [duration] How long this thing happens for when it happens. If
  /// durationMax is present, this element indicates the lower bound of the
  ///  allowed range of the duration.
  FhirDecimal? get duration;
  @override

  /// [durationElement] Extensions for duration
  @JsonKey(name: '_duration')
  PrimitiveElement? get durationElement;
  @override

  /// [durationMax] If present, indicates that the duration is a range - so to
  ///  perform the action between [duration] and [durationMax] time length.
  FhirDecimal? get durationMax;
  @override

  /// [durationMaxElement] Extensions for durationMax
  @JsonKey(name: '_durationMax')
  PrimitiveElement? get durationMaxElement;
  @override
  @JsonKey(unknownEnumValue: TimingRepeatDurationUnit.unknown)
  TimingRepeatDurationUnit? get durationUnit;
  @override

  /// [durationUnitElement] Extensions for durationUnit
  @JsonKey(name: '_durationUnit')
  PrimitiveElement? get durationUnitElement;
  @override

  /// [frequency] The number of times to repeat the action within the specified
  /// period. If frequencyMax is present, this element indicates the lower bound
  ///  of the allowed range of the frequency.
  FhirPositiveInt? get frequency;
  @override

  /// [frequencyElement] Extensions for frequency
  @JsonKey(name: '_frequency')
  PrimitiveElement? get frequencyElement;
  @override

  /// [frequencyMax] If present, indicates that the frequency is a range - so
  /// to repeat between [frequency] and [frequencyMax] times within the period
  ///  or period range.
  FhirPositiveInt? get frequencyMax;
  @override

  /// [frequencyMaxElement] Extensions for frequencyMax
  @JsonKey(name: '_frequencyMax')
  PrimitiveElement? get frequencyMaxElement;
  @override

  /// [period] Indicates the duration of time over which repetitions are to
  /// occur; e.g. to express "3 times per day", 3 would be the frequency and "1
  /// day" would be the period. If periodMax is present, this element indicates
  ///  the lower bound of the allowed range of the period length.
  FhirDecimal? get period;
  @override

  /// [periodElement] Extensions for period
  @JsonKey(name: '_period')
  PrimitiveElement? get periodElement;
  @override

  /// [periodMax] If present, indicates that the period is a range from [period]
  /// to [periodMax], allowing expressing concepts such as "do this once every
  /// 3-5 days.
  FhirDecimal? get periodMax;
  @override

  /// [periodMaxElement] Extensions for periodMax
  @JsonKey(name: '_periodMax')
  PrimitiveElement? get periodMaxElement;
  @override
  @JsonKey(unknownEnumValue: TimingRepeatPeriodUnit.unknown)
  TimingRepeatPeriodUnit? get periodUnit;
  @override

  /// [periodUnitElement] Extensions for periodUnit
  @JsonKey(name: '_periodUnit')
  PrimitiveElement? get periodUnitElement;
  @override

  /// [dayOfWeek] If one or more days of week is provided, then the action
  ///  happens only on the specified day(s).
  List<FhirCode>? get dayOfWeek;
  @override

  /// [dayOfWeekElement] Extensions for dayOfWeek
  @JsonKey(name: '_dayOfWeek')
  List<PrimitiveElement>? get dayOfWeekElement;
  @override

  /// [timeOfDay] Specified time of day for action to take place.
  List<FhirTime>? get timeOfDay;
  @override

  /// [timeOfDayElement] Extensions for timeOfDay
  @JsonKey(name: '_timeOfDay')
  List<PrimitiveElement>? get timeOfDayElement;
  @override

  /// [when] An approximate time period during the day, potentially linked to
  ///  an event of daily living that indicates when the action should occur.
  List<TimingRepeatWhen>? get when;
  @override

  /// [whenElement] Extensions for when
  @JsonKey(name: '_when')
  List<PrimitiveElement>? get whenElement;
  @override

  /// [offset] The number of minutes from the event. If the event code does not
  /// indicate whether the minutes is before or after the event, then the offset
  ///  is assumed to be after the event.
  FhirUnsignedInt? get offset;
  @override

  /// [offsetElement] Extensions for offset
  @JsonKey(name: '_offset')
  PrimitiveElement? get offsetElement;
  @override
  @JsonKey(ignore: true)
  _$$TimingRepeatImplCopyWith<_$TimingRepeatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
