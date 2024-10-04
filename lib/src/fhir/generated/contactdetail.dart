import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ContactDetail {
  final String id;
  final List<Extension> extension;
  final String name;
  final PrimitiveElement Name;
  final List<ContactPoint> telecom;
  const ContactDetail({
    this.id,
    this.extension,
    this.name,
    this.Name,
    this.telecom,
  });
}
