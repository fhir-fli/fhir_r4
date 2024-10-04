import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class AccountGuarantor {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Reference party;
  final FhirBoolean onHold;
  final PrimitiveElement OnHold;
  final Period period;
  const AccountGuarantor({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.party,
    this.onHold,
    this.OnHold,
    this.period,
  });
}
