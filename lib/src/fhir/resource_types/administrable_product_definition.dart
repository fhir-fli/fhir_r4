import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [AdministrableProductDefinition]
/// A medicinal product in the final form which is suitable for
/// administering to a patient (after any mixing of multiple components,
/// dissolution etc. has been performed).
class AdministrableProductDefinition extends DomainResource {
  /// Primary constructor for [AdministrableProductDefinition]

  AdministrableProductDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
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
  }) : super(
          resourceType: R4ResourceType.AdministrableProductDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return AdministrableProductDefinition(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: PublicationStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      formOf: json['formOf'] != null
          ? (json['formOf'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      administrableDoseForm: json['administrableDoseForm'] != null
          ? CodeableConcept.fromJson(
              json['administrableDoseForm'] as Map<String, dynamic>,
            )
          : null,
      unitOfPresentation: json['unitOfPresentation'] != null
          ? CodeableConcept.fromJson(
              json['unitOfPresentation'] as Map<String, dynamic>,
            )
          : null,
      producedFrom: json['producedFrom'] != null
          ? (json['producedFrom'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      ingredient: json['ingredient'] != null
          ? (json['ingredient'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      device: json['device'] != null
          ? Reference.fromJson(
              json['device'] as Map<String, dynamic>,
            )
          : null,
      property: json['property'] != null
          ? (json['property'] as List<dynamic>)
              .map<AdministrableProductDefinitionProperty>(
                (v) => AdministrableProductDefinitionProperty.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      routeOfAdministration: ensureNonNullList((json['routeOfAdministration']
              as List<dynamic>)
          .map<AdministrableProductDefinitionRouteOfAdministration>(
            (v) => AdministrableProductDefinitionRouteOfAdministration.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList()),
    );
  }

  /// Deserialize [AdministrableProductDefinition] from a [String]
  /// or [YamlMap] object
  factory AdministrableProductDefinition.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? AdministrableProductDefinition.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? AdministrableProductDefinition.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'AdministrableProductDefinition cannot be constructed from '
                  'input provided, it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [AdministrableProductDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdministrableProductDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AdministrableProductDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'AdministrableProductDefinition';

  /// [identifier]
  /// An identifier for the administrable product.
  final List<Identifier>? identifier;

  /// [status]
  /// The status of this administrable product. Enables tracking the
  /// life-cycle of the content.
  final PublicationStatus status;

  /// [formOf]
  /// References a product from which one or more of the constituent parts of
  /// that product can be prepared and used as described by this
  /// administrable product. If this administrable product describes the
  /// administration of a crushed tablet, the 'formOf' would be the product
  /// representing a distribution containing tablets and possibly also a
  /// cream. This is distinct from the 'producedFrom' which refers to the
  /// specific components of the product that are used in this preparation,
  /// rather than the product as a whole.
  final List<Reference>? formOf;

  /// [administrableDoseForm]
  /// The dose form of the final product after necessary reconstitution or
  /// processing. Contrasts to the manufactured dose form (see
  /// ManufacturedItemDefinition). If the manufactured form was 'powder for
  /// solution for injection', the administrable dose form could be 'solution
  /// for injection' (once mixed with another item having manufactured form
  /// 'solvent for solution for injection').
  final CodeableConcept? administrableDoseForm;

  /// [unitOfPresentation]
  /// The presentation type in which this item is given to a patient. e.g.
  /// for a spray - 'puff' (as in 'contains 100 mcg per puff'), or for a
  /// liquid - 'vial' (as in 'contains 5 ml per vial').
  final CodeableConcept? unitOfPresentation;

  /// [producedFrom]
  /// Indicates the specific manufactured items that are part of the 'formOf'
  /// product that are used in the preparation of this specific administrable
  /// form. In some cases, an administrable form might use all of the items
  /// from the overall product (or there might only be one item), while in
  /// other cases, an administrable form might use only a subset of the items
  /// available in the overall product. For example, an administrable form
  /// might involve combining a liquid and a powder available as part of an
  /// overall product, but not involve applying the also supplied cream.
  final List<Reference>? producedFrom;

  /// [ingredient]
  /// The ingredients of this administrable medicinal product. This is only
  /// needed if the ingredients are not specified either using
  /// ManufacturedItemDefiniton (via
  /// AdministrableProductDefinition.producedFrom) to state which component
  /// items are used to make this, or using by incoming references from the
  /// Ingredient resource, to state in detail which substances exist within
  /// this. This element allows a basic coded ingredient to be used.
  final List<CodeableConcept>? ingredient;

  /// [device]
  /// A device that is integral to the medicinal product, in effect being
  /// considered as an "ingredient" of the medicinal product. This is not
  /// intended for devices that are just co-packaged.
  final Reference? device;

  /// [property]
  /// Characteristics e.g. a product's onset of action.
  final List<AdministrableProductDefinitionProperty>? property;

  /// [routeOfAdministration]
  /// The path by which the product is taken into or makes contact with the
  /// body. In some regions this is referred to as the licenced or approved
  /// route. RouteOfAdministration cannot be used when the 'formOf' product
  /// already uses MedicinalProductDefinition.route (and vice versa).
  final List<AdministrableProductDefinitionRouteOfAdministration>
      routeOfAdministration;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      final fieldJson1 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_implicitRules'] = fieldJson1['_value'];
      }
    }

    if (language != null) {
      json['language'] = language!.toJson();
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    json['status'] = status.toJson();

    if (formOf != null && formOf!.isNotEmpty) {
      json['formOf'] = formOf!.map((e) => e.toJson()).toList();
    }

    if (administrableDoseForm != null) {
      json['administrableDoseForm'] = administrableDoseForm!.toJson();
    }

    if (unitOfPresentation != null) {
      json['unitOfPresentation'] = unitOfPresentation!.toJson();
    }

    if (producedFrom != null && producedFrom!.isNotEmpty) {
      json['producedFrom'] = producedFrom!.map((e) => e.toJson()).toList();
    }

    if (ingredient != null && ingredient!.isNotEmpty) {
      json['ingredient'] = ingredient!.map((e) => e.toJson()).toList();
    }

    if (device != null) {
      json['device'] = device!.toJson();
    }

    if (property != null && property!.isNotEmpty) {
      json['property'] = property!.map((e) => e.toJson()).toList();
    }

    json['routeOfAdministration'] =
        routeOfAdministration.map((e) => e.toJson()).toList();

    return json;
  }

  @override
  AdministrableProductDefinition clone() => throw UnimplementedError();
  @override
  AdministrableProductDefinition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    PublicationStatus? status,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
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
}

/// [AdministrableProductDefinitionProperty]
/// Characteristics e.g. a product's onset of action.
class AdministrableProductDefinitionProperty extends BackboneElement {
  /// Primary constructor for [AdministrableProductDefinitionProperty]

  AdministrableProductDefinitionProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueDate,
    this.valueBoolean,
    this.valueAttachment,
    this.status,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) {
    return AdministrableProductDefinitionProperty(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(
              json['valueQuantity'] as Map<String, dynamic>,
            )
          : null,
      valueDate: json['valueDate'] != null
          ? FhirDate.fromJson({
              'value': json['valueDate'],
              '_value': json['_valueDate'],
            })
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['valueBoolean'],
              '_value': json['_valueBoolean'],
            })
          : null,
      valueAttachment: json['valueAttachment'] != null
          ? Attachment.fromJson(
              json['valueAttachment'] as Map<String, dynamic>,
            )
          : null,
      status: json['status'] != null
          ? CodeableConcept.fromJson(
              json['status'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [AdministrableProductDefinitionProperty] from a [String]
  /// or [YamlMap] object
  factory AdministrableProductDefinitionProperty.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? AdministrableProductDefinitionProperty.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? AdministrableProductDefinitionProperty.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'AdministrableProductDefinitionProperty cannot be constructed from '
                  'input provided, it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [AdministrableProductDefinitionProperty]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdministrableProductDefinitionProperty.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AdministrableProductDefinitionProperty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'AdministrableProductDefinitionProperty';

  /// [type]
  /// A code expressing the type of characteristic.
  final CodeableConcept type;

  /// [valueCodeableConcept]
  /// A value for the characteristic.
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity]
  /// A value for the characteristic.
  final Quantity? valueQuantity;

  /// [valueDate]
  /// A value for the characteristic.
  final FhirDate? valueDate;

  /// [valueBoolean]
  /// A value for the characteristic.
  final FhirBoolean? valueBoolean;

  /// [valueAttachment]
  /// A value for the characteristic.
  final Attachment? valueAttachment;

  /// [status]
  /// The status of characteristic e.g. assigned or pending.
  final CodeableConcept? status;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['type'] = type.toJson();

    if (valueCodeableConcept != null) {
      json['valueCodeableConcept'] = valueCodeableConcept!.toJson();
    }

    if (valueQuantity != null) {
      json['valueQuantity'] = valueQuantity!.toJson();
    }

    if (valueDate != null) {
      final fieldJson5 = valueDate!.toJson();
      json['valueDate'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_valueDate'] = fieldJson5['_value'];
      }
    }

    if (valueBoolean != null) {
      final fieldJson6 = valueBoolean!.toJson();
      json['valueBoolean'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_valueBoolean'] = fieldJson6['_value'];
      }
    }

    if (valueAttachment != null) {
      json['valueAttachment'] = valueAttachment!.toJson();
    }

    if (status != null) {
      json['status'] = status!.toJson();
    }

    return json;
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
    FhirBoolean? valueBoolean,
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
      valueBoolean: valueBoolean ?? this.valueBoolean,
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
}

/// [AdministrableProductDefinitionRouteOfAdministration]
/// The path by which the product is taken into or makes contact with the
/// body. In some regions this is referred to as the licenced or approved
/// route. RouteOfAdministration cannot be used when the 'formOf' product
/// already uses MedicinalProductDefinition.route (and vice versa).
class AdministrableProductDefinitionRouteOfAdministration
    extends BackboneElement {
  /// Primary constructor for [AdministrableProductDefinitionRouteOfAdministration]

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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinitionRouteOfAdministration.fromJson(
    Map<String, dynamic> json,
  ) {
    return AdministrableProductDefinitionRouteOfAdministration(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: CodeableConcept.fromJson(
        json['code'] as Map<String, dynamic>,
      ),
      firstDose: json['firstDose'] != null
          ? Quantity.fromJson(
              json['firstDose'] as Map<String, dynamic>,
            )
          : null,
      maxSingleDose: json['maxSingleDose'] != null
          ? Quantity.fromJson(
              json['maxSingleDose'] as Map<String, dynamic>,
            )
          : null,
      maxDosePerDay: json['maxDosePerDay'] != null
          ? Quantity.fromJson(
              json['maxDosePerDay'] as Map<String, dynamic>,
            )
          : null,
      maxDosePerTreatmentPeriod: json['maxDosePerTreatmentPeriod'] != null
          ? Ratio.fromJson(
              json['maxDosePerTreatmentPeriod'] as Map<String, dynamic>,
            )
          : null,
      maxTreatmentPeriod: json['maxTreatmentPeriod'] != null
          ? FhirDuration.fromJson(
              json['maxTreatmentPeriod'] as Map<String, dynamic>,
            )
          : null,
      targetSpecies: json['targetSpecies'] != null
          ? (json['targetSpecies'] as List<dynamic>)
              .map<AdministrableProductDefinitionTargetSpecies>(
                (v) => AdministrableProductDefinitionTargetSpecies.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [AdministrableProductDefinitionRouteOfAdministration] from a [String]
  /// or [YamlMap] object
  factory AdministrableProductDefinitionRouteOfAdministration.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? AdministrableProductDefinitionRouteOfAdministration.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? AdministrableProductDefinitionRouteOfAdministration.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'AdministrableProductDefinitionRouteOfAdministration cannot be constructed from '
                  'input provided, it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [AdministrableProductDefinitionRouteOfAdministration]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdministrableProductDefinitionRouteOfAdministration.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AdministrableProductDefinitionRouteOfAdministration.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'AdministrableProductDefinitionRouteOfAdministration';

  /// [code]
  /// Coded expression for the route.
  final CodeableConcept code;

  /// [firstDose]
  /// The first dose (dose quantity) administered can be specified for the
  /// product, using a numerical value and its unit of measurement.
  final Quantity? firstDose;

  /// [maxSingleDose]
  /// The maximum single dose that can be administered, specified using a
  /// numerical value and its unit of measurement.
  final Quantity? maxSingleDose;

  /// [maxDosePerDay]
  /// The maximum dose per day (maximum dose quantity to be administered in
  /// any one 24-h period) that can be administered.
  final Quantity? maxDosePerDay;

  /// [maxDosePerTreatmentPeriod]
  /// The maximum dose per treatment period that can be administered.
  final Ratio? maxDosePerTreatmentPeriod;

  /// [maxTreatmentPeriod]
  /// The maximum treatment period during which the product can be
  /// administered.
  final FhirDuration? maxTreatmentPeriod;

  /// [targetSpecies]
  /// A species for which this route applies.
  final List<AdministrableProductDefinitionTargetSpecies>? targetSpecies;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
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
      json['targetSpecies'] = targetSpecies!.map((e) => e.toJson()).toList();
    }

    return json;
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
}

/// [AdministrableProductDefinitionTargetSpecies]
/// A species for which this route applies.
class AdministrableProductDefinitionTargetSpecies extends BackboneElement {
  /// Primary constructor for [AdministrableProductDefinitionTargetSpecies]

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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinitionTargetSpecies.fromJson(
    Map<String, dynamic> json,
  ) {
    return AdministrableProductDefinitionTargetSpecies(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: CodeableConcept.fromJson(
        json['code'] as Map<String, dynamic>,
      ),
      withdrawalPeriod: json['withdrawalPeriod'] != null
          ? (json['withdrawalPeriod'] as List<dynamic>)
              .map<AdministrableProductDefinitionWithdrawalPeriod>(
                (v) => AdministrableProductDefinitionWithdrawalPeriod.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [AdministrableProductDefinitionTargetSpecies] from a [String]
  /// or [YamlMap] object
  factory AdministrableProductDefinitionTargetSpecies.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? AdministrableProductDefinitionTargetSpecies.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? AdministrableProductDefinitionTargetSpecies.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'AdministrableProductDefinitionTargetSpecies cannot be constructed from '
                  'input provided, it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [AdministrableProductDefinitionTargetSpecies]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdministrableProductDefinitionTargetSpecies.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AdministrableProductDefinitionTargetSpecies.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'AdministrableProductDefinitionTargetSpecies';

  /// [code]
  /// Coded expression for the species.
  final CodeableConcept code;

  /// [withdrawalPeriod]
  /// A species specific time during which consumption of animal product is
  /// not appropriate.
  final List<AdministrableProductDefinitionWithdrawalPeriod>? withdrawalPeriod;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['code'] = code.toJson();

    if (withdrawalPeriod != null && withdrawalPeriod!.isNotEmpty) {
      json['withdrawalPeriod'] =
          withdrawalPeriod!.map((e) => e.toJson()).toList();
    }

    return json;
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
}

/// [AdministrableProductDefinitionWithdrawalPeriod]
/// A species specific time during which consumption of animal product is
/// not appropriate.
class AdministrableProductDefinitionWithdrawalPeriod extends BackboneElement {
  /// Primary constructor for [AdministrableProductDefinitionWithdrawalPeriod]

  AdministrableProductDefinitionWithdrawalPeriod({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.tissue,
    required this.value,
    this.supportingInformation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinitionWithdrawalPeriod.fromJson(
    Map<String, dynamic> json,
  ) {
    return AdministrableProductDefinitionWithdrawalPeriod(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      tissue: CodeableConcept.fromJson(
        json['tissue'] as Map<String, dynamic>,
      ),
      value: Quantity.fromJson(
        json['value'] as Map<String, dynamic>,
      ),
      supportingInformation: json['supportingInformation'] != null
          ? FhirString.fromJson({
              'value': json['supportingInformation'],
              '_value': json['_supportingInformation'],
            })
          : null,
    );
  }

  /// Deserialize [AdministrableProductDefinitionWithdrawalPeriod] from a [String]
  /// or [YamlMap] object
  factory AdministrableProductDefinitionWithdrawalPeriod.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? AdministrableProductDefinitionWithdrawalPeriod.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? AdministrableProductDefinitionWithdrawalPeriod.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'AdministrableProductDefinitionWithdrawalPeriod cannot be constructed from '
                  'input provided, it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [AdministrableProductDefinitionWithdrawalPeriod]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdministrableProductDefinitionWithdrawalPeriod.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return AdministrableProductDefinitionWithdrawalPeriod.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'AdministrableProductDefinitionWithdrawalPeriod';

  /// [tissue]
  /// Coded expression for the type of tissue for which the withdrawal period
  /// applies, e.g. meat, milk.
  final CodeableConcept tissue;

  /// [value]
  /// A value for the time.
  final Quantity value;

  /// [supportingInformation]
  /// Extra information about the withdrawal period.
  final FhirString? supportingInformation;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['tissue'] = tissue.toJson();

    json['value'] = value.toJson();

    if (supportingInformation != null) {
      final fieldJson4 = supportingInformation!.toJson();
      json['supportingInformation'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_supportingInformation'] = fieldJson4['_value'];
      }
    }

    return json;
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
