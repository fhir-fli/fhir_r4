import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class AdverseEventSuspectEntity {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Reference instance;
  final List<AdverseEventCausality> causality;
  const AdverseEventSuspectEntity({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.instance,
    this.causality,
  });
}
