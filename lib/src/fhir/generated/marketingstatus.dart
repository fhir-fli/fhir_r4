import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MarketingStatus {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept country;
  final CodeableConcept jurisdiction;
  final CodeableConcept status;
  final Period dateRange;
  final FhirDateTime restoreDate;
  final PrimitiveElement RestoreDate;
  const MarketingStatus({
    this.id,
    this.extension,
    this.modifierExtension,
    this.country,
    this.jurisdiction,
    required this.status,
    this.dateRange,
    this.restoreDate,
    this.RestoreDate,
  });
}
