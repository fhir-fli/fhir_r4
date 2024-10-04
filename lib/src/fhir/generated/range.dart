import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Range {
  final String id;
  final List<Extension> extension;
  final Quantity low;
  final Quantity high;
  const Range({
    this.id,
    this.extension,
    this.low,
    this.high,
  });
}
