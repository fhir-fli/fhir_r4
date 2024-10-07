import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class HumanName extends DataType {
  final FhirCode? use;
  final Element? useElement;
  final FhirString? text;
  final Element? textElement;
  final FhirString? family;
  final Element? familyElement;
  final List<FhirString>? given;
  final List<Element>? givenElement;
  final List<FhirString>? prefix;
  final List<Element>? prefixElement;
  final List<FhirString>? suffix;
  final List<Element>? suffixElement;
  final Period? period;

  HumanName({
    super.id,
    super.extension_,
    this.use,
this.useElement,
    this.text,
this.textElement,
    this.family,
this.familyElement,
    this.given,
this.givenElement,
    this.prefix,
this.prefixElement,
    this.suffix,
this.suffixElement,
    this.period,
  });

@override
HumanName clone() => throw UnimplementedError();
}

