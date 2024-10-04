import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class EvidenceReportSubject {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<EvidenceReportCharacteristic> characteristic;
  final List<Annotation> note;
  const EvidenceReportSubject({
    this.id,
    this.extension,
    this.modifierExtension,
    this.characteristic,
    this.note,
  });
}
