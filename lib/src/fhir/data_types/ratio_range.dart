import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class RatioRange extends DataType {
  RatioRange({
    super.id,
    super.extension_,
    this.lowNumerator,
    this.highNumerator,
    this.denominator,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final Quantity? lowNumerator;
  final Quantity? highNumerator;
  final Quantity? denominator;
  @override
  RatioRange clone() => throw UnimplementedError();
}
