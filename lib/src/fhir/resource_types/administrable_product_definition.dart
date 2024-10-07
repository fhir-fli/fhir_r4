import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [AdministrableProductDefinition] /// A medicinal product in the final form which is suitable for administering
/// to a patient (after any mixing of multiple components, dissolution etc. has
/// been performed).
class AdministrableProductDefinition extends DomainResource {
  AdministrableProductDefinition({
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
    required this.status,
    this.statusElement,
    this.formOf,
    this.administrableDoseForm,
    this.unitOfPresentation,
    this.producedFrom,
    this.ingredient,
    this.device,
    this.property,
    required this.routeOfAdministration,
  }) : super(resourceType: R4ResourceType.AdministrableProductDefinition);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// An identifier for the administrable product.
  final List<Identifier>? identifier;

  /// [status] /// The status of this administrable product. Enables tracking the life-cycle
  /// of the content.
  final FhirCode status;
  final Element? statusElement;

  /// [formOf] /// References a product from which one or more of the constituent parts of
  /// that product can be prepared and used as described by this administrable
  /// product. If this administrable product describes the administration of a
  /// crushed tablet, the 'formOf' would be the product representing a
  /// distribution containing tablets and possibly also a cream. This is distinct
  /// from the 'producedFrom' which refers to the specific components of the
  /// product that are used in this preparation, rather than the product as a
  /// whole.
  final List<Reference>? formOf;

  /// [administrableDoseForm] /// The dose form of the final product after necessary reconstitution or
  /// processing. Contrasts to the manufactured dose form (see
  /// ManufacturedItemDefinition). If the manufactured form was 'powder for
  /// solution for injection', the administrable dose form could be 'solution for
  /// injection' (once mixed with another item having manufactured form 'solvent
  /// for solution for injection').
  final CodeableConcept? administrableDoseForm;

  /// [unitOfPresentation] /// The presentation type in which this item is given to a patient. e.g. for a
  /// spray - 'puff' (as in 'contains 100 mcg per puff'), or for a liquid -
  /// 'vial' (as in 'contains 5 ml per vial').
  final CodeableConcept? unitOfPresentation;

  /// [producedFrom] /// Indicates the specific manufactured items that are part of the 'formOf'
  /// product that are used in the preparation of this specific administrable
  /// form. In some cases, an administrable form might use all of the items from
  /// the overall product (or there might only be one item), while in other
  /// cases, an administrable form might use only a subset of the items available
  /// in the overall product. For example, an administrable form might involve
  /// combining a liquid and a powder available as part of an overall product,
  /// but not involve applying the also supplied cream.
  final List<Reference>? producedFrom;

  /// [ingredient] /// The ingredients of this administrable medicinal product. This is only
  /// needed if the ingredients are not specified either using
  /// ManufacturedItemDefiniton (via AdministrableProductDefinition.producedFrom)
  /// to state which component items are used to make this, or using by incoming
  /// references from the Ingredient resource, to state in detail which
  /// substances exist within this. This element allows a basic coded ingredient
  /// to be used.
  final List<CodeableConcept>? ingredient;

  /// [device] /// A device that is integral to the medicinal product, in effect being
  /// considered as an "ingredient" of the medicinal product. This is not
  /// intended for devices that are just co-packaged.
  final Reference? device;

  /// [property] /// Characteristics e.g. a product's onset of action.
  final List<AdministrableProductDefinitionProperty>? property;

