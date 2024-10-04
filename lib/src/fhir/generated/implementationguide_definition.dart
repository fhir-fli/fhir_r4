import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ImplementationGuideDefinition {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<ImplementationGuideGrouping> grouping;
  final List<ImplementationGuideResource> resource;
  final ImplementationGuide_Page page;
  final List<ImplementationGuideParameter> parameter;
  final List<ImplementationGuideTemplate> template;
  const ImplementationGuideDefinition({
    this.id,
    this.extension,
    this.modifierExtension,
    this.grouping,
    required this.resource,
    this.page,
    this.parameter,
    this.template,
  });
}
