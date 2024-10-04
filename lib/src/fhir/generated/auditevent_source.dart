import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class AuditEventSource {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String site;
  final PrimitiveElement Site;
  final Reference observer;
  final List<Coding> type;
  const AuditEventSource({
    this.id,
    this.extension,
    this.modifierExtension,
    this.site,
    this.Site,
    required this.observer,
    this.type,
  });
}
