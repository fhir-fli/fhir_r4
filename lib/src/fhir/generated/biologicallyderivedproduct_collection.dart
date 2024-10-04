import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class BiologicallyDerivedProductCollection {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Reference collector;
  final Reference source;
  final String collectedDateTime;
  final PrimitiveElement CollectedDateTime;
  final Period collectedPeriod;
  const BiologicallyDerivedProductCollection({
    this.id,
    this.extension,
    this.modifierExtension,
    this.collector,
    this.source,
    this.collectedDateTime,
    this.CollectedDateTime,
    this.collectedPeriod,
  });
}
