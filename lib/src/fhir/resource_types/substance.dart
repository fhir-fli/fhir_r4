import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Substance] /// A homogeneous material with a definite composition.
class Substance extends DomainResource {
  Substance({
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
    this.identifier,
    this.status,
    this.statusElement,
    this.category,
    required this.code,
    this.description,
    this.descriptionElement,
    this.instance,
    this.ingredient,
  }) : super(resourceType: R4ResourceType.Substance);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Unique identifier for the substance.
  final List<Identifier>? identifier;

  /// [status] /// A code to indicate if the substance is actively used.
  final FhirCode? status;
  final Element? statusElement;

  /// [category] /// A code that classifies the general type of substance. This is used for
  /// searching, sorting and display purposes.
  final List<CodeableConcept>? category;

  /// [code] /// A code (or set of codes) that identify this substance.
  final CodeableConcept code;

  /// [description] /// A description of the substance - its appearance, handling requirements, and
  /// other usage notes.
  final FhirString? description;
  final Element? descriptionElement;

  /// [instance] /// Substance may be used to describe a kind of substance, or a specific
  /// package/container of the substance: an instance.
  final List<SubstanceInstance>? instance;

  /// [ingredient] /// A substance can be composed of other substances.
  final List<SubstanceIngredient>? ingredient;
  @override
  Substance clone() => throw UnimplementedError();
  Substance copy({
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
    List<Identifier>? identifier,
    FhirCode? status,
    Element? statusElement,
    List<CodeableConcept>? category,
    CodeableConcept? code,
    FhirString? description,
    Element? descriptionElement,
    List<SubstanceInstance>? instance,
    List<SubstanceIngredient>? ingredient,
  }) {
    return Substance(
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
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      category: category ?? this.category,
      code: code ?? this.code,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      instance: instance ?? this.instance,
      ingredient: ingredient ?? this.ingredient,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SubstanceInstance] /// Substance may be used to describe a kind of substance, or a specific
/// package/container of the substance: an instance.
class SubstanceInstance extends BackboneElement {
  SubstanceInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.expiry,
    this.expiryElement,
    this.quantity,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifier associated with the package/container (usually a label affixed
  /// directly).
  final Identifier? identifier;

  /// [expiry] /// When the substance is no longer valid to use. For some substances, a single
  /// arbitrary date is used for expiry.
  final FhirDateTime? expiry;
  final Element? expiryElement;

  /// [quantity] /// The amount of the substance.
  final Quantity? quantity;
  @override
  SubstanceInstance clone() => throw UnimplementedError();
  SubstanceInstance copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    FhirDateTime? expiry,
    Element? expiryElement,
    Quantity? quantity,
  }) {
    return SubstanceInstance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      expiry: expiry ?? this.expiry,
      expiryElement: expiryElement ?? this.expiryElement,
      quantity: quantity ?? this.quantity,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SubstanceIngredient] /// A substance can be composed of other substances.
class SubstanceIngredient extends BackboneElement {
  SubstanceIngredient({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.quantity,
    required this.substanceCodeableConcept,
    required this.substanceReference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [quantity] /// The amount of the ingredient in the substance - a concentration ratio.
  final Ratio? quantity;

  /// [substanceCodeableConcept] /// Another substance that is a component of this substance.
  final CodeableConcept substanceCodeableConcept;

  /// [substanceReference] /// Another substance that is a component of this substance.
  final Reference substanceReference;
  @override
  SubstanceIngredient clone() => throw UnimplementedError();
  SubstanceIngredient copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Ratio? quantity,
    CodeableConcept? substanceCodeableConcept,
    Reference? substanceReference,
  }) {
    return SubstanceIngredient(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      quantity: quantity ?? this.quantity,
      substanceCodeableConcept:
          substanceCodeableConcept ?? this.substanceCodeableConcept,
      substanceReference: substanceReference ?? this.substanceReference,
    );
  }
}
