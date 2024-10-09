import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.AdministrableProductDefinition);

  @override
  String get fhirType => 'AdministrableProductDefinition';

  @Id()
  int dbId = 0;

  /// [identifier] /// An identifier for the administrable product.
  final List<Identifier>? identifier;

  /// [status] /// The status of this administrable product. Enables tracking the life-cycle
  /// of the content.
  final PublicationStatus status;
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    if (formOf != null && formOf!.isNotEmpty) {
      json['formOf'] =
          formOf!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (administrableDoseForm != null) {
      json['administrableDoseForm'] = administrableDoseForm!.toJson();
    }
    if (unitOfPresentation != null) {
      json['unitOfPresentation'] = unitOfPresentation!.toJson();
    }
    if (producedFrom != null && producedFrom!.isNotEmpty) {
      json['producedFrom'] =
          producedFrom!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (ingredient != null && ingredient!.isNotEmpty) {
      json['ingredient'] =
          ingredient!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (device != null) {
      json['device'] = device!.toJson();
    }
    if (property != null && property!.isNotEmpty) {
      json['property'] = property!
          .map<dynamic>(
              (AdministrableProductDefinitionProperty v) => v.toJson())
          .toList();
    }
    json['routeOfAdministration'] = routeOfAdministration
        .map<dynamic>((AdministrableProductDefinitionRouteOfAdministration v) =>
            v.toJson())
        .toList();
    return json;
  }

  factory AdministrableProductDefinition.fromJson(Map<String, dynamic> json) {
    return AdministrableProductDefinition(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(json['_language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: PublicationStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(json['_status'] as Map<String, dynamic>)
          : null,
      formOf: json['formOf'] != null
          ? (json['formOf'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      administrableDoseForm: json['administrableDoseForm'] != null
          ? CodeableConcept.fromJson(
              json['administrableDoseForm'] as Map<String, dynamic>)
          : null,
      unitOfPresentation: json['unitOfPresentation'] != null
          ? CodeableConcept.fromJson(
              json['unitOfPresentation'] as Map<String, dynamic>)
          : null,
      producedFrom: json['producedFrom'] != null
          ? (json['producedFrom'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      ingredient: json['ingredient'] != null
          ? (json['ingredient'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      device: json['device'] != null
          ? Reference.fromJson(json['device'] as Map<String, dynamic>)
          : null,
      property: json['property'] != null
          ? (json['property'] as List<dynamic>)
              .map<AdministrableProductDefinitionProperty>((dynamic v) =>
                  AdministrableProductDefinitionProperty.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      routeOfAdministration: (json['routeOfAdministration'] as List<dynamic>)
          .map<AdministrableProductDefinitionRouteOfAdministration>(
              (dynamic v) =>
                  AdministrableProductDefinitionRouteOfAdministration.fromJson(
                      v as Map<String, dynamic>))
          .toList(),
    );
  }
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
    CodeableConcept? administrableDoseForm,
    CodeableConcept? unitOfPresentation,
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['type'] = type.toJson();
    if (valueCodeableConcept != null) {
      json['valueCodeableConcept'] = valueCodeableConcept!.toJson();
    }
    if (valueQuantity != null) {
      json['valueQuantity'] = valueQuantity!.toJson();
    }
    if (valueDate?.value != null) {
      json['valueDate'] = valueDate!.toJson();
    }
    if (valueDateElement != null) {
      json['_valueDate'] = valueDateElement!.toJson();
    }
    if (valueBoolean?.value != null) {
      json['valueBoolean'] = valueBoolean!.toJson();
    }
    if (valueBooleanElement != null) {
      json['_valueBoolean'] = valueBooleanElement!.toJson();
    }
    if (valueAttachment != null) {
      json['valueAttachment'] = valueAttachment!.toJson();
    }
    if (status != null) {
      json['status'] = status!.toJson();
    }
    return json;
  }

  factory AdministrableProductDefinitionProperty.fromJson(
      Map<String, dynamic> json) {
    return AdministrableProductDefinitionProperty(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>)
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>)
          : null,
      valueDate: json['valueDate'] != null
          ? FhirDate.fromJson(json['valueDate'])
          : null,
      valueDateElement: json['_valueDate'] != null
          ? Element.fromJson(json['_valueDate'] as Map<String, dynamic>)
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean.fromJson(json['valueBoolean'])
          : null,
      valueBooleanElement: json['_valueBoolean'] != null
          ? Element.fromJson(json['_valueBoolean'] as Map<String, dynamic>)
          : null,
      valueAttachment: json['valueAttachment'] != null
          ? Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>)
          : null,
      status: json['status'] != null
          ? CodeableConcept.fromJson(json['status'] as Map<String, dynamic>)
          : null,
    );
  }
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
    CodeableConcept? status,
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['code'] = code.toJson();
    if (firstDose != null) {
      json['firstDose'] = firstDose!.toJson();
    }
    if (maxSingleDose != null) {
      json['maxSingleDose'] = maxSingleDose!.toJson();
    }
    if (maxDosePerDay != null) {
      json['maxDosePerDay'] = maxDosePerDay!.toJson();
    }
    if (maxDosePerTreatmentPeriod != null) {
      json['maxDosePerTreatmentPeriod'] = maxDosePerTreatmentPeriod!.toJson();
    }
    if (maxTreatmentPeriod != null) {
      json['maxTreatmentPeriod'] = maxTreatmentPeriod!.toJson();
    }
    if (targetSpecies != null && targetSpecies!.isNotEmpty) {
      json['targetSpecies'] = targetSpecies!
          .map<dynamic>(
              (AdministrableProductDefinitionTargetSpecies v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory AdministrableProductDefinitionRouteOfAdministration.fromJson(
      Map<String, dynamic> json) {
    return AdministrableProductDefinitionRouteOfAdministration(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      firstDose: json['firstDose'] != null
          ? Quantity.fromJson(json['firstDose'] as Map<String, dynamic>)
          : null,
      maxSingleDose: json['maxSingleDose'] != null
          ? Quantity.fromJson(json['maxSingleDose'] as Map<String, dynamic>)
          : null,
      maxDosePerDay: json['maxDosePerDay'] != null
          ? Quantity.fromJson(json['maxDosePerDay'] as Map<String, dynamic>)
          : null,
      maxDosePerTreatmentPeriod: json['maxDosePerTreatmentPeriod'] != null
          ? Ratio.fromJson(
              json['maxDosePerTreatmentPeriod'] as Map<String, dynamic>)
          : null,
      maxTreatmentPeriod: json['maxTreatmentPeriod'] != null
          ? FhirDuration.fromJson(
              json['maxTreatmentPeriod'] as Map<String, dynamic>)
          : null,
      targetSpecies: json['targetSpecies'] != null
          ? (json['targetSpecies'] as List<dynamic>)
              .map<AdministrableProductDefinitionTargetSpecies>((dynamic v) =>
                  AdministrableProductDefinitionTargetSpecies.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
  int dbId = 0;

  /// [code] /// Coded expression for the species.
  final CodeableConcept code;

  /// [withdrawalPeriod] /// A species specific time during which consumption of animal product is not
  /// appropriate.
  final List<AdministrableProductDefinitionWithdrawalPeriod>? withdrawalPeriod;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['code'] = code.toJson();
    if (withdrawalPeriod != null && withdrawalPeriod!.isNotEmpty) {
      json['withdrawalPeriod'] = withdrawalPeriod!
          .map<dynamic>(
              (AdministrableProductDefinitionWithdrawalPeriod v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory AdministrableProductDefinitionTargetSpecies.fromJson(
      Map<String, dynamic> json) {
    return AdministrableProductDefinitionTargetSpecies(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      withdrawalPeriod: json['withdrawalPeriod'] != null
          ? (json['withdrawalPeriod'] as List<dynamic>)
              .map<AdministrableProductDefinitionWithdrawalPeriod>(
                  (dynamic v) =>
                      AdministrableProductDefinitionWithdrawalPeriod.fromJson(
                          v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  AdministrableProductDefinitionTargetSpecies clone() =>
      throw UnimplementedError();
  @override
  AdministrableProductDefinitionTargetSpecies copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['tissue'] = tissue.toJson();
    json['value'] = value.toJson();
    if (supportingInformation?.value != null) {
      json['supportingInformation'] = supportingInformation!.toJson();
    }
    if (supportingInformationElement != null) {
      json['_supportingInformation'] = supportingInformationElement!.toJson();
    }
    return json;
  }

  factory AdministrableProductDefinitionWithdrawalPeriod.fromJson(
      Map<String, dynamic> json) {
    return AdministrableProductDefinitionWithdrawalPeriod(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      tissue: CodeableConcept.fromJson(json['tissue'] as Map<String, dynamic>),
      value: Quantity.fromJson(json['value'] as Map<String, dynamic>),
      supportingInformation: json['supportingInformation'] != null
          ? FhirString.fromJson(json['supportingInformation'])
          : null,
      supportingInformationElement: json['_supportingInformation'] != null
          ? Element.fromJson(
              json['_supportingInformation'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  AdministrableProductDefinitionWithdrawalPeriod clone() =>
      throw UnimplementedError();
  @override
  AdministrableProductDefinitionWithdrawalPeriod copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? tissue,
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
