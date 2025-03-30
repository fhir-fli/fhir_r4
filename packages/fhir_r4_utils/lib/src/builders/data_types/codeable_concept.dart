import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show yamlMapToJson, yamlToJson, StringExtensionForFHIR, CodeableConcept;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [CodeableConceptBuilder]
/// A concept that may be defined by a formal reference to a terminology or
/// ontology or may be provided by text.
class CodeableConceptBuilder extends DataTypeBuilder
    implements
        SubjectXActivityDefinitionBuilder,
        ProductXActivityDefinitionBuilder,
        ValueXAdministrableProductDefinitionPropertyBuilder,
        ProductXCarePlanDetailBuilder,
        ProductXChargeItemBuilder,
        DiagnosisXClaimDiagnosisBuilder,
        ProcedureXClaimProcedureBuilder,
        LocationXClaimItemBuilder,
        LocationXClaimResponseAddItemBuilder,
        ItemXClinicalUseDefinitionInteractantBuilder,
        TopicXContractBuilder,
        TopicXContractTermBuilder,
        EntityXContractValuedItemBuilder,
        DiagnosisXCoverageEligibilityRequestDiagnosisBuilder,
        CodeXDeviceRequestBuilder,
        ValueXDeviceRequestParameterBuilder,
        SubjectXEventDefinitionBuilder,
        ValueXEvidenceReportCharacteristicBuilder,
        DefinitionXEvidenceVariableCharacteristicBuilder,
        ValueXEvidenceVariableCategoryBuilder,
        DiagnosisXExplanationOfBenefitDiagnosisBuilder,
        ProcedureXExplanationOfBenefitProcedureBuilder,
        LocationXExplanationOfBenefitItemBuilder,
        LocationXExplanationOfBenefitAddItemBuilder,
        StartXGoalBuilder,
        DetailXGoalTargetBuilder,
        ValueXGroupCharacteristicBuilder,
        ModuleXGuidanceResponseBuilder,
        ChargeItemXInvoiceLineItemBuilder,
        SubjectXLibraryBuilder,
        ValueXManufacturedItemDefinitionPropertyBuilder,
        SubjectXMeasureBuilder,
        ItemXMedicationIngredientBuilder,
        MedicationXMedicationAdministrationBuilder,
        StatusReasonXMedicationDispenseBuilder,
        MedicationXMedicationDispenseBuilder,
        ItemXMedicationKnowledgeIngredientBuilder,
        IndicationXMedicationKnowledgeAdministrationGuidelinesBuilder,
        CharacteristicXMedicationKnowledgePatientCharacteristicsBuilder,
        ValueXMedicationKnowledgeDrugCharacteristicBuilder,
        MedicationXMedicationRequestBuilder,
        AllowedXMedicationRequestSubstitutionBuilder,
        MedicationXMedicationStatementBuilder,
        ValueXMedicinalProductDefinitionCharacteristicBuilder,
        ValueXNutritionProductProductCharacteristicBuilder,
        ValueXObservationBuilder,
        ValueXObservationComponentBuilder,
        ValueXPackagedProductDefinitionPropertyBuilder,
        ValueXParametersParameterBuilder,
        SubjectXPlanDefinitionBuilder,
        DetailXPlanDefinitionTargetBuilder,
        SubjectXPlanDefinitionActionBuilder,
        SubjectXResearchDefinitionBuilder,
        SubjectXResearchElementDefinitionBuilder,
        DefinitionXResearchElementDefinitionCharacteristicBuilder,
        AsNeededXServiceRequestBuilder,
        FastingStatusXSpecimenCollectionBuilder,
        AdditiveXSpecimenContainerBuilder,
        AdditiveXSpecimenDefinitionAdditiveBuilder,
        DefaultValueXStructureMapSourceBuilder,
        SubstanceXSubstanceIngredientBuilder,
        ValueXSubstanceDefinitionPropertyBuilder,
        SubstanceDefinitionXSubstanceDefinitionRelationshipBuilder,
        ItemXSupplyDeliverySuppliedItemBuilder,
        ItemXSupplyRequestBuilder,
        ValueXSupplyRequestParameterBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        SubjectXDataRequirementBuilder,
        AsNeededXDosageBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder,
        AgeXPopulationBuilder,
        ValueXUsageContextBuilder {
  /// Primary constructor for
  /// [CodeableConceptBuilder]

  CodeableConceptBuilder({
    super.id,
    super.extension_,
    this.coding,
    this.text,
    super.disallowExtensions,
    super.objectPath = 'CodeableConceptBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory CodeableConceptBuilder.empty() => CodeableConceptBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CodeableConceptBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'CodeableConcept';
    return CodeableConceptBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      coding: (json['coding'] as List<dynamic>?)
          ?.map<CodingBuilder>(
            (v) => CodingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.coding',
              },
            ),
          )
          .toList(),
      text: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'text',
        FhirStringBuilder.fromJson,
        '$objectPath.text',
      ),
    );
  }

  /// Deserialize [CodeableConceptBuilder]
  /// from a [String] or [YamlMap] object
  factory CodeableConceptBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CodeableConceptBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CodeableConceptBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CodeableConceptBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CodeableConceptBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CodeableConceptBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CodeableConceptBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CodeableConcept';

  /// [coding]
  /// A reference to a code defined by a terminology system.
  List<CodingBuilder>? coding;

  /// [text]
  /// A human language representation of the concept as seen/selected/uttered
  /// by the user who entered the data and/or which represents the intended
  /// meaning of the user.
  FhirStringBuilder? text;

  /// Converts a [CodeableConceptBuilder]
  /// to [CodeableConcept]
  @override
  CodeableConcept build() => CodeableConcept.fromJson(toJson());

  /// Converts a [CodeableConceptBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('coding', coding);
    addField('text', text);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'coding',
      'text',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'coding':
        if (coding != null) {
          fields.addAll(coding!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'coding':
        {
          if (child is List<CodingBuilder>) {
            // Replace or create new list
            coding = child;
            return;
          } else if (child is CodingBuilder) {
            // Add single element to existing list or create new list
            coding = [...(coding ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is FhirStringBuilder) {
            text = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                text = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'coding':
        return ['CodingBuilder'];
      case 'text':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CodeableConceptBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'coding':
        {
          coding = <CodingBuilder>[];
          return;
        }
      case 'text':
        {
          text = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool coding = false,
    bool text = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (coding) this.coding = null;
    if (text) this.text = null;
  }

  @override
  CodeableConceptBuilder clone() => throw UnimplementedError();
  @override
  CodeableConceptBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<CodingBuilder>? coding,
    FhirStringBuilder? text,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = CodeableConceptBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      coding: coding ?? this.coding,
      text: text ?? this.text,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! CodeableConceptBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<CodingBuilder>(
      coding,
      o.coding,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    return true;
  }
}
