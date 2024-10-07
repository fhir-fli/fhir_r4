import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Timing] /// Specifies an event that may occur multiple times. Timing schedules are used
/// to record when things are planned, expected or requested to occur. The most
/// common usage is in dosage instructions for medications. They are also used
/// when planning care of various kinds, and may be used for reporting the
/// schedule to which past regular activities were carried out.
class Timing extends BackboneType {
  Timing({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.event,
    this.eventElement,
    this.repeat,
    this.code,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [event] /// Identifies specific times when the event occurs.
  final List<FhirDateTime>? event;
  final List<Element>? eventElement;

  /// [repeat] /// A set of rules that describe when the event is scheduled.
  final Element? repeat;

  /// [code] /// A code for the timing schedule (or just text in code.text). Some codes such
  /// as BID are ubiquitous, but many institutions define their own additional
  /// codes. If a code is provided, the code is understood to be a complete
  /// statement of whatever is specified in the structured timing data, and
  /// either the code or the data may be used to interpret the Timing, with the
  /// exception that .repeat.bounds still applies over the code (and is not
  /// contained in the code).
  final CodeableConcept? code;
  @override
  Timing clone() => throw UnimplementedError();
  Timing copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirDateTime>? event,
    List<Element>? eventElement,
    Element? repeat,
    CodeableConcept? code,
  }) {
    return Timing(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      event: event ?? this.event,
      eventElement: eventElement ?? this.eventElement,
      repeat: repeat ?? this.repeat,
      code: code ?? this.code,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [TimingRepeat] /// A set of rules that describe when the event is scheduled.
class TimingRepeat extends Element {
  TimingRepeat({
    super.id,
    super.extension_,
    this.boundsDuration,
    this.boundsRange,
    this.boundsPeriod,
    this.count,
    this.countElement,
    this.countMax,
    this.countMaxElement,
    this.duration,
    this.durationElement,
    this.durationMax,
    this.durationMaxElement,
    this.durationUnit,
    this.durationUnitElement,
    this.frequency,
    this.frequencyElement,
    this.frequencyMax,
    this.frequencyMaxElement,
    this.period,
    this.periodElement,
    this.periodMax,
    this.periodMaxElement,
    this.periodUnit,
    this.periodUnitElement,
    this.dayOfWeek,
    this.dayOfWeekElement,
    this.timeOfDay,
    this.timeOfDayElement,
    this.when,
    this.whenElement,
    this.offset,
    this.offsetElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [boundsDuration] /// Either a duration for the length of the timing schedule, a range of
  /// possible length, or outer bounds for start and/or end limits of the timing
  /// schedule.
  final FhirDuration? boundsDuration;

  /// [boundsRange] /// Either a duration for the length of the timing schedule, a range of
  /// possible length, or outer bounds for start and/or end limits of the timing
  /// schedule.
  final Range? boundsRange;

  /// [boundsPeriod] /// Either a duration for the length of the timing schedule, a range of
  /// possible length, or outer bounds for start and/or end limits of the timing
  /// schedule.
  final Period? boundsPeriod;

  /// [count] /// A total count of the desired number of repetitions across the duration of
  /// the entire timing specification. If countMax is present, this element
  /// indicates the lower bound of the allowed range of count values.
  final FhirPositiveInt? count;
  final Element? countElement;

  /// [countMax] /// If present, indicates that the count is a range - so to perform the action
  /// between [count] and [countMax] times.
  final FhirPositiveInt? countMax;
  final Element? countMaxElement;

  /// [duration] /// How long this thing happens for when it happens. If durationMax is present,
  /// this element indicates the lower bound of the allowed range of the
  /// duration.
  final FhirDecimal? duration;
  final Element? durationElement;

  /// [durationMax] /// If present, indicates that the duration is a range - so to perform the
  /// action between [duration] and [durationMax] time length.
  final FhirDecimal? durationMax;
  final Element? durationMaxElement;

  /// [durationUnit] /// The units of time for the duration, in UCUM units.
  final FhirCode? durationUnit;
  final Element? durationUnitElement;

  /// [frequency] /// The number of times to repeat the action within the specified period. If
  /// frequencyMax is present, this element indicates the lower bound of the
  /// allowed range of the frequency.
  final FhirPositiveInt? frequency;
  final Element? frequencyElement;

  /// [frequencyMax] /// If present, indicates that the frequency is a range - so to repeat between
  /// [frequency] and [frequencyMax] times within the period or period range.
  final FhirPositiveInt? frequencyMax;
  final Element? frequencyMaxElement;

  /// [period] /// Indicates the duration of time over which repetitions are to occur; e.g. to
  /// express "3 times per day", 3 would be the frequency and "1 day" would be
  /// the period. If periodMax is present, this element indicates the lower bound
  /// of the allowed range of the period length.
  final FhirDecimal? period;
  final Element? periodElement;

  /// [periodMax] /// If present, indicates that the period is a range from [period] to
  /// [periodMax], allowing expressing concepts such as "do this once every 3-5
  /// days.
  final FhirDecimal? periodMax;
  final Element? periodMaxElement;

  /// [periodUnit] /// The units of time for the period in UCUM units.
  final FhirCode? periodUnit;
  final Element? periodUnitElement;

  /// [dayOfWeek] /// If one or more days of week is provided, then the action happens only on
  /// the specified day(s).
  final List<FhirCode>? dayOfWeek;
  final List<Element>? dayOfWeekElement;

  /// [timeOfDay] /// Specified time of day for action to take place.
  final List<FhirTime>? timeOfDay;
  final List<Element>? timeOfDayElement;

  /// [when] /// An approximate time period during the day, potentially linked to an event
  /// of daily living that indicates when the action should occur.
  final List<FhirCode>? when;
  final List<Element>? whenElement;

  /// [offset] /// The number of minutes from the event. If the event code does not indicate
  /// whether the minutes is before or after the event, then the offset is
  /// assumed to be after the event.
  final FhirUnsignedInt? offset;
  final Element? offsetElement;
  @override
  TimingRepeat clone() => throw UnimplementedError();
  TimingRepeat copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirDuration? boundsDuration,
    Range? boundsRange,
    Period? boundsPeriod,
    FhirPositiveInt? count,
    Element? countElement,
    FhirPositiveInt? countMax,
    Element? countMaxElement,
    FhirDecimal? duration,
    Element? durationElement,
    FhirDecimal? durationMax,
    Element? durationMaxElement,
    FhirCode? durationUnit,
    Element? durationUnitElement,
    FhirPositiveInt? frequency,
    Element? frequencyElement,
    FhirPositiveInt? frequencyMax,
    Element? frequencyMaxElement,
    FhirDecimal? period,
    Element? periodElement,
    FhirDecimal? periodMax,
    Element? periodMaxElement,
    FhirCode? periodUnit,
    Element? periodUnitElement,
    List<FhirCode>? dayOfWeek,
    List<Element>? dayOfWeekElement,
    List<FhirTime>? timeOfDay,
    List<Element>? timeOfDayElement,
    List<FhirCode>? when,
    List<Element>? whenElement,
    FhirUnsignedInt? offset,
    Element? offsetElement,
  }) {
    return TimingRepeat(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      boundsDuration: boundsDuration ?? this.boundsDuration,
      boundsRange: boundsRange ?? this.boundsRange,
      boundsPeriod: boundsPeriod ?? this.boundsPeriod,
      count: count ?? this.count,
      countElement: countElement ?? this.countElement,
      countMax: countMax ?? this.countMax,
      countMaxElement: countMaxElement ?? this.countMaxElement,
      duration: duration ?? this.duration,
      durationElement: durationElement ?? this.durationElement,
      durationMax: durationMax ?? this.durationMax,
      durationMaxElement: durationMaxElement ?? this.durationMaxElement,
      durationUnit: durationUnit ?? this.durationUnit,
      durationUnitElement: durationUnitElement ?? this.durationUnitElement,
      frequency: frequency ?? this.frequency,
      frequencyElement: frequencyElement ?? this.frequencyElement,
      frequencyMax: frequencyMax ?? this.frequencyMax,
      frequencyMaxElement: frequencyMaxElement ?? this.frequencyMaxElement,
      period: period ?? this.period,
      periodElement: periodElement ?? this.periodElement,
      periodMax: periodMax ?? this.periodMax,
      periodMaxElement: periodMaxElement ?? this.periodMaxElement,
      periodUnit: periodUnit ?? this.periodUnit,
      periodUnitElement: periodUnitElement ?? this.periodUnitElement,
      dayOfWeek: dayOfWeek ?? this.dayOfWeek,
      dayOfWeekElement: dayOfWeekElement ?? this.dayOfWeekElement,
      timeOfDay: timeOfDay ?? this.timeOfDay,
      timeOfDayElement: timeOfDayElement ?? this.timeOfDayElement,
      when: when ?? this.when,
      whenElement: whenElement ?? this.whenElement,
      offset: offset ?? this.offset,
      offsetElement: offsetElement ?? this.offsetElement,
    );
  }
}
