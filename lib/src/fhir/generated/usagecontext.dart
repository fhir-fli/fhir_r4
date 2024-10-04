import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class UsageContext {
  final String id;
  final List<Extension> extension;
  final Coding code;
  final CodeableConcept valueCodeableConcept;
  final Quantity valueQuantity;
  final Range valueRange;
  final Reference valueReference;
  const UsageContext({
    this.id,
    this.extension,
    required this.code,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueRange,
    this.valueReference,
  });
}
