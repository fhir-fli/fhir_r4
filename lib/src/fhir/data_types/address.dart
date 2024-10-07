import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Address extends DataType {
  final FhirCode? use;
  final Element? useElement;
  final FhirCode? type;
  final Element? typeElement;
  final FhirString? text;
  final Element? textElement;
  final List<FhirString>? line;
  final List<Element>? lineElement;
  final FhirString? city;
  final Element? cityElement;
  final FhirString? district;
  final Element? districtElement;
  final FhirString? state;
  final Element? stateElement;
  final FhirString? postalCode;
  final Element? postalCodeElement;
  final FhirString? country;
  final Element? countryElement;
  final Period? period;

  Address({
    super.id,
    super.extension_,
    this.use,
    this.useElement,
    this.type,
    this.typeElement,
    this.text,
    this.textElement,
    this.line,
    this.lineElement,
    this.city,
    this.cityElement,
    this.district,
    this.districtElement,
    this.state,
    this.stateElement,
    this.postalCode,
    this.postalCodeElement,
    this.country,
    this.countryElement,
    this.period,
  });

  @override
  Address clone() => throw UnimplementedError();
}
