import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'administrable_product_definition.g.dart';

/// [AdministrableProductDefinition]
/// A medicinal product in the final form which is suitable for
/// administering to a patient (after any mixing of multiple components,
/// dissolution etc. has been performed).
class AdministrableProductDefinition extends DomainResource {
  /// Primary constructor for
  /// [AdministrableProductDefinition]

  const AdministrableProductDefinition({
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
  }) : super(
          resourceType: R4ResourceType.AdministrableProductDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return AdministrableProductDefinition(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
      )!,
      formOf: (json['formOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      administrableDoseForm: JsonParser.parseObject<CodeableConcept>(
        json,
        'administrableDoseForm',
        CodeableConcept.fromJson,
      ),
      unitOfPresentation: JsonParser.parseObject<CodeableConcept>(
        json,
        'unitOfPresentation',
        CodeableConcept.fromJson,
      ),
      producedFrom: (json['producedFrom'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      ingredient: (json['ingredient'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      device: JsonParser.parseObject<Reference>(
        json,
        'device',
        Reference.fromJson,
      ),
      property: (json['property'] as List<dynamic>?)
          ?.map<AdministrableProductDefinitionProperty>(
            (v) => AdministrableProductDefinitionProperty.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      routeOfAdministration: (json['routeOfAdministration'] as List<dynamic>)
          .map<AdministrableProductDefinitionRouteOfAdministration>(
            (v) => AdministrableProductDefinitionRouteOfAdministration.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AdministrableProductDefinition]
  /// from a [String] or [YamlMap] object
  factory AdministrableProductDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdministrableProductDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdministrableProductDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdministrableProductDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdministrableProductDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdministrableProductDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdministrableProductDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'status',
      status,
    );
    addField(
      'formOf',
      formOf,
    );
    addField(
      'administrableDoseForm',
      administrableDoseForm,
    );
    addField(
      'unitOfPresentation',
      unitOfPresentation,
    );
    addField(
      'producedFrom',
      producedFrom,
    );
    addField(
      'ingredient',
      ingredient,
    );
    addField(
      'device',
      device,
    );
    addField(
      'property',
      property,
    );
    addField(
      'routeOfAdministration',
      routeOfAdministration,
    );
    return json;
  }

  @override
  AdministrableProductDefinition clone() => copyWith();

  /// Copy function for [AdministrableProductDefinition]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AdministrableProductDefinitionCopyWith<AdministrableProductDefinition>
      get copyWith => _$AdministrableProductDefinitionCopyWithImpl<
              AdministrableProductDefinition>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AdministrableProductDefinition) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      formOf,
      o.formOf,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      administrableDoseForm,
      o.administrableDoseForm,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      unitOfPresentation,
      o.unitOfPresentation,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      producedFrom,
      o.producedFrom,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      ingredient,
      o.ingredient,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      device,
      o.device,
    )) {
      return false;
    }
    if (!listEquals<AdministrableProductDefinitionProperty>(
      property,
      o.property,
    )) {
      return false;
    }
    if (!listEquals<AdministrableProductDefinitionRouteOfAdministration>(
      routeOfAdministration,
      o.routeOfAdministration,
    )) {
      return false;
    }
    return true;
  }
}

/// [AdministrableProductDefinitionProperty]
/// Characteristics e.g. a product's onset of action.
class AdministrableProductDefinitionProperty extends BackboneElement {
  /// Primary constructor for
  /// [AdministrableProductDefinitionProperty]

  const AdministrableProductDefinitionProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueX,
    this.status,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) {
    return AdministrableProductDefinitionProperty(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      )!,
      valueX: JsonParser.parsePolymorphic<
          ValueXAdministrableProductDefinitionProperty>(
        json,
        {
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueDate': FhirDate.fromJson,
          'valueBoolean': FhirBoolean.fromJson,
          'valueAttachment': Attachment.fromJson,
        },
      ),
      status: JsonParser.parseObject<CodeableConcept>(
        json,
        'status',
        CodeableConcept.fromJson,
      ),
    );
  }

  /// Deserialize [AdministrableProductDefinitionProperty]
  /// from a [String] or [YamlMap] object
  factory AdministrableProductDefinitionProperty.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdministrableProductDefinitionProperty.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdministrableProductDefinitionProperty.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdministrableProductDefinitionProperty '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdministrableProductDefinitionProperty]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdministrableProductDefinitionProperty.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdministrableProductDefinitionProperty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AdministrableProductDefinitionProperty';

  /// [type]
  /// A code expressing the type of characteristic.
  final CodeableConcept type;

  /// [valueX]
  /// A value for the characteristic.
  final ValueXAdministrableProductDefinitionProperty? valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX?.isAs<CodeableConcept>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX?.isAs<Quantity>();

  /// Getter for [valueDate] as a FhirDate
  FhirDate? get valueDate => valueX?.isAs<FhirDate>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX?.isAs<FhirBoolean>();

  /// Getter for [valueAttachment] as a Attachment
  Attachment? get valueAttachment => valueX?.isAs<Attachment>();

  /// [status]
  /// The status of characteristic e.g. assigned or pending.
  final CodeableConcept? status;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'type',
      type,
    );
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField(
        'value${fhirType.capitalize()}',
        valueX,
      );
    }

    addField(
      'status',
      status,
    );
    return json;
  }

  @override
  AdministrableProductDefinitionProperty clone() => copyWith();

  /// Copy function for [AdministrableProductDefinitionProperty]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AdministrableProductDefinitionPropertyCopyWith<
          AdministrableProductDefinitionProperty>
      get copyWith => _$AdministrableProductDefinitionPropertyCopyWithImpl<
              AdministrableProductDefinitionProperty>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AdministrableProductDefinitionProperty) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    return true;
  }
}

