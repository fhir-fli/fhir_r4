import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CitationStatusDate {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept activity;
  final FhirBoolean actual;
  final PrimitiveElement Actual;
  final Period period;
  const CitationStatusDate({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.activity,
    this.actual,
    this.Actual,
    required this.period,
  });
}
