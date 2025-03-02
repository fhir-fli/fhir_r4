import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Quantity]
/// A measured amount (or an amount that can potentially be measured). Note
/// that measured amounts include amounts that are not precisely
/// quantified, including amounts involving arbitrary units and floating
/// currencies.
class Quantity extends DataType
    implements
        ValueXAdministrableProductDefinitionProperty,
        ValueXClaimSupportingInfo,
        ValueXContractAnswer,
        ValueXCoverageCostToBeneficiary,
        ValueXDeviceRequestParameter,
        ValueXEvidenceReportCharacteristic,
        ValueXEvidenceVariableCategory,
        ValueXExplanationOfBenefitSupportingInfo,
        DetailXGoalTarget,
        ValueXGroupCharacteristic,
        ValueXManufacturedItemDefinitionProperty,
        RateXMedicationAdministrationDosage,
        CharacteristicXMedicationKnowledgePatientCharacteristics,
        ValueXMedicationKnowledgeDrugCharacteristic,
        ValueXMedicinalProductDefinitionCharacteristic,
        RateXNutritionOrderAdministration,
        ValueXNutritionProductProductCharacteristic,
        ValueXObservation,
        ValueXObservationComponent,
        ValueXPackagedProductDefinitionProperty,
        ValueXParametersParameter,
        DetailXPlanDefinitionTarget,
        AnswerXQuestionnaireEnableWhen,
        ValueXQuestionnaireInitial,
        ValueXQuestionnaireResponseAnswer,
        QuantityXServiceRequest,
        MinimumVolumeXSpecimenDefinitionContainer,
        DefaultValueXStructureMapSource,
        AmountXSubstanceDefinitionMoiety,
        ValueXSubstanceDefinitionProperty,
        AmountXSubstanceDefinitionRelationship,
        ValueXSupplyRequestParameter,
        ValueXTaskInput,
        ValueXTaskOutput,
        DoseXDosageDoseAndRate,
        RateXDosageDoseAndRate,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        MinValueXElementDefinition,
        MaxValueXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension,
        ValueXUsageContext {
  /// Primary constructor for
  /// [Quantity]

  const Quantity({
    super.id,
    super.extension_,
    this.value,
    this.comparator,
    this.unit,
    this.system,
    this.code,
    super.disallowExtensions,
    super.objectPath = 'Quantity',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Quantity.empty() => const Quantity();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Quantity.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Quantity';
    return Quantity(
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
      value: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'value',
        FhirDecimal.fromJson,
        '$objectPath.value',
      ),
      comparator: JsonParser.parsePrimitive<QuantityComparator>(
        json,
        'comparator',
        QuantityComparator.fromJson,
        '$objectPath.comparator',
      ),
      unit: JsonParser.parsePrimitive<FhirString>(
        json,
        'unit',
        FhirString.fromJson,
        '$objectPath.unit',
      ),
      system: JsonParser.parsePrimitive<FhirUri>(
        json,
        'system',
        FhirUri.fromJson,
        '$objectPath.system',
      ),
      code: JsonParser.parsePrimitive<FhirCode>(
        json,
        'code',
        FhirCode.fromJson,
        '$objectPath.code',
      ),
    );
  }

  /// Deserialize [Quantity]
  /// from a [String] or [YamlMap] object
  factory Quantity.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Quantity.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Quantity.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Quantity '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Quantity]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Quantity.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Quantity.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Quantity';

  /// [value]
  /// The value of the measured amount. The value includes an implicit
  /// precision in the presentation of the value.
  final FhirDecimal? value;

  /// [comparator]
  /// How the value should be understood and represented - whether the actual
  /// value is greater or less than the stated value due to measurement
  /// issues; e.g. if the comparator is "<" , then the real value is < stated
  /// value.
  final QuantityComparator? comparator;

  /// [unit]
  /// A human-readable form of the unit.
  final FhirString? unit;

  /// [system]
  /// The identification of the system that provides the coded form of the
  /// unit.
  final FhirUri? system;

  /// [code]
  /// A computer processable form of the unit in some unit representation
  /// system.
  final FhirCode? code;
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
    addField('value', value);
    addField('comparator', comparator);
    addField('unit', unit);
    addField('system', system);
    addField('code', code);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'value',
      'comparator',
      'unit',
      'system',
      'code',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
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
      case 'value':
        if (value != null) {
          fields.add(value!);
        }
      case 'comparator':
        if (comparator != null) {
          fields.add(comparator!);
        }
      case 'unit':
        if (unit != null) {
          fields.add(unit!);
        }
      case 'system':
        if (system != null) {
          fields.add(system!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'value':
        {
          if (child is FhirDecimal) {
            return copyWith(value: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'comparator':
        {
          if (child is QuantityComparator) {
            return copyWith(comparator: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'unit':
        {
          if (child is FhirString) {
            return copyWith(unit: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'system':
        {
          if (child is FhirUri) {
            return copyWith(system: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'code':
        {
          if (child is FhirCode) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'value':
        return ['FhirDecimal'];
      case 'comparator':
        return ['FhirCode'];
      case 'unit':
        return ['FhirString'];
      case 'system':
        return ['FhirUri'];
      case 'code':
        return ['FhirCode'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [Quantity]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  Quantity createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'value':
        {
          return copyWith(value: FhirDecimal.empty());
        }
      case 'comparator':
        {
          return copyWith(comparator: QuantityComparator.empty());
        }
      case 'unit':
        {
          return copyWith(unit: FhirString.empty());
        }
      case 'system':
        {
          return copyWith(system: FhirUri.empty());
        }
      case 'code':
        {
          return copyWith(code: FhirCode.empty());
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  Quantity clone() => throw UnimplementedError();
  @override
  Quantity copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirDecimal? value,
    QuantityComparator? comparator,
    FhirString? unit,
    FhirUri? system,
    FhirCode? code,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return Quantity(
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
      value: value?.copyWith(
            objectPath: '$newObjectPath.value',
          ) ??
          this.value,
      comparator: comparator?.copyWith(
            objectPath: '$newObjectPath.comparator',
          ) ??
          this.comparator,
      unit: unit?.copyWith(
            objectPath: '$newObjectPath.unit',
          ) ??
          this.unit,
      system: system?.copyWith(
            objectPath: '$newObjectPath.system',
          ) ??
          this.system,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Quantity) {
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
    if (!equalsDeepWithNull(value, o.value)) {
      return false;
    }
    if (!equalsDeepWithNull(comparator, o.comparator)) {
      return false;
    }
    if (!equalsDeepWithNull(unit, o.unit)) {
      return false;
    }
    if (!equalsDeepWithNull(system, o.system)) {
      return false;
    }
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    return true;
  }
}
