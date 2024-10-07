import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class Contributor extends DataType {
  Contributor({
    super.id,
    super.extension_,
    required this.type,
    this.typeElement,
    required this.name,
    this.nameElement,
    this.contact,
  });

  final FhirCode type;
  final Element? typeElement;
  final FhirString name;
  final Element? nameElement;
  final List<ContactDetail>? contact;
  @override
  Contributor clone() => throw UnimplementedError();
}
