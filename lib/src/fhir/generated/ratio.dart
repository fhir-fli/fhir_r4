import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Ratio {
  final String id;
  final List<Extension> extension;
  final Quantity numerator;
  final Quantity denominator;
  const Ratio({
    this.id,
    this.extension,
    this.numerator,
    this.denominator,
  });
}
