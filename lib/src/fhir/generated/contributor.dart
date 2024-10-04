import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Contributor {
  final String id;
  final List<Extension> extension;
  final dynamic type;
  final PrimitiveElement Type;
  final String name;
  final PrimitiveElement Name;
  final List<ContactDetail> contact;
  const Contributor({
    this.id,
    this.extension,
    this.type,
    this.Type,
    this.name,
    this.Name,
    this.contact,
  });
}
