import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class DeviceUdiCarrier {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String deviceIdentifier;
  final PrimitiveElement DeviceIdentifier;
  final FhirUri issuer;
  final PrimitiveElement Issuer;
  final FhirUri jurisdiction;
  final PrimitiveElement Jurisdiction;
  final FhirBase64Binary carrierAIDC;
  final PrimitiveElement CarrierAIDC;
  final String carrierHRF;
  final PrimitiveElement CarrierHRF;
  final FhirCode entryType;
  final PrimitiveElement EntryType;
  const DeviceUdiCarrier({
    this.id,
    this.extension,
    this.modifierExtension,
    this.deviceIdentifier,
    this.DeviceIdentifier,
    this.issuer,
    this.Issuer,
    this.jurisdiction,
    this.Jurisdiction,
    this.carrierAIDC,
    this.CarrierAIDC,
    this.carrierHRF,
    this.CarrierHRF,
    this.entryType,
    this.EntryType,
  });
}
