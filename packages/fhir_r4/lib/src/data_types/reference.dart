import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'reference.g.dart';

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
      reference: JsonParser.parsePrimitive<FhirString>(
        json,
        'reference',
        FhirString.fromJson,
      ),
      type: JsonParser.parsePrimitive<FhirUri>(
        json,
        'type',
        FhirUri.fromJson,
      ),
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
      ),
      display: JsonParser.parsePrimitive<FhirString>(
        json,
        'display',
        FhirString.fromJson,
      ),
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
    if (json is Map<String, dynamic>) {
      return Reference.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
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
      'reference',
      reference,
    );
    addField(
      'type',
      type,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'display',
      display,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'reference',
      'type',
      'identifier',
      'display',
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
      case 'reference':
        if (reference != null) {
          fields.add(reference!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
        }
      case 'display':
        if (display != null) {
          fields.add(display!);
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
  Reference clone() => copyWith();

  /// Copy function for [Reference]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ReferenceCopyWith<Reference> get copyWith =>
      _$ReferenceCopyWithImpl<Reference>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Reference) {
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
    if (!equalsDeepWithNull(
      reference,
      o.reference,
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
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      display,
      o.display,
    )) {
      return false;
    }
    return true;
  }
}
