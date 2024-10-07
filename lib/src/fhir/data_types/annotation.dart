import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class Annotation extends DataType {
  Annotation({
    super.id,
    super.extension_,
    this.authorReference,
    this.authorString,
    this.authorStringElement,
    this.time,
    this.timeElement,
    required this.text,
    this.textElement,
  });

  final Reference? authorReference;
  final FhirString? authorString;
  final Element? authorStringElement;
  final FhirDateTime? time;
  final Element? timeElement;
  final FhirMarkdown text;
  final Element? textElement;
  @override
  Annotation clone() => throw UnimplementedError();
}