  /// [routeOfAdministration] /// The path by which the product is taken into or makes contact with the body.
  /// In some regions this is referred to as the licenced or approved route.
  /// RouteOfAdministration cannot be used when the 'formOf' product already uses
  /// MedicinalProductDefinition.route (and vice versa).
  final List<AdministrableProductDefinitionRouteOfAdministration>
      routeOfAdministration;
  @override
  AdministrableProductDefinition clone() => throw UnimplementedError();
  AdministrableProductDefinition copy({
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
    List<Reference>? formOf,
    CodeableConcept? administrableDoseForm,
    CodeableConcept? unitOfPresentation,
    List<Reference>? producedFrom,
    List<CodeableConcept>? ingredient,
    Reference? device,
    List<AdministrableProductDefinitionProperty>? property,
    List<AdministrableProductDefinitionRouteOfAdministration>?
        routeOfAdministration,
  }) {
    return AdministrableProductDefinition(
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
      formOf: formOf ?? this.formOf,
      administrableDoseForm:
          administrableDoseForm ?? this.administrableDoseForm,
      unitOfPresentation: unitOfPresentation ?? this.unitOfPresentation,
      producedFrom: producedFrom ?? this.producedFrom,
      ingredient: ingredient ?? this.ingredient,
      device: device ?? this.device,
      property: property ?? this.property,
      routeOfAdministration:
          routeOfAdministration ?? this.routeOfAdministration,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [AdministrableProductDefinitionProperty] /// Characteristics e.g. a product's onset of action.
class AdministrableProductDefinitionProperty extends BackboneElement {
  AdministrableProductDefinitionProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueDate,
    this.valueDateElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueAttachment,
    this.status,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// A code expressing the type of characteristic.
  final CodeableConcept type;

  /// [valueCodeableConcept] /// A value for the characteristic.
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity] /// A value for the characteristic.
  final Quantity? valueQuantity;

  /// [valueDate] /// A value for the characteristic.
  final FhirDate? valueDate;
  final Element? valueDateElement;

  /// [valueBoolean] /// A value for the characteristic.
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;

  /// [valueAttachment] /// A value for the characteristic.
  final Attachment? valueAttachment;

  /// [status] /// The status of characteristic e.g. assigned or pending.
  final CodeableConcept? status;
  @override
  AdministrableProductDefinitionProperty clone() => throw UnimplementedError();
  AdministrableProductDefinitionProperty copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    FhirDate? valueDate,
    Element? valueDateElement,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
    Attachment? valueAttachment,
    CodeableConcept? status,
  }) {
    return AdministrableProductDefinitionProperty(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueDate: valueDate ?? this.valueDate,
      valueDateElement: valueDateElement ?? this.valueDateElement,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueAttachment: valueAttachment ?? this.valueAttachment,
      status: status ?? this.status,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [AdministrableProductDefinitionRouteOfAdministration] /// The path by which the product is taken into or makes contact with the body.
/// In some regions this is referred to as the licenced or approved route.
/// RouteOfAdministration cannot be used when the 'formOf' product already uses
/// MedicinalProductDefinition.route (and vice versa).
class AdministrableProductDefinitionRouteOfAdministration
    extends BackboneElement {
  AdministrableProductDefinitionRouteOfAdministration({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.firstDose,
    this.maxSingleDose,
    this.maxDosePerDay,
    this.maxDosePerTreatmentPeriod,
    this.maxTreatmentPeriod,
    this.targetSpecies,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Coded expression for the route.
  final CodeableConcept code;

  /// [firstDose] /// The first dose (dose quantity) administered can be specified for the
  /// product, using a numerical value and its unit of measurement.
  final Quantity? firstDose;

  /// [maxSingleDose] /// The maximum single dose that can be administered, specified using a
  /// numerical value and its unit of measurement.
  final Quantity? maxSingleDose;

  /// [maxDosePerDay] /// The maximum dose per day (maximum dose quantity to be administered in any
  /// one 24-h period) that can be administered.
  final Quantity? maxDosePerDay;

  /// [maxDosePerTreatmentPeriod] /// The maximum dose per treatment period that can be administered.
  final Ratio? maxDosePerTreatmentPeriod;

  /// [maxTreatmentPeriod] /// The maximum treatment period during which the product can be administered.
  final FhirDuration? maxTreatmentPeriod;

  /// [targetSpecies] /// A species for which this route applies.
  final List<AdministrableProductDefinitionTargetSpecies>? targetSpecies;
  @override
  AdministrableProductDefinitionRouteOfAdministration clone() =>
      throw UnimplementedError();
  AdministrableProductDefinitionRouteOfAdministration copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    Quantity? firstDose,
    Quantity? maxSingleDose,
    Quantity? maxDosePerDay,
    Ratio? maxDosePerTreatmentPeriod,
    FhirDuration? maxTreatmentPeriod,
    List<AdministrableProductDefinitionTargetSpecies>? targetSpecies,
  }) {
    return AdministrableProductDefinitionRouteOfAdministration(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      firstDose: firstDose ?? this.firstDose,
      maxSingleDose: maxSingleDose ?? this.maxSingleDose,
      maxDosePerDay: maxDosePerDay ?? this.maxDosePerDay,
      maxDosePerTreatmentPeriod:
          maxDosePerTreatmentPeriod ?? this.maxDosePerTreatmentPeriod,
      maxTreatmentPeriod: maxTreatmentPeriod ?? this.maxTreatmentPeriod,
      targetSpecies: targetSpecies ?? this.targetSpecies,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [AdministrableProductDefinitionTargetSpecies] /// A species for which this route applies.
class AdministrableProductDefinitionTargetSpecies extends BackboneElement {
  AdministrableProductDefinitionTargetSpecies({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.withdrawalPeriod,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Coded expression for the species.
  final CodeableConcept code;

  /// [withdrawalPeriod] /// A species specific time during which consumption of animal product is not
  /// appropriate.
  final List<AdministrableProductDefinitionWithdrawalPeriod>? withdrawalPeriod;
  @override
  AdministrableProductDefinitionTargetSpecies clone() =>
      throw UnimplementedError();
  AdministrableProductDefinitionTargetSpecies copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    List<AdministrableProductDefinitionWithdrawalPeriod>? withdrawalPeriod,
  }) {
    return AdministrableProductDefinitionTargetSpecies(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      withdrawalPeriod: withdrawalPeriod ?? this.withdrawalPeriod,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [AdministrableProductDefinitionWithdrawalPeriod] /// A species specific time during which consumption of animal product is not
/// appropriate.
class AdministrableProductDefinitionWithdrawalPeriod extends BackboneElement {
  AdministrableProductDefinitionWithdrawalPeriod({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.tissue,
    required this.value,
    this.supportingInformation,
    this.supportingInformationElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [tissue] /// Coded expression for the type of tissue for which the withdrawal period
  /// applies, e.g. meat, milk.
  final CodeableConcept tissue;

  /// [value] /// A value for the time.
  final Quantity value;

  /// [supportingInformation] /// Extra information about the withdrawal period.
  final FhirString? supportingInformation;
  final Element? supportingInformationElement;
  @override
  AdministrableProductDefinitionWithdrawalPeriod clone() =>
      throw UnimplementedError();
  AdministrableProductDefinitionWithdrawalPeriod copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? tissue,
    Quantity? value,
    FhirString? supportingInformation,
    Element? supportingInformationElement,
  }) {
    return AdministrableProductDefinitionWithdrawalPeriod(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      tissue: tissue ?? this.tissue,
      value: value ?? this.value,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
      supportingInformationElement:
          supportingInformationElement ?? this.supportingInformationElement,
    );
  }
}
