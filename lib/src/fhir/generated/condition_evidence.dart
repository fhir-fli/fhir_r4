import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ConditionEvidence {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<CodeableConcept> code;
  final List<Reference> detail;
  const ConditionEvidence({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.detail,
  });
}
