import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class LocationHoursOfOperation {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<FhirCode> daysOfWeek;
  final List<PrimitiveElement> DaysOfWeek;
  final FhirBoolean allDay;
  final PrimitiveElement AllDay;
  final FhirTime openingTime;
  final PrimitiveElement OpeningTime;
  final FhirTime closingTime;
  final PrimitiveElement ClosingTime;
  const LocationHoursOfOperation({
    this.id,
    this.extension,
    this.modifierExtension,
    this.daysOfWeek,
    this.DaysOfWeek,
    this.allDay,
    this.AllDay,
    this.openingTime,
    this.OpeningTime,
    this.closingTime,
    this.ClosingTime,
  });
}
