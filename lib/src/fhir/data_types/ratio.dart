import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Ratio extends DataType {
  final Quantity? numerator;
  final Quantity? denominator;

  Ratio({
    super.id,
    super.extension_,
    this.numerator,
    this.denominator,
  });

}


