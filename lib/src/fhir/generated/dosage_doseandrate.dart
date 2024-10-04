import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class DosageDoseAndRate {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final Range doseRange;
  final Quantity doseQuantity;
  final Ratio rateRatio;
  final Range rateRange;
  final Quantity rateQuantity;
  const DosageDoseAndRate({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.doseRange,
    this.doseQuantity,
    this.rateRatio,
    this.rateRange,
    this.rateQuantity,
  });
}
