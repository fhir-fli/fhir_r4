import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Address {
  final String id;
  final List<FhirExtension> extension_;
  final dynamic use;
  final PrimitiveElement useElement;
  final dynamic type;
  final PrimitiveElement typeElement;
  final String text;
  final PrimitiveElement textElement;
  final List<String> line;
  final List<PrimitiveElement> lineElement;
  final String city;
  final PrimitiveElement cityElement;
  final String district;
  final PrimitiveElement districtElement;
  final String state;
  final PrimitiveElement stateElement;
  final String postalCode;
  final PrimitiveElement postalCodeElement;
  final String country;
  final PrimitiveElement countryElement;
  final Period period;
  const Address({
    required this.id,
    required this.extension_,
    required this.use,
    required this.useElement,
    required this.type,
    required this.typeElement,
    required this.text,
    required this.textElement,
    required this.line,
    required this.lineElement,
    required this.city,
    required this.cityElement,
    required this.district,
    required this.districtElement,
    required this.state,
    required this.stateElement,
    required this.postalCode,
    required this.postalCodeElement,
    required this.country,
    required this.countryElement,
    required this.period,
  });
}


