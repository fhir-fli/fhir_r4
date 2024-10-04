import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ListEntry {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept flag;
  final FhirBoolean deleted;
  final PrimitiveElement Deleted;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final Reference item;
  const ListEntry({
    this.id,
    this.extension,
    this.modifierExtension,
    this.flag,
    this.deleted,
    this.Deleted,
    this.date,
    this.Date,
    required this.item,
  });
}
