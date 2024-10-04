import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class HealthcareServiceAvailableTime {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<FhirCode> daysOfWeek;
  final List<PrimitiveElement> DaysOfWeek;
  final FhirBoolean allDay;
  final PrimitiveElement AllDay;
  final FhirTime availableStartTime;
  final PrimitiveElement AvailableStartTime;
  final FhirTime availableEndTime;
  final PrimitiveElement AvailableEndTime;
  const HealthcareServiceAvailableTime({
    this.id,
    this.extension,
    this.modifierExtension,
    this.daysOfWeek,
    this.DaysOfWeek,
    this.allDay,
    this.AllDay,
    this.availableStartTime,
    this.AvailableStartTime,
    this.availableEndTime,
    this.AvailableEndTime,
  });
}
