import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class Period extends DataType {
  Period({
    super.id,
    super.extension_,
    this.start,
    this.startElement,
    this.end,
    this.endElement,
  });

  final FhirDateTime? start;
  final Element? startElement;
  final FhirDateTime? end;
  final Element? endElement;
  @override
  Period clone() => throw UnimplementedError();
}
