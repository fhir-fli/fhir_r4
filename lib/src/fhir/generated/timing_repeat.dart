import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TimingRepeat {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirDuration boundsDuration;
  final Range boundsRange;
  final Period boundsPeriod;
  final FhirPositiveInt count;
  final PrimitiveElement Count;
  final FhirPositiveInt countMax;
  final PrimitiveElement CountMax;
  final FhirDecimal duration;
  final PrimitiveElement Duration;
  final FhirDecimal durationMax;
  final PrimitiveElement DurationMax;
  final dynamic durationUnit;
  final PrimitiveElement DurationUnit;
  final FhirPositiveInt frequency;
  final PrimitiveElement Frequency;
  final FhirPositiveInt frequencyMax;
  final PrimitiveElement FrequencyMax;
  final FhirDecimal period;
  final PrimitiveElement Period;
  final FhirDecimal periodMax;
  final PrimitiveElement PeriodMax;
  final dynamic periodUnit;
  final PrimitiveElement PeriodUnit;
  final List<FhirCode> dayOfWeek;
  final List<PrimitiveElement> DayOfWeek;
  final List<FhirTime> timeOfDay;
  final List<PrimitiveElement> TimeOfDay;
  final List<dynamic> when;
  final List<PrimitiveElement> When;
  final FhirUnsignedInt offset;
  final PrimitiveElement Offset;
  const TimingRepeat({
    this.id,
    this.extension,
    this.modifierExtension,
    this.boundsDuration,
    this.boundsRange,
    this.boundsPeriod,
    this.count,
    this.Count,
    this.countMax,
    this.CountMax,
    this.duration,
    this.Duration,
    this.durationMax,
    this.DurationMax,
    this.durationUnit,
    this.DurationUnit,
    this.frequency,
    this.Frequency,
    this.frequencyMax,
    this.FrequencyMax,
    this.period,
    this.Period,
    this.periodMax,
    this.PeriodMax,
    this.periodUnit,
    this.PeriodUnit,
    this.dayOfWeek,
    this.DayOfWeek,
    this.timeOfDay,
    this.TimeOfDay,
    this.when,
    this.When,
    this.offset,
    this.Offset,
  });
}
