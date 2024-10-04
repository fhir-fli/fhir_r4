import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Element {
  final String id;
  final List<Extension> extension;
  const Element({
    this.id,
    this.extension,
  });
}
