import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Timing {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<FhirDateTime> event;
  final List<PrimitiveElement> eventElement;
  final TimingRepeat repeat;
  final CodeableConcept code;
  const Timing({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.event,
    required this.eventElement,
    required this.repeat,
    required this.code,
  });
}

@Data()
@JsonCodable()
class TimingRepeat {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirDuration boundsDuration;
  final Range boundsRange;
  final Period boundsPeriod;
  final FhirPositiveInt count;
  final PrimitiveElement countElement;
  final FhirPositiveInt countMax;
  final PrimitiveElement countMaxElement;
  final FhirDecimal duration;
  final PrimitiveElement durationElement;
  final FhirDecimal durationMax;
  final PrimitiveElement durationMaxElement;
  final dynamic durationUnit;
  final PrimitiveElement durationUnitElement;
  final FhirPositiveInt frequency;
  final PrimitiveElement frequencyElement;
  final FhirPositiveInt frequencyMax;
  final PrimitiveElement frequencyMaxElement;
  final FhirDecimal period;
  final PrimitiveElement periodElement;
  final FhirDecimal periodMax;
  final PrimitiveElement periodMaxElement;
  final dynamic periodUnit;
  final PrimitiveElement periodUnitElement;
  final List<FhirCode> dayOfWeek;
  final List<PrimitiveElement> dayOfWeekElement;
  final List<FhirTime> timeOfDay;
  final List<PrimitiveElement> timeOfDayElement;
  final List<dynamic> when;
  final List<PrimitiveElement> whenElement;
  final FhirUnsignedInt offset;
  final PrimitiveElement offsetElement;
  const TimingRepeat({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.boundsDuration,
    required this.boundsRange,
    required this.boundsPeriod,
    required this.count,
    required this.countElement,
    required this.countMax,
    required this.countMaxElement,
    required this.duration,
    required this.durationElement,
    required this.durationMax,
    required this.durationMaxElement,
    required this.durationUnit,
    required this.durationUnitElement,
    required this.frequency,
    required this.frequencyElement,
    required this.frequencyMax,
    required this.frequencyMaxElement,
    required this.period,
    required this.periodElement,
    required this.periodMax,
    required this.periodMaxElement,
    required this.periodUnit,
    required this.periodUnitElement,
    required this.dayOfWeek,
    required this.dayOfWeekElement,
    required this.timeOfDay,
    required this.timeOfDayElement,
    required this.when,
    required this.whenElement,
    required this.offset,
    required this.offsetElement,
  });
}


