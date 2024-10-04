import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Address {
  final String id;
  final List<FhirExtension> extension;
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
}


