import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class Address extends DataType {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  Address clone() => throw UnimplementedError();
}
