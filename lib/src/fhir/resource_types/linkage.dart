import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class Linkage extends DomainResource {
  Linkage({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.active,
    this.activeElement,
    this.author,
    required this.item,
  }) : super(resourceType: R4ResourceType.Linkage);

  final FhirBoolean? active;
  final Element? activeElement;
  final Reference? author;
  final List<LinkageItem> item;
  @override
  Linkage clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class LinkageItem extends BackboneElement {
  LinkageItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.typeElement,
    required this.resource,
  });

  final FhirCode type;
  final Element? typeElement;
  final Reference resource;
  @override
  LinkageItem clone() => throw UnimplementedError();
}
