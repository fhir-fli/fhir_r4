import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Range extends DataType {
  final Quantity? low;
  final Quantity? high;

  Range({
    super.id,
    super.extension_,
    this.low,
    this.high,
  });

@override
Range clone() => throw UnimplementedError();
}

