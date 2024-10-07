import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Contributor extends DataType {
  final FhirCode type;
  final Element? typeElement;
  final FhirString name;
  final Element? nameElement;
  final List<ContactDetail>? contact;

  Contributor({
    super.id,
    super.extension_,
    required this.type,
this.typeElement,
    required this.name,
this.nameElement,
    this.contact,
  });

@override
Contributor clone() => throw UnimplementedError();
}

