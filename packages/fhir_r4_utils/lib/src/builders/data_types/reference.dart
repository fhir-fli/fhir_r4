import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show Reference, StringExtensionForFHIR, yamlMapToJson, yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [ReferenceBuilder]
/// A reference from one resource to another.
class ReferenceBuilder extends DataTypeBuilder
    implements
        SubjectXActivityDefinitionBuilder,
        ProductXActivityDefinitionBuilder,
        ProductXCarePlanDetailBuilder,
        ProductXChargeItemBuilder,
        TargetXCitationRelatesToBuilder,
        TargetXCitationRelatesTo1Builder,
        ValueXClaimSupportingInfoBuilder,
        DiagnosisXClaimDiagnosisBuilder,
        ProcedureXClaimProcedureBuilder,
        LocationXClaimAccidentBuilder,
        LocationXClaimItemBuilder,
        LocationXClaimResponseAddItemBuilder,
        ItemXClinicalUseDefinitionInteractantBuilder,
        ContentXCommunicationPayloadBuilder,
        ContentXCommunicationRequestPayloadBuilder,
        TargetXCompositionRelatesToBuilder,
        SourceXConsentBuilder,
        TopicXContractBuilder,
        LegallyBindingXContractBuilder,
        TopicXContractTermBuilder,
        ValueXContractAnswerBuilder,
        EntityXContractValuedItemBuilder,
        ContentXContractFriendlyBuilder,
        ContentXContractLegalBuilder,
        ContentXContractRuleBuilder,
        DiagnosisXCoverageEligibilityRequestDiagnosisBuilder,
        ManufacturerXDeviceDefinitionBuilder,
        CodeXDeviceRequestBuilder,
        SubjectXEventDefinitionBuilder,
        CiteAsXEvidenceBuilder,
        CiteAsXEvidenceReportBuilder,
        ValueXEvidenceReportCharacteristicBuilder,
        TargetXEvidenceReportRelatesToBuilder,
        DefinitionXEvidenceVariableCharacteristicBuilder,
        ValueXExplanationOfBenefitSupportingInfoBuilder,
        DiagnosisXExplanationOfBenefitDiagnosisBuilder,
        ProcedureXExplanationOfBenefitProcedureBuilder,
        LocationXExplanationOfBenefitAccidentBuilder,
        LocationXExplanationOfBenefitItemBuilder,
        LocationXExplanationOfBenefitAddItemBuilder,
        ValueXGroupCharacteristicBuilder,
        NameXImplementationGuidePageBuilder,
        ChargeItemXInvoiceLineItemBuilder,
        SubjectXLibraryBuilder,
        SubjectXMeasureBuilder,
        ItemXMedicationIngredientBuilder,
        MedicationXMedicationAdministrationBuilder,
        StatusReasonXMedicationDispenseBuilder,
        MedicationXMedicationDispenseBuilder,
        ItemXMedicationKnowledgeIngredientBuilder,
        IndicationXMedicationKnowledgeAdministrationGuidelinesBuilder,
        ReportedXMedicationRequestBuilder,
        MedicationXMedicationRequestBuilder,
        MedicationXMedicationStatementBuilder,
        ValueXParametersParameterBuilder,
        SubjectXPlanDefinitionBuilder,
        SubjectXPlanDefinitionActionBuilder,
        AnswerXQuestionnaireEnableWhenBuilder,
        ValueXQuestionnaireAnswerOptionBuilder,
        ValueXQuestionnaireInitialBuilder,
        ValueXQuestionnaireResponseAnswerBuilder,
        SubjectXResearchDefinitionBuilder,
        SubjectXResearchElementDefinitionBuilder,
        AdditiveXSpecimenContainerBuilder,
        AdditiveXSpecimenDefinitionAdditiveBuilder,
        DefaultValueXStructureMapSourceBuilder,
        SubstanceXSubstanceIngredientBuilder,
        SubstanceDefinitionXSubstanceDefinitionRelationshipBuilder,
        ItemXSupplyDeliverySuppliedItemBuilder,
        ItemXSupplyRequestBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        AuthorXAnnotationBuilder,
        SubjectXDataRequirementBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder,
        TimingXTriggerDefinitionBuilder,
        ValueXUsageContextBuilder {
  /// Primary constructor for
  /// [ReferenceBuilder]

  ReferenceBuilder({
    super.id,
    super.extension_,
    this.reference,
    this.type,
    this.identifier,
    this.display,
    super.disallowExtensions,
    super.objectPath = 'ReferenceBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ReferenceBuilder.empty() => ReferenceBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ReferenceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Reference';
    return ReferenceBuilder(
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
      reference: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'reference',
        FhirStringBuilder.fromJson,
        '$objectPath.reference',
      ),
      type: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'type',
        FhirUriBuilder.fromJson,
        '$objectPath.type',
      ),
      identifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'identifier',
        IdentifierBuilder.fromJson,
        '$objectPath.identifier',
      ),
      display: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'display',
        FhirStringBuilder.fromJson,
        '$objectPath.display',
      ),
    );
  }

  /// Deserialize [ReferenceBuilder]
  /// from a [String] or [YamlMap] object
  factory ReferenceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ReferenceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ReferenceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ReferenceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ReferenceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ReferenceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ReferenceBuilder.fromJson(json);
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
  FhirStringBuilder? reference;

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
  FhirUriBuilder? type;

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
  IdentifierBuilder? identifier;

  /// [display]
  /// Plain text narrative that identifies the resource in addition to the
  /// resource reference.
  FhirStringBuilder? display;

  /// Converts a [ReferenceBuilder]
  /// to [Reference]
  @override
  Reference build() => Reference.fromJson(toJson());

  /// Converts a [ReferenceBuilder]
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
    addField('reference', reference);
    addField('type', type);
    addField('identifier', identifier);
    addField('display', display);
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
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reference':
        {
          if (child is FhirStringBuilder) {
            reference = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                reference = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is FhirUriBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                type = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is IdentifierBuilder) {
            identifier = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'display':
        {
          if (child is FhirStringBuilder) {
            display = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                display = converted;
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
      case 'reference':
        return ['FhirStringBuilder'];
      case 'type':
        return ['FhirUriBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'display':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ReferenceBuilder]
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
      case 'reference':
        {
          reference = FhirStringBuilder.empty();
          return;
        }
      case 'type':
        {
          type = FhirUriBuilder.empty();
          return;
        }
      case 'identifier':
        {
          identifier = IdentifierBuilder.empty();
          return;
        }
      case 'display':
        {
          display = FhirStringBuilder.empty();
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
    bool reference = false,
    bool type = false,
    bool identifier = false,
    bool display = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (reference) this.reference = null;
    if (type) this.type = null;
    if (identifier) this.identifier = null;
    if (display) this.display = null;
  }

  @override
  ReferenceBuilder clone() => throw UnimplementedError();
  @override
  ReferenceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    FhirStringBuilder? reference,
    FhirUriBuilder? type,
    IdentifierBuilder? identifier,
    FhirStringBuilder? display,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = ReferenceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      reference: reference ?? this.reference,
      type: type ?? this.type,
      identifier: identifier ?? this.identifier,
      display: display ?? this.display,
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
    if (o is! ReferenceBuilder) {
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
