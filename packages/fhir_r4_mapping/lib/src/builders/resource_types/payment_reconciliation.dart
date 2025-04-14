import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        PaymentReconciliation,
        PaymentReconciliationDetail,
        PaymentReconciliationProcessNote,
        R4ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';
import 'package:yaml/yaml.dart';

/// [PaymentReconciliationBuilder]
/// This resource provides the details including amount of a payment and
/// allocates the payment items being paid.
class PaymentReconciliationBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [PaymentReconciliationBuilder]

  PaymentReconciliationBuilder({
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
    this.period,
    this.created,
    this.paymentIssuer,
    this.request,
    this.requestor,
    this.outcome,
    this.disposition,
    this.paymentDate,
    this.paymentAmount,
    this.paymentIdentifier,
    this.detail,
    this.formCode,
    this.processNote,
  }) : super(
          objectPath: 'PaymentReconciliation',
          resourceType: R4ResourceType.PaymentReconciliation,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory PaymentReconciliationBuilder.empty() => PaymentReconciliationBuilder(
        status: FinancialResourceStatusCodesBuilder.values.first,
        created: FhirDateTimeBuilder.empty(),
        paymentDate: FhirDateBuilder.empty(),
        paymentAmount: MoneyBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PaymentReconciliationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PaymentReconciliation';
    return PaymentReconciliationBuilder(
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
      status: JsonParser.parsePrimitive<FinancialResourceStatusCodesBuilder>(
        json,
        'status',
        FinancialResourceStatusCodesBuilder.fromJson,
        '$objectPath.status',
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
      created: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'created',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.created',
      ),
      paymentIssuer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'paymentIssuer',
        ReferenceBuilder.fromJson,
        '$objectPath.paymentIssuer',
      ),
      request: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'request',
        ReferenceBuilder.fromJson,
        '$objectPath.request',
      ),
      requestor: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'requestor',
        ReferenceBuilder.fromJson,
        '$objectPath.requestor',
      ),
      outcome: JsonParser.parsePrimitive<RemittanceOutcomeBuilder>(
        json,
        'outcome',
        RemittanceOutcomeBuilder.fromJson,
        '$objectPath.outcome',
      ),
      disposition: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'disposition',
        FhirStringBuilder.fromJson,
        '$objectPath.disposition',
      ),
      paymentDate: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'paymentDate',
        FhirDateBuilder.fromJson,
        '$objectPath.paymentDate',
      ),
      paymentAmount: JsonParser.parseObject<MoneyBuilder>(
        json,
        'paymentAmount',
        MoneyBuilder.fromJson,
        '$objectPath.paymentAmount',
      ),
      paymentIdentifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'paymentIdentifier',
        IdentifierBuilder.fromJson,
        '$objectPath.paymentIdentifier',
      ),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<PaymentReconciliationDetailBuilder>(
            (v) => PaymentReconciliationDetailBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.detail',
              },
            ),
          )
          .toList(),
      formCode: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'formCode',
        CodeableConceptBuilder.fromJson,
        '$objectPath.formCode',
      ),
      processNote: (json['processNote'] as List<dynamic>?)
          ?.map<PaymentReconciliationProcessNoteBuilder>(
            (v) => PaymentReconciliationProcessNoteBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.processNote',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [PaymentReconciliationBuilder]
  /// from a [String] or [YamlMap] object
  factory PaymentReconciliationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PaymentReconciliationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PaymentReconciliationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PaymentReconciliationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PaymentReconciliationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PaymentReconciliationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PaymentReconciliationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PaymentReconciliation';

  /// [identifier]
  /// A unique identifier assigned to this payment reconciliation.
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// The status of the resource instance.
  FinancialResourceStatusCodesBuilder? status;

  /// [period]
  /// The period of time for which payments have been gathered into this bulk
  /// payment for settlement.
  PeriodBuilder? period;

  /// [created]
  /// The date when the resource was created.
  FhirDateTimeBuilder? created;

  /// [paymentIssuer]
  /// The party who generated the payment.
  ReferenceBuilder? paymentIssuer;

  /// [request]
  /// Original request resource reference.
  ReferenceBuilder? request;

  /// [requestor]
  /// The practitioner who is responsible for the services rendered to the
  /// patient.
  ReferenceBuilder? requestor;

  /// [outcome]
  /// The outcome of a request for a reconciliation.
  RemittanceOutcomeBuilder? outcome;

  /// [disposition]
  /// A human readable description of the status of the request for the
  /// reconciliation.
  FhirStringBuilder? disposition;

  /// [paymentDate]
  /// The date of payment as indicated on the financial instrument.
  FhirDateBuilder? paymentDate;

  /// [paymentAmount]
  /// Total payment amount as indicated on the financial instrument.
  MoneyBuilder? paymentAmount;

  /// [paymentIdentifier]
  /// Issuer's unique identifier for the payment instrument.
  IdentifierBuilder? paymentIdentifier;

  /// [detail]
  /// Distribution of the payment amount for a previously acknowledged
  /// payable.
  List<PaymentReconciliationDetailBuilder>? detail;

  /// [formCode]
  /// A code for the form to be used for printing the content.
  CodeableConceptBuilder? formCode;

  /// [processNote]
  /// A note that describes or explains the processing in a human readable
  /// form.
  List<PaymentReconciliationProcessNoteBuilder>? processNote;

  /// Converts a [PaymentReconciliationBuilder]
  /// to [PaymentReconciliation]
  @override
  PaymentReconciliation build() => PaymentReconciliation.fromJson(toJson());

  /// Converts a [PaymentReconciliationBuilder]
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
    addField('period', period);
    addField('created', created);
    addField('paymentIssuer', paymentIssuer);
    addField('request', request);
    addField('requestor', requestor);
    addField('outcome', outcome);
    addField('disposition', disposition);
    addField('paymentDate', paymentDate);
    addField('paymentAmount', paymentAmount);
    addField('paymentIdentifier', paymentIdentifier);
    addField('detail', detail);
    addField('formCode', formCode);
    addField('processNote', processNote);
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
      'period',
      'created',
      'paymentIssuer',
      'request',
      'requestor',
      'outcome',
      'disposition',
      'paymentDate',
      'paymentAmount',
      'paymentIdentifier',
      'detail',
      'formCode',
      'processNote',
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
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      case 'created':
        if (created != null) {
          fields.add(created!);
        }
      case 'paymentIssuer':
        if (paymentIssuer != null) {
          fields.add(paymentIssuer!);
        }
      case 'request':
        if (request != null) {
          fields.add(request!);
        }
      case 'requestor':
        if (requestor != null) {
          fields.add(requestor!);
        }
      case 'outcome':
        if (outcome != null) {
          fields.add(outcome!);
        }
      case 'disposition':
        if (disposition != null) {
          fields.add(disposition!);
        }
      case 'paymentDate':
        if (paymentDate != null) {
          fields.add(paymentDate!);
        }
      case 'paymentAmount':
        if (paymentAmount != null) {
          fields.add(paymentAmount!);
        }
      case 'paymentIdentifier':
        if (paymentIdentifier != null) {
          fields.add(paymentIdentifier!);
        }
      case 'detail':
        if (detail != null) {
          fields.addAll(detail!);
        }
      case 'formCode':
        if (formCode != null) {
          fields.add(formCode!);
        }
      case 'processNote':
        if (processNote != null) {
          fields.addAll(processNote!);
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
          if (child is FinancialResourceStatusCodesBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    FinancialResourceStatusCodesBuilder(stringValue);
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
      case 'period':
        {
          if (child is PeriodBuilder) {
            period = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'created':
        {
          if (child is FhirDateTimeBuilder) {
            created = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                created = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'paymentIssuer':
        {
          if (child is ReferenceBuilder) {
            paymentIssuer = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'request':
        {
          if (child is ReferenceBuilder) {
            request = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'requestor':
        {
          if (child is ReferenceBuilder) {
            requestor = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'outcome':
        {
          if (child is RemittanceOutcomeBuilder) {
            outcome = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = RemittanceOutcomeBuilder(stringValue);
                outcome = converted;
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
      case 'disposition':
        {
          if (child is FhirStringBuilder) {
            disposition = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                disposition = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'paymentDate':
        {
          if (child is FhirDateBuilder) {
            paymentDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                paymentDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'paymentAmount':
        {
          if (child is MoneyBuilder) {
            paymentAmount = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'paymentIdentifier':
        {
          if (child is IdentifierBuilder) {
            paymentIdentifier = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'detail':
        {
          if (child is List<PaymentReconciliationDetailBuilder>) {
            // Replace or create new list
            detail = child;
            return;
          } else if (child is PaymentReconciliationDetailBuilder) {
            // Add single element to existing list or create new list
            detail = [
              ...(detail ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'formCode':
        {
          if (child is CodeableConceptBuilder) {
            formCode = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'processNote':
        {
          if (child is List<PaymentReconciliationProcessNoteBuilder>) {
            // Replace or create new list
            processNote = child;
            return;
          } else if (child is PaymentReconciliationProcessNoteBuilder) {
            // Add single element to existing list or create new list
            processNote = [
              ...(processNote ?? []),
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
      case 'period':
        return ['PeriodBuilder'];
      case 'created':
        return ['FhirDateTimeBuilder'];
      case 'paymentIssuer':
        return ['ReferenceBuilder'];
      case 'request':
        return ['ReferenceBuilder'];
      case 'requestor':
        return ['ReferenceBuilder'];
      case 'outcome':
        return ['FhirCodeEnumBuilder'];
      case 'disposition':
        return ['FhirStringBuilder'];
      case 'paymentDate':
        return ['FhirDateBuilder'];
      case 'paymentAmount':
        return ['MoneyBuilder'];
      case 'paymentIdentifier':
        return ['IdentifierBuilder'];
      case 'detail':
        return ['PaymentReconciliationDetailBuilder'];
      case 'formCode':
        return ['CodeableConceptBuilder'];
      case 'processNote':
        return ['PaymentReconciliationProcessNoteBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PaymentReconciliationBuilder]
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
          status = FinancialResourceStatusCodesBuilder.empty();
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      case 'created':
        {
          created = FhirDateTimeBuilder.empty();
          return;
        }
      case 'paymentIssuer':
        {
          paymentIssuer = ReferenceBuilder.empty();
          return;
        }
      case 'request':
        {
          request = ReferenceBuilder.empty();
          return;
        }
      case 'requestor':
        {
          requestor = ReferenceBuilder.empty();
          return;
        }
      case 'outcome':
        {
          outcome = RemittanceOutcomeBuilder.empty();
          return;
        }
      case 'disposition':
        {
          disposition = FhirStringBuilder.empty();
          return;
        }
      case 'paymentDate':
        {
          paymentDate = FhirDateBuilder.empty();
          return;
        }
      case 'paymentAmount':
        {
          paymentAmount = MoneyBuilder.empty();
          return;
        }
      case 'paymentIdentifier':
        {
          paymentIdentifier = IdentifierBuilder.empty();
          return;
        }
      case 'detail':
        {
          detail = <PaymentReconciliationDetailBuilder>[];
          return;
        }
      case 'formCode':
        {
          formCode = CodeableConceptBuilder.empty();
          return;
        }
      case 'processNote':
        {
          processNote = <PaymentReconciliationProcessNoteBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  PaymentReconciliationBuilder clone() => throw UnimplementedError();
  @override
  PaymentReconciliationBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    FinancialResourceStatusCodesBuilder? status,
    PeriodBuilder? period,
    FhirDateTimeBuilder? created,
    ReferenceBuilder? paymentIssuer,
    ReferenceBuilder? request,
    ReferenceBuilder? requestor,
    RemittanceOutcomeBuilder? outcome,
    FhirStringBuilder? disposition,
    FhirDateBuilder? paymentDate,
    MoneyBuilder? paymentAmount,
    IdentifierBuilder? paymentIdentifier,
    List<PaymentReconciliationDetailBuilder>? detail,
    CodeableConceptBuilder? formCode,
    List<PaymentReconciliationProcessNoteBuilder>? processNote,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = PaymentReconciliationBuilder(
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
      period: period ?? this.period,
      created: created ?? this.created,
      paymentIssuer: paymentIssuer ?? this.paymentIssuer,
      request: request ?? this.request,
      requestor: requestor ?? this.requestor,
      outcome: outcome ?? this.outcome,
      disposition: disposition ?? this.disposition,
      paymentDate: paymentDate ?? this.paymentDate,
      paymentAmount: paymentAmount ?? this.paymentAmount,
      paymentIdentifier: paymentIdentifier ?? this.paymentIdentifier,
      detail: detail ?? this.detail,
      formCode: formCode ?? this.formCode,
      processNote: processNote ?? this.processNote,
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
    if (o is! PaymentReconciliationBuilder) {
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
      period,
      o.period,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      created,
      o.created,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      paymentIssuer,
      o.paymentIssuer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      request,
      o.request,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      requestor,
      o.requestor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      outcome,
      o.outcome,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      disposition,
      o.disposition,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      paymentDate,
      o.paymentDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      paymentAmount,
      o.paymentAmount,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      paymentIdentifier,
      o.paymentIdentifier,
    )) {
      return false;
    }
    if (!listEquals<PaymentReconciliationDetailBuilder>(
      detail,
      o.detail,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      formCode,
      o.formCode,
    )) {
      return false;
    }
    if (!listEquals<PaymentReconciliationProcessNoteBuilder>(
      processNote,
      o.processNote,
    )) {
      return false;
    }
    return true;
  }
}

/// [PaymentReconciliationDetailBuilder]
/// Distribution of the payment amount for a previously acknowledged
/// payable.
class PaymentReconciliationDetailBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [PaymentReconciliationDetailBuilder]

  PaymentReconciliationDetailBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.predecessor,
    this.type,
    this.request,
    this.submitter,
    this.response,
    this.date,
    this.responsible,
    this.payee,
    this.amount,
    super.disallowExtensions,
  }) : super(
          objectPath: 'PaymentReconciliation.detail',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory PaymentReconciliationDetailBuilder.empty() =>
      PaymentReconciliationDetailBuilder(
        type: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PaymentReconciliationDetailBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PaymentReconciliation.detail';
    return PaymentReconciliationDetailBuilder(
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
      predecessor: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'predecessor',
        IdentifierBuilder.fromJson,
        '$objectPath.predecessor',
      ),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      request: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'request',
        ReferenceBuilder.fromJson,
        '$objectPath.request',
      ),
      submitter: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'submitter',
        ReferenceBuilder.fromJson,
        '$objectPath.submitter',
      ),
      response: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'response',
        ReferenceBuilder.fromJson,
        '$objectPath.response',
      ),
      date: JsonParser.parsePrimitive<FhirDateBuilder>(
        json,
        'date',
        FhirDateBuilder.fromJson,
        '$objectPath.date',
      ),
      responsible: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'responsible',
        ReferenceBuilder.fromJson,
        '$objectPath.responsible',
      ),
      payee: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'payee',
        ReferenceBuilder.fromJson,
        '$objectPath.payee',
      ),
      amount: JsonParser.parseObject<MoneyBuilder>(
        json,
        'amount',
        MoneyBuilder.fromJson,
        '$objectPath.amount',
      ),
    );
  }

  /// Deserialize [PaymentReconciliationDetailBuilder]
  /// from a [String] or [YamlMap] object
  factory PaymentReconciliationDetailBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PaymentReconciliationDetailBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PaymentReconciliationDetailBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PaymentReconciliationDetailBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PaymentReconciliationDetailBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PaymentReconciliationDetailBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PaymentReconciliationDetailBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PaymentReconciliationDetail';

  /// [identifier]
  /// Unique identifier for the current payment item for the referenced
  /// payable.
  IdentifierBuilder? identifier;

  /// [predecessor]
  /// Unique identifier for the prior payment item for the referenced
  /// payable.
  IdentifierBuilder? predecessor;

  /// [type]
  /// Code to indicate the nature of the payment.
  CodeableConceptBuilder? type;

  /// [request]
  /// A resource, such as a Claim, the evaluation of which could lead to
  /// payment.
  ReferenceBuilder? request;

  /// [submitter]
  /// The party which submitted the claim or financial transaction.
  ReferenceBuilder? submitter;

  /// [response]
  /// A resource, such as a ClaimResponse, which contains a commitment to
  /// payment.
  ReferenceBuilder? response;

  /// [date]
  /// The date from the response resource containing a commitment to pay.
  FhirDateBuilder? date;

  /// [responsible]
  /// A reference to the individual who is responsible for inquiries
  /// regarding the response and its payment.
  ReferenceBuilder? responsible;

  /// [payee]
  /// The party which is receiving the payment.
  ReferenceBuilder? payee;

  /// [amount]
  /// The monetary amount allocated from the total payment to the payable.
  MoneyBuilder? amount;

  /// Converts a [PaymentReconciliationDetailBuilder]
  /// to [PaymentReconciliationDetail]
  @override
  PaymentReconciliationDetail build() =>
      PaymentReconciliationDetail.fromJson(toJson());

  /// Converts a [PaymentReconciliationDetailBuilder]
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
    addField('predecessor', predecessor);
    addField('type', type);
    addField('request', request);
    addField('submitter', submitter);
    addField('response', response);
    addField('date', date);
    addField('responsible', responsible);
    addField('payee', payee);
    addField('amount', amount);
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
      'predecessor',
      'type',
      'request',
      'submitter',
      'response',
      'date',
      'responsible',
      'payee',
      'amount',
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
      case 'predecessor':
        if (predecessor != null) {
          fields.add(predecessor!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'request':
        if (request != null) {
          fields.add(request!);
        }
      case 'submitter':
        if (submitter != null) {
          fields.add(submitter!);
        }
      case 'response':
        if (response != null) {
          fields.add(response!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'responsible':
        if (responsible != null) {
          fields.add(responsible!);
        }
      case 'payee':
        if (payee != null) {
          fields.add(payee!);
        }
      case 'amount':
        if (amount != null) {
          fields.add(amount!);
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
      case 'predecessor':
        {
          if (child is IdentifierBuilder) {
            predecessor = child;
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
      case 'request':
        {
          if (child is ReferenceBuilder) {
            request = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'submitter':
        {
          if (child is ReferenceBuilder) {
            submitter = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'response':
        {
          if (child is ReferenceBuilder) {
            response = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'date':
        {
          if (child is FhirDateBuilder) {
            date = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateBuilder.tryParse(stringValue);
              if (converted != null) {
                date = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'responsible':
        {
          if (child is ReferenceBuilder) {
            responsible = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'payee':
        {
          if (child is ReferenceBuilder) {
            payee = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'amount':
        {
          if (child is MoneyBuilder) {
            amount = child;
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
      case 'predecessor':
        return ['IdentifierBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'request':
        return ['ReferenceBuilder'];
      case 'submitter':
        return ['ReferenceBuilder'];
      case 'response':
        return ['ReferenceBuilder'];
      case 'date':
        return ['FhirDateBuilder'];
      case 'responsible':
        return ['ReferenceBuilder'];
      case 'payee':
        return ['ReferenceBuilder'];
      case 'amount':
        return ['MoneyBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PaymentReconciliationDetailBuilder]
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
      case 'predecessor':
        {
          predecessor = IdentifierBuilder.empty();
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'request':
        {
          request = ReferenceBuilder.empty();
          return;
        }
      case 'submitter':
        {
          submitter = ReferenceBuilder.empty();
          return;
        }
      case 'response':
        {
          response = ReferenceBuilder.empty();
          return;
        }
      case 'date':
        {
          date = FhirDateBuilder.empty();
          return;
        }
      case 'responsible':
        {
          responsible = ReferenceBuilder.empty();
          return;
        }
      case 'payee':
        {
          payee = ReferenceBuilder.empty();
          return;
        }
      case 'amount':
        {
          amount = MoneyBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  PaymentReconciliationDetailBuilder clone() => throw UnimplementedError();
  @override
  PaymentReconciliationDetailBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    IdentifierBuilder? identifier,
    IdentifierBuilder? predecessor,
    CodeableConceptBuilder? type,
    ReferenceBuilder? request,
    ReferenceBuilder? submitter,
    ReferenceBuilder? response,
    FhirDateBuilder? date,
    ReferenceBuilder? responsible,
    ReferenceBuilder? payee,
    MoneyBuilder? amount,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = PaymentReconciliationDetailBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      predecessor: predecessor ?? this.predecessor,
      type: type ?? this.type,
      request: request ?? this.request,
      submitter: submitter ?? this.submitter,
      response: response ?? this.response,
      date: date ?? this.date,
      responsible: responsible ?? this.responsible,
      payee: payee ?? this.payee,
      amount: amount ?? this.amount,
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
    if (o is! PaymentReconciliationDetailBuilder) {
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
      predecessor,
      o.predecessor,
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
      request,
      o.request,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      submitter,
      o.submitter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      response,
      o.response,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      responsible,
      o.responsible,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      payee,
      o.payee,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      amount,
      o.amount,
    )) {
      return false;
    }
    return true;
  }
}

/// [PaymentReconciliationProcessNoteBuilder]
/// A note that describes or explains the processing in a human readable
/// form.
class PaymentReconciliationProcessNoteBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [PaymentReconciliationProcessNoteBuilder]

  PaymentReconciliationProcessNoteBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.text,
    super.disallowExtensions,
  }) : super(
          objectPath: 'PaymentReconciliation.processNote',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory PaymentReconciliationProcessNoteBuilder.empty() =>
      PaymentReconciliationProcessNoteBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PaymentReconciliationProcessNoteBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'PaymentReconciliation.processNote';
    return PaymentReconciliationProcessNoteBuilder(
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
      type: JsonParser.parsePrimitive<NoteTypeBuilder>(
        json,
        'type',
        NoteTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      text: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'text',
        FhirStringBuilder.fromJson,
        '$objectPath.text',
      ),
    );
  }

  /// Deserialize [PaymentReconciliationProcessNoteBuilder]
  /// from a [String] or [YamlMap] object
  factory PaymentReconciliationProcessNoteBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return PaymentReconciliationProcessNoteBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return PaymentReconciliationProcessNoteBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'PaymentReconciliationProcessNoteBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [PaymentReconciliationProcessNoteBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PaymentReconciliationProcessNoteBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return PaymentReconciliationProcessNoteBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'PaymentReconciliationProcessNote';

  /// [type]
  /// The business purpose of the note text.
  NoteTypeBuilder? type;

  /// [text]
  /// The explanation or description associated with the processing.
  FhirStringBuilder? text;

  /// Converts a [PaymentReconciliationProcessNoteBuilder]
  /// to [PaymentReconciliationProcessNote]
  @override
  PaymentReconciliationProcessNote build() =>
      PaymentReconciliationProcessNote.fromJson(toJson());

  /// Converts a [PaymentReconciliationProcessNoteBuilder]
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
    addField('text', text);
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
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
          if (child is NoteTypeBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = NoteTypeBuilder(stringValue);
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
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [PaymentReconciliationProcessNoteBuilder]
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
          type = NoteTypeBuilder.empty();
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

  @override
  PaymentReconciliationProcessNoteBuilder clone() => throw UnimplementedError();
  @override
  PaymentReconciliationProcessNoteBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    NoteTypeBuilder? type,
    FhirStringBuilder? text,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = PaymentReconciliationProcessNoteBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
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
    if (o is! PaymentReconciliationProcessNoteBuilder) {
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
      text,
      o.text,
    )) {
      return false;
    }
    return true;
  }
}
