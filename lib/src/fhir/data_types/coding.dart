import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Coding extends DataType {
  final FhirUri? system;
  final Element? systemElement;
  final FhirString? version;
  final Element? versionElement;
  final FhirCode? code;
  final Element? codeElement;
  final FhirString? display;
  final Element? displayElement;
  final FhirBoolean? userSelected;
  final Element? userSelectedElement;

  Coding({
    super.id,
    super.extension_,
    this.system,
    this.systemElement,
    this.version,
    this.versionElement,
    this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.userSelected,
    this.userSelectedElement,
  });

}



