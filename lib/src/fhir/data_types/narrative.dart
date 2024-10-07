import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class Narrative extends DataType {
  Narrative({
    super.id,
    super.extension_,
    required this.status,
    this.statusElement,
    required this.div,
  });

  final FhirCode status;
  final Element? statusElement;
  final FhirMarkdown div;
  @override
  Narrative clone() => throw UnimplementedError();
}
