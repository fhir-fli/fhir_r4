import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class Narrative extends DataType {
  Narrative({
    super.id,
    super.extension_,
    required this.status,
    this.statusElement,
    required this.div,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirCode status;
  final Element? statusElement;
  final FhirMarkdown div;
  @override
  Narrative clone() => throw UnimplementedError();
}
