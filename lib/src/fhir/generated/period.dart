import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Period {
  final String id;
  final List<Extension> extension;
  final FhirDateTime start;
  final PrimitiveElement Start;
  final FhirDateTime end;
  final PrimitiveElement End;
  const Period({
    this.id,
    this.extension,
    this.start,
    this.Start,
    this.end,
    this.End,
  });
}
