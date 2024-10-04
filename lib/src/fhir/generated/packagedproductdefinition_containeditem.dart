import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class PackagedProductDefinitionContainedItem {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableReference item;
  final Quantity amount;
  const PackagedProductDefinitionContainedItem({
    this.id,
    this.extension,
    this.modifierExtension,
    required this.item,
    this.amount,
  });
}
