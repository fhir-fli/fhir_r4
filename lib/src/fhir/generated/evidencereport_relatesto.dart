import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class EvidenceReportRelatesTo {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final Identifier targetIdentifier;
  final Reference targetReference;
  const EvidenceReportRelatesTo({
    this.id,
    this.extension,
    this.modifierExtension,
    this.code,
    this.Code,
    this.targetIdentifier,
    this.targetReference,
  });
}
