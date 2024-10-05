import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ContactDetail extends DataType {
  final FhirString? name;
  final Element? nameElement;
  final List<ContactPoint>? telecom;

  ContactDetail({
    super.id,
    super.extension_,
    this.name,
    this.nameElement,
    this.telecom,
  });

}



