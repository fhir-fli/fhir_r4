import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class DeviceMetricCalibration {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final FhirCode state;
  final PrimitiveElement State;
  final FhirInstant time;
  final PrimitiveElement Time;
  const DeviceMetricCalibration({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.Type,
    this.state,
    this.State,
    this.time,
    this.Time,
  });
}
