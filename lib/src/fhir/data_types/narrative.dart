import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Narrative extends DataType {
  final FhirCode status;
  final Element? statusElement;
  final FhirMarkdown div;

  Narrative({
    super.id,
    super.extension_,
    required this.status,
this.statusElement,
    required this.div,
  });

@override
Narrative clone() => throw UnimplementedError();
}

