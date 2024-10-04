import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ContractSigner {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Coding type;
  final Reference party;
  final List<Signature> signature;
  const ContractSigner({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.type,
    required this.party,
    required this.signature,
  });
}
