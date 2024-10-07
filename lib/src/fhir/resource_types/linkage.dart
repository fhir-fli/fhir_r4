import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Linkage] /// Identifies two or more records (resource instances) that refer to the same
/// real-world "occurrence".
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

  /// [active] /// Indicates whether the asserted set of linkages are considered to be "in
  /// effect".
  final FhirBoolean? active;
  final Element? activeElement;

  /// [author] /// Identifies the user or organization responsible for asserting the linkages
  /// as well as the user or organization who establishes the context in which
  /// the nature of each linkage is evaluated.
  final Reference? author;

  /// [item] /// Identifies which record considered as the reference to the same real-world
  /// occurrence as well as how the items should be evaluated within the
  /// collection of linked items.
  final List<LinkageItem> item;
  @override
  Linkage clone() => throw UnimplementedError();
  Linkage copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? active,
    Element? activeElement,
    Reference? author,
    List<LinkageItem>? item,
  }) {
    return Linkage(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      active: active ?? this.active,
      activeElement: activeElement ?? this.activeElement,
      author: author ?? this.author,
      item: item ?? this.item,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [LinkageItem] /// Identifies which record considered as the reference to the same real-world
/// occurrence as well as how the items should be evaluated within the
/// collection of linked items.
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

  /// [type] /// Distinguishes which item is "source of truth" (if any) and which items are
  /// no longer considered to be current representations.
  final FhirCode type;
  final Element? typeElement;

  /// [resource] /// The resource instance being linked as part of the group.
  final Reference resource;
  @override
  LinkageItem clone() => throw UnimplementedError();
  LinkageItem copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
    Element? typeElement,
    Reference? resource,
  }) {
    return LinkageItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      resource: resource ?? this.resource,
    );
  }
}
