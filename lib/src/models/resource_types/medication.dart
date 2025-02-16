import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Medication]
/// This resource is primarily used for the identification and definition
/// of a medication for the purposes of prescribing, dispensing, and
/// administering a medication as well as for making statements about
/// medication use.
class Medication extends DomainResource {
  /// Primary constructor for
  /// [Medication]

  const Medication({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.code,
    this.status,
    this.manufacturer,
    this.form,
    this.amount,
    this.ingredient,
    this.batch,
  }) : super(
          objectPath: 'Medication',
          resourceType: R4ResourceType.Medication,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Medication.empty() => const Medication();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Medication.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Medication';
    return Medication(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      status: JsonParser.parsePrimitive<MedicationStatusCodes>(
        json,
        'status',
        MedicationStatusCodes.fromJson,
        '$objectPath.status',
      ),
      manufacturer: JsonParser.parseObject<Reference>(
        json,
        'manufacturer',
        Reference.fromJson,
        '$objectPath.manufacturer',
      ),
      form: JsonParser.parseObject<CodeableConcept>(
        json,
        'form',
        CodeableConcept.fromJson,
        '$objectPath.form',
      ),
      amount: JsonParser.parseObject<Ratio>(
        json,
        'amount',
        Ratio.fromJson,
        '$objectPath.amount',
      ),
      ingredient: (json['ingredient'] as List<dynamic>?)
          ?.map<MedicationIngredient>(
            (v) => MedicationIngredient.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.ingredient',
              },
            ),
          )
          .toList(),
      batch: JsonParser.parseObject<MedicationBatch>(
        json,
        'batch',
        MedicationBatch.fromJson,
        '$objectPath.batch',
      ),
    );
  }

  /// Deserialize [Medication]
  /// from a [String] or [YamlMap] object
  factory Medication.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Medication.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Medication.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Medication '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Medication]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Medication.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Medication.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Medication';

  /// [identifier]
  /// Business identifier for this medication.
  final List<Identifier>? identifier;

  /// [code]
  /// A code (or set of codes) that specify this medication, or a textual
  /// description if no code is available. Usage note: This could be a
  /// standard medication code such as a code from RxNorm, SNOMED CT, IDMP
  /// etc. It could also be a national or local formulary code, optionally
  /// with translations to other code systems.
  final CodeableConcept? code;

  /// [status]
  /// A code to indicate if the medication is in active use.
  final MedicationStatusCodes? status;

  /// [manufacturer]
  /// Describes the details of the manufacturer of the medication product.
  /// This is not intended to represent the distributor of a medication
  /// product.
  final Reference? manufacturer;

  /// [form]
  /// Describes the form of the item. Powder; tablets; capsule.
  final CodeableConcept? form;

  /// [amount]
  /// Specific amount of the drug in the packaged product. For example, when
  /// specifying a product that has the same strength (For example, Insulin
  /// glargine 100 unit per mL solution for injection), this attribute
  /// provides additional clarification of the package amount (For example, 3
  /// mL, 10mL, etc.).
  final Ratio? amount;

  /// [ingredient]
  /// Identifies a particular constituent of interest in the product.
  final List<MedicationIngredient>? ingredient;

  /// [batch]
  /// Information that only applies to packages (not products).
  final MedicationBatch? batch;
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
    addField('identifier', identifier);
    addField('code', code);
    addField('status', status);
    addField('manufacturer', manufacturer);
    addField('form', form);
    addField('amount', amount);
    addField('ingredient', ingredient);
    addField('batch', batch);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'code',
      'status',
      'manufacturer',
      'form',
      'amount',
      'ingredient',
      'batch',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'manufacturer':
        if (manufacturer != null) {
          fields.add(manufacturer!);
        }
      case 'form':
        if (form != null) {
          fields.add(form!);
        }
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
        }
      case 'ingredient':
        if (ingredient != null) {
          fields.addAll(ingredient!);
        }
      case 'batch':
        if (batch != null) {
          fields.add(batch!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  Medication clone() => throw UnimplementedError();
  @override
  Medication copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CodeableConcept? code,
    MedicationStatusCodes? status,
    Reference? manufacturer,
    CodeableConcept? form,
    Ratio? amount,
    List<MedicationIngredient>? ingredient,
    MedicationBatch? batch,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Medication(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      manufacturer: manufacturer?.copyWith(
            objectPath: '$newObjectPath.manufacturer',
          ) ??
          this.manufacturer,
      form: form?.copyWith(
            objectPath: '$newObjectPath.form',
          ) ??
          this.form,
      amount: amount?.copyWith(
            objectPath: '$newObjectPath.amount',
          ) ??
          this.amount,
      ingredient: ingredient
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.ingredient',
                ),
              )
              .toList() ??
          this.ingredient,
      batch: batch?.copyWith(
            objectPath: '$newObjectPath.batch',
          ) ??
          this.batch,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Medication) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
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
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(manufacturer, o.manufacturer)) {
      return false;
    }
    if (!equalsDeepWithNull(form, o.form)) {
      return false;
    }
    if (!equalsDeepWithNull(amount, o.amount)) {
      return false;
    }
    if (!listEquals<MedicationIngredient>(
      ingredient,
      o.ingredient,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(batch, o.batch)) {
      return false;
    }
    return true;
  }
}

/// [MedicationIngredient]
/// Identifies a particular constituent of interest in the product.
class MedicationIngredient extends BackboneElement {
  /// Primary constructor for
  /// [MedicationIngredient]

