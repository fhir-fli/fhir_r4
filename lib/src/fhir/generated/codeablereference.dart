import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CodeableReference {
  final String id;
  final List<Extension> extension;
  final CodeableConcept concept;
  final Reference reference;
  const CodeableReference({
    this.id,
    this.extension,
    this.concept,
    this.reference,
  });
}
