import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Narrative {
  final String id;
  final List<Extension> extension;
  final dynamic status;
  final PrimitiveElement Status;
  final FhirMarkdown div;
  const Narrative({
    this.id,
    this.extension,
    this.status,
    this.Status,
    required this.div,
  });
}
