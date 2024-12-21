import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Reference]
/// A reference from one resource to another.
class Reference extends DataType
    implements
        SubjectXActivityDefinition,
        ProductXActivityDefinition,
        ProductXCarePlanDetail,
        ProductXChargeItem,
        TargetXCitationRelatesTo,
        TargetXCitationRelatesTo1,
        ValueXClaimSupportingInfo,
        DiagnosisXClaimDiagnosis,
        ProcedureXClaimProcedure,
        LocationXClaimAccident,
        LocationXClaimItem,
        LocationXClaimResponseAddItem,
        ItemXClinicalUseDefinitionInteractant,
        ContentXCommunicationPayload,
        ContentXCommunicationRequestPayload,
        TargetXCompositionRelatesTo,
        SourceXConsent,
        TopicXContract,
        LegallyBindingXContract,
        TopicXContractTerm,
        ValueXContractAnswer,
        EntityXContractValuedItem,
        ContentXContractFriendly,
        ContentXContractLegal,
        ContentXContractRule,
        DiagnosisXCoverageEligibilityRequestDiagnosis,
        ManufacturerXDeviceDefinition,
        CodeXDeviceRequest,
        SubjectXEventDefinition,
        CiteAsXEvidence,
        CiteAsXEvidenceReport,
        ValueXEvidenceReportCharacteristic,
        TargetXEvidenceReportRelatesTo,
        DefinitionXEvidenceVariableCharacteristic,
        ValueXExplanationOfBenefitSupportingInfo,
        DiagnosisXExplanationOfBenefitDiagnosis,
        ProcedureXExplanationOfBenefitProcedure,
        LocationXExplanationOfBenefitAccident,
        LocationXExplanationOfBenefitItem,
        LocationXExplanationOfBenefitAddItem,
        ValueXGroupCharacteristic,
        NameXImplementationGuidePage,
        ChargeItemXInvoiceLineItem,
        SubjectXLibrary,
        SubjectXMeasure,
        ItemXMedicationIngredient,
        MedicationXMedicationAdministration,
        StatusReasonXMedicationDispense,
        MedicationXMedicationDispense,
        ItemXMedicationKnowledgeIngredient,
        IndicationXMedicationKnowledgeAdministrationGuidelines,
        ReportedXMedicationRequest,
        MedicationXMedicationRequest,
        MedicationXMedicationStatement,
        ValueXParametersParameter,
        SubjectXPlanDefinition,
        SubjectXPlanDefinitionAction,
        AnswerXQuestionnaireEnableWhen,
        ValueXQuestionnaireAnswerOption,
        ValueXQuestionnaireInitial,
        ValueXQuestionnaireResponseAnswer,
        SubjectXResearchDefinition,
        SubjectXResearchElementDefinition,
        AdditiveXSpecimenContainer,
        AdditiveXSpecimenDefinitionAdditive,
        DefaultValueXStructureMapSource,
        SubstanceXSubstanceIngredient,
        SubstanceDefinitionXSubstanceDefinitionRelationship,
        ItemXSupplyDeliverySuppliedItem,
        ItemXSupplyRequest,
        ValueXTaskInput,
        ValueXTaskOutput,
        AuthorXAnnotation,
        SubjectXDataRequirement,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension,
        TimingXTriggerDefinition,
        ValueXUsageContext {
  /// Primary constructor for
  /// [Reference]

  const Reference({
    super.id,
    super.extension_,
    this.reference,
    this.type,
    this.identifier,
    this.display,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Reference.fromJson(
    Map<String, dynamic> json,
  ) {
    return Reference(
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
      reference: (json['reference'] != null || json['_reference'] != null)
          ? FhirString.fromJson({
              'value': json['reference'],
              '_value': json['_reference'],
            })
          : null,
      type: (json['type'] != null || json['_type'] != null)
          ? FhirUri.fromJson({
              'value': json['type'],
              '_value': json['_type'],
            })
          : null,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(
              json['identifier'] as Map<String, dynamic>,
            )
          : null,
      display: (json['display'] != null || json['_display'] != null)
          ? FhirString.fromJson({
              'value': json['display'],
              '_value': json['_display'],
            })
          : null,
    );
  }

  /// Deserialize [Reference]
  /// from a [String] or [YamlMap] object
  factory Reference.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Reference.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Reference.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Reference '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Reference]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Reference.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Reference.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Reference';

  /// [reference]
  /// A reference to a location at which the other resource is found. The
  /// reference may be a relative reference, in which case it is relative to
  /// the service base URL, or an absolute URL that resolves to the location
  /// where the resource is found. The reference may be version specific or
  /// not. If the reference is not to a FHIR RESTful server, then it should
  /// be assumed to be version specific. Internal fragment references (start
  /// with '#') refer to contained resources.
  final FhirString? reference;

  /// [type]
  /// The expected type of the target of the reference. If both
  /// Reference.type and Reference.reference are populated and
  /// Reference.reference is a FHIR URL, both SHALL be consistent.
  ///
  /// The type is the Canonical URL of Resource Definition that is the type
  /// this reference refers to. References are URLs that are relative to
  /// http://hl7.org/fhir/StructureDefinition/ e.g. "Patient" is a reference
  /// to http://hl7.org/fhir/StructureDefinition/Patient. Absolute URLs are
  /// only allowed for logical models (and can only be used in references in
  /// logical models, not resources).
  final FhirUri? type;

  /// [identifier]
  /// An identifier for the target resource. This is used when there is no
  /// way to reference the other resource directly, either because the entity
  /// it represents is not available through a FHIR server, or because there
  /// is no way for the author of the resource to convert a known identifier
  /// to an actual location. There is no requirement that a
  /// Reference.identifier point to something that is actually exposed as a
  /// FHIR instance, but it SHALL point to a business concept that would be
  /// expected to be exposed as a FHIR instance, and that instance would need
  /// to be of a FHIR resource type allowed by the reference.
  final Identifier? identifier;

  /// [display]
  /// Plain text narrative that identifies the resource in addition to the
  /// resource reference.
  final FhirString? display;
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

    if (reference != null) {
      addField('reference', reference);
    }

    if (type != null) {
      addField('type', type);
    }

    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }

    if (display != null) {
      addField('display', display);
    }

    return json;
  }

  @override
  Reference clone() => throw UnimplementedError();
  @override
  Reference copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? reference,
    FhirUri? type,
    Identifier? identifier,
    FhirString? display,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Reference(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      reference: reference ?? this.reference,
      type: type ?? this.type,
      identifier: identifier ?? this.identifier,
      display: display ?? this.display,
    );
  }
}
