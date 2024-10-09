import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'administrable_product_definition.g.dart';

/// [AdministrableProductDefinition] /// A medicinal product in the final form which is suitable for administering
/// to a patient (after any mixing of multiple components, dissolution etc. has
/// been performed).
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.AdministrableProductDefinition);
  @override
  String get fhirType => 'AdministrableProductDefinition';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// An identifier for the administrable product.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// The status of this administrable product. Enables tracking the life-cycle
  /// of the content.
  @JsonKey(name: 'status')
  final PublicationStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [formOf] /// References a product from which one or more of the constituent parts of
  /// that product can be prepared and used as described by this administrable
  /// product. If this administrable product describes the administration of a
  /// crushed tablet, the 'formOf' would be the product representing a
  /// distribution containing tablets and possibly also a cream. This is distinct
  /// from the 'producedFrom' which refers to the specific components of the
  /// product that are used in this preparation, rather than the product as a
  /// whole.
  @JsonKey(name: 'formOf')
  final List<Reference>? formOf;

  /// [administrableDoseForm] /// The dose form of the final product after necessary reconstitution or
  /// processing. Contrasts to the manufactured dose form (see
  /// ManufacturedItemDefinition). If the manufactured form was 'powder for
  /// solution for injection', the administrable dose form could be 'solution for
  /// injection' (once mixed with another item having manufactured form 'solvent
  /// for solution for injection').
  @JsonKey(name: 'administrableDoseForm')
  final AdministrableDoseForm? administrableDoseForm;

  /// [unitOfPresentation] /// The presentation type in which this item is given to a patient. e.g. for a
  /// spray - 'puff' (as in 'contains 100 mcg per puff'), or for a liquid -
  /// 'vial' (as in 'contains 5 ml per vial').
  @JsonKey(name: 'unitOfPresentation')
  final UnitOfPresentation? unitOfPresentation;

  /// [producedFrom] /// Indicates the specific manufactured items that are part of the 'formOf'
  /// product that are used in the preparation of this specific administrable
  /// form. In some cases, an administrable form might use all of the items from
  /// the overall product (or there might only be one item), while in other
  /// cases, an administrable form might use only a subset of the items available
  /// in the overall product. For example, an administrable form might involve
  /// combining a liquid and a powder available as part of an overall product,
  /// but not involve applying the also supplied cream.
  @JsonKey(name: 'producedFrom')
  final List<Reference>? producedFrom;

  /// [ingredient] /// The ingredients of this administrable medicinal product. This is only
  /// needed if the ingredients are not specified either using
  /// ManufacturedItemDefiniton (via AdministrableProductDefinition.producedFrom)
  /// to state which component items are used to make this, or using by incoming
  /// references from the Ingredient resource, to state in detail which
  /// substances exist within this. This element allows a basic coded ingredient
  /// to be used.
  @JsonKey(name: 'ingredient')
  final List<CodeableConcept>? ingredient;

  /// [device] /// A device that is integral to the medicinal product, in effect being
  /// considered as an "ingredient" of the medicinal product. This is not
  /// intended for devices that are just co-packaged.
  @JsonKey(name: 'device')
  final Reference? device;

  /// [property] /// Characteristics e.g. a product's onset of action.
  @JsonKey(name: 'property')
  final List<AdministrableProductDefinitionProperty>? property;

  /// [routeOfAdministration] /// The path by which the product is taken into or makes contact with the body.
  /// In some regions this is referred to as the licenced or approved route.
  /// RouteOfAdministration cannot be used when the 'formOf' product already uses
  /// MedicinalProductDefinition.route (and vice versa).
  @JsonKey(name: 'routeOfAdministration')
  final List<AdministrableProductDefinitionRouteOfAdministration>
      routeOfAdministration;
  factory AdministrableProductDefinition.fromJson(Map<String, dynamic> json) =>
      _$AdministrableProductDefinitionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AdministrableProductDefinitionToJson(this);

  @override
  AdministrableProductDefinition clone() => throw UnimplementedError();
  @override
  AdministrableProductDefinition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    PublicationStatus? status,
    Element? statusElement,
    List<Reference>? formOf,
    AdministrableDoseForm? administrableDoseForm,
    UnitOfPresentation? unitOfPresentation,
    List<Reference>? producedFrom,
    List<CodeableConcept>? ingredient,
    Reference? device,
    List<AdministrableProductDefinitionProperty>? property,
    List<AdministrableProductDefinitionRouteOfAdministration>?
        routeOfAdministration,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory AdministrableProductDefinition.fromYaml(dynamic yaml) => yaml
          is String
      ? AdministrableProductDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? AdministrableProductDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'AdministrableProductDefinition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory AdministrableProductDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AdministrableProductDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [AdministrableProductDefinitionProperty] /// Characteristics e.g. a product's onset of action.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'AdministrableProductDefinitionProperty';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// A code expressing the type of characteristic.
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [valueCodeableConcept] /// A value for the characteristic.
  @JsonKey(name: 'valueCodeableConcept')
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity] /// A value for the characteristic.
  @JsonKey(name: 'valueQuantity')
  final Quantity? valueQuantity;

  /// [valueDate] /// A value for the characteristic.
  @JsonKey(name: 'valueDate')
  final FhirDate? valueDate;
  @JsonKey(name: '_valueDate')
  final Element? valueDateElement;

  /// [valueBoolean] /// A value for the characteristic.
  @JsonKey(name: 'valueBoolean')
  final FhirBoolean? valueBoolean;
  @JsonKey(name: '_valueBoolean')
  final Element? valueBooleanElement;

  /// [valueAttachment] /// A value for the characteristic.
  @JsonKey(name: 'valueAttachment')
  final Attachment? valueAttachment;

  /// [status] /// The status of characteristic e.g. assigned or pending.
  @JsonKey(name: 'status')
  final PublicationStatus? status;
  factory AdministrableProductDefinitionProperty.fromJson(
          Map<String, dynamic> json) =>
      _$AdministrableProductDefinitionPropertyFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AdministrableProductDefinitionPropertyToJson(this);

  @override
  AdministrableProductDefinitionProperty clone() => throw UnimplementedError();
  @override
  AdministrableProductDefinitionProperty copyWith({
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
    PublicationStatus? status,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory AdministrableProductDefinitionProperty.fromYaml(dynamic yaml) => yaml
          is String
      ? AdministrableProductDefinitionProperty.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? AdministrableProductDefinitionProperty.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'AdministrableProductDefinitionProperty cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory AdministrableProductDefinitionProperty.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AdministrableProductDefinitionProperty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [AdministrableProductDefinitionRouteOfAdministration] /// The path by which the product is taken into or makes contact with the body.
/// In some regions this is referred to as the licenced or approved route.
/// RouteOfAdministration cannot be used when the 'formOf' product already uses
/// MedicinalProductDefinition.route (and vice versa).
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'AdministrableProductDefinitionRouteOfAdministration';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Coded expression for the route.
  @JsonKey(name: 'code')
  final CodeableConcept code;

  /// [firstDose] /// The first dose (dose quantity) administered can be specified for the
  /// product, using a numerical value and its unit of measurement.
  @JsonKey(name: 'firstDose')
  final Quantity? firstDose;

  /// [maxSingleDose] /// The maximum single dose that can be administered, specified using a
  /// numerical value and its unit of measurement.
  @JsonKey(name: 'maxSingleDose')
  final Quantity? maxSingleDose;

  /// [maxDosePerDay] /// The maximum dose per day (maximum dose quantity to be administered in any
  /// one 24-h period) that can be administered.
  @JsonKey(name: 'maxDosePerDay')
  final Quantity? maxDosePerDay;

  /// [maxDosePerTreatmentPeriod] /// The maximum dose per treatment period that can be administered.
  @JsonKey(name: 'maxDosePerTreatmentPeriod')
  final Ratio? maxDosePerTreatmentPeriod;

  /// [maxTreatmentPeriod] /// The maximum treatment period during which the product can be administered.
  @JsonKey(name: 'maxTreatmentPeriod')
  final FhirDuration? maxTreatmentPeriod;

  /// [targetSpecies] /// A species for which this route applies.
  @JsonKey(name: 'targetSpecies')
  final List<AdministrableProductDefinitionTargetSpecies>? targetSpecies;
  factory AdministrableProductDefinitionRouteOfAdministration.fromJson(
          Map<String, dynamic> json) =>
      _$AdministrableProductDefinitionRouteOfAdministrationFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AdministrableProductDefinitionRouteOfAdministrationToJson(this);

  @override
  AdministrableProductDefinitionRouteOfAdministration clone() =>
      throw UnimplementedError();
  @override
  AdministrableProductDefinitionRouteOfAdministration copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory AdministrableProductDefinitionRouteOfAdministration.fromYaml(
          dynamic yaml) =>
      yaml is String
          ? AdministrableProductDefinitionRouteOfAdministration.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
          : yaml is YamlMap
              ? AdministrableProductDefinitionRouteOfAdministration.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
              : throw ArgumentError(
                  'AdministrableProductDefinitionRouteOfAdministration cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory AdministrableProductDefinitionRouteOfAdministration.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AdministrableProductDefinitionRouteOfAdministration.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [AdministrableProductDefinitionTargetSpecies] /// A species for which this route applies.
@JsonSerializable()
class AdministrableProductDefinitionTargetSpecies extends BackboneElement {
  AdministrableProductDefinitionTargetSpecies({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.withdrawalPeriod,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'AdministrableProductDefinitionTargetSpecies';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Coded expression for the species.
  @JsonKey(name: 'code')
  final TargetSpecies code;

  /// [withdrawalPeriod] /// A species specific time during which consumption of animal product is not
  /// appropriate.
  @JsonKey(name: 'withdrawalPeriod')
  final List<AdministrableProductDefinitionWithdrawalPeriod>? withdrawalPeriod;
  factory AdministrableProductDefinitionTargetSpecies.fromJson(
          Map<String, dynamic> json) =>
      _$AdministrableProductDefinitionTargetSpeciesFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AdministrableProductDefinitionTargetSpeciesToJson(this);

  @override
  AdministrableProductDefinitionTargetSpecies clone() =>
      throw UnimplementedError();
  @override
  AdministrableProductDefinitionTargetSpecies copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    TargetSpecies? code,
    List<AdministrableProductDefinitionWithdrawalPeriod>? withdrawalPeriod,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return AdministrableProductDefinitionTargetSpecies(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      withdrawalPeriod: withdrawalPeriod ?? this.withdrawalPeriod,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory AdministrableProductDefinitionTargetSpecies.fromYaml(dynamic yaml) =>
      yaml is String
          ? AdministrableProductDefinitionTargetSpecies.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
          : yaml is YamlMap
              ? AdministrableProductDefinitionTargetSpecies.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
              : throw ArgumentError(
                  'AdministrableProductDefinitionTargetSpecies cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory AdministrableProductDefinitionTargetSpecies.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AdministrableProductDefinitionTargetSpecies.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [AdministrableProductDefinitionWithdrawalPeriod] /// A species specific time during which consumption of animal product is not
/// appropriate.
@JsonSerializable()
class AdministrableProductDefinitionWithdrawalPeriod extends BackboneElement {
  AdministrableProductDefinitionWithdrawalPeriod({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.tissue,
    required this.value,
    this.supportingInformation,
    this.supportingInformationElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'AdministrableProductDefinitionWithdrawalPeriod';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [tissue] /// Coded expression for the type of tissue for which the withdrawal period
  /// applies, e.g. meat, milk.
  @JsonKey(name: 'tissue')
  final AnimalTissueType tissue;

  /// [value] /// A value for the time.
  @JsonKey(name: 'value')
  final Quantity value;

  /// [supportingInformation] /// Extra information about the withdrawal period.
  @JsonKey(name: 'supportingInformation')
  final FhirString? supportingInformation;
  @JsonKey(name: '_supportingInformation')
  final Element? supportingInformationElement;
  factory AdministrableProductDefinitionWithdrawalPeriod.fromJson(
          Map<String, dynamic> json) =>
      _$AdministrableProductDefinitionWithdrawalPeriodFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AdministrableProductDefinitionWithdrawalPeriodToJson(this);

  @override
  AdministrableProductDefinitionWithdrawalPeriod clone() =>
      throw UnimplementedError();
  @override
  AdministrableProductDefinitionWithdrawalPeriod copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    AnimalTissueType? tissue,
    Quantity? value,
    FhirString? supportingInformation,
    Element? supportingInformationElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory AdministrableProductDefinitionWithdrawalPeriod.fromYaml(
          dynamic yaml) =>
      yaml is String
          ? AdministrableProductDefinitionWithdrawalPeriod.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
          : yaml is YamlMap
              ? AdministrableProductDefinitionWithdrawalPeriod.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
              : throw ArgumentError(
                  'AdministrableProductDefinitionWithdrawalPeriod cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory AdministrableProductDefinitionWithdrawalPeriod.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AdministrableProductDefinitionWithdrawalPeriod.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
