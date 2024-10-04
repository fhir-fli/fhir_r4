import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class MarketingStatus {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept country;
  final CodeableConcept jurisdiction;
  final CodeableConcept status;
  final Period dateRange;
  final FhirDateTime restoreDate;
  final PrimitiveElement restoreDateElement;
  const MarketingStatus({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.country,
    required this.jurisdiction,
    required this.status,
    required this.dateRange,
    required this.restoreDate,
    required this.restoreDateElement,
  });
}


