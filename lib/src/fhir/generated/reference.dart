import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Reference {
  final String id;
  final List<FhirExtension> extension_;
  final String reference;
  final PrimitiveElement referenceElement;
  final FhirUri type;
  final PrimitiveElement typeElement;
  final Identifier identifier;
  final String display;
  final PrimitiveElement displayElement;
  const Reference({
    required this.id,
    required this.extension_,
    required this.reference,
    required this.referenceElement,
    required this.type,
    required this.typeElement,
    required this.identifier,
    required this.display,
    required this.displayElement,
  });
}


