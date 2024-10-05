import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Narrative extends DataType {
  final dynamic? status;
  final Element? statusElement;
  final FhirMarkdown div;

  Narrative({
    super.id,
    super.extension_,
    this.status,
    this.statusElement,
    required this.div,
  });

}



