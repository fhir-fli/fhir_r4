import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class RatioRange extends DataType {
  RatioRange({
    super.id,
    super.extension_,
    this.lowNumerator,
    this.highNumerator,
    this.denominator,
  });

  final Quantity? lowNumerator;
  final Quantity? highNumerator;
  final Quantity? denominator;
  @override
  RatioRange clone() => throw UnimplementedError();
}
