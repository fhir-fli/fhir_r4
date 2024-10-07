import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class Range extends DataType {
  Range({
    super.id,
    super.extension_,
    this.low,
    this.high,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final Quantity? low;
  final Quantity? high;
  @override
  Range clone() => throw UnimplementedError();
}
