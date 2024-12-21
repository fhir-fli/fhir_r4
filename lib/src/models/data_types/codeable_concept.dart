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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CodeableConcept.fromJson(
    Map<String, dynamic> json,
  ) {
    return CodeableConcept(
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
      coding: json['coding'] != null
          ? (json['coding'] as List<dynamic>)
              .map<Coding>(
                (v) => Coding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      text: (json['text'] != null || json['_text'] != null)
          ? FhirString.fromJson({
              'value': json['text'],
              '_value': json['_text'],
            })
          : null,
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
    if (json is Map<String, Object?>) {
      return CodeableConcept.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (coding != null && coding!.isNotEmpty) {
      json['coding'] = coding!.map((e) => e.toJson()).toList();
    }

    if (text != null) {
      addField('text', text);
    }

    return json;
  }

  @override
  CodeableConcept clone() => throw UnimplementedError();
  @override
  CodeableConcept copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<Coding>? coding,
    FhirString? text,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return CodeableConcept(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      coding: coding ?? this.coding,
      text: text ?? this.text,
    );
  }
}
