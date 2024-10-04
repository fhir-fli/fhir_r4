import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Address {
  final String id;
  final List<Extension> extension;
  final dynamic use;
  final PrimitiveElement Use;
  final dynamic type;
  final PrimitiveElement Type;
  final String text;
  final PrimitiveElement Text;
  final List<String> line;
  final List<PrimitiveElement> Line;
  final String city;
  final PrimitiveElement City;
  final String district;
  final PrimitiveElement District;
  final String state;
  final PrimitiveElement State;
  final String postalCode;
  final PrimitiveElement PostalCode;
  final String country;
  final PrimitiveElement Country;
  final Period period;
  const Address({
    this.id,
    this.extension,
    this.use,
    this.Use,
    this.type,
    this.Type,
    this.text,
    this.Text,
    this.line,
    this.Line,
    this.city,
    this.City,
    this.district,
    this.District,
    this.state,
    this.State,
    this.postalCode,
    this.PostalCode,
    this.country,
    this.Country,
    this.period,
  });
}
