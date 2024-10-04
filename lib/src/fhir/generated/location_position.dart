import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class LocationPosition {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirDecimal longitude;
  final PrimitiveElement Longitude;
  final FhirDecimal latitude;
  final PrimitiveElement Latitude;
  final FhirDecimal altitude;
  final PrimitiveElement Altitude;
  const LocationPosition({
    this.id,
    this.extension,
    this.modifierExtension,
    this.longitude,
    this.Longitude,
    this.latitude,
    this.Latitude,
    this.altitude,
    this.Altitude,
  });
}
