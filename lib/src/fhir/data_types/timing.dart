import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
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
  final List<FhirDateTime>? event;
  final List<Element>? eventElement;
  final Element? repeat;
  final CodeableConcept? code;
  @override
  Timing clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final FhirCode? durationUnit;
  final Element? durationUnitElement;
  final FhirPositiveInt? frequency;
  final Element? frequencyElement;
  final FhirPositiveInt? frequencyMax;
  final Element? frequencyMaxElement;
  final FhirDecimal? period;
  final Element? periodElement;
  final FhirDecimal? periodMax;
  final Element? periodMaxElement;
  final FhirCode? periodUnit;
  final Element? periodUnitElement;
  final List<FhirCode>? dayOfWeek;
  final List<Element>? dayOfWeekElement;
  final List<FhirTime>? timeOfDay;
  final List<Element>? timeOfDayElement;
  final List<FhirCode>? when;
  final List<Element>? whenElement;
  final FhirUnsignedInt? offset;
  final Element? offsetElement;
  @override
  TimingRepeat clone() => throw UnimplementedError();
}
