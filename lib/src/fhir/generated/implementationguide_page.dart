import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ImplementationGuidePage {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String nameUrl;
  final PrimitiveElement NameUrl;
  final Reference nameReference;
  final String title;
  final PrimitiveElement Title;
  final FhirCode generation;
  final PrimitiveElement Generation;
  final List<ImplementationGuidePage> page;
  const ImplementationGuidePage({
    this.id,
    this.extension,
    this.modifierExtension,
    this.nameUrl,
    this.NameUrl,
    this.nameReference,
    this.title,
    this.Title,
    this.generation,
    this.Generation,
    this.page,
  });
}
