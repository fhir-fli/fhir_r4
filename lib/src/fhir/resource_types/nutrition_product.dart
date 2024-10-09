import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'nutrition_product.g.dart';

/// [NutritionProduct] /// A food or fluid product that is consumed by patients.
@JsonSerializable()
class NutritionProduct extends DomainResource {
  NutritionProduct({
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
    required this.status,
    this.statusElement,
    this.category,
    this.code,
    this.manufacturer,
    this.nutrient,
    this.ingredient,
    this.knownAllergen,
    this.productCharacteristic,
    this.instance,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.NutritionProduct);
  @override
  String get fhirType => 'NutritionProduct';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [status] /// The current state of the product.
  @JsonKey(name: 'status')
  final NutritionProductStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [category] /// Nutrition products can have different classifications - according to its
  /// nutritional properties, preparation methods, etc.
  @JsonKey(name: 'category')
  final List<CodeableConcept>? category;

  /// [code] /// The code assigned to the product, for example a manufacturer number or
  /// other terminology.
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [manufacturer] /// The organisation (manufacturer, representative or legal authorisation
  /// holder) that is responsible for the device.
  @JsonKey(name: 'manufacturer')
  final List<Reference>? manufacturer;

  /// [nutrient] /// The product's nutritional information expressed by the nutrients.
  @JsonKey(name: 'nutrient')
  final List<NutritionProductNutrient>? nutrient;

  /// [ingredient] /// Ingredients contained in this product.
  @JsonKey(name: 'ingredient')
  final List<NutritionProductIngredient>? ingredient;

  /// [knownAllergen] /// Allergens that are known or suspected to be a part of this nutrition
  /// product.
  @JsonKey(name: 'knownAllergen')
  final List<CodeableReference>? knownAllergen;

  /// [productCharacteristic] /// Specifies descriptive properties of the nutrition product.
  @JsonKey(name: 'productCharacteristic')
  final List<NutritionProductProductCharacteristic>? productCharacteristic;

  /// [instance] /// Conveys instance-level information about this product item. One or several
  /// physical, countable instances or occurrences of the product.
  @JsonKey(name: 'instance')
  final NutritionProductInstance? instance;

  /// [note] /// Comments made about the product.
  @JsonKey(name: 'note')
  final List<Annotation>? note;
  factory NutritionProduct.fromJson(Map<String, dynamic> json) =>
      _$NutritionProductFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NutritionProductToJson(this);

  @override
  NutritionProduct clone() => throw UnimplementedError();
  @override
  NutritionProduct copyWith({
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
    NutritionProductStatus? status,
    Element? statusElement,
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return NutritionProduct(
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
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory NutritionProduct.fromYaml(dynamic yaml) => yaml is String
      ? NutritionProduct.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? NutritionProduct.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'NutritionProduct cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory NutritionProduct.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NutritionProduct.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [NutritionProductNutrient] /// The product's nutritional information expressed by the nutrients.
@JsonSerializable()
class NutritionProductNutrient extends BackboneElement {
  NutritionProductNutrient({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.item,
    this.amount,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'NutritionProductNutrient';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [item] /// The (relevant) nutrients in the product.
  @JsonKey(name: 'item')
  final CodeableReference? item;

  /// [amount] /// The amount of nutrient expressed in one or more units: X per pack / per
  /// serving / per dose.
  @JsonKey(name: 'amount')
  final List<Ratio>? amount;
  factory NutritionProductNutrient.fromJson(Map<String, dynamic> json) =>
      _$NutritionProductNutrientFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NutritionProductNutrientToJson(this);

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return NutritionProductNutrient(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      item: item ?? this.item,
      amount: amount ?? this.amount,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory NutritionProductNutrient.fromYaml(dynamic yaml) => yaml is String
      ? NutritionProductNutrient.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? NutritionProductNutrient.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'NutritionProductNutrient cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory NutritionProductNutrient.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NutritionProductNutrient.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [NutritionProductIngredient] /// Ingredients contained in this product.
@JsonSerializable()
class NutritionProductIngredient extends BackboneElement {
  NutritionProductIngredient({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.item,
    this.amount,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'NutritionProductIngredient';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [item] /// The ingredient contained in the product.
  @JsonKey(name: 'item')
  final CodeableReference item;

  /// [amount] /// The amount of ingredient that is in the product.
  @JsonKey(name: 'amount')
  final List<Ratio>? amount;
  factory NutritionProductIngredient.fromJson(Map<String, dynamic> json) =>
      _$NutritionProductIngredientFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NutritionProductIngredientToJson(this);

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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return NutritionProductIngredient(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      item: item ?? this.item,
      amount: amount ?? this.amount,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory NutritionProductIngredient.fromYaml(dynamic yaml) => yaml is String
      ? NutritionProductIngredient.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? NutritionProductIngredient.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'NutritionProductIngredient cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory NutritionProductIngredient.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NutritionProductIngredient.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [NutritionProductProductCharacteristic] /// Specifies descriptive properties of the nutrition product.
@JsonSerializable()
class NutritionProductProductCharacteristic extends BackboneElement {
  NutritionProductProductCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueCodeableConcept,
    this.valueString,
    this.valueStringElement,
    this.valueQuantity,
    this.valueBase64Binary,
    this.valueBase64BinaryElement,
    this.valueAttachment,
    this.valueBoolean,
    this.valueBooleanElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'NutritionProductProductCharacteristic';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// A code specifying which characteristic of the product is being described
  /// (for example, colour, shape).
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [valueCodeableConcept] /// The actual characteristic value corresponding to the type.
  @JsonKey(name: 'valueCodeableConcept')
  final CodeableConcept? valueCodeableConcept;

  /// [valueString] /// The actual characteristic value corresponding to the type.
  @JsonKey(name: 'valueString')
  final FhirString? valueString;
  @JsonKey(name: '_valueString')
  final Element? valueStringElement;

  /// [valueQuantity] /// The actual characteristic value corresponding to the type.
  @JsonKey(name: 'valueQuantity')
  final Quantity? valueQuantity;

  /// [valueBase64Binary] /// The actual characteristic value corresponding to the type.
  @JsonKey(name: 'valueBase64Binary')
  final FhirBase64Binary? valueBase64Binary;
  @JsonKey(name: '_valueBase64Binary')
  final Element? valueBase64BinaryElement;

  /// [valueAttachment] /// The actual characteristic value corresponding to the type.
  @JsonKey(name: 'valueAttachment')
  final Attachment? valueAttachment;

  /// [valueBoolean] /// The actual characteristic value corresponding to the type.
  @JsonKey(name: 'valueBoolean')
  final FhirBoolean? valueBoolean;
  @JsonKey(name: '_valueBoolean')
  final Element? valueBooleanElement;
  factory NutritionProductProductCharacteristic.fromJson(
          Map<String, dynamic> json) =>
      _$NutritionProductProductCharacteristicFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$NutritionProductProductCharacteristicToJson(this);

  @override
  NutritionProductProductCharacteristic clone() => throw UnimplementedError();
  @override
  NutritionProductProductCharacteristic copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? valueCodeableConcept,
    FhirString? valueString,
    Element? valueStringElement,
    Quantity? valueQuantity,
    FhirBase64Binary? valueBase64Binary,
    Element? valueBase64BinaryElement,
    Attachment? valueAttachment,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return NutritionProductProductCharacteristic(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueString: valueString ?? this.valueString,
      valueStringElement: valueStringElement ?? this.valueStringElement,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueBase64Binary: valueBase64Binary ?? this.valueBase64Binary,
      valueBase64BinaryElement:
          valueBase64BinaryElement ?? this.valueBase64BinaryElement,
      valueAttachment: valueAttachment ?? this.valueAttachment,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory NutritionProductProductCharacteristic.fromYaml(dynamic yaml) => yaml
          is String
      ? NutritionProductProductCharacteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? NutritionProductProductCharacteristic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'NutritionProductProductCharacteristic cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory NutritionProductProductCharacteristic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NutritionProductProductCharacteristic.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [NutritionProductInstance] /// Conveys instance-level information about this product item. One or several
/// physical, countable instances or occurrences of the product.
@JsonSerializable()
class NutritionProductInstance extends BackboneElement {
  NutritionProductInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.quantity,
    this.identifier,
    this.lotNumber,
    this.lotNumberElement,
    this.expiry,
    this.expiryElement,
    this.useBy,
    this.useByElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'NutritionProductInstance';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [quantity] /// The amount of items or instances that the resource considers, for instance
  /// when referring to 2 identical units together.
  @JsonKey(name: 'quantity')
  final Quantity? quantity;

  /// [identifier] /// The identifier for the physical instance, typically a serial number.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [lotNumber] /// The identification of the batch or lot of the product.
  @JsonKey(name: 'lotNumber')
  final FhirString? lotNumber;
  @JsonKey(name: '_lotNumber')
  final Element? lotNumberElement;

  /// [expiry] /// The time after which the product is no longer expected to be in proper
  /// condition, or its use is not advised or not allowed.
  @JsonKey(name: 'expiry')
  final FhirDateTime? expiry;
  @JsonKey(name: '_expiry')
  final Element? expiryElement;

  /// [useBy] /// The time after which the product is no longer expected to be in proper
  /// condition, or its use is not advised or not allowed.
  @JsonKey(name: 'useBy')
  final FhirDateTime? useBy;
  @JsonKey(name: '_useBy')
  final Element? useByElement;
  factory NutritionProductInstance.fromJson(Map<String, dynamic> json) =>
      _$NutritionProductInstanceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NutritionProductInstanceToJson(this);

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
    Element? lotNumberElement,
    FhirDateTime? expiry,
    Element? expiryElement,
    FhirDateTime? useBy,
    Element? useByElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return NutritionProductInstance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      quantity: quantity ?? this.quantity,
      identifier: identifier ?? this.identifier,
      lotNumber: lotNumber ?? this.lotNumber,
      lotNumberElement: lotNumberElement ?? this.lotNumberElement,
      expiry: expiry ?? this.expiry,
      expiryElement: expiryElement ?? this.expiryElement,
      useBy: useBy ?? this.useBy,
      useByElement: useByElement ?? this.useByElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory NutritionProductInstance.fromYaml(dynamic yaml) => yaml is String
      ? NutritionProductInstance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? NutritionProductInstance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'NutritionProductInstance cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory NutritionProductInstance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return NutritionProductInstance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
