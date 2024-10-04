import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Timing {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<FhirDateTime> event;
  final List<PrimitiveElement> Event;
  final TimingRepeat repeat;
  final CodeableConcept code;
}

@Data()
@JsonCodable()
class TimingRepeat {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
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
}


