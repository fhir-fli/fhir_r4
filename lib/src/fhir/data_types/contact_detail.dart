import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class ContactDetail extends DataType {
  ContactDetail({
    super.id,
    super.extension_,
    this.name,
    this.nameElement,
    this.telecom,
  });

  final FhirString? name;
  final Element? nameElement;
  final List<ContactPoint>? telecom;
  @override
  ContactDetail clone() => throw UnimplementedError();
}
