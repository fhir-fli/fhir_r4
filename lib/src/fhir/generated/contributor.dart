import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Contributor {
  final String id;
  final List<FhirExtension> extension_;
  final dynamic type;
  final PrimitiveElement typeElement;
  final String name;
  final PrimitiveElement nameElement;
  final List<ContactDetail> contact;
  const Contributor({
    required this.id,
    required this.extension_,
    required this.type,
    required this.typeElement,
    required this.name,
    required this.nameElement,
    required this.contact,
  });
}