/// [AdministrableProductDefinitionRouteOfAdministration]
/// The path by which the product is taken into or makes contact with the
/// body. In some regions this is referred to as the licenced or approved
/// route. RouteOfAdministration cannot be used when the 'formOf' product
/// already uses MedicinalProductDefinition.route (and vice versa).
class AdministrableProductDefinitionRouteOfAdministration
    extends BackboneElement {
  /// Primary constructor for
  /// [AdministrableProductDefinitionRouteOfAdministration]

  const AdministrableProductDefinitionRouteOfAdministration({
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
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinitionRouteOfAdministration.fromJson(
    Map<String, dynamic> json,
  ) {
    return AdministrableProductDefinitionRouteOfAdministration(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      )!,
      firstDose: JsonParser.parseObject<Quantity>(
        json,
        'firstDose',
        Quantity.fromJson,
      ),
      maxSingleDose: JsonParser.parseObject<Quantity>(
        json,
        'maxSingleDose',
        Quantity.fromJson,
      ),
      maxDosePerDay: JsonParser.parseObject<Quantity>(
        json,
        'maxDosePerDay',
        Quantity.fromJson,
      ),
      maxDosePerTreatmentPeriod: JsonParser.parseObject<Ratio>(
        json,
        'maxDosePerTreatmentPeriod',
        Ratio.fromJson,
      ),
      maxTreatmentPeriod: JsonParser.parseObject<FhirDuration>(
        json,
        'maxTreatmentPeriod',
        FhirDuration.fromJson,
      ),
      targetSpecies: (json['targetSpecies'] as List<dynamic>?)
          ?.map<AdministrableProductDefinitionTargetSpecies>(
            (v) => AdministrableProductDefinitionTargetSpecies.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AdministrableProductDefinitionRouteOfAdministration]
  /// from a [String] or [YamlMap] object
  factory AdministrableProductDefinitionRouteOfAdministration.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdministrableProductDefinitionRouteOfAdministration.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdministrableProductDefinitionRouteOfAdministration.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdministrableProductDefinitionRouteOfAdministration '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdministrableProductDefinitionRouteOfAdministration]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdministrableProductDefinitionRouteOfAdministration.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdministrableProductDefinitionRouteOfAdministration.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'code',
      code,
    );
    addField(
      'firstDose',
      firstDose,
    );
    addField(
      'maxSingleDose',
      maxSingleDose,
    );
    addField(
      'maxDosePerDay',
      maxDosePerDay,
    );
    addField(
      'maxDosePerTreatmentPeriod',
      maxDosePerTreatmentPeriod,
    );
    addField(
      'maxTreatmentPeriod',
      maxTreatmentPeriod,
    );
    addField(
      'targetSpecies',
      targetSpecies,
    );
    return json;
  }

  @override
  AdministrableProductDefinitionRouteOfAdministration clone() => copyWith();

  /// Copy function for [AdministrableProductDefinitionRouteOfAdministration]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AdministrableProductDefinitionRouteOfAdministrationCopyWith<
          AdministrableProductDefinitionRouteOfAdministration>
      get copyWith =>
          _$AdministrableProductDefinitionRouteOfAdministrationCopyWithImpl<
              AdministrableProductDefinitionRouteOfAdministration>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AdministrableProductDefinitionRouteOfAdministration) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      firstDose,
      o.firstDose,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maxSingleDose,
      o.maxSingleDose,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maxDosePerDay,
      o.maxDosePerDay,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maxDosePerTreatmentPeriod,
      o.maxDosePerTreatmentPeriod,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maxTreatmentPeriod,
      o.maxTreatmentPeriod,
    )) {
      return false;
    }
    if (!listEquals<AdministrableProductDefinitionTargetSpecies>(
      targetSpecies,
      o.targetSpecies,
    )) {
      return false;
    }
    return true;
  }
}

