import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        Consent,
        ConsentActor,
        ConsentData,
        ConsentPolicy,
        ConsentProvision,
        ConsentVerification,
        R4ResourceType,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [ConsentBuilder]
/// A record of a healthcare consumer’s choices, which permits or denies
/// identified recipient(s) or recipient role(s) to perform one or more
/// actions within a given policy context, for specific purposes and
/// periods of time.
class ConsentBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ConsentBuilder]

  ConsentBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
    this.scope,
    this.category,
    this.patient,
    this.dateTime,
    this.performer,
    this.organization,
    this.sourceX,
    this.policy,
    this.policyRule,
    this.verification,
    this.provision,
  }) : super(
          objectPath: 'Consent',
          resourceType: R4ResourceType.Consent,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ConsentBuilder.empty() => ConsentBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Consent';
    return ConsentBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<ConsentStateBuilder>(
        json,
        'status',
        ConsentStateBuilder.fromJson,
        '$objectPath.status',
      ),
      scope: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'scope',
        CodeableConceptBuilder.fromJson,
        '$objectPath.scope',
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
      patient: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'patient',
        ReferenceBuilder.fromJson,
        '$objectPath.patient',
      ),
      dateTime: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'dateTime',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.dateTime',
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performer',
              },
            ),
          )
          .toList(),
      organization: (json['organization'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.organization',
              },
            ),
          )
          .toList(),
      sourceX: JsonParser.parsePolymorphic<SourceXConsentBuilder>(
        json,
        {
          'sourceAttachment': AttachmentBuilder.fromJson,
          'sourceReference': ReferenceBuilder.fromJson,
        },
        objectPath,
      ),
      policy: (json['policy'] as List<dynamic>?)
          ?.map<ConsentPolicyBuilder>(
            (v) => ConsentPolicyBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.policy',
              },
            ),
          )
          .toList(),
      policyRule: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'policyRule',
        CodeableConceptBuilder.fromJson,
        '$objectPath.policyRule',
      ),
      verification: (json['verification'] as List<dynamic>?)
          ?.map<ConsentVerificationBuilder>(
            (v) => ConsentVerificationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.verification',
              },
            ),
          )
          .toList(),
      provision: JsonParser.parseObject<ConsentProvisionBuilder>(
        json,
        'provision',
        ConsentProvisionBuilder.fromJson,
        '$objectPath.provision',
      ),
    );
  }

  /// Deserialize [ConsentBuilder]
  /// from a [String] or [YamlMap] object
  factory ConsentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConsentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConsentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConsentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConsentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConsentBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Consent';

  /// [identifier]
  /// Unique identifier for this copy of the Consent Statement.
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// Indicates the current state of this consent.
  ConsentStateBuilder? status;

  /// [scope]
  /// A selector of the type of consent being presented: ADR, Privacy,
  /// Treatment, Research. This list is now extensible.
  CodeableConceptBuilder? scope;

  /// [category]
  /// A classification of the type of consents found in the statement. This
  /// element supports indexing and retrieval of consent statements.
  List<CodeableConceptBuilder>? category;

  /// [patient]
  /// The patient/healthcare consumer to whom this consent applies.
  ReferenceBuilder? patient;

  /// [dateTime]
  /// When this Consent was issued / created / indexed.
  FhirDateTimeBuilder? dateTime;

  /// [performer]
  /// Either the Grantor, which is the entity responsible for granting the
  /// rights listed in a Consent Directive or the Grantee, which is the
  /// entity responsible for complying with the Consent Directive, including
  /// any obligations or limitations on authorizations and enforcement of
  /// prohibitions.
  List<ReferenceBuilder>? performer;

  /// [organization]
  /// The organization that manages the consent, and the framework within
  /// which it is executed.
  List<ReferenceBuilder>? organization;

  /// [sourceX]
  /// The source on which this consent statement is based. The source might
  /// be a scanned original paper form, or a reference to a consent that
  /// links back to such a source, a reference to a document repository (e.g.
  /// XDS) that stores the original consent document.
  SourceXConsentBuilder? sourceX;

  /// Getter for [sourceAttachment] as a AttachmentBuilder
  AttachmentBuilder? get sourceAttachment => sourceX?.isAs<AttachmentBuilder>();

  /// Getter for [sourceReference] as a ReferenceBuilder
  ReferenceBuilder? get sourceReference => sourceX?.isAs<ReferenceBuilder>();

  /// [policy]
  /// The references to the policies that are included in this consent scope.
  /// Policies may be organizational, but are often defined jurisdictionally,
  /// or in law.
  List<ConsentPolicyBuilder>? policy;

  /// [policyRule]
  /// A reference to the specific base computable regulation or policy.
  CodeableConceptBuilder? policyRule;

  /// [verification]
  /// Whether a treatment instruction (e.g. artificial respiration yes or no)
  /// was verified with the patient, his/her family or another authorized
  /// person.
  List<ConsentVerificationBuilder>? verification;

  /// [provision]
  /// An exception to the base policy of this consent. An exception can be an
  /// addition or removal of access permissions.
  ConsentProvisionBuilder? provision;

  /// Converts a [ConsentBuilder]
  /// to [Consent]
  @override
  Consent build() => Consent.fromJson(toJson());

  /// Converts a [ConsentBuilder]
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
    addField('status', status);
    addField('scope', scope);
    addField('category', category);
    addField('patient', patient);
    addField('dateTime', dateTime);
    addField('performer', performer);
    addField('organization', organization);
    if (sourceX != null) {
      final fhirType = sourceX!.fhirType;
      addField('source${fhirType.capitalize()}', sourceX);
    }

    addField('policy', policy);
    addField('policyRule', policyRule);
    addField('verification', verification);
    addField('provision', provision);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
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
      'status',
      'scope',
      'category',
      'patient',
      'dateTime',
      'performer',
      'organization',
      'sourceX',
      'policy',
      'policyRule',
      'verification',
      'provision',
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
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'scope':
        if (scope != null) {
          fields.add(scope!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'patient':
        if (patient != null) {
          fields.add(patient!);
        }
      case 'dateTime':
        if (dateTime != null) {
          fields.add(dateTime!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'organization':
        if (organization != null) {
          fields.addAll(organization!);
        }
      case 'source':
        if (sourceX != null) {
          fields.add(sourceX!);
        }
      case 'sourceX':
        if (sourceX != null) {
          fields.add(sourceX!);
        }
      case 'sourceAttachment':
        if (sourceX is AttachmentBuilder) {
          fields.add(sourceX!);
        }
      case 'sourceReference':
        if (sourceX is ReferenceBuilder) {
          fields.add(sourceX!);
        }
      case 'policy':
        if (policy != null) {
          fields.addAll(policy!);
        }
      case 'policyRule':
        if (policyRule != null) {
          fields.add(policyRule!);
        }
      case 'verification':
        if (verification != null) {
          fields.addAll(verification!);
        }
      case 'provision':
        if (provision != null) {
          fields.add(provision!);
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
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                implicitRules = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = CommonLanguagesBuilder(stringValue);
                language = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [
              ...(contained ?? []),
              child,
            ];
            return;
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
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [
              ...(identifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is ConsentStateBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ConsentStateBuilder(stringValue);
                status = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'scope':
        {
          if (child is CodeableConceptBuilder) {
            scope = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'category':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            category = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            category = [
              ...(category ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'patient':
        {
          if (child is ReferenceBuilder) {
            patient = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dateTime':
        {
          if (child is FhirDateTimeBuilder) {
            dateTime = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                dateTime = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performer':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            performer = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            performer = [
              ...(performer ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'organization':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            organization = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            organization = [
              ...(organization ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sourceX':
        {
          if (child is SourceXConsentBuilder) {
            sourceX = child;
            return;
          } else {
            if (child is AttachmentBuilder) {
              sourceX = child;
              return;
            }
            if (child is ReferenceBuilder) {
              sourceX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'sourceAttachment':
        {
          if (child is AttachmentBuilder) {
            sourceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sourceReference':
        {
          if (child is ReferenceBuilder) {
            sourceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'policy':
        {
          if (child is List<ConsentPolicyBuilder>) {
            // Replace or create new list
            policy = child;
            return;
          } else if (child is ConsentPolicyBuilder) {
            // Add single element to existing list or create new list
            policy = [
              ...(policy ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'policyRule':
        {
          if (child is CodeableConceptBuilder) {
            policyRule = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'verification':
        {
          if (child is List<ConsentVerificationBuilder>) {
            // Replace or create new list
            verification = child;
            return;
          } else if (child is ConsentVerificationBuilder) {
            // Add single element to existing list or create new list
            verification = [
              ...(verification ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'provision':
        {
          if (child is ConsentProvisionBuilder) {
            provision = child;
            return;
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
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'scope':
        return ['CodeableConceptBuilder'];
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'patient':
        return ['ReferenceBuilder'];
      case 'dateTime':
        return ['FhirDateTimeBuilder'];
      case 'performer':
        return ['ReferenceBuilder'];
      case 'organization':
        return ['ReferenceBuilder'];
      case 'source':
      case 'sourceX':
        return [
          'AttachmentBuilder',
          'ReferenceBuilder',
        ];
      case 'sourceAttachment':
        return ['AttachmentBuilder'];
      case 'sourceReference':
        return ['ReferenceBuilder'];
      case 'policy':
        return ['ConsentPolicyBuilder'];
      case 'policyRule':
        return ['CodeableConceptBuilder'];
      case 'verification':
        return ['ConsentVerificationBuilder'];
      case 'provision':
        return ['ConsentProvisionBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConsentBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'status':
        {
          status = ConsentStateBuilder.empty();
          return;
        }
      case 'scope':
        {
          scope = CodeableConceptBuilder.empty();
          return;
        }
      case 'category':
        {
          category = <CodeableConceptBuilder>[];
          return;
        }
      case 'patient':
        {
          patient = ReferenceBuilder.empty();
          return;
        }
      case 'dateTime':
        {
          dateTime = FhirDateTimeBuilder.empty();
          return;
        }
      case 'performer':
        {
          performer = <ReferenceBuilder>[];
          return;
        }
      case 'organization':
        {
          organization = <ReferenceBuilder>[];
          return;
        }
      case 'source':
      case 'sourceX':
      case 'sourceAttachment':
        {
          sourceX = AttachmentBuilder.empty();
          return;
        }
      case 'sourceReference':
        {
          sourceX = ReferenceBuilder.empty();
          return;
        }
      case 'policy':
        {
          policy = <ConsentPolicyBuilder>[];
          return;
        }
      case 'policyRule':
        {
          policyRule = CodeableConceptBuilder.empty();
          return;
        }
      case 'verification':
        {
          verification = <ConsentVerificationBuilder>[];
          return;
        }
      case 'provision':
        {
          provision = ConsentProvisionBuilder.empty();
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
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool status = false,
    bool scope = false,
    bool category = false,
    bool patient = false,
    bool dateTime = false,
    bool performer = false,
    bool organization = false,
    bool source = false,
    bool policy = false,
    bool policyRule = false,
    bool verification = false,
    bool provision = false,
  }) {
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (identifier) this.identifier = null;
    if (status) this.status = null;
    if (scope) this.scope = null;
    if (category) this.category = null;
    if (patient) this.patient = null;
    if (dateTime) this.dateTime = null;
    if (performer) this.performer = null;
    if (organization) this.organization = null;
    if (source) sourceX = null;
    if (policy) this.policy = null;
    if (policyRule) this.policyRule = null;
    if (verification) this.verification = null;
    if (provision) this.provision = null;
  }

  @override
  ConsentBuilder clone() => throw UnimplementedError();
  @override
  ConsentBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    ConsentStateBuilder? status,
    CodeableConceptBuilder? scope,
    List<CodeableConceptBuilder>? category,
    ReferenceBuilder? patient,
    FhirDateTimeBuilder? dateTime,
    List<ReferenceBuilder>? performer,
    List<ReferenceBuilder>? organization,
    SourceXConsentBuilder? sourceX,
    List<ConsentPolicyBuilder>? policy,
    CodeableConceptBuilder? policyRule,
    List<ConsentVerificationBuilder>? verification,
    ConsentProvisionBuilder? provision,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ConsentBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      scope: scope ?? this.scope,
      category: category ?? this.category,
      patient: patient ?? this.patient,
      dateTime: dateTime ?? this.dateTime,
      performer: performer ?? this.performer,
      organization: organization ?? this.organization,
      sourceX: sourceX ?? this.sourceX,
      policy: policy ?? this.policy,
      policyRule: policyRule ?? this.policyRule,
      verification: verification ?? this.verification,
      provision: provision ?? this.provision,
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
    if (o is! ConsentBuilder) {
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
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      scope,
      o.scope,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      patient,
      o.patient,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dateTime,
      o.dateTime,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      organization,
      o.organization,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sourceX,
      o.sourceX,
    )) {
      return false;
    }
    if (!listEquals<ConsentPolicyBuilder>(
      policy,
      o.policy,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      policyRule,
      o.policyRule,
    )) {
      return false;
    }
    if (!listEquals<ConsentVerificationBuilder>(
      verification,
      o.verification,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      provision,
      o.provision,
    )) {
      return false;
    }
    return true;
  }
}

/// [ConsentPolicyBuilder]
/// The references to the policies that are included in this consent scope.
/// Policies may be organizational, but are often defined jurisdictionally,
/// or in law.
class ConsentPolicyBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ConsentPolicyBuilder]

  ConsentPolicyBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.authority,
    this.uri,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Consent.policy',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ConsentPolicyBuilder.empty() => ConsentPolicyBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentPolicyBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Consent.policy';
    return ConsentPolicyBuilder(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      authority: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'authority',
        FhirUriBuilder.fromJson,
        '$objectPath.authority',
      ),
      uri: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'uri',
        FhirUriBuilder.fromJson,
        '$objectPath.uri',
      ),
    );
  }

  /// Deserialize [ConsentPolicyBuilder]
  /// from a [String] or [YamlMap] object
  factory ConsentPolicyBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConsentPolicyBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConsentPolicyBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConsentPolicyBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConsentPolicyBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentPolicyBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConsentPolicyBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ConsentPolicy';

  /// [authority]
  /// Entity or Organization having regulatory jurisdiction or accountability
  /// for enforcing policies pertaining to Consent Directives.
  FhirUriBuilder? authority;

  /// [uri]
  /// The references to the policies that are included in this consent scope.
  /// Policies may be organizational, but are often defined jurisdictionally,
  /// or in law.
  FhirUriBuilder? uri;

  /// Converts a [ConsentPolicyBuilder]
  /// to [ConsentPolicy]
  @override
  ConsentPolicy build() => ConsentPolicy.fromJson(toJson());

  /// Converts a [ConsentPolicyBuilder]
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
    addField('modifierExtension', modifierExtension);
    addField('authority', authority);
    addField('uri', uri);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'authority',
      'uri',
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'authority':
        if (authority != null) {
          fields.add(authority!);
        }
      case 'uri':
        if (uri != null) {
          fields.add(uri!);
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
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'authority':
        {
          if (child is FhirUriBuilder) {
            authority = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                authority = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'uri':
        {
          if (child is FhirUriBuilder) {
            uri = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                uri = converted;
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
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'authority':
        return ['FhirUriBuilder'];
      case 'uri':
        return ['FhirUriBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConsentPolicyBuilder]
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
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'authority':
        {
          authority = FhirUriBuilder.empty();
          return;
        }
      case 'uri':
        {
          uri = FhirUriBuilder.empty();
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
    bool modifierExtension = false,
    bool authority = false,
    bool uri = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (authority) this.authority = null;
    if (uri) this.uri = null;
  }

  @override
  ConsentPolicyBuilder clone() => throw UnimplementedError();
  @override
  ConsentPolicyBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirUriBuilder? authority,
    FhirUriBuilder? uri,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ConsentPolicyBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      authority: authority ?? this.authority,
      uri: uri ?? this.uri,
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
    if (o is! ConsentPolicyBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      authority,
      o.authority,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      uri,
      o.uri,
    )) {
      return false;
    }
    return true;
  }
}

/// [ConsentVerificationBuilder]
/// Whether a treatment instruction (e.g. artificial respiration yes or no)
/// was verified with the patient, his/her family or another authorized
/// person.
class ConsentVerificationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ConsentVerificationBuilder]

  ConsentVerificationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.verified,
    this.verifiedWith,
    this.verificationDate,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Consent.verification',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ConsentVerificationBuilder.empty() => ConsentVerificationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentVerificationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Consent.verification';
    return ConsentVerificationBuilder(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      verified: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'verified',
        FhirBooleanBuilder.fromJson,
        '$objectPath.verified',
      ),
      verifiedWith: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'verifiedWith',
        ReferenceBuilder.fromJson,
        '$objectPath.verifiedWith',
      ),
      verificationDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'verificationDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.verificationDate',
      ),
    );
  }

  /// Deserialize [ConsentVerificationBuilder]
  /// from a [String] or [YamlMap] object
  factory ConsentVerificationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConsentVerificationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConsentVerificationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConsentVerificationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConsentVerificationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentVerificationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConsentVerificationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ConsentVerification';

  /// [verified]
  /// Has the instruction been verified.
  FhirBooleanBuilder? verified;

  /// [verifiedWith]
  /// Who verified the instruction (Patient, Relative or other Authorized
  /// Person).
  ReferenceBuilder? verifiedWith;

  /// [verificationDate]
  /// Date verification was collected.
  FhirDateTimeBuilder? verificationDate;

  /// Converts a [ConsentVerificationBuilder]
  /// to [ConsentVerification]
  @override
  ConsentVerification build() => ConsentVerification.fromJson(toJson());

  /// Converts a [ConsentVerificationBuilder]
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
    addField('modifierExtension', modifierExtension);
    addField('verified', verified);
    addField('verifiedWith', verifiedWith);
    addField('verificationDate', verificationDate);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'verified',
      'verifiedWith',
      'verificationDate',
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'verified':
        if (verified != null) {
          fields.add(verified!);
        }
      case 'verifiedWith':
        if (verifiedWith != null) {
          fields.add(verifiedWith!);
        }
      case 'verificationDate':
        if (verificationDate != null) {
          fields.add(verificationDate!);
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
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'verified':
        {
          if (child is FhirBooleanBuilder) {
            verified = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                verified = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'verifiedWith':
        {
          if (child is ReferenceBuilder) {
            verifiedWith = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'verificationDate':
        {
          if (child is FhirDateTimeBuilder) {
            verificationDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                verificationDate = converted;
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
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'verified':
        return ['FhirBooleanBuilder'];
      case 'verifiedWith':
        return ['ReferenceBuilder'];
      case 'verificationDate':
        return ['FhirDateTimeBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConsentVerificationBuilder]
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
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'verified':
        {
          verified = FhirBooleanBuilder.empty();
          return;
        }
      case 'verifiedWith':
        {
          verifiedWith = ReferenceBuilder.empty();
          return;
        }
      case 'verificationDate':
        {
          verificationDate = FhirDateTimeBuilder.empty();
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
    bool modifierExtension = false,
    bool verified = false,
    bool verifiedWith = false,
    bool verificationDate = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (verified) this.verified = null;
    if (verifiedWith) this.verifiedWith = null;
    if (verificationDate) this.verificationDate = null;
  }

  @override
  ConsentVerificationBuilder clone() => throw UnimplementedError();
  @override
  ConsentVerificationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirBooleanBuilder? verified,
    ReferenceBuilder? verifiedWith,
    FhirDateTimeBuilder? verificationDate,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ConsentVerificationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      verified: verified ?? this.verified,
      verifiedWith: verifiedWith ?? this.verifiedWith,
      verificationDate: verificationDate ?? this.verificationDate,
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
    if (o is! ConsentVerificationBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      verified,
      o.verified,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      verifiedWith,
      o.verifiedWith,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      verificationDate,
      o.verificationDate,
    )) {
      return false;
    }
    return true;
  }
}

/// [ConsentProvisionBuilder]
/// An exception to the base policy of this consent. An exception can be an
/// addition or removal of access permissions.
class ConsentProvisionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ConsentProvisionBuilder]

  ConsentProvisionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.period,
    this.actor,
    this.action,
    this.securityLabel,
    this.purpose,
    this.class_,
    this.code,
    this.dataPeriod,
    this.data,
    this.provision,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Consent.provision',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ConsentProvisionBuilder.empty() => ConsentProvisionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentProvisionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Consent.provision';
    return ConsentProvisionBuilder(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<ConsentProvisionTypeBuilder>(
        json,
        'type',
        ConsentProvisionTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
      actor: (json['actor'] as List<dynamic>?)
          ?.map<ConsentActorBuilder>(
            (v) => ConsentActorBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.actor',
              },
            ),
          )
          .toList(),
      action: (json['action'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.action',
              },
            ),
          )
          .toList(),
      securityLabel: (json['securityLabel'] as List<dynamic>?)
          ?.map<CodingBuilder>(
            (v) => CodingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.securityLabel',
              },
            ),
          )
          .toList(),
      purpose: (json['purpose'] as List<dynamic>?)
          ?.map<CodingBuilder>(
            (v) => CodingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.purpose',
              },
            ),
          )
          .toList(),
      class_: (json['class'] as List<dynamic>?)
          ?.map<CodingBuilder>(
            (v) => CodingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.class',
              },
            ),
          )
          .toList(),
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.code',
              },
            ),
          )
          .toList(),
      dataPeriod: JsonParser.parseObject<PeriodBuilder>(
        json,
        'dataPeriod',
        PeriodBuilder.fromJson,
        '$objectPath.dataPeriod',
      ),
      data: (json['data'] as List<dynamic>?)
          ?.map<ConsentDataBuilder>(
            (v) => ConsentDataBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.data',
              },
            ),
          )
          .toList(),
      provision: (json['provision'] as List<dynamic>?)
          ?.map<ConsentProvisionBuilder>(
            (v) => ConsentProvisionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.provision',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ConsentProvisionBuilder]
  /// from a [String] or [YamlMap] object
  factory ConsentProvisionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConsentProvisionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConsentProvisionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConsentProvisionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConsentProvisionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentProvisionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConsentProvisionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ConsentProvision';

  /// [type]
  /// Action to take - permit or deny - when the rule conditions are met. Not
  /// permitted in root rule, required in all nested rules.
  ConsentProvisionTypeBuilder? type;

  /// [period]
  /// The timeframe in this rule is valid.
  PeriodBuilder? period;

  /// [actor]
  /// Who or what is controlled by this rule. Use group to identify a set of
  /// actors by some property they share (e.g. 'admitting officers').
  List<ConsentActorBuilder>? actor;

  /// [action]
  /// Actions controlled by this Rule.
  List<CodeableConceptBuilder>? action;

  /// [securityLabel]
  /// A security label, comprised of 0..* security label fields (Privacy
  /// tags), which define which resources are controlled by this exception.
  List<CodingBuilder>? securityLabel;

  /// [purpose]
  /// The context of the activities a user is taking - why the user is
  /// accessing the data - that are controlled by this rule.
  List<CodingBuilder>? purpose;

  /// [class_]
  /// The class of information covered by this rule. The type can be a FHIR
  /// resource type, a profile on a type, or a CDA document, or some other
  /// type that indicates what sort of information the consent relates to.
  List<CodingBuilder>? class_;

  /// [code]
  /// If this code is found in an instance, then the rule applies.
  List<CodeableConceptBuilder>? code;

  /// [dataPeriod]
  /// Clinical or Operational Relevant period of time that bounds the data
  /// controlled by this rule.
  PeriodBuilder? dataPeriod;

  /// [data]
  /// The resources controlled by this rule if specific resources are
  /// referenced.
  List<ConsentDataBuilder>? data;

  /// [provision]
  /// Rules which provide exceptions to the base rule or subrules.
  List<ConsentProvisionBuilder>? provision;

  /// Converts a [ConsentProvisionBuilder]
  /// to [ConsentProvision]
  @override
  ConsentProvision build() => ConsentProvision.fromJson(toJson());

  /// Converts a [ConsentProvisionBuilder]
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
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('period', period);
    addField('actor', actor);
    addField('action', action);
    addField('securityLabel', securityLabel);
    addField('purpose', purpose);
    addField('class', class_);
    addField('code', code);
    addField('dataPeriod', dataPeriod);
    addField('data', data);
    addField('provision', provision);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'type',
      'period',
      'actor',
      'action',
      'securityLabel',
      'purpose',
      'class',
      'code',
      'dataPeriod',
      'data',
      'provision',
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'actor':
        if (actor != null) {
          fields.addAll(actor!);
        }
      case 'action':
        if (action != null) {
          fields.addAll(action!);
        }
      case 'securityLabel':
        if (securityLabel != null) {
          fields.addAll(securityLabel!);
        }
      case 'purpose':
        if (purpose != null) {
          fields.addAll(purpose!);
        }
      case 'class':
        if (class_ != null) {
          fields.addAll(class_!);
        }
      case 'code':
        if (code != null) {
          fields.addAll(code!);
        }
      case 'dataPeriod':
        if (dataPeriod != null) {
          fields.add(dataPeriod!);
        }
      case 'data':
        if (data != null) {
          fields.addAll(data!);
        }
      case 'provision':
        if (provision != null) {
          fields.addAll(provision!);
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
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is ConsentProvisionTypeBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ConsentProvisionTypeBuilder(stringValue);
                type = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'period':
        {
          if (child is PeriodBuilder) {
            period = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'actor':
        {
          if (child is List<ConsentActorBuilder>) {
            // Replace or create new list
            actor = child;
            return;
          } else if (child is ConsentActorBuilder) {
            // Add single element to existing list or create new list
            actor = [
              ...(actor ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'action':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            action = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            action = [
              ...(action ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'securityLabel':
        {
          if (child is List<CodingBuilder>) {
            // Replace or create new list
            securityLabel = child;
            return;
          } else if (child is CodingBuilder) {
            // Add single element to existing list or create new list
            securityLabel = [
              ...(securityLabel ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'purpose':
        {
          if (child is List<CodingBuilder>) {
            // Replace or create new list
            purpose = child;
            return;
          } else if (child is CodingBuilder) {
            // Add single element to existing list or create new list
            purpose = [
              ...(purpose ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'class':
        {
          if (child is List<CodingBuilder>) {
            // Replace or create new list
            class_ = child;
            return;
          } else if (child is CodingBuilder) {
            // Add single element to existing list or create new list
            class_ = [
              ...(class_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            code = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            code = [
              ...(code ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dataPeriod':
        {
          if (child is PeriodBuilder) {
            dataPeriod = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'data':
        {
          if (child is List<ConsentDataBuilder>) {
            // Replace or create new list
            data = child;
            return;
          } else if (child is ConsentDataBuilder) {
            // Add single element to existing list or create new list
            data = [
              ...(data ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'provision':
        {
          if (child is List<ConsentProvisionBuilder>) {
            // Replace or create new list
            provision = child;
            return;
          } else if (child is ConsentProvisionBuilder) {
            // Add single element to existing list or create new list
            provision = [
              ...(provision ?? []),
              child,
            ];
            return;
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
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      case 'actor':
        return ['ConsentActorBuilder'];
      case 'action':
        return ['CodeableConceptBuilder'];
      case 'securityLabel':
        return ['CodingBuilder'];
      case 'purpose':
        return ['CodingBuilder'];
      case 'class':
        return ['CodingBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'dataPeriod':
        return ['PeriodBuilder'];
      case 'data':
        return ['ConsentDataBuilder'];
      case 'provision':
        return ['ConsentProvisionBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConsentProvisionBuilder]
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
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = ConsentProvisionTypeBuilder.empty();
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      case 'actor':
        {
          actor = <ConsentActorBuilder>[];
          return;
        }
      case 'action':
        {
          action = <CodeableConceptBuilder>[];
          return;
        }
      case 'securityLabel':
        {
          securityLabel = <CodingBuilder>[];
          return;
        }
      case 'purpose':
        {
          purpose = <CodingBuilder>[];
          return;
        }
      case 'class':
        {
          class_ = <CodingBuilder>[];
          return;
        }
      case 'code':
        {
          code = <CodeableConceptBuilder>[];
          return;
        }
      case 'dataPeriod':
        {
          dataPeriod = PeriodBuilder.empty();
          return;
        }
      case 'data':
        {
          data = <ConsentDataBuilder>[];
          return;
        }
      case 'provision':
        {
          provision = <ConsentProvisionBuilder>[];
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
    bool modifierExtension = false,
    bool type = false,
    bool period = false,
    bool actor = false,
    bool action = false,
    bool securityLabel = false,
    bool purpose = false,
    bool class_ = false,
    bool code = false,
    bool dataPeriod = false,
    bool data = false,
    bool provision = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (type) this.type = null;
    if (period) this.period = null;
    if (actor) this.actor = null;
    if (action) this.action = null;
    if (securityLabel) this.securityLabel = null;
    if (purpose) this.purpose = null;
    if (class_) this.class_ = null;
    if (code) this.code = null;
    if (dataPeriod) this.dataPeriod = null;
    if (data) this.data = null;
    if (provision) this.provision = null;
  }

  @override
  ConsentProvisionBuilder clone() => throw UnimplementedError();
  @override
  ConsentProvisionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ConsentProvisionTypeBuilder? type,
    PeriodBuilder? period,
    List<ConsentActorBuilder>? actor,
    List<CodeableConceptBuilder>? action,
    List<CodingBuilder>? securityLabel,
    List<CodingBuilder>? purpose,
    List<CodingBuilder>? class_,
    List<CodeableConceptBuilder>? code,
    PeriodBuilder? dataPeriod,
    List<ConsentDataBuilder>? data,
    List<ConsentProvisionBuilder>? provision,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ConsentProvisionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      period: period ?? this.period,
      actor: actor ?? this.actor,
      action: action ?? this.action,
      securityLabel: securityLabel ?? this.securityLabel,
      purpose: purpose ?? this.purpose,
      class_: class_ ?? this.class_,
      code: code ?? this.code,
      dataPeriod: dataPeriod ?? this.dataPeriod,
      data: data ?? this.data,
      provision: provision ?? this.provision,
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
    if (o is! ConsentProvisionBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
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
      period,
      o.period,
    )) {
      return false;
    }
    if (!listEquals<ConsentActorBuilder>(
      actor,
      o.actor,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      action,
      o.action,
    )) {
      return false;
    }
    if (!listEquals<CodingBuilder>(
      securityLabel,
      o.securityLabel,
    )) {
      return false;
    }
    if (!listEquals<CodingBuilder>(
      purpose,
      o.purpose,
    )) {
      return false;
    }
    if (!listEquals<CodingBuilder>(
      class_,
      o.class_,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dataPeriod,
      o.dataPeriod,
    )) {
      return false;
    }
    if (!listEquals<ConsentDataBuilder>(
      data,
      o.data,
    )) {
      return false;
    }
    if (!listEquals<ConsentProvisionBuilder>(
      provision,
      o.provision,
    )) {
      return false;
    }
    return true;
  }
}

/// [ConsentActorBuilder]
/// Who or what is controlled by this rule. Use group to identify a set of
/// actors by some property they share (e.g. 'admitting officers').
class ConsentActorBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ConsentActorBuilder]

  ConsentActorBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    this.reference,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Consent.provision.actor',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ConsentActorBuilder.empty() => ConsentActorBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentActorBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Consent.provision.actor';
    return ConsentActorBuilder(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      role: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'role',
        CodeableConceptBuilder.fromJson,
        '$objectPath.role',
      ),
      reference: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'reference',
        ReferenceBuilder.fromJson,
        '$objectPath.reference',
      ),
    );
  }

  /// Deserialize [ConsentActorBuilder]
  /// from a [String] or [YamlMap] object
  factory ConsentActorBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConsentActorBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConsentActorBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConsentActorBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConsentActorBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentActorBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConsentActorBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ConsentActor';

  /// [role]
  /// How the individual is involved in the resources content that is
  /// described in the exception.
  CodeableConceptBuilder? role;

  /// [reference]
  /// The resource that identifies the actor. To identify actors by type, use
  /// group to identify a set of actors by some property they share (e.g.
  /// 'admitting officers').
  ReferenceBuilder? reference;

  /// Converts a [ConsentActorBuilder]
  /// to [ConsentActor]
  @override
  ConsentActor build() => ConsentActor.fromJson(toJson());

  /// Converts a [ConsentActorBuilder]
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
    addField('modifierExtension', modifierExtension);
    addField('role', role);
    addField('reference', reference);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'role',
      'reference',
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'role':
        if (role != null) {
          fields.add(role!);
        }
      case 'reference':
        if (reference != null) {
          fields.add(reference!);
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
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'role':
        {
          if (child is CodeableConceptBuilder) {
            role = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reference':
        {
          if (child is ReferenceBuilder) {
            reference = child;
            return;
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
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'role':
        return ['CodeableConceptBuilder'];
      case 'reference':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConsentActorBuilder]
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
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'role':
        {
          role = CodeableConceptBuilder.empty();
          return;
        }
      case 'reference':
        {
          reference = ReferenceBuilder.empty();
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
    bool modifierExtension = false,
    bool role = false,
    bool reference = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (role) this.role = null;
    if (reference) this.reference = null;
  }

  @override
  ConsentActorBuilder clone() => throw UnimplementedError();
  @override
  ConsentActorBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? role,
    ReferenceBuilder? reference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ConsentActorBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      reference: reference ?? this.reference,
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
    if (o is! ConsentActorBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      role,
      o.role,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reference,
      o.reference,
    )) {
      return false;
    }
    return true;
  }
}

/// [ConsentDataBuilder]
/// The resources controlled by this rule if specific resources are
/// referenced.
class ConsentDataBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ConsentDataBuilder]

  ConsentDataBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.meaning,
    this.reference,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Consent.provision.data',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory ConsentDataBuilder.empty() => ConsentDataBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConsentDataBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Consent.provision.data';
    return ConsentDataBuilder(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      meaning: JsonParser.parsePrimitive<ConsentDataMeaningBuilder>(
        json,
        'meaning',
        ConsentDataMeaningBuilder.fromJson,
        '$objectPath.meaning',
      ),
      reference: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'reference',
        ReferenceBuilder.fromJson,
        '$objectPath.reference',
      ),
    );
  }

  /// Deserialize [ConsentDataBuilder]
  /// from a [String] or [YamlMap] object
  factory ConsentDataBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConsentDataBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConsentDataBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConsentDataBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConsentDataBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConsentDataBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConsentDataBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ConsentData';

  /// [meaning]
  /// How the resource reference is interpreted when testing consent
  /// restrictions.
  ConsentDataMeaningBuilder? meaning;

  /// [reference]
  /// A reference to a specific resource that defines which resources are
  /// covered by this consent.
  ReferenceBuilder? reference;

  /// Converts a [ConsentDataBuilder]
  /// to [ConsentData]
  @override
  ConsentData build() => ConsentData.fromJson(toJson());

  /// Converts a [ConsentDataBuilder]
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
    addField('modifierExtension', modifierExtension);
    addField('meaning', meaning);
    addField('reference', reference);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'meaning',
      'reference',
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'meaning':
        if (meaning != null) {
          fields.add(meaning!);
        }
      case 'reference':
        if (reference != null) {
          fields.add(reference!);
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
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'meaning':
        {
          if (child is ConsentDataMeaningBuilder) {
            meaning = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = ConsentDataMeaningBuilder(stringValue);
                meaning = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reference':
        {
          if (child is ReferenceBuilder) {
            reference = child;
            return;
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
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'meaning':
        return ['FhirCodeEnumBuilder'];
      case 'reference':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConsentDataBuilder]
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
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'meaning':
        {
          meaning = ConsentDataMeaningBuilder.empty();
          return;
        }
      case 'reference':
        {
          reference = ReferenceBuilder.empty();
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
    bool modifierExtension = false,
    bool meaning = false,
    bool reference = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (meaning) this.meaning = null;
    if (reference) this.reference = null;
  }

  @override
  ConsentDataBuilder clone() => throw UnimplementedError();
  @override
  ConsentDataBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ConsentDataMeaningBuilder? meaning,
    ReferenceBuilder? reference,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ConsentDataBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      meaning: meaning ?? this.meaning,
      reference: reference ?? this.reference,
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
    if (o is! ConsentDataBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meaning,
      o.meaning,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      reference,
      o.reference,
    )) {
      return false;
    }
    return true;
  }
}
