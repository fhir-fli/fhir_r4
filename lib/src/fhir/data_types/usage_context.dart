import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class UsageContext extends DataType {
  UsageContext({
    super.id,
    super.extension_,
    required this.code,
    required this.valueCodeableConcept,
    required this.valueQuantity,
    required this.valueRange,
    required this.valueReference,
  });

  final Coding code;
  final CodeableConcept valueCodeableConcept;
  final Quantity valueQuantity;
  final Range valueRange;
  final Reference valueReference;
  @override
  UsageContext clone() => throw UnimplementedError();
}
