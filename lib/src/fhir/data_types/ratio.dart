import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class Ratio extends DataType {
  Ratio({
    super.id,
    super.extension_,
    this.numerator,
    this.denominator,
  });

  final Quantity? numerator;
  final Quantity? denominator;
  @override
  Ratio clone() => throw UnimplementedError();
}
