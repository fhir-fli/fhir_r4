import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class CodeableConcept extends DataType {
  final List<Coding>? coding;
  final FhirString? text;
  final Element? textElement;

  CodeableConcept({
    super.id,
    super.extension_,
    this.coding,
    this.text,
this.textElement,
  });

@override
CodeableConcept clone() => throw UnimplementedError();
}

