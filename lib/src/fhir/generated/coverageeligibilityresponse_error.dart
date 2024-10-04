import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CoverageEligibilityResponseError {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept code;
  const CoverageEligibilityResponseError({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.code,
  });
}
