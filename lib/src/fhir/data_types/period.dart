import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class Period extends DataType {
  Period({
    super.id,
    super.extension_,
    this.start,
    this.startElement,
    this.end,
    this.endElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirDateTime? start;
  final Element? startElement;
  final FhirDateTime? end;
  final Element? endElement;
  @override
  Period clone() => throw UnimplementedError();
}
