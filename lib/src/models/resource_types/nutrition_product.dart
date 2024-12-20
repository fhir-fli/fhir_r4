import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'nutrition_product.g.dart';

/// [NutritionProduct]
/// A food or fluid product that is consumed by patients.
class NutritionProduct extends DomainResource {
  /// Primary constructor for
  /// [NutritionProduct]

  const NutritionProduct({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.status,
    this.category,
    this.code,
    this.manufacturer,
    this.nutrient,
    this.ingredient,
    this.knownAllergen,
    this.productCharacteristic,
    this.instance,
    this.note,
  }) : super(
          resourceType: R4ResourceType.NutritionProduct,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionProduct.fromJson(
    Map<String, dynamic> json,
  ) {
    return NutritionProduct(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
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
      status: NutritionProductStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      manufacturer: json['manufacturer'] != null
          ? (json['manufacturer'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      nutrient: json['nutrient'] != null
          ? (json['nutrient'] as List<dynamic>)
              .map<NutritionProductNutrient>(
                (v) => NutritionProductNutrient.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      ingredient: json['ingredient'] != null
          ? (json['ingredient'] as List<dynamic>)
              .map<NutritionProductIngredient>(
                (v) => NutritionProductIngredient.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      knownAllergen: json['knownAllergen'] != null
          ? (json['knownAllergen'] as List<dynamic>)
              .map<CodeableReference>(
                (v) => CodeableReference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      productCharacteristic: json['productCharacteristic'] != null
          ? (json['productCharacteristic'] as List<dynamic>)
              .map<NutritionProductProductCharacteristic>(
                (v) => NutritionProductProductCharacteristic.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      instance: json['instance'] != null
          ? NutritionProductInstance.fromJson(
              json['instance'] as Map<String, dynamic>,
            )
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [NutritionProduct]
  /// from a [String] or [YamlMap] object
  factory NutritionProduct.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionProduct.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionProduct.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionProduct '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionProduct]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionProduct.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NutritionProduct.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'NutritionProduct';

  /// [status]
  /// The current state of the product.
  final NutritionProductStatus status;

  /// [category]
  /// Nutrition products can have different classifications - according to
  /// its nutritional properties, preparation methods, etc.
  final List<CodeableConcept>? category;

  /// [code]
  /// The code assigned to the product, for example a manufacturer number or
  /// other terminology.
  final CodeableConcept? code;

  /// [manufacturer]
  /// The organisation (manufacturer, representative or legal authorisation
  /// holder) that is responsible for the device.
  final List<Reference>? manufacturer;

  /// [nutrient]
  /// The product's nutritional information expressed by the nutrients.
  final List<NutritionProductNutrient>? nutrient;

  /// [ingredient]
  /// Ingredients contained in this product.
  final List<NutritionProductIngredient>? ingredient;

  /// [knownAllergen]
  /// Allergens that are known or suspected to be a part of this nutrition
  /// product.
  final List<CodeableReference>? knownAllergen;

  /// [productCharacteristic]
  /// Specifies descriptive properties of the nutrition product.
  final List<NutritionProductProductCharacteristic>? productCharacteristic;

  /// [instance]
  /// Conveys instance-level information about this product item. One or
  /// several physical, countable instances or occurrences of the product.
  final NutritionProductInstance? instance;

  /// [note]
  /// Comments made about the product.
  final List<Annotation>? note;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
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

    addField('status', status);
    if (category != null && category!.isNotEmpty) {
      json['category'] = category!.map((e) => e.toJson()).toList();
    }

    if (code != null) {
      json['code'] = code!.toJson();
    }

    if (manufacturer != null && manufacturer!.isNotEmpty) {
      json['manufacturer'] = manufacturer!.map((e) => e.toJson()).toList();
    }

    if (nutrient != null && nutrient!.isNotEmpty) {
      json['nutrient'] = nutrient!.map((e) => e.toJson()).toList();
    }

    if (ingredient != null && ingredient!.isNotEmpty) {
      json['ingredient'] = ingredient!.map((e) => e.toJson()).toList();
    }

    if (knownAllergen != null && knownAllergen!.isNotEmpty) {
      json['knownAllergen'] = knownAllergen!.map((e) => e.toJson()).toList();
    }

    if (productCharacteristic != null && productCharacteristic!.isNotEmpty) {
      json['productCharacteristic'] =
          productCharacteristic!.map((e) => e.toJson()).toList();
    }

    if (instance != null) {
      json['instance'] = instance!.toJson();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  NutritionProduct clone() => throw UnimplementedError();
  @override
  NutritionProduct copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    NutritionProductStatus? status,
    List<CodeableConcept>? category,
    CodeableConcept? code,
    List<Reference>? manufacturer,
    List<NutritionProductNutrient>? nutrient,
    List<NutritionProductIngredient>? ingredient,
    List<CodeableReference>? knownAllergen,
    List<NutritionProductProductCharacteristic>? productCharacteristic,
    NutritionProductInstance? instance,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return NutritionProduct(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      status: status ?? this.status,
      category: category ?? this.category,
      code: code ?? this.code,
      manufacturer: manufacturer ?? this.manufacturer,
      nutrient: nutrient ?? this.nutrient,
      ingredient: ingredient ?? this.ingredient,
      knownAllergen: knownAllergen ?? this.knownAllergen,
      productCharacteristic:
          productCharacteristic ?? this.productCharacteristic,
      instance: instance ?? this.instance,
      note: note ?? this.note,
    );
  }
}

/// [NutritionProductNutrient]
/// The product's nutritional information expressed by the nutrients.
class NutritionProductNutrient extends BackboneElement {
  /// Primary constructor for
  /// [NutritionProductNutrient]

  const NutritionProductNutrient({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.item,
    this.amount,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionProductNutrient.fromJson(
    Map<String, dynamic> json,
  ) {
    return NutritionProductNutrient(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      item: json['item'] != null
          ? CodeableReference.fromJson(
              json['item'] as Map<String, dynamic>,
            )
          : null,
      amount: json['amount'] != null
          ? (json['amount'] as List<dynamic>)
              .map<Ratio>(
                (v) => Ratio.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [NutritionProductNutrient]
  /// from a [String] or [YamlMap] object
  factory NutritionProductNutrient.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionProductNutrient.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionProductNutrient.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionProductNutrient '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionProductNutrient]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionProductNutrient.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NutritionProductNutrient.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'NutritionProductNutrient';

  /// [item]
  /// The (relevant) nutrients in the product.
  final CodeableReference? item;

  /// [amount]
  /// The amount of nutrient expressed in one or more units: X per pack / per
  /// serving / per dose.
  final List<Ratio>? amount;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (item != null) {
      json['item'] = item!.toJson();
    }

    if (amount != null && amount!.isNotEmpty) {
      json['amount'] = amount!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  NutritionProductNutrient clone() => throw UnimplementedError();
  @override
  NutritionProductNutrient copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? item,
    List<Ratio>? amount,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return NutritionProductNutrient(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      item: item ?? this.item,
      amount: amount ?? this.amount,
    );
  }
}

/// [NutritionProductIngredient]
/// Ingredients contained in this product.
class NutritionProductIngredient extends BackboneElement {
  /// Primary constructor for
  /// [NutritionProductIngredient]

  const NutritionProductIngredient({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.item,
    this.amount,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionProductIngredient.fromJson(
    Map<String, dynamic> json,
  ) {
    return NutritionProductIngredient(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      item: CodeableReference.fromJson(
        json['item'] as Map<String, dynamic>,
      ),
      amount: json['amount'] != null
          ? (json['amount'] as List<dynamic>)
              .map<Ratio>(
                (v) => Ratio.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [NutritionProductIngredient]
  /// from a [String] or [YamlMap] object
  factory NutritionProductIngredient.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionProductIngredient.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionProductIngredient.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionProductIngredient '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionProductIngredient]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionProductIngredient.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NutritionProductIngredient.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'NutritionProductIngredient';

  /// [item]
  /// The ingredient contained in the product.
  final CodeableReference item;

  /// [amount]
  /// The amount of ingredient that is in the product.
  final List<Ratio>? amount;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['item'] = item.toJson();

    if (amount != null && amount!.isNotEmpty) {
      json['amount'] = amount!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  NutritionProductIngredient clone() => throw UnimplementedError();
  @override
  NutritionProductIngredient copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? item,
    List<Ratio>? amount,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return NutritionProductIngredient(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      item: item ?? this.item,
      amount: amount ?? this.amount,
    );
  }
}

/// [NutritionProductProductCharacteristic]
/// Specifies descriptive properties of the nutrition product.
class NutritionProductProductCharacteristic extends BackboneElement {
  /// Primary constructor for
  /// [NutritionProductProductCharacteristic]

  const NutritionProductProductCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.valueXNutritionProductProductCharacteristic,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionProductProductCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) {
    return NutritionProductProductCharacteristic(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      valueXNutritionProductProductCharacteristic: json[
                      'valueCodeableConcept'] !=
                  null ||
              json['_valueCodeableConcept'] != null
          ? CodeableConceptValueNutritionProductProductCharacteristic.fromJson({
              'value': json['valueCodeableConcept'],
              '_value': json['_valueCodeableConcept'],
            })
          : json['valueString'] != null || json['_valueString'] != null
              ? StringValueNutritionProductProductCharacteristic.fromJson({
                  'value': json['valueString'],
                  '_value': json['_valueString'],
                })
              : json['valueQuantity'] != null || json['_valueQuantity'] != null
                  ? QuantityValueNutritionProductProductCharacteristic
                      .fromJson({
                      'value': json['valueQuantity'],
                      '_value': json['_valueQuantity'],
                    })
                  : json['valueBase64Binary'] != null ||
                          json['_valueBase64Binary'] != null
                      ? Base64BinaryValueNutritionProductProductCharacteristic
                          .fromJson({
                          'value': json['valueBase64Binary'],
                          '_value': json['_valueBase64Binary'],
                        })
                      : json['valueAttachment'] != null ||
                              json['_valueAttachment'] != null
                          ? AttachmentValueNutritionProductProductCharacteristic
                              .fromJson({
                              'value': json['valueAttachment'],
                              '_value': json['_valueAttachment'],
                            })
                          : BooleanValueNutritionProductProductCharacteristic
                              .fromJson({
                              'value': json['valueBoolean'],
                              '_value': json['_valueBoolean'],
                            }),
    );
  }

  /// Deserialize [NutritionProductProductCharacteristic]
  /// from a [String] or [YamlMap] object
  factory NutritionProductProductCharacteristic.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionProductProductCharacteristic.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionProductProductCharacteristic.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionProductProductCharacteristic '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionProductProductCharacteristic]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionProductProductCharacteristic.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NutritionProductProductCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'NutritionProductProductCharacteristic';

  /// [type]
  /// A code specifying which characteristic of the product is being
  /// described (for example, colour, shape).
  final CodeableConcept type;

  /// [valueXNutritionProductProductCharacteristic]
  /// The actual characteristic value corresponding to the type.
  final ValueXNutritionProductProductCharacteristic
      valueXNutritionProductProductCharacteristic;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['type'] = type.toJson();

    json['valueXNutritionProductProductCharacteristic'] =
        valueXNutritionProductProductCharacteristic.toJson();

    return json;
  }

  @override
  NutritionProductProductCharacteristic clone() => throw UnimplementedError();
  @override
  NutritionProductProductCharacteristic copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    ValueXNutritionProductProductCharacteristic?
        valueXNutritionProductProductCharacteristic,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return NutritionProductProductCharacteristic(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueXNutritionProductProductCharacteristic:
          valueXNutritionProductProductCharacteristic ??
              this.valueXNutritionProductProductCharacteristic,
    );
  }
}

/// [NutritionProductInstance]
/// Conveys instance-level information about this product item. One or
/// several physical, countable instances or occurrences of the product.
class NutritionProductInstance extends BackboneElement {
  /// Primary constructor for
  /// [NutritionProductInstance]

  const NutritionProductInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.quantity,
    this.identifier,
    this.lotNumber,
    this.expiry,
    this.useBy,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionProductInstance.fromJson(
    Map<String, dynamic> json,
  ) {
    return NutritionProductInstance(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
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
      lotNumber: (json['lotNumber'] != null || json['_lotNumber'] != null)
          ? FhirString.fromJson({
              'value': json['lotNumber'],
              '_value': json['_lotNumber'],
            })
          : null,
      expiry: (json['expiry'] != null || json['_expiry'] != null)
          ? FhirDateTime.fromJson({
              'value': json['expiry'],
              '_value': json['_expiry'],
            })
          : null,
      useBy: (json['useBy'] != null || json['_useBy'] != null)
          ? FhirDateTime.fromJson({
              'value': json['useBy'],
              '_value': json['_useBy'],
            })
          : null,
    );
  }

  /// Deserialize [NutritionProductInstance]
  /// from a [String] or [YamlMap] object
  factory NutritionProductInstance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return NutritionProductInstance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return NutritionProductInstance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'NutritionProductInstance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [NutritionProductInstance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory NutritionProductInstance.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NutritionProductInstance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'NutritionProductInstance';

  /// [quantity]
  /// The amount of items or instances that the resource considers, for
  /// instance when referring to 2 identical units together.
  final Quantity? quantity;

  /// [identifier]
  /// The identifier for the physical instance, typically a serial number.
  final List<Identifier>? identifier;

  /// [lotNumber]
  /// The identification of the batch or lot of the product.
  final FhirString? lotNumber;

  /// [expiry]
  /// The time after which the product is no longer expected to be in proper
  /// condition, or its use is not advised or not allowed.
  final FhirDateTime? expiry;

  /// [useBy]
  /// The time after which the product is no longer expected to be in proper
  /// condition, or its use is not advised or not allowed.
  final FhirDateTime? useBy;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    addField('lotNumber', lotNumber);
    addField('expiry', expiry);
    addField('useBy', useBy);
    return json;
  }

  @override
  NutritionProductInstance clone() => throw UnimplementedError();
  @override
  NutritionProductInstance copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Quantity? quantity,
    List<Identifier>? identifier,
    FhirString? lotNumber,
    FhirDateTime? expiry,
    FhirDateTime? useBy,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return NutritionProductInstance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      quantity: quantity ?? this.quantity,
      identifier: identifier ?? this.identifier,
      lotNumber: lotNumber ?? this.lotNumber,
      expiry: expiry ?? this.expiry,
      useBy: useBy ?? this.useBy,
    );
  }
}
