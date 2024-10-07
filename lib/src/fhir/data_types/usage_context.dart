import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class UsageContext extends DataType {
  final Coding code;
  final CodeableConcept valueCodeableConcept;
  final Quantity valueQuantity;
  final Range valueRange;
  final Reference valueReference;

  UsageContext({
    super.id,
    super.extension_,
    required this.code,
    required this.valueCodeableConcept,
    required this.valueQuantity,
    required this.valueRange,
    required this.valueReference,
  });

@override
UsageContext clone() => throw UnimplementedError();
}

