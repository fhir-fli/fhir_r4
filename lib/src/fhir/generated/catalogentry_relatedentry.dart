import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CatalogEntryRelatedEntry {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode relationtype;
  final PrimitiveElement Relationtype;
  final Reference item;
  const CatalogEntryRelatedEntry({
    this.id,
    this.extension,
    this.modifierExtension,
    this.relationtype,
    this.Relationtype,
    required this.item,
  });
}
