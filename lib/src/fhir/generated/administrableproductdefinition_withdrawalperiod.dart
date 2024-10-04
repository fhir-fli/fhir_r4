import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class AdministrableProductDefinitionWithdrawalPeriod {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept tissue;
  final Quantity value;
  final String supportingInformation;
  final PrimitiveElement SupportingInformation;
  const AdministrableProductDefinitionWithdrawalPeriod({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.tissue,
    required this.value,
    this.supportingInformation,
    this.SupportingInformation,
  });
}
