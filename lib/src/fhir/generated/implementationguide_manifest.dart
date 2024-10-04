import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ImplementationGuideManifest {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirUrl rendering;
  final PrimitiveElement Rendering;
  final List<ImplementationGuideResource1> resource;
  final List<ImplementationGuidePage1> page;
  final List<String> image;
  final List<PrimitiveElement> Image;
  final List<String> other;
  final List<PrimitiveElement> Other;
  const ImplementationGuideManifest({
    this.id,
    this.extension,
    this.modifierExtension,
    this.rendering,
    this.Rendering,
    required this.resource,
    this.page,
    this.image,
    this.Image,
    this.other,
    this.Other,
  });
}
