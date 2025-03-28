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
    super.objectPath = 'Reference',
  });

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Reference.empty() => const Reference();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Reference.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Reference';
    return Reference(
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
      reference: JsonParser.parsePrimitive<FhirString>(
        json,
        'reference',
        FhirString.fromJson,
        '$objectPath.reference',
      ),
      type: JsonParser.parsePrimitive<FhirUri>(
        json,
        'type',
        FhirUri.fromJson,
        '$objectPath.type',
      ),
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
        '$objectPath.identifier',
      ),
      display: JsonParser.parsePrimitive<FhirString>(
        json,
        'display',
        FhirString.fromJson,
        '$objectPath.display',
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reference':
        {
          if (child is FhirString) {
            return copyWith(reference: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is FhirUri) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is Identifier) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'display':
        {
          if (child is FhirString) {
            return copyWith(display: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'reference':
        return ['FhirString'];
      case 'type':
        return ['FhirUri'];
      case 'identifier':
        return ['Identifier'];
      case 'display':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [Reference]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  Reference createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'reference':
        {
          return copyWith(
            reference: FhirString.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: FhirUri.empty(),
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: Identifier.empty(),
          );
        }
      case 'display':
        {
          return copyWith(
            display: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  Reference clear({
    bool id = false,
    bool extension_ = false,
    bool reference = false,
    bool type = false,
    bool identifier = false,
    bool display = false,
  }) {
    return Reference(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      reference: reference ? null : this.reference,
      type: type ? null : this.type,
      identifier: identifier ? null : this.identifier,
      display: display ? null : this.display,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return Reference(
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
      reference: reference?.copyWith(
            objectPath: '$newObjectPath.reference',
          ) ??
          this.reference,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      identifier: identifier?.copyWith(
            objectPath: '$newObjectPath.identifier',
          ) ??
          this.identifier,
      display: display?.copyWith(
            objectPath: '$newObjectPath.display',
          ) ??
          this.display,
    );
  }

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
