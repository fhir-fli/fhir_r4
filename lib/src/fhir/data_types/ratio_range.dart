import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class RatioRange extends DataType {
  final Quantity? lowNumerator;
  final Quantity? highNumerator;
  final Quantity? denominator;

  RatioRange({
    super.id,
    super.extension_,
    this.lowNumerator,
    this.highNumerator,
    this.denominator,
  });

@override
RatioRange clone() => throw UnimplementedError();
}