/// [AdministrableProductDefinitionTargetSpecies]
/// A species for which this route applies.
class AdministrableProductDefinitionTargetSpecies extends BackboneElement {
  /// Primary constructor for
  /// [AdministrableProductDefinitionTargetSpecies]

  const AdministrableProductDefinitionTargetSpecies({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.withdrawalPeriod,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinitionTargetSpecies.fromJson(
    Map<String, dynamic> json,
  ) {
    return AdministrableProductDefinitionTargetSpecies(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      )!,
      withdrawalPeriod: (json['withdrawalPeriod'] as List<dynamic>?)
          ?.map<AdministrableProductDefinitionWithdrawalPeriod>(
            (v) => AdministrableProductDefinitionWithdrawalPeriod.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AdministrableProductDefinitionTargetSpecies]
  /// from a [String] or [YamlMap] object
  factory AdministrableProductDefinitionTargetSpecies.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdministrableProductDefinitionTargetSpecies.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdministrableProductDefinitionTargetSpecies.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdministrableProductDefinitionTargetSpecies '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdministrableProductDefinitionTargetSpecies]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdministrableProductDefinitionTargetSpecies.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdministrableProductDefinitionTargetSpecies.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'code',
      code,
    );
    addField(
      'withdrawalPeriod',
      withdrawalPeriod,
    );
    return json;
  }

  @override
  AdministrableProductDefinitionTargetSpecies clone() => copyWith();

  /// Copy function for [AdministrableProductDefinitionTargetSpecies]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AdministrableProductDefinitionTargetSpeciesCopyWith<
          AdministrableProductDefinitionTargetSpecies>
      get copyWith => _$AdministrableProductDefinitionTargetSpeciesCopyWithImpl<
              AdministrableProductDefinitionTargetSpecies>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AdministrableProductDefinitionTargetSpecies) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<AdministrableProductDefinitionWithdrawalPeriod>(
      withdrawalPeriod,
      o.withdrawalPeriod,
    )) {
      return false;
    }
    return true;
  }
}

/// [AdministrableProductDefinitionWithdrawalPeriod]
/// A species specific time during which consumption of animal product is
/// not appropriate.
class AdministrableProductDefinitionWithdrawalPeriod extends BackboneElement {
  /// Primary constructor for
  /// [AdministrableProductDefinitionWithdrawalPeriod]

  const AdministrableProductDefinitionWithdrawalPeriod({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.tissue,
    required this.value,
    this.supportingInformation,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinitionWithdrawalPeriod.fromJson(
    Map<String, dynamic> json,
  ) {
    return AdministrableProductDefinitionWithdrawalPeriod(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      tissue: JsonParser.parseObject<CodeableConcept>(
        json,
        'tissue',
        CodeableConcept.fromJson,
      )!,
      value: JsonParser.parseObject<Quantity>(
        json,
        'value',
        Quantity.fromJson,
      )!,
      supportingInformation: JsonParser.parsePrimitive<FhirString>(
        json,
        'supportingInformation',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [AdministrableProductDefinitionWithdrawalPeriod]
  /// from a [String] or [YamlMap] object
  factory AdministrableProductDefinitionWithdrawalPeriod.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdministrableProductDefinitionWithdrawalPeriod.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdministrableProductDefinitionWithdrawalPeriod.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdministrableProductDefinitionWithdrawalPeriod '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdministrableProductDefinitionWithdrawalPeriod]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdministrableProductDefinitionWithdrawalPeriod.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdministrableProductDefinitionWithdrawalPeriod.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'tissue',
      tissue,
    );
    addField(
      'value',
      value,
    );
    addField(
      'supportingInformation',
      supportingInformation,
    );
    return json;
  }

  @override
  AdministrableProductDefinitionWithdrawalPeriod clone() => copyWith();

  /// Copy function for [AdministrableProductDefinitionWithdrawalPeriod]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AdministrableProductDefinitionWithdrawalPeriodCopyWith<
          AdministrableProductDefinitionWithdrawalPeriod>
      get copyWith =>
          _$AdministrableProductDefinitionWithdrawalPeriodCopyWithImpl<
              AdministrableProductDefinitionWithdrawalPeriod>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AdministrableProductDefinitionWithdrawalPeriod) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      tissue,
      o.tissue,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      value,
      o.value,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      supportingInformation,
      o.supportingInformation,
    )) {
      return false;
    }
    return true;
  }
}
