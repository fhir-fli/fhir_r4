import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Period extends DataType {
  final FhirDateTime? start;
  final Element? startElement;
  final FhirDateTime? end;
  final Element? endElement;

  Period({
    super.id,
    super.extension_,
    this.start,
    this.startElement,
    this.end,
    this.endElement,
  });

}


