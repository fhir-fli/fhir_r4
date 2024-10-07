import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class CodeableConcept extends DataType {
  CodeableConcept({
    super.id,
    super.extension_,
    this.coding,
    this.text,
    this.textElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<Coding>? coding;
  final FhirString? text;
  final Element? textElement;
  @override
  CodeableConcept clone() => throw UnimplementedError();
}
