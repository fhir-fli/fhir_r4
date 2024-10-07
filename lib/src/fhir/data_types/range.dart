import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class Range extends DataType {
  Range({
    super.id,
    super.extension_,
    this.low,
    this.high,
  });

  final Quantity? low;
  final Quantity? high;
  @override
  Range clone() => throw UnimplementedError();
}
