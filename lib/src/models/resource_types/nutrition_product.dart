import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<NutritionProductStatus>(
        json,
        'status',
        NutritionProductStatus.fromJson,
      )!,
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      manufacturer: (json['manufacturer'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      nutrient: (json['nutrient'] as List<dynamic>?)
          ?.map<NutritionProductNutrient>(
            (v) => NutritionProductNutrient.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      ingredient: (json['ingredient'] as List<dynamic>?)
          ?.map<NutritionProductIngredient>(
            (v) => NutritionProductIngredient.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      knownAllergen: (json['knownAllergen'] as List<dynamic>?)
          ?.map<CodeableReference>(
            (v) => CodeableReference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      productCharacteristic: (json['productCharacteristic'] as List<dynamic>?)
          ?.map<NutritionProductProductCharacteristic>(
            (v) => NutritionProductProductCharacteristic.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      instance: JsonParser.parseObject<NutritionProductInstance>(
        json,
        'instance',
        NutritionProductInstance.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('status', status);
    addField('category', category);
    addField('code', code);
    addField('manufacturer', manufacturer);
    addField('nutrient', nutrient);
    addField('ingredient', ingredient);
    addField('knownAllergen', knownAllergen);
    addField('productCharacteristic', productCharacteristic);
    addField('instance', instance);
    addField('note', note);
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
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      item: JsonParser.parseObject<CodeableReference>(
        json,
        'item',
        CodeableReference.fromJson,
      ),
      amount: (json['amount'] as List<dynamic>?)
          ?.map<Ratio>(
            (v) => Ratio.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('item', item);
    addField('amount', amount);
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
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      item: JsonParser.parseObject<CodeableReference>(
        json,
        'item',
        CodeableReference.fromJson,
      )!,
      amount: (json['amount'] as List<dynamic>?)
          ?.map<Ratio>(
            (v) => Ratio.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('item', item);
    addField('amount', amount);
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
    required this.valueX,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory NutritionProductProductCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) {
    return NutritionProductProductCharacteristic(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      )!,
      valueX: JsonParser.parsePolymorphic<
          ValueXNutritionProductProductCharacteristic>(json, {
        'valueCodeableConcept': CodeableConcept.fromJson,
        'valueString': FhirString.fromJson,
        'valueQuantity': Quantity.fromJson,
        'valueBase64Binary': FhirBase64Binary.fromJson,
        'valueAttachment': Attachment.fromJson,
        'valueBoolean': FhirBoolean.fromJson,
      })!,
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

  /// [valueX]
  /// The actual characteristic value corresponding to the type.
  final ValueXNutritionProductProductCharacteristic valueX;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    final valueXFhirType = valueX.fhirType;
    addField('value${valueXFhirType.capitalize()}', valueX);

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
    ValueXNutritionProductProductCharacteristic? valueX,
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
      valueX: valueX ?? this.valueX,
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
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      lotNumber: JsonParser.parsePrimitive<FhirString>(
        json,
        'lotNumber',
        FhirString.fromJson,
      ),
      expiry: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'expiry',
        FhirDateTime.fromJson,
      ),
      useBy: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'useBy',
        FhirDateTime.fromJson,
      ),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('quantity', quantity);
    addField('identifier', identifier);
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
