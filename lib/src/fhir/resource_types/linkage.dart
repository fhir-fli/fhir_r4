import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Linkage extends DomainResource {
  final FhirBoolean? active;
  final Element? activeElement;
  final Reference? author;
  final List<LinkageItem> item;

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

@override
Linkage clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class LinkageItem extends BackboneElement {
  final FhirCode type;
  final Element? typeElement;
  final Reference resource;

  LinkageItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
this.typeElement,
    required this.resource,
  });

@override
LinkageItem clone() => throw UnimplementedError();
}

