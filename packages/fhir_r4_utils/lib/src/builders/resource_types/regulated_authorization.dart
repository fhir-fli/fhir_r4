import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        R4ResourceType,
        RegulatedAuthorization,
        RegulatedAuthorizationCase,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [RegulatedAuthorizationBuilder]
/// Regulatory approval, clearance or licencing related to a regulated
/// product, treatment, facility or activity that is cited in a guidance,
/// regulation, rule or legislative act. An example is Market Authorization
/// relating to a Medicinal Product.
class RegulatedAuthorizationBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [RegulatedAuthorizationBuilder]

  RegulatedAuthorizationBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.subject,
    this.type,
    this.description,
    this.region,
    this.status,
    this.statusDate,
    this.validityPeriod,
    this.indication,
    this.intendedUse,
    this.basis,
    this.holder,
    this.regulator,
    this.case_,
  }) : super(
          objectPath: 'RegulatedAuthorization',
          resourceType: R4ResourceType.RegulatedAuthorization,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory RegulatedAuthorizationBuilder.empty() =>
      RegulatedAuthorizationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RegulatedAuthorizationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'RegulatedAuthorization';
    return RegulatedAuthorizationBuilder(
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
      subject: (json['subject'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.subject',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      description: JsonParser.parsePrimitive<FhirMarkdownBuilder>(
        json,
        'description',
        FhirMarkdownBuilder.fromJson,
        '$objectPath.description',
      ),
      region: (json['region'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.region',
              },
            ),
          )
          .toList(),
      status: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'status',
        CodeableConceptBuilder.fromJson,
        '$objectPath.status',
      ),
      statusDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'statusDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.statusDate',
      ),
      validityPeriod: JsonParser.parseObject<PeriodBuilder>(
        json,
        'validityPeriod',
        PeriodBuilder.fromJson,
        '$objectPath.validityPeriod',
      ),
      indication: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'indication',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.indication',
      ),
      intendedUse: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'intendedUse',
        CodeableConceptBuilder.fromJson,
        '$objectPath.intendedUse',
      ),
      basis: (json['basis'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.basis',
              },
            ),
          )
          .toList(),
      holder: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'holder',
        ReferenceBuilder.fromJson,
        '$objectPath.holder',
      ),
      regulator: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'regulator',
        ReferenceBuilder.fromJson,
        '$objectPath.regulator',
      ),
      case_: JsonParser.parseObject<RegulatedAuthorizationCaseBuilder>(
        json,
        'case',
        RegulatedAuthorizationCaseBuilder.fromJson,
        '$objectPath.case',
      ),
    );
  }

  /// Deserialize [RegulatedAuthorizationBuilder]
  /// from a [String] or [YamlMap] object
  factory RegulatedAuthorizationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RegulatedAuthorizationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RegulatedAuthorizationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RegulatedAuthorizationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RegulatedAuthorizationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RegulatedAuthorizationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RegulatedAuthorizationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'RegulatedAuthorization';

  /// [identifier]
  /// Business identifier for the authorization, typically assigned by the
  /// authorizing body.
  List<IdentifierBuilder>? identifier;

  /// [subject]
  /// The product type, treatment, facility or activity that is being
  /// authorized.
  List<ReferenceBuilder>? subject;

  /// [type]
  /// Overall type of this authorization, for example drug marketing
  /// approval, orphan drug designation.
  CodeableConceptBuilder? type;

  /// [description]
  /// General textual supporting information.
  FhirMarkdownBuilder? description;

  /// [region]
  /// The territory (e.g., country, jurisdiction etc.) in which the
  /// authorization has been granted.
  List<CodeableConceptBuilder>? region;

  /// [status]
  /// The status that is authorised e.g. approved. Intermediate states and
  /// actions can be tracked with cases and applications.
  CodeableConceptBuilder? status;

  /// [statusDate]
  /// The date at which the current status was assigned.
  FhirDateTimeBuilder? statusDate;

  /// [validityPeriod]
  /// The time period in which the regulatory approval, clearance or
  /// licencing is in effect. As an example, a Marketing Authorization
  /// includes the date of authorization and/or an expiration date.
  PeriodBuilder? validityPeriod;

  /// [indication]
  /// Condition for which the use of the regulated product applies.
  CodeableReferenceBuilder? indication;

  /// [intendedUse]
  /// The intended use of the product, e.g. prevention, treatment, diagnosis.
  CodeableConceptBuilder? intendedUse;

  /// [basis]
  /// The legal or regulatory framework against which this authorization is
  /// granted, or other reasons for it.
  List<CodeableConceptBuilder>? basis;

  /// [holder]
  /// The organization that has been granted this authorization, by some
  /// authoritative body (the 'regulator').
  ReferenceBuilder? holder;

  /// [regulator]
  /// The regulatory authority or authorizing body granting the
  /// authorization. For example, European Medicines Agency (EMA), Food and
  /// Drug Administration (FDA), Health Canada (HC), etc.
  ReferenceBuilder? regulator;

  /// [case_]
  /// The case or regulatory procedure for granting or amending a regulated
  /// authorization. An authorization is granted in response to
  /// submissions/applications by those seeking authorization. A case is the
  /// administrative process that deals with the application(s) that relate
  /// to this and assesses them. Note: This area is subject to ongoing review
  /// and the workgroup is seeking implementer feedback on its use (see link
  /// at bottom of page).
  RegulatedAuthorizationCaseBuilder? case_;

  /// Converts a [RegulatedAuthorizationBuilder]
  /// to [RegulatedAuthorization]
  @override
  RegulatedAuthorization build() => RegulatedAuthorization.fromJson(toJson());

  /// Converts a [RegulatedAuthorizationBuilder]
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
    addField('subject', subject);
    addField('type', type);
    addField('description', description);
    addField('region', region);
    addField('status', status);
    addField('statusDate', statusDate);
    addField('validityPeriod', validityPeriod);
    addField('indication', indication);
    addField('intendedUse', intendedUse);
    addField('basis', basis);
    addField('holder', holder);
    addField('regulator', regulator);
    addField('case', case_);
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
      'subject',
      'type',
      'description',
      'region',
      'status',
      'statusDate',
      'validityPeriod',
      'indication',
      'intendedUse',
      'basis',
      'holder',
      'regulator',
      'case',
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
      case 'subject':
        if (subject != null) {
          fields.addAll(subject!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'region':
        if (region != null) {
          fields.addAll(region!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'statusDate':
        if (statusDate != null) {
          fields.add(statusDate!);
        }
      case 'validityPeriod':
        if (validityPeriod != null) {
          fields.add(validityPeriod!);
        }
      case 'indication':
        if (indication != null) {
          fields.add(indication!);
        }
      case 'intendedUse':
        if (intendedUse != null) {
          fields.add(intendedUse!);
        }
      case 'basis':
        if (basis != null) {
          fields.addAll(basis!);
        }
      case 'holder':
        if (holder != null) {
          fields.add(holder!);
        }
      case 'regulator':
        if (regulator != null) {
          fields.add(regulator!);
        }
      case 'case':
        if (case_ != null) {
          fields.add(case_!);
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
      case 'subject':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            subject = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            subject = [
              ...(subject ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirMarkdownBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirMarkdownBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'region':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            region = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            region = [
              ...(region ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is CodeableConceptBuilder) {
            status = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'statusDate':
        {
          if (child is FhirDateTimeBuilder) {
            statusDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                statusDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'validityPeriod':
        {
          if (child is PeriodBuilder) {
            validityPeriod = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'indication':
        {
          if (child is CodeableReferenceBuilder) {
            indication = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'intendedUse':
        {
          if (child is CodeableConceptBuilder) {
            intendedUse = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'basis':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            basis = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            basis = [
              ...(basis ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'holder':
        {
          if (child is ReferenceBuilder) {
            holder = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'regulator':
        {
          if (child is ReferenceBuilder) {
            regulator = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'case':
        {
          if (child is RegulatedAuthorizationCaseBuilder) {
            case_ = child;
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
      case 'subject':
        return ['ReferenceBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'description':
        return ['FhirMarkdownBuilder'];
      case 'region':
        return ['CodeableConceptBuilder'];
      case 'status':
        return ['CodeableConceptBuilder'];
      case 'statusDate':
        return ['FhirDateTimeBuilder'];
      case 'validityPeriod':
        return ['PeriodBuilder'];
      case 'indication':
        return ['CodeableReferenceBuilder'];
      case 'intendedUse':
        return ['CodeableConceptBuilder'];
      case 'basis':
        return ['CodeableConceptBuilder'];
      case 'holder':
        return ['ReferenceBuilder'];
      case 'regulator':
        return ['ReferenceBuilder'];
      case 'case':
        return ['RegulatedAuthorizationCaseBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [RegulatedAuthorizationBuilder]
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
      case 'subject':
        {
          subject = <ReferenceBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirMarkdownBuilder.empty();
          return;
        }
      case 'region':
        {
          region = <CodeableConceptBuilder>[];
          return;
        }
      case 'status':
        {
          status = CodeableConceptBuilder.empty();
          return;
        }
      case 'statusDate':
        {
          statusDate = FhirDateTimeBuilder.empty();
          return;
        }
      case 'validityPeriod':
        {
          validityPeriod = PeriodBuilder.empty();
          return;
        }
      case 'indication':
        {
          indication = CodeableReferenceBuilder.empty();
          return;
        }
      case 'intendedUse':
        {
          intendedUse = CodeableConceptBuilder.empty();
          return;
        }
      case 'basis':
        {
          basis = <CodeableConceptBuilder>[];
          return;
        }
      case 'holder':
        {
          holder = ReferenceBuilder.empty();
          return;
        }
      case 'regulator':
        {
          regulator = ReferenceBuilder.empty();
          return;
        }
      case 'case':
        {
          case_ = RegulatedAuthorizationCaseBuilder.empty();
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
    bool subject = false,
    bool type = false,
    bool description = false,
    bool region = false,
    bool status = false,
    bool statusDate = false,
    bool validityPeriod = false,
    bool indication = false,
    bool intendedUse = false,
    bool basis = false,
    bool holder = false,
    bool regulator = false,
    bool case_ = false,
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
    if (subject) this.subject = null;
    if (type) this.type = null;
    if (description) this.description = null;
    if (region) this.region = null;
    if (status) this.status = null;
    if (statusDate) this.statusDate = null;
    if (validityPeriod) this.validityPeriod = null;
    if (indication) this.indication = null;
    if (intendedUse) this.intendedUse = null;
    if (basis) this.basis = null;
    if (holder) this.holder = null;
    if (regulator) this.regulator = null;
    if (case_) this.case_ = null;
  }

  @override
  RegulatedAuthorizationBuilder clone() => throw UnimplementedError();
  @override
  RegulatedAuthorizationBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    List<ReferenceBuilder>? subject,
    CodeableConceptBuilder? type,
    FhirMarkdownBuilder? description,
    List<CodeableConceptBuilder>? region,
    CodeableConceptBuilder? status,
    FhirDateTimeBuilder? statusDate,
    PeriodBuilder? validityPeriod,
    CodeableReferenceBuilder? indication,
    CodeableConceptBuilder? intendedUse,
    List<CodeableConceptBuilder>? basis,
    ReferenceBuilder? holder,
    ReferenceBuilder? regulator,
    RegulatedAuthorizationCaseBuilder? case_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = RegulatedAuthorizationBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      subject: subject ?? this.subject,
      type: type ?? this.type,
      description: description ?? this.description,
      region: region ?? this.region,
      status: status ?? this.status,
      statusDate: statusDate ?? this.statusDate,
      validityPeriod: validityPeriod ?? this.validityPeriod,
      indication: indication ?? this.indication,
      intendedUse: intendedUse ?? this.intendedUse,
      basis: basis ?? this.basis,
      holder: holder ?? this.holder,
      regulator: regulator ?? this.regulator,
      case_: case_ ?? this.case_,
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
    if (o is! RegulatedAuthorizationBuilder) {
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
    if (!listEquals<ReferenceBuilder>(
      subject,
      o.subject,
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
      description,
      o.description,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      region,
      o.region,
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
      statusDate,
      o.statusDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      validityPeriod,
      o.validityPeriod,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      indication,
      o.indication,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      intendedUse,
      o.intendedUse,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      basis,
      o.basis,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      holder,
      o.holder,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      regulator,
      o.regulator,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      case_,
      o.case_,
    )) {
      return false;
    }
    return true;
  }
}

/// [RegulatedAuthorizationCaseBuilder]
/// The case or regulatory procedure for granting or amending a regulated
/// authorization. An authorization is granted in response to
/// submissions/applications by those seeking authorization. A case is the
/// administrative process that deals with the application(s) that relate
/// to this and assesses them. Note: This area is subject to ongoing review
/// and the workgroup is seeking implementer feedback on its use (see link
/// at bottom of page).
class RegulatedAuthorizationCaseBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [RegulatedAuthorizationCaseBuilder]

  RegulatedAuthorizationCaseBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.status,
    this.dateX,
    this.application,
    super.disallowExtensions,
  }) : super(
          objectPath: 'RegulatedAuthorization.case',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory RegulatedAuthorizationCaseBuilder.empty() =>
      RegulatedAuthorizationCaseBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RegulatedAuthorizationCaseBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'RegulatedAuthorization.case';
    return RegulatedAuthorizationCaseBuilder(
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
      identifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'identifier',
        IdentifierBuilder.fromJson,
        '$objectPath.identifier',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      status: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'status',
        CodeableConceptBuilder.fromJson,
        '$objectPath.status',
      ),
      dateX:
          JsonParser.parsePolymorphic<DateXRegulatedAuthorizationCaseBuilder>(
        json,
        {
          'datePeriod': PeriodBuilder.fromJson,
          'dateDateTime': FhirDateTimeBuilder.fromJson,
        },
        objectPath,
      ),
      application: (json['application'] as List<dynamic>?)
          ?.map<RegulatedAuthorizationCaseBuilder>(
            (v) => RegulatedAuthorizationCaseBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.application',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [RegulatedAuthorizationCaseBuilder]
  /// from a [String] or [YamlMap] object
  factory RegulatedAuthorizationCaseBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RegulatedAuthorizationCaseBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RegulatedAuthorizationCaseBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RegulatedAuthorizationCaseBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RegulatedAuthorizationCaseBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RegulatedAuthorizationCaseBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RegulatedAuthorizationCaseBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'RegulatedAuthorizationCase';

  /// [identifier]
  /// Identifier by which this case can be referenced.
  IdentifierBuilder? identifier;

  /// [type]
  /// The defining type of case.
  CodeableConceptBuilder? type;

  /// [status]
  /// The status associated with the case.
  CodeableConceptBuilder? status;

  /// [dateX]
  /// Relevant date for this case.
  DateXRegulatedAuthorizationCaseBuilder? dateX;

  /// Getter for [datePeriod] as a PeriodBuilder
  PeriodBuilder? get datePeriod => dateX?.isAs<PeriodBuilder>();

  /// Getter for [dateDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get dateDateTime => dateX?.isAs<FhirDateTimeBuilder>();

  /// [application]
  /// A regulatory submission from an organization to a regulator, as part of
  /// an assessing case. Multiple applications may occur over time, with more
  /// or different information to support or modify the submission or the
  /// authorization. The applications can be considered as steps within the
  /// longer running case or procedure for this authorization process.
  List<RegulatedAuthorizationCaseBuilder>? application;

  /// Converts a [RegulatedAuthorizationCaseBuilder]
  /// to [RegulatedAuthorizationCase]
  @override
  RegulatedAuthorizationCase build() =>
      RegulatedAuthorizationCase.fromJson(toJson());

  /// Converts a [RegulatedAuthorizationCaseBuilder]
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
    addField('identifier', identifier);
    addField('type', type);
    addField('status', status);
    if (dateX != null) {
      final fhirType = dateX!.fhirType;
      addField('date${fhirType.capitalize()}', dateX);
    }

    addField('application', application);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'identifier',
      'type',
      'status',
      'dateX',
      'application',
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
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'date':
        if (dateX != null) {
          fields.add(dateX!);
        }
      case 'dateX':
        if (dateX != null) {
          fields.add(dateX!);
        }
      case 'datePeriod':
        if (dateX is PeriodBuilder) {
          fields.add(dateX!);
        }
      case 'dateDateTime':
        if (dateX is FhirDateTimeBuilder) {
          fields.add(dateX!);
        }
      case 'application':
        if (application != null) {
          fields.addAll(application!);
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
      case 'identifier':
        {
          if (child is IdentifierBuilder) {
            identifier = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is CodeableConceptBuilder) {
            status = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'date':
      case 'dateX':
        {
          if (child is DateXRegulatedAuthorizationCaseBuilder) {
            dateX = child;
            return;
          } else {
            if (child is PeriodBuilder) {
              dateX = child;
              return;
            }
            if (child is FhirDateTimeBuilder) {
              dateX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'datePeriod':
        {
          if (child is PeriodBuilder) {
            dateX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dateDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            dateX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'application':
        {
          if (child is List<RegulatedAuthorizationCaseBuilder>) {
            // Replace or create new list
            application = child;
            return;
          } else if (child is RegulatedAuthorizationCaseBuilder) {
            // Add single element to existing list or create new list
            application = [
              ...(application ?? []),
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
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'status':
        return ['CodeableConceptBuilder'];
      case 'date':
      case 'dateX':
        return [
          'PeriodBuilder',
          'FhirDateTimeBuilder',
        ];
      case 'datePeriod':
        return ['PeriodBuilder'];
      case 'dateDateTime':
        return ['FhirDateTimeBuilder'];
      case 'application':
        return ['RegulatedAuthorizationCaseBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [RegulatedAuthorizationCaseBuilder]
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
      case 'identifier':
        {
          identifier = IdentifierBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'status':
        {
          status = CodeableConceptBuilder.empty();
          return;
        }
      case 'date':
      case 'dateX':
      case 'datePeriod':
        {
          dateX = PeriodBuilder.empty();
          return;
        }
      case 'dateDateTime':
        {
          dateX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'application':
        {
          application = <RegulatedAuthorizationCaseBuilder>[];
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
    bool identifier = false,
    bool type = false,
    bool status = false,
    bool date = false,
    bool application = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (identifier) this.identifier = null;
    if (type) this.type = null;
    if (status) this.status = null;
    if (date) this.dateX = null;
    if (application) this.application = null;
  }

  @override
  RegulatedAuthorizationCaseBuilder clone() => throw UnimplementedError();
  @override
  RegulatedAuthorizationCaseBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    IdentifierBuilder? identifier,
    CodeableConceptBuilder? type,
    CodeableConceptBuilder? status,
    DateXRegulatedAuthorizationCaseBuilder? dateX,
    List<RegulatedAuthorizationCaseBuilder>? application,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = RegulatedAuthorizationCaseBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
      status: status ?? this.status,
      dateX: dateX ?? this.dateX,
      application: application ?? this.application,
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
    if (o is! RegulatedAuthorizationCaseBuilder) {
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
      identifier,
      o.identifier,
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
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dateX,
      o.dateX,
    )) {
      return false;
    }
    if (!listEquals<RegulatedAuthorizationCaseBuilder>(
      application,
      o.application,
    )) {
      return false;
    }
    return true;
  }
}