  const MedicationIngredient({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.itemX,
    this.isActive,
    this.strength,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Medication.ingredient',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationIngredient.empty() => MedicationIngredient(
        itemX: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationIngredient.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Medication.ingredient';
    return MedicationIngredient(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      itemX: JsonParser.parsePolymorphic<ItemXMedicationIngredient>(
        json,
        {
          'itemCodeableConcept': CodeableConcept.fromJson,
          'itemReference': Reference.fromJson,
        },
        objectPath,
      )!,
      isActive: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'isActive',
        FhirBoolean.fromJson,
        '$objectPath.isActive',
      ),
      strength: JsonParser.parseObject<Ratio>(
        json,
        'strength',
        Ratio.fromJson,
        '$objectPath.strength',
      ),
    );
  }

  /// Deserialize [MedicationIngredient]
  /// from a [String] or [YamlMap] object
  factory MedicationIngredient.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationIngredient.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationIngredient.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationIngredient '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationIngredient]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationIngredient.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationIngredient.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationIngredient';

  /// [itemX]
  /// The actual ingredient - either a substance (simple ingredient) or
  /// another medication of a medication.
  final ItemXMedicationIngredient itemX;

  /// Getter for [itemCodeableConcept] as a CodeableConcept
  CodeableConcept? get itemCodeableConcept => itemX.isAs<CodeableConcept>();

  /// Getter for [itemReference] as a Reference
  Reference? get itemReference => itemX.isAs<Reference>();

  /// [isActive]
  /// Indication of whether this ingredient affects the therapeutic action of
  /// the drug.
  final FhirBoolean? isActive;

  /// [strength]
  /// Specifies how many (or how much) of the items there are in this
  /// Medication. For example, 250 mg per tablet. This is expressed as a
  /// ratio where the numerator is 250mg and the denominator is 1 tablet.
  final Ratio? strength;
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
    final itemXFhirType = itemX.fhirType;
    addField('item${itemXFhirType.capitalize()}', itemX);

    addField('isActive', isActive);
    addField('strength', strength);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'itemX',
      'isActive',
      'strength',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'item':
        fields.add(itemX);
      case 'itemX':
        fields.add(itemX);
      case 'itemCodeableConcept':
        if (itemX is CodeableConcept) {
          fields.add(itemX);
        }
      case 'itemReference':
        if (itemX is Reference) {
          fields.add(itemX);
        }
      case 'isActive':
        if (isActive != null) {
          fields.add(isActive!);
        }
      case 'strength':
        if (strength != null) {
          fields.add(strength!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  MedicationIngredient clone() => throw UnimplementedError();
  @override
  MedicationIngredient copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ItemXMedicationIngredient? itemX,
    FhirBoolean? isActive,
    Ratio? strength,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MedicationIngredient(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      itemX: itemX?.copyWith(
            objectPath: '$newObjectPath.itemX',
          ) as ItemXMedicationIngredient? ??
          this.itemX,
      isActive: isActive?.copyWith(
            objectPath: '$newObjectPath.isActive',
          ) ??
          this.isActive,
      strength: strength?.copyWith(
            objectPath: '$newObjectPath.strength',
          ) ??
          this.strength,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationIngredient) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(itemX, o.itemX)) {
      return false;
    }
    if (!equalsDeepWithNull(isActive, o.isActive)) {
      return false;
    }
    if (!equalsDeepWithNull(strength, o.strength)) {
      return false;
    }
    return true;
  }
}

/// [MedicationBatch]
/// Information that only applies to packages (not products).
class MedicationBatch extends BackboneElement {
  /// Primary constructor for
  /// [MedicationBatch]

  const MedicationBatch({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.lotNumber,
    this.expirationDate,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Medication.batch',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory MedicationBatch.empty() => const MedicationBatch();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationBatch.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Medication.batch';
    return MedicationBatch(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      lotNumber: JsonParser.parsePrimitive<FhirString>(
        json,
        'lotNumber',
        FhirString.fromJson,
        '$objectPath.lotNumber',
      ),
      expirationDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'expirationDate',
        FhirDateTime.fromJson,
        '$objectPath.expirationDate',
      ),
    );
  }

  /// Deserialize [MedicationBatch]
  /// from a [String] or [YamlMap] object
  factory MedicationBatch.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return MedicationBatch.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return MedicationBatch.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'MedicationBatch '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [MedicationBatch]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationBatch.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return MedicationBatch.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'MedicationBatch';

  /// [lotNumber]
  /// The assigned lot number of a batch of the specified product.
  final FhirString? lotNumber;

  /// [expirationDate]
  /// When this specific batch of product will expire.
  final FhirDateTime? expirationDate;
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
    addField('lotNumber', lotNumber);
    addField('expirationDate', expirationDate);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'lotNumber',
      'expirationDate',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'lotNumber':
        if (lotNumber != null) {
          fields.add(lotNumber!);
        }
      case 'expirationDate':
        if (expirationDate != null) {
          fields.add(expirationDate!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  MedicationBatch clone() => throw UnimplementedError();
  @override
  MedicationBatch copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? lotNumber,
    FhirDateTime? expirationDate,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return MedicationBatch(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      lotNumber: lotNumber?.copyWith(
            objectPath: '$newObjectPath.lotNumber',
          ) ??
          this.lotNumber,
      expirationDate: expirationDate?.copyWith(
            objectPath: '$newObjectPath.expirationDate',
          ) ??
          this.expirationDate,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! MedicationBatch) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(lotNumber, o.lotNumber)) {
      return false;
    }
    if (!equalsDeepWithNull(expirationDate, o.expirationDate)) {
      return false;
    }
    return true;
  }
}
