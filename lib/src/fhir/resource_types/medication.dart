import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Medication] /// This resource is primarily used for the identification and definition of a
/// medication for the purposes of prescribing, dispensing, and administering a
/// medication as well as for making statements about medication use.
class Medication extends DomainResource {
  Medication({
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
    this.code,
    this.status,
    this.statusElement,
    this.manufacturer,
    this.form,
    this.amount,
    this.ingredient,
    this.batch,
  }) : super(resourceType: R4ResourceType.Medication);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifier for this medication.
  final List<Identifier>? identifier;

  /// [code] /// A code (or set of codes) that specify this medication, or a textual
  /// description if no code is available. Usage note: This could be a standard
  /// medication code such as a code from RxNorm, SNOMED CT, IDMP etc. It could
  /// also be a national or local formulary code, optionally with translations to
  /// other code systems.
  final CodeableConcept? code;

  /// [status] /// A code to indicate if the medication is in active use.
  final FhirCode? status;
  final Element? statusElement;

  /// [manufacturer] /// Describes the details of the manufacturer of the medication product. This
  /// is not intended to represent the distributor of a medication product.
  final Reference? manufacturer;

  /// [form] /// Describes the form of the item. Powder; tablets; capsule.
  final CodeableConcept? form;

  /// [amount] /// Specific amount of the drug in the packaged product. For example, when
  /// specifying a product that has the same strength (For example, Insulin
  /// glargine 100 unit per mL solution for injection), this attribute provides
  /// additional clarification of the package amount (For example, 3 mL, 10mL,
  /// etc.).
  final Ratio? amount;

  /// [ingredient] /// Identifies a particular constituent of interest in the product.
  final List<MedicationIngredient>? ingredient;

  /// [batch] /// Information that only applies to packages (not products).
  final MedicationBatch? batch;
  @override
  Medication clone() => throw UnimplementedError();
  Medication copy({
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
    CodeableConcept? code,
    FhirCode? status,
    Element? statusElement,
    Reference? manufacturer,
    CodeableConcept? form,
    Ratio? amount,
    List<MedicationIngredient>? ingredient,
    MedicationBatch? batch,
  }) {
    return Medication(
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
      code: code ?? this.code,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      manufacturer: manufacturer ?? this.manufacturer,
      form: form ?? this.form,
      amount: amount ?? this.amount,
      ingredient: ingredient ?? this.ingredient,
      batch: batch ?? this.batch,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MedicationIngredient] /// Identifies a particular constituent of interest in the product.
class MedicationIngredient extends BackboneElement {
  MedicationIngredient({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.itemCodeableConcept,
    required this.itemReference,
    this.isActive,
    this.isActiveElement,
    this.strength,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [itemCodeableConcept] /// The actual ingredient - either a substance (simple ingredient) or another
  /// medication of a medication.
  final CodeableConcept itemCodeableConcept;

  /// [itemReference] /// The actual ingredient - either a substance (simple ingredient) or another
  /// medication of a medication.
  final Reference itemReference;

  /// [isActive] /// Indication of whether this ingredient affects the therapeutic action of the
  /// drug.
  final FhirBoolean? isActive;
  final Element? isActiveElement;

  /// [strength] /// Specifies how many (or how much) of the items there are in this Medication.
  /// For example, 250 mg per tablet. This is expressed as a ratio where the
  /// numerator is 250mg and the denominator is 1 tablet.
  final Ratio? strength;
  @override
  MedicationIngredient clone() => throw UnimplementedError();
  MedicationIngredient copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? itemCodeableConcept,
    Reference? itemReference,
    FhirBoolean? isActive,
    Element? isActiveElement,
    Ratio? strength,
  }) {
    return MedicationIngredient(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemCodeableConcept: itemCodeableConcept ?? this.itemCodeableConcept,
      itemReference: itemReference ?? this.itemReference,
      isActive: isActive ?? this.isActive,
      isActiveElement: isActiveElement ?? this.isActiveElement,
      strength: strength ?? this.strength,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [MedicationBatch] /// Information that only applies to packages (not products).
class MedicationBatch extends BackboneElement {
  MedicationBatch({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.lotNumber,
    this.lotNumberElement,
    this.expirationDate,
    this.expirationDateElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [lotNumber] /// The assigned lot number of a batch of the specified product.
  final FhirString? lotNumber;
  final Element? lotNumberElement;

  /// [expirationDate] /// When this specific batch of product will expire.
  final FhirDateTime? expirationDate;
  final Element? expirationDateElement;
  @override
  MedicationBatch clone() => throw UnimplementedError();
  MedicationBatch copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? lotNumber,
    Element? lotNumberElement,
    FhirDateTime? expirationDate,
    Element? expirationDateElement,
  }) {
    return MedicationBatch(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      lotNumber: lotNumber ?? this.lotNumber,
      lotNumberElement: lotNumberElement ?? this.lotNumberElement,
      expirationDate: expirationDate ?? this.expirationDate,
      expirationDateElement:
          expirationDateElement ?? this.expirationDateElement,
    );
  }
}
