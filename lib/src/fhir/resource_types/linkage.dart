import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirBoolean? active;
  final Element? activeElement;
  final Reference? author;
  final List<LinkageItem> item;
  @override
  Linkage clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class LinkageItem extends BackboneElement {
  LinkageItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.typeElement,
    required this.resource,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirCode type;
  final Element? typeElement;
  final Reference resource;
  @override
  LinkageItem clone() => throw UnimplementedError();
}
