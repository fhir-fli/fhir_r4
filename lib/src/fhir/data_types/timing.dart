import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Timing extends BackboneType {
  final List<FhirDateTime>? event;
  final List<Element>? eventElement;
  final TimingRepeat? repeat;
  final CodeableConcept? code;

  Timing({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.event,
    this.eventElement,
    this.repeat,
    this.code,
  });

}


@Data()
@JsonCodable()
class TimingRepeat {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirDuration? boundsDuration;
  final Range? boundsRange;
  final Period? boundsPeriod;
  final FhirPositiveInt? count;
  final Element? countElement;
  final FhirPositiveInt? countMax;
  final Element? countMaxElement;
  final FhirDecimal? duration;
  final Element? durationElement;
  final FhirDecimal? durationMax;
  final Element? durationMaxElement;
  final dynamic? durationUnit;
  final Element? durationUnitElement;
  final FhirPositiveInt? frequency;
  final Element? frequencyElement;
  final FhirPositiveInt? frequencyMax;
  final Element? frequencyMaxElement;
  final FhirDecimal? period;
  final Element? periodElement;
  final FhirDecimal? periodMax;
  final Element? periodMaxElement;
  final dynamic? periodUnit;
  final Element? periodUnitElement;
  final List<FhirCode>? dayOfWeek;
  final List<Element>? dayOfWeekElement;
  final List<FhirTime>? timeOfDay;
  final List<Element>? timeOfDayElement;
  final List<dynamic>? when;
  final List<Element>? whenElement;
  final FhirUnsignedInt? offset;
  final Element? offsetElement;

  TimingRepeat({
    this.id,
    this.extension_,
    this.modifierExtension,
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

}



