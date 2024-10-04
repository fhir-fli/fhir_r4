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
}


