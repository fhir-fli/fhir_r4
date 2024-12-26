import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [CodeableConcept]
/// A concept that may be defined by a formal reference to a terminology or
/// ontology or may be provided by text.
class CodeableConcept extends DataType
    implements
        SubjectXActivityDefinition,
        ProductXActivityDefinition,
        ValueXAdministrableProductDefinitionProperty,
        ProductXCarePlanDetail,
        ProductXChargeItem,
        DiagnosisXClaimDiagnosis,
        ProcedureXClaimProcedure,
        LocationXClaimItem,
        LocationXClaimResponseAddItem,
        ItemXClinicalUseDefinitionInteractant,
        TopicXContract,
        TopicXContractTerm,
        EntityXContractValuedItem,
        DiagnosisXCoverageEligibilityRequestDiagnosis,
        CodeXDeviceRequest,
        ValueXDeviceRequestParameter,
        SubjectXEventDefinition,
        ValueXEvidenceReportCharacteristic,
        DefinitionXEvidenceVariableCharacteristic,
        ValueXEvidenceVariableCategory,
        DiagnosisXExplanationOfBenefitDiagnosis,
        ProcedureXExplanationOfBenefitProcedure,
        LocationXExplanationOfBenefitItem,
        LocationXExplanationOfBenefitAddItem,
        StartXGoal,
        DetailXGoalTarget,
        ValueXGroupCharacteristic,
        ModuleXGuidanceResponse,
        ChargeItemXInvoiceLineItem,
        SubjectXLibrary,
        ValueXManufacturedItemDefinitionProperty,
        SubjectXMeasure,
        ItemXMedicationIngredient,
        MedicationXMedicationAdministration,
        StatusReasonXMedicationDispense,
        MedicationXMedicationDispense,
        ItemXMedicationKnowledgeIngredient,
        IndicationXMedicationKnowledgeAdministrationGuidelines,
        CharacteristicXMedicationKnowledgePatientCharacteristics,
        ValueXMedicationKnowledgeDrugCharacteristic,
        MedicationXMedicationRequest,
        AllowedXMedicationRequestSubstitution,
        MedicationXMedicationStatement,
        ValueXMedicinalProductDefinitionCharacteristic,
        ValueXNutritionProductProductCharacteristic,
        ValueXObservation,
        ValueXObservationComponent,
        ValueXPackagedProductDefinitionProperty,
        ValueXParametersParameter,
        SubjectXPlanDefinition,
        DetailXPlanDefinitionTarget,
        SubjectXPlanDefinitionAction,
        SubjectXResearchDefinition,
        SubjectXResearchElementDefinition,
        DefinitionXResearchElementDefinitionCharacteristic,
        AsNeededXServiceRequest,
        FastingStatusXSpecimenCollection,
        AdditiveXSpecimenContainer,
        AdditiveXSpecimenDefinitionAdditive,
        DefaultValueXStructureMapSource,
        SubstanceXSubstanceIngredient,
        ValueXSubstanceDefinitionProperty,
        SubstanceDefinitionXSubstanceDefinitionRelationship,
        ItemXSupplyDeliverySuppliedItem,
        ItemXSupplyRequest,
        ValueXSupplyRequestParameter,
        ValueXTaskInput,
        ValueXTaskOutput,
        SubjectXDataRequirement,
        AsNeededXDosage,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension,
        AgeXPopulation,
        ValueXUsageContext {
  /// Primary constructor for
  /// [CodeableConcept]

  const CodeableConcept({
    super.id,
    super.extension_,
    this.coding,
    this.text,
    super.disallowExtensions,
    super.objectPath = 'CodeableConcept',
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CodeableConcept.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'CodeableConcept';
    return CodeableConcept(
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
      coding: (json['coding'] as List<dynamic>?)
          ?.map<Coding>(
            (v) => Coding.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.coding',
              },
            ),
          )
          .toList(),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
        '$objectPath.text',
      ),
    );
  }

  /// Deserialize [CodeableConcept]
  /// from a [String] or [YamlMap] object
  factory CodeableConcept.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CodeableConcept.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CodeableConcept.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CodeableConcept '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CodeableConcept]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CodeableConcept.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CodeableConcept.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CodeableConcept';

  /// [coding]
  /// A reference to a code defined by a terminology system.
  final List<Coding>? coding;

  /// [text]
  /// A human language representation of the concept as seen/selected/uttered
  /// by the user who entered the data and/or which represents the intended
  /// meaning of the user.
  final FhirString? text;
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
    addField('coding', coding);
    addField('text', text);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  CodeableConcept clone() => throw UnimplementedError();
  @override
  CodeableConcept copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<Coding>? coding,
    FhirString? text,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return CodeableConcept(
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
      coding: coding
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.coding',
                ),
              )
              .toList() ??
          this.coding,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
    );
  }
}
