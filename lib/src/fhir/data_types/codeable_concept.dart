import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class CodeableConcept extends DataType {
  CodeableConcept({
    super.id,
    super.extension_,
    this.coding,
    this.text,
    this.textElement,
  });

  final List<Coding>? coding;
  final FhirString? text;
  final Element? textElement;
  @override
  CodeableConcept clone() => throw UnimplementedError();
}
