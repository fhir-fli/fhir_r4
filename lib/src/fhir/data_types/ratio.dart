import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class Ratio extends DataType {
  Ratio({
    super.id,
    super.extension_,
    this.numerator,
    this.denominator,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final Quantity? numerator;
  final Quantity? denominator;
  @override
  Ratio clone() => throw UnimplementedError();
}
