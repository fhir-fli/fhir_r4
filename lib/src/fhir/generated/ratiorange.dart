import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class RatioRange {
  final String id;
  final List<Extension> extension;
  final Quantity lowNumerator;
  final Quantity highNumerator;
  final Quantity denominator;
  const RatioRange({
    this.id,
    this.extension,
    this.lowNumerator,
    this.highNumerator,
    this.denominator,
  });
}
