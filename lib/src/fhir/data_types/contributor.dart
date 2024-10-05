import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Contributor extends DataType {
  final dynamic? type;
  final Element? typeElement;
  final FhirString? name;
  final Element? nameElement;
  final List<ContactDetail>? contact;

  Contributor({
    super.id,
    super.extension_,
    this.type,
    this.typeElement,
    this.name,
    this.nameElement,
    this.contact,
  });

}



