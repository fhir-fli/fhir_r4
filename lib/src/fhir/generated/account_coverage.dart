import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class AccountCoverage {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Reference coverage;
  final FhirPositiveInt priority;
  final PrimitiveElement Priority;
  const AccountCoverage({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.coverage,
    this.priority,
    this.Priority,
  });
}
