import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        CoverageEligibilityResponse,
        CoverageEligibilityResponseBenefit,
        CoverageEligibilityResponseError,
        CoverageEligibilityResponseInsurance,
        CoverageEligibilityResponseItem,
        R4ResourceType,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [CoverageEligibilityResponseBuilder]
/// This resource provides eligibility and plan details from the processing
/// of an CoverageEligibilityRequest resource.
class CoverageEligibilityResponseBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [CoverageEligibilityResponseBuilder]

  CoverageEligibilityResponseBuilder({
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
    this.purpose,
    this.patient,
    this.servicedX,
    this.created,
    this.requestor,
    this.request,
    this.outcome,
    this.disposition,
    this.insurer,
    this.insurance,
    this.preAuthRef,
    this.form,
    this.error,
  }) : super(
          objectPath: 'CoverageEligibilityResponse',
          resourceType: R4ResourceType.CoverageEligibilityResponse,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory CoverageEligibilityResponseBuilder.empty() =>
      CoverageEligibilityResponseBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityResponseBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CoverageEligibilityResponse';
    return CoverageEligibilityResponseBuilder(
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
      purpose: JsonParser.parsePrimitiveList<EligibilityResponsePurposeBuilder>(
        json,
        'purpose',
        EligibilityResponsePurposeBuilder.fromJson,
        '$objectPath.purpose',
      ),
      patient: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'patient',
        ReferenceBuilder.fromJson,
        '$objectPath.patient',
      ),
      servicedX: JsonParser.parsePolymorphic<
          ServicedXCoverageEligibilityResponseBuilder>(
        json,
        {
          'servicedDate': FhirDateBuilder.fromJson,
          'servicedPeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
      created: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'created',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.created',
      ),
      requestor: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'requestor',
        ReferenceBuilder.fromJson,
        '$objectPath.requestor',
      ),
      request: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'request',
        ReferenceBuilder.fromJson,
        '$objectPath.request',
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
      insurer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'insurer',
        ReferenceBuilder.fromJson,
        '$objectPath.insurer',
      ),
      insurance: (json['insurance'] as List<dynamic>?)
          ?.map<CoverageEligibilityResponseInsuranceBuilder>(
            (v) => CoverageEligibilityResponseInsuranceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.insurance',
              },
            ),
          )
          .toList(),
      preAuthRef: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'preAuthRef',
        FhirStringBuilder.fromJson,
        '$objectPath.preAuthRef',
      ),
      form: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'form',
        CodeableConceptBuilder.fromJson,
        '$objectPath.form',
      ),
      error: (json['error'] as List<dynamic>?)
          ?.map<CoverageEligibilityResponseErrorBuilder>(
            (v) => CoverageEligibilityResponseErrorBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.error',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CoverageEligibilityResponseBuilder]
  /// from a [String] or [YamlMap] object
  factory CoverageEligibilityResponseBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CoverageEligibilityResponseBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CoverageEligibilityResponseBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CoverageEligibilityResponseBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CoverageEligibilityResponseBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageEligibilityResponseBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CoverageEligibilityResponseBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CoverageEligibilityResponse';

  /// [identifier]
  /// A unique identifier assigned to this coverage eligiblity request.
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// The status of the resource instance.
  FinancialResourceStatusCodesBuilder? status;

  /// [purpose]
  /// Code to specify whether requesting: prior authorization requirements
  /// for some service categories or billing codes; benefits for coverages
  /// specified or discovered; discovery and return of coverages for the
  /// patient; and/or validation that the specified coverage is in-force at
  /// the date/period specified or 'now' if not specified.
  List<EligibilityResponsePurposeBuilder>? purpose;

  /// [patient]
  /// The party who is the beneficiary of the supplied coverage and for whom
  /// eligibility is sought.
  ReferenceBuilder? patient;

  /// [servicedX]
  /// The date or dates when the enclosed suite of services were performed or
  /// completed.
  ServicedXCoverageEligibilityResponseBuilder? servicedX;

  /// Getter for [servicedDate] as a FhirDateBuilder
  FhirDateBuilder? get servicedDate => servicedX?.isAs<FhirDateBuilder>();

  /// Getter for [servicedPeriod] as a PeriodBuilder
  PeriodBuilder? get servicedPeriod => servicedX?.isAs<PeriodBuilder>();

  /// [created]
  /// The date this resource was created.
  FhirDateTimeBuilder? created;

  /// [requestor]
  /// The provider which is responsible for the request.
  ReferenceBuilder? requestor;

  /// [request]
  /// Reference to the original request resource.
  ReferenceBuilder? request;

  /// [outcome]
  /// The outcome of the request processing.
  RemittanceOutcomeBuilder? outcome;

  /// [disposition]
  /// A human readable description of the status of the adjudication.
  FhirStringBuilder? disposition;

  /// [insurer]
  /// The Insurer who issued the coverage in question and is the author of
  /// the response.
  ReferenceBuilder? insurer;

  /// [insurance]
  /// Financial instruments for reimbursement for the health care products
  /// and services.
  List<CoverageEligibilityResponseInsuranceBuilder>? insurance;

  /// [preAuthRef]
  /// A reference from the Insurer to which these services pertain to be used
  /// on further communication and as proof that the request occurred.
  FhirStringBuilder? preAuthRef;

  /// [form]
  /// A code for the form to be used for printing the content.
  CodeableConceptBuilder? form;

  /// [error]
  /// Errors encountered during the processing of the request.
  List<CoverageEligibilityResponseErrorBuilder>? error;

  /// Converts a [CoverageEligibilityResponseBuilder]
  /// to [CoverageEligibilityResponse]
  @override
  CoverageEligibilityResponse build() =>
      CoverageEligibilityResponse.fromJson(toJson());

  /// Converts a [CoverageEligibilityResponseBuilder]
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
    addField('purpose', purpose);
    addField('patient', patient);
    if (servicedX != null) {
      final fhirType = servicedX!.fhirType;
      addField('serviced${fhirType.capitalize()}', servicedX);
    }

    addField('created', created);
    addField('requestor', requestor);
    addField('request', request);
    addField('outcome', outcome);
    addField('disposition', disposition);
    addField('insurer', insurer);
    addField('insurance', insurance);
    addField('preAuthRef', preAuthRef);
    addField('form', form);
    addField('error', error);
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
      'purpose',
      'patient',
      'servicedX',
      'created',
      'requestor',
      'request',
      'outcome',
      'disposition',
      'insurer',
      'insurance',
      'preAuthRef',
      'form',
      'error',
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
      case 'purpose':
        if (purpose != null) {
          fields.addAll(purpose!);
        }
      case 'patient':
        if (patient != null) {
          fields.add(patient!);
        }
      case 'serviced':
        if (servicedX != null) {
          fields.add(servicedX!);
        }
      case 'servicedX':
        if (servicedX != null) {
          fields.add(servicedX!);
        }
      case 'servicedDate':
        if (servicedX is FhirDateBuilder) {
          fields.add(servicedX!);
        }
      case 'servicedPeriod':
        if (servicedX is PeriodBuilder) {
          fields.add(servicedX!);
        }
      case 'created':
        if (created != null) {
          fields.add(created!);
        }
      case 'requestor':
        if (requestor != null) {
          fields.add(requestor!);
        }
      case 'request':
        if (request != null) {
          fields.add(request!);
        }
      case 'outcome':
        if (outcome != null) {
          fields.add(outcome!);
        }
      case 'disposition':
        if (disposition != null) {
          fields.add(disposition!);
        }
      case 'insurer':
        if (insurer != null) {
          fields.add(insurer!);
        }
      case 'insurance':
        if (insurance != null) {
          fields.addAll(insurance!);
        }
      case 'preAuthRef':
        if (preAuthRef != null) {
          fields.add(preAuthRef!);
        }
      case 'form':
        if (form != null) {
          fields.add(form!);
        }
      case 'error':
        if (error != null) {
          fields.addAll(error!);
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
      case 'purpose':
        {
          if (child is List<EligibilityResponsePurposeBuilder>) {
            // Replace or create new list
            purpose = child;
            return;
          } else if (child is EligibilityResponsePurposeBuilder) {
            // Add single element to existing list or create new list
            purpose = [
              ...(purpose ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <EligibilityResponsePurposeBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                // For enums, try to create directly from the string value
                try {
                  final converted =
                      EligibilityResponsePurposeBuilder(stringValue);
                  convertedList.add(converted);
                } catch (e) {
                  // Continue if enum creation fails
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              purpose = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    EligibilityResponsePurposeBuilder(stringValue);
                purpose = [...(purpose ?? []), converted];
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
      case 'patient':
        {
          if (child is ReferenceBuilder) {
            patient = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'servicedX':
        {
          if (child is ServicedXCoverageEligibilityResponseBuilder) {
            servicedX = child;
            return;
          } else {
            if (child is FhirDateBuilder) {
              servicedX = child;
              return;
            }
            if (child is PeriodBuilder) {
              servicedX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'servicedDate':
        {
          if (child is FhirDateBuilder) {
            servicedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'servicedPeriod':
        {
          if (child is PeriodBuilder) {
            servicedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
      case 'requestor':
        {
          if (child is ReferenceBuilder) {
            requestor = child;
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
      case 'insurer':
        {
          if (child is ReferenceBuilder) {
            insurer = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'insurance':
        {
          if (child is List<CoverageEligibilityResponseInsuranceBuilder>) {
            // Replace or create new list
            insurance = child;
            return;
          } else if (child is CoverageEligibilityResponseInsuranceBuilder) {
            // Add single element to existing list or create new list
            insurance = [
              ...(insurance ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'preAuthRef':
        {
          if (child is FhirStringBuilder) {
            preAuthRef = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                preAuthRef = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'form':
        {
          if (child is CodeableConceptBuilder) {
            form = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'error':
        {
          if (child is List<CoverageEligibilityResponseErrorBuilder>) {
            // Replace or create new list
            error = child;
            return;
          } else if (child is CoverageEligibilityResponseErrorBuilder) {
            // Add single element to existing list or create new list
            error = [
              ...(error ?? []),
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
      case 'purpose':
        return ['FhirCodeEnumBuilder'];
      case 'patient':
        return ['ReferenceBuilder'];
      case 'serviced':
      case 'servicedX':
        return [
          'FhirDateBuilder',
          'PeriodBuilder',
        ];
      case 'servicedDate':
        return ['FhirDateBuilder'];
      case 'servicedPeriod':
        return ['PeriodBuilder'];
      case 'created':
        return ['FhirDateTimeBuilder'];
      case 'requestor':
        return ['ReferenceBuilder'];
      case 'request':
        return ['ReferenceBuilder'];
      case 'outcome':
        return ['FhirCodeEnumBuilder'];
      case 'disposition':
        return ['FhirStringBuilder'];
      case 'insurer':
        return ['ReferenceBuilder'];
      case 'insurance':
        return ['CoverageEligibilityResponseInsuranceBuilder'];
      case 'preAuthRef':
        return ['FhirStringBuilder'];
      case 'form':
        return ['CodeableConceptBuilder'];
      case 'error':
        return ['CoverageEligibilityResponseErrorBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CoverageEligibilityResponseBuilder]
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
      case 'purpose':
        {
          purpose = <EligibilityResponsePurposeBuilder>[];
          return;
        }
      case 'patient':
        {
          patient = ReferenceBuilder.empty();
          return;
        }
      case 'serviced':
      case 'servicedX':
      case 'servicedDate':
        {
          servicedX = FhirDateBuilder.empty();
          return;
        }
      case 'servicedPeriod':
        {
          servicedX = PeriodBuilder.empty();
          return;
        }
      case 'created':
        {
          created = FhirDateTimeBuilder.empty();
          return;
        }
      case 'requestor':
        {
          requestor = ReferenceBuilder.empty();
          return;
        }
      case 'request':
        {
          request = ReferenceBuilder.empty();
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
      case 'insurer':
        {
          insurer = ReferenceBuilder.empty();
          return;
        }
      case 'insurance':
        {
          insurance = <CoverageEligibilityResponseInsuranceBuilder>[];
          return;
        }
      case 'preAuthRef':
        {
          preAuthRef = FhirStringBuilder.empty();
          return;
        }
      case 'form':
        {
          form = CodeableConceptBuilder.empty();
          return;
        }
      case 'error':
        {
          error = <CoverageEligibilityResponseErrorBuilder>[];
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
    bool purpose = false,
    bool patient = false,
    bool serviced = false,
    bool created = false,
    bool requestor = false,
    bool request = false,
    bool outcome = false,
    bool disposition = false,
    bool insurer = false,
    bool insurance = false,
    bool preAuthRef = false,
    bool form = false,
    bool error = false,
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
    if (purpose) this.purpose = null;
    if (patient) this.patient = null;
    if (serviced) servicedX = null;
    if (created) this.created = null;
    if (requestor) this.requestor = null;
    if (request) this.request = null;
    if (outcome) this.outcome = null;
    if (disposition) this.disposition = null;
    if (insurer) this.insurer = null;
    if (insurance) this.insurance = null;
    if (preAuthRef) this.preAuthRef = null;
    if (form) this.form = null;
    if (error) this.error = null;
  }

  @override
  CoverageEligibilityResponseBuilder clone() => throw UnimplementedError();
  @override
  CoverageEligibilityResponseBuilder copyWith({
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
    List<EligibilityResponsePurposeBuilder>? purpose,
    ReferenceBuilder? patient,
    ServicedXCoverageEligibilityResponseBuilder? servicedX,
    FhirDateTimeBuilder? created,
    ReferenceBuilder? requestor,
    ReferenceBuilder? request,
    RemittanceOutcomeBuilder? outcome,
    FhirStringBuilder? disposition,
    ReferenceBuilder? insurer,
    List<CoverageEligibilityResponseInsuranceBuilder>? insurance,
    FhirStringBuilder? preAuthRef,
    CodeableConceptBuilder? form,
    List<CoverageEligibilityResponseErrorBuilder>? error,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = CoverageEligibilityResponseBuilder(
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
      purpose: purpose ?? this.purpose,
      patient: patient ?? this.patient,
      servicedX: servicedX ?? this.servicedX,
      created: created ?? this.created,
      requestor: requestor ?? this.requestor,
      request: request ?? this.request,
      outcome: outcome ?? this.outcome,
      disposition: disposition ?? this.disposition,
      insurer: insurer ?? this.insurer,
      insurance: insurance ?? this.insurance,
      preAuthRef: preAuthRef ?? this.preAuthRef,
      form: form ?? this.form,
      error: error ?? this.error,
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
    if (o is! CoverageEligibilityResponseBuilder) {
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
    if (!listEquals<EligibilityResponsePurposeBuilder>(
      purpose,
      o.purpose,
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
      servicedX,
      o.servicedX,
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
      requestor,
      o.requestor,
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
      insurer,
      o.insurer,
    )) {
      return false;
    }
    if (!listEquals<CoverageEligibilityResponseInsuranceBuilder>(
      insurance,
      o.insurance,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      preAuthRef,
      o.preAuthRef,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      form,
      o.form,
    )) {
      return false;
    }
    if (!listEquals<CoverageEligibilityResponseErrorBuilder>(
      error,
      o.error,
    )) {
      return false;
    }
    return true;
  }
}

/// [CoverageEligibilityResponseInsuranceBuilder]
/// Financial instruments for reimbursement for the health care products
/// and services.
class CoverageEligibilityResponseInsuranceBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [CoverageEligibilityResponseInsuranceBuilder]

  CoverageEligibilityResponseInsuranceBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.coverage,
    this.inforce,
    this.benefitPeriod,
    this.item,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CoverageEligibilityResponse.insurance',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory CoverageEligibilityResponseInsuranceBuilder.empty() =>
      CoverageEligibilityResponseInsuranceBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityResponseInsuranceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CoverageEligibilityResponse.insurance';
    return CoverageEligibilityResponseInsuranceBuilder(
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
      coverage: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'coverage',
        ReferenceBuilder.fromJson,
        '$objectPath.coverage',
      ),
      inforce: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'inforce',
        FhirBooleanBuilder.fromJson,
        '$objectPath.inforce',
      ),
      benefitPeriod: JsonParser.parseObject<PeriodBuilder>(
        json,
        'benefitPeriod',
        PeriodBuilder.fromJson,
        '$objectPath.benefitPeriod',
      ),
      item: (json['item'] as List<dynamic>?)
          ?.map<CoverageEligibilityResponseItemBuilder>(
            (v) => CoverageEligibilityResponseItemBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.item',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CoverageEligibilityResponseInsuranceBuilder]
  /// from a [String] or [YamlMap] object
  factory CoverageEligibilityResponseInsuranceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CoverageEligibilityResponseInsuranceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CoverageEligibilityResponseInsuranceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CoverageEligibilityResponseInsuranceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CoverageEligibilityResponseInsuranceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageEligibilityResponseInsuranceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CoverageEligibilityResponseInsuranceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CoverageEligibilityResponseInsurance';

  /// [coverage]
  /// Reference to the insurance card level information contained in the
  /// Coverage resource. The coverage issuing insurer will use these details
  /// to locate the patient's actual coverage within the insurer's
  /// information system.
  ReferenceBuilder? coverage;

  /// [inforce]
  /// Flag indicating if the coverage provided is inforce currently if no
  /// service date(s) specified or for the whole duration of the service
  /// dates.
  FhirBooleanBuilder? inforce;

  /// [benefitPeriod]
  /// The term of the benefits documented in this response.
  PeriodBuilder? benefitPeriod;

  /// [item]
  /// Benefits and optionally current balances, and authorization details by
  /// category or service.
  List<CoverageEligibilityResponseItemBuilder>? item;

  /// Converts a [CoverageEligibilityResponseInsuranceBuilder]
  /// to [CoverageEligibilityResponseInsurance]
  @override
  CoverageEligibilityResponseInsurance build() =>
      CoverageEligibilityResponseInsurance.fromJson(toJson());

  /// Converts a [CoverageEligibilityResponseInsuranceBuilder]
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
    addField('coverage', coverage);
    addField('inforce', inforce);
    addField('benefitPeriod', benefitPeriod);
    addField('item', item);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'coverage',
      'inforce',
      'benefitPeriod',
      'item',
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
      case 'coverage':
        if (coverage != null) {
          fields.add(coverage!);
        }
      case 'inforce':
        if (inforce != null) {
          fields.add(inforce!);
        }
      case 'benefitPeriod':
        if (benefitPeriod != null) {
          fields.add(benefitPeriod!);
        }
      case 'item':
        if (item != null) {
          fields.addAll(item!);
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
      case 'coverage':
        {
          if (child is ReferenceBuilder) {
            coverage = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'inforce':
        {
          if (child is FhirBooleanBuilder) {
            inforce = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                inforce = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'benefitPeriod':
        {
          if (child is PeriodBuilder) {
            benefitPeriod = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'item':
        {
          if (child is List<CoverageEligibilityResponseItemBuilder>) {
            // Replace or create new list
            item = child;
            return;
          } else if (child is CoverageEligibilityResponseItemBuilder) {
            // Add single element to existing list or create new list
            item = [
              ...(item ?? []),
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
      case 'coverage':
        return ['ReferenceBuilder'];
      case 'inforce':
        return ['FhirBooleanBuilder'];
      case 'benefitPeriod':
        return ['PeriodBuilder'];
      case 'item':
        return ['CoverageEligibilityResponseItemBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CoverageEligibilityResponseInsuranceBuilder]
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
      case 'coverage':
        {
          coverage = ReferenceBuilder.empty();
          return;
        }
      case 'inforce':
        {
          inforce = FhirBooleanBuilder.empty();
          return;
        }
      case 'benefitPeriod':
        {
          benefitPeriod = PeriodBuilder.empty();
          return;
        }
      case 'item':
        {
          item = <CoverageEligibilityResponseItemBuilder>[];
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
    bool coverage = false,
    bool inforce = false,
    bool benefitPeriod = false,
    bool item = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (coverage) this.coverage = null;
    if (inforce) this.inforce = null;
    if (benefitPeriod) this.benefitPeriod = null;
    if (item) this.item = null;
  }

  @override
  CoverageEligibilityResponseInsuranceBuilder clone() =>
      throw UnimplementedError();
  @override
  CoverageEligibilityResponseInsuranceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    ReferenceBuilder? coverage,
    FhirBooleanBuilder? inforce,
    PeriodBuilder? benefitPeriod,
    List<CoverageEligibilityResponseItemBuilder>? item,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = CoverageEligibilityResponseInsuranceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      coverage: coverage ?? this.coverage,
      inforce: inforce ?? this.inforce,
      benefitPeriod: benefitPeriod ?? this.benefitPeriod,
      item: item ?? this.item,
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
    if (o is! CoverageEligibilityResponseInsuranceBuilder) {
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
      coverage,
      o.coverage,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      inforce,
      o.inforce,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      benefitPeriod,
      o.benefitPeriod,
    )) {
      return false;
    }
    if (!listEquals<CoverageEligibilityResponseItemBuilder>(
      item,
      o.item,
    )) {
      return false;
    }
    return true;
  }
}

/// [CoverageEligibilityResponseItemBuilder]
/// Benefits and optionally current balances, and authorization details by
/// category or service.
class CoverageEligibilityResponseItemBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [CoverageEligibilityResponseItemBuilder]

  CoverageEligibilityResponseItemBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.category,
    this.productOrService,
    this.modifier,
    this.provider,
    this.excluded,
    this.name,
    this.description,
    this.network,
    this.unit,
    this.term,
    this.benefit,
    this.authorizationRequired,
    this.authorizationSupporting,
    this.authorizationUrl,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CoverageEligibilityResponse.insurance.item',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory CoverageEligibilityResponseItemBuilder.empty() =>
      CoverageEligibilityResponseItemBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityResponseItemBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CoverageEligibilityResponse.insurance.item';
    return CoverageEligibilityResponseItemBuilder(
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
      category: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'category',
        CodeableConceptBuilder.fromJson,
        '$objectPath.category',
      ),
      productOrService: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'productOrService',
        CodeableConceptBuilder.fromJson,
        '$objectPath.productOrService',
      ),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifier',
              },
            ),
          )
          .toList(),
      provider: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'provider',
        ReferenceBuilder.fromJson,
        '$objectPath.provider',
      ),
      excluded: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'excluded',
        FhirBooleanBuilder.fromJson,
        '$objectPath.excluded',
      ),
      name: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'name',
        FhirStringBuilder.fromJson,
        '$objectPath.name',
      ),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      network: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'network',
        CodeableConceptBuilder.fromJson,
        '$objectPath.network',
      ),
      unit: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'unit',
        CodeableConceptBuilder.fromJson,
        '$objectPath.unit',
      ),
      term: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'term',
        CodeableConceptBuilder.fromJson,
        '$objectPath.term',
      ),
      benefit: (json['benefit'] as List<dynamic>?)
          ?.map<CoverageEligibilityResponseBenefitBuilder>(
            (v) => CoverageEligibilityResponseBenefitBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.benefit',
              },
            ),
          )
          .toList(),
      authorizationRequired: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'authorizationRequired',
        FhirBooleanBuilder.fromJson,
        '$objectPath.authorizationRequired',
      ),
      authorizationSupporting:
          (json['authorizationSupporting'] as List<dynamic>?)
              ?.map<CodeableConceptBuilder>(
                (v) => CodeableConceptBuilder.fromJson(
                  {
                    ...v as Map<String, dynamic>,
                    'objectPath': '$objectPath.authorizationSupporting',
                  },
                ),
              )
              .toList(),
      authorizationUrl: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'authorizationUrl',
        FhirUriBuilder.fromJson,
        '$objectPath.authorizationUrl',
      ),
    );
  }

  /// Deserialize [CoverageEligibilityResponseItemBuilder]
  /// from a [String] or [YamlMap] object
  factory CoverageEligibilityResponseItemBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CoverageEligibilityResponseItemBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CoverageEligibilityResponseItemBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CoverageEligibilityResponseItemBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CoverageEligibilityResponseItemBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageEligibilityResponseItemBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CoverageEligibilityResponseItemBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CoverageEligibilityResponseItem';

  /// [category]
  /// Code to identify the general type of benefits under which products and
  /// services are provided.
  CodeableConceptBuilder? category;

  /// [productOrService]
  /// This contains the product, service, drug or other billing code for the
  /// item.
  CodeableConceptBuilder? productOrService;

  /// [modifier]
  /// Item typification or modifiers codes to convey additional context for
  /// the product or service.
  List<CodeableConceptBuilder>? modifier;

  /// [provider]
  /// The practitioner who is eligible for the provision of the product or
  /// service.
  ReferenceBuilder? provider;

  /// [excluded]
  /// True if the indicated class of service is excluded from the plan,
  /// missing or False indicates the product or service is included in the
  /// coverage.
  FhirBooleanBuilder? excluded;

  /// [name]
  /// A short name or tag for the benefit.
  FhirStringBuilder? name;

  /// [description]
  /// A richer description of the benefit or services covered.
  FhirStringBuilder? description;

  /// [network]
  /// Is a flag to indicate whether the benefits refer to in-network
  /// providers or out-of-network providers.
  CodeableConceptBuilder? network;

  /// [unit]
  /// Indicates if the benefits apply to an individual or to the family.
  CodeableConceptBuilder? unit;

  /// [term]
  /// The term or period of the values such as 'maximum lifetime benefit' or
  /// 'maximum annual visits'.
  CodeableConceptBuilder? term;

  /// [benefit]
  /// Benefits used to date.
  List<CoverageEligibilityResponseBenefitBuilder>? benefit;

  /// [authorizationRequired]
  /// A boolean flag indicating whether a preauthorization is required prior
  /// to actual service delivery.
  FhirBooleanBuilder? authorizationRequired;

  /// [authorizationSupporting]
  /// Codes or comments regarding information or actions associated with the
  /// preauthorization.
  List<CodeableConceptBuilder>? authorizationSupporting;

  /// [authorizationUrl]
  /// A web location for obtaining requirements or descriptive information
  /// regarding the preauthorization.
  FhirUriBuilder? authorizationUrl;

  /// Converts a [CoverageEligibilityResponseItemBuilder]
  /// to [CoverageEligibilityResponseItem]
  @override
  CoverageEligibilityResponseItem build() =>
      CoverageEligibilityResponseItem.fromJson(toJson());

  /// Converts a [CoverageEligibilityResponseItemBuilder]
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
    addField('category', category);
    addField('productOrService', productOrService);
    addField('modifier', modifier);
    addField('provider', provider);
    addField('excluded', excluded);
    addField('name', name);
    addField('description', description);
    addField('network', network);
    addField('unit', unit);
    addField('term', term);
    addField('benefit', benefit);
    addField('authorizationRequired', authorizationRequired);
    addField('authorizationSupporting', authorizationSupporting);
    addField('authorizationUrl', authorizationUrl);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'category',
      'productOrService',
      'modifier',
      'provider',
      'excluded',
      'name',
      'description',
      'network',
      'unit',
      'term',
      'benefit',
      'authorizationRequired',
      'authorizationSupporting',
      'authorizationUrl',
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
      case 'category':
        if (category != null) {
          fields.add(category!);
        }
      case 'productOrService':
        if (productOrService != null) {
          fields.add(productOrService!);
        }
      case 'modifier':
        if (modifier != null) {
          fields.addAll(modifier!);
        }
      case 'provider':
        if (provider != null) {
          fields.add(provider!);
        }
      case 'excluded':
        if (excluded != null) {
          fields.add(excluded!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'network':
        if (network != null) {
          fields.add(network!);
        }
      case 'unit':
        if (unit != null) {
          fields.add(unit!);
        }
      case 'term':
        if (term != null) {
          fields.add(term!);
        }
      case 'benefit':
        if (benefit != null) {
          fields.addAll(benefit!);
        }
      case 'authorizationRequired':
        if (authorizationRequired != null) {
          fields.add(authorizationRequired!);
        }
      case 'authorizationSupporting':
        if (authorizationSupporting != null) {
          fields.addAll(authorizationSupporting!);
        }
      case 'authorizationUrl':
        if (authorizationUrl != null) {
          fields.add(authorizationUrl!);
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
      case 'category':
        {
          if (child is CodeableConceptBuilder) {
            category = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'productOrService':
        {
          if (child is CodeableConceptBuilder) {
            productOrService = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifier':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            modifier = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            modifier = [
              ...(modifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'provider':
        {
          if (child is ReferenceBuilder) {
            provider = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'excluded':
        {
          if (child is FhirBooleanBuilder) {
            excluded = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                excluded = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'name':
        {
          if (child is FhirStringBuilder) {
            name = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                name = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
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
      case 'network':
        {
          if (child is CodeableConceptBuilder) {
            network = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'unit':
        {
          if (child is CodeableConceptBuilder) {
            unit = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'term':
        {
          if (child is CodeableConceptBuilder) {
            term = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'benefit':
        {
          if (child is List<CoverageEligibilityResponseBenefitBuilder>) {
            // Replace or create new list
            benefit = child;
            return;
          } else if (child is CoverageEligibilityResponseBenefitBuilder) {
            // Add single element to existing list or create new list
            benefit = [
              ...(benefit ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'authorizationRequired':
        {
          if (child is FhirBooleanBuilder) {
            authorizationRequired = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                authorizationRequired = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'authorizationSupporting':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            authorizationSupporting = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            authorizationSupporting = [
              ...(authorizationSupporting ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'authorizationUrl':
        {
          if (child is FhirUriBuilder) {
            authorizationUrl = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                authorizationUrl = converted;
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
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'productOrService':
        return ['CodeableConceptBuilder'];
      case 'modifier':
        return ['CodeableConceptBuilder'];
      case 'provider':
        return ['ReferenceBuilder'];
      case 'excluded':
        return ['FhirBooleanBuilder'];
      case 'name':
        return ['FhirStringBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'network':
        return ['CodeableConceptBuilder'];
      case 'unit':
        return ['CodeableConceptBuilder'];
      case 'term':
        return ['CodeableConceptBuilder'];
      case 'benefit':
        return ['CoverageEligibilityResponseBenefitBuilder'];
      case 'authorizationRequired':
        return ['FhirBooleanBuilder'];
      case 'authorizationSupporting':
        return ['CodeableConceptBuilder'];
      case 'authorizationUrl':
        return ['FhirUriBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CoverageEligibilityResponseItemBuilder]
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
      case 'category':
        {
          category = CodeableConceptBuilder.empty();
          return;
        }
      case 'productOrService':
        {
          productOrService = CodeableConceptBuilder.empty();
          return;
        }
      case 'modifier':
        {
          modifier = <CodeableConceptBuilder>[];
          return;
        }
      case 'provider':
        {
          provider = ReferenceBuilder.empty();
          return;
        }
      case 'excluded':
        {
          excluded = FhirBooleanBuilder.empty();
          return;
        }
      case 'name':
        {
          name = FhirStringBuilder.empty();
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'network':
        {
          network = CodeableConceptBuilder.empty();
          return;
        }
      case 'unit':
        {
          unit = CodeableConceptBuilder.empty();
          return;
        }
      case 'term':
        {
          term = CodeableConceptBuilder.empty();
          return;
        }
      case 'benefit':
        {
          benefit = <CoverageEligibilityResponseBenefitBuilder>[];
          return;
        }
      case 'authorizationRequired':
        {
          authorizationRequired = FhirBooleanBuilder.empty();
          return;
        }
      case 'authorizationSupporting':
        {
          authorizationSupporting = <CodeableConceptBuilder>[];
          return;
        }
      case 'authorizationUrl':
        {
          authorizationUrl = FhirUriBuilder.empty();
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
    bool category = false,
    bool productOrService = false,
    bool modifier = false,
    bool provider = false,
    bool excluded = false,
    bool name = false,
    bool description = false,
    bool network = false,
    bool unit = false,
    bool term = false,
    bool benefit = false,
    bool authorizationRequired = false,
    bool authorizationSupporting = false,
    bool authorizationUrl = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (category) this.category = null;
    if (productOrService) this.productOrService = null;
    if (modifier) this.modifier = null;
    if (provider) this.provider = null;
    if (excluded) this.excluded = null;
    if (name) this.name = null;
    if (description) this.description = null;
    if (network) this.network = null;
    if (unit) this.unit = null;
    if (term) this.term = null;
    if (benefit) this.benefit = null;
    if (authorizationRequired) this.authorizationRequired = null;
    if (authorizationSupporting) this.authorizationSupporting = null;
    if (authorizationUrl) this.authorizationUrl = null;
  }

  @override
  CoverageEligibilityResponseItemBuilder clone() => throw UnimplementedError();
  @override
  CoverageEligibilityResponseItemBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? category,
    CodeableConceptBuilder? productOrService,
    List<CodeableConceptBuilder>? modifier,
    ReferenceBuilder? provider,
    FhirBooleanBuilder? excluded,
    FhirStringBuilder? name,
    FhirStringBuilder? description,
    CodeableConceptBuilder? network,
    CodeableConceptBuilder? unit,
    CodeableConceptBuilder? term,
    List<CoverageEligibilityResponseBenefitBuilder>? benefit,
    FhirBooleanBuilder? authorizationRequired,
    List<CodeableConceptBuilder>? authorizationSupporting,
    FhirUriBuilder? authorizationUrl,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = CoverageEligibilityResponseItemBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      provider: provider ?? this.provider,
      excluded: excluded ?? this.excluded,
      name: name ?? this.name,
      description: description ?? this.description,
      network: network ?? this.network,
      unit: unit ?? this.unit,
      term: term ?? this.term,
      benefit: benefit ?? this.benefit,
      authorizationRequired:
          authorizationRequired ?? this.authorizationRequired,
      authorizationSupporting:
          authorizationSupporting ?? this.authorizationSupporting,
      authorizationUrl: authorizationUrl ?? this.authorizationUrl,
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
    if (o is! CoverageEligibilityResponseItemBuilder) {
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
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      productOrService,
      o.productOrService,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      modifier,
      o.modifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      provider,
      o.provider,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      excluded,
      o.excluded,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      name,
      o.name,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      network,
      o.network,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      unit,
      o.unit,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      term,
      o.term,
    )) {
      return false;
    }
    if (!listEquals<CoverageEligibilityResponseBenefitBuilder>(
      benefit,
      o.benefit,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      authorizationRequired,
      o.authorizationRequired,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      authorizationSupporting,
      o.authorizationSupporting,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      authorizationUrl,
      o.authorizationUrl,
    )) {
      return false;
    }
    return true;
  }
}

/// [CoverageEligibilityResponseBenefitBuilder]
/// Benefits used to date.
class CoverageEligibilityResponseBenefitBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [CoverageEligibilityResponseBenefitBuilder]

  CoverageEligibilityResponseBenefitBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.allowedX,
    this.usedX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CoverageEligibilityResponse.insurance.item.benefit',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory CoverageEligibilityResponseBenefitBuilder.empty() =>
      CoverageEligibilityResponseBenefitBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityResponseBenefitBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CoverageEligibilityResponse.insurance.item.benefit';
    return CoverageEligibilityResponseBenefitBuilder(
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
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      allowedX: JsonParser.parsePolymorphic<
          AllowedXCoverageEligibilityResponseBenefitBuilder>(
        json,
        {
          'allowedUnsignedInt': FhirUnsignedIntBuilder.fromJson,
          'allowedString': FhirStringBuilder.fromJson,
          'allowedMoney': MoneyBuilder.fromJson,
        },
        objectPath,
      ),
      usedX: JsonParser.parsePolymorphic<
          UsedXCoverageEligibilityResponseBenefitBuilder>(
        json,
        {
          'usedUnsignedInt': FhirUnsignedIntBuilder.fromJson,
          'usedString': FhirStringBuilder.fromJson,
          'usedMoney': MoneyBuilder.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [CoverageEligibilityResponseBenefitBuilder]
  /// from a [String] or [YamlMap] object
  factory CoverageEligibilityResponseBenefitBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CoverageEligibilityResponseBenefitBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CoverageEligibilityResponseBenefitBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CoverageEligibilityResponseBenefitBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CoverageEligibilityResponseBenefitBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageEligibilityResponseBenefitBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CoverageEligibilityResponseBenefitBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CoverageEligibilityResponseBenefit';

  /// [type]
  /// Classification of benefit being provided.
  CodeableConceptBuilder? type;

  /// [allowedX]
  /// The quantity of the benefit which is permitted under the coverage.
  AllowedXCoverageEligibilityResponseBenefitBuilder? allowedX;

  /// Getter for [allowedUnsignedInt] as a FhirUnsignedIntBuilder
  FhirUnsignedIntBuilder? get allowedUnsignedInt =>
      allowedX?.isAs<FhirUnsignedIntBuilder>();

  /// Getter for [allowedString] as a FhirStringBuilder
  FhirStringBuilder? get allowedString => allowedX?.isAs<FhirStringBuilder>();

  /// Getter for [allowedMoney] as a MoneyBuilder
  MoneyBuilder? get allowedMoney => allowedX?.isAs<MoneyBuilder>();

  /// [usedX]
  /// The quantity of the benefit which have been consumed to date.
  UsedXCoverageEligibilityResponseBenefitBuilder? usedX;

  /// Getter for [usedUnsignedInt] as a FhirUnsignedIntBuilder
  FhirUnsignedIntBuilder? get usedUnsignedInt =>
      usedX?.isAs<FhirUnsignedIntBuilder>();

  /// Getter for [usedString] as a FhirStringBuilder
  FhirStringBuilder? get usedString => usedX?.isAs<FhirStringBuilder>();

  /// Getter for [usedMoney] as a MoneyBuilder
  MoneyBuilder? get usedMoney => usedX?.isAs<MoneyBuilder>();

  /// Converts a [CoverageEligibilityResponseBenefitBuilder]
  /// to [CoverageEligibilityResponseBenefit]
  @override
  CoverageEligibilityResponseBenefit build() =>
      CoverageEligibilityResponseBenefit.fromJson(toJson());

  /// Converts a [CoverageEligibilityResponseBenefitBuilder]
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
    if (allowedX != null) {
      final fhirType = allowedX!.fhirType;
      addField('allowed${fhirType.capitalize()}', allowedX);
    }

    if (usedX != null) {
      final fhirType = usedX!.fhirType;
      addField('used${fhirType.capitalize()}', usedX);
    }

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
      'allowedX',
      'usedX',
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
      case 'allowed':
        if (allowedX != null) {
          fields.add(allowedX!);
        }
      case 'allowedX':
        if (allowedX != null) {
          fields.add(allowedX!);
        }
      case 'allowedUnsignedInt':
        if (allowedX is FhirUnsignedIntBuilder) {
          fields.add(allowedX!);
        }
      case 'allowedString':
        if (allowedX is FhirStringBuilder) {
          fields.add(allowedX!);
        }
      case 'allowedMoney':
        if (allowedX is MoneyBuilder) {
          fields.add(allowedX!);
        }
      case 'used':
        if (usedX != null) {
          fields.add(usedX!);
        }
      case 'usedX':
        if (usedX != null) {
          fields.add(usedX!);
        }
      case 'usedUnsignedInt':
        if (usedX is FhirUnsignedIntBuilder) {
          fields.add(usedX!);
        }
      case 'usedString':
        if (usedX is FhirStringBuilder) {
          fields.add(usedX!);
        }
      case 'usedMoney':
        if (usedX is MoneyBuilder) {
          fields.add(usedX!);
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
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'allowedX':
        {
          if (child is AllowedXCoverageEligibilityResponseBenefitBuilder) {
            allowedX = child;
            return;
          } else {
            if (child is FhirUnsignedIntBuilder) {
              allowedX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              allowedX = child;
              return;
            }
            if (child is MoneyBuilder) {
              allowedX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'allowedUnsignedInt':
        {
          if (child is FhirUnsignedIntBuilder) {
            allowedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'allowedString':
        {
          if (child is FhirStringBuilder) {
            allowedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'allowedMoney':
        {
          if (child is MoneyBuilder) {
            allowedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'usedX':
        {
          if (child is UsedXCoverageEligibilityResponseBenefitBuilder) {
            usedX = child;
            return;
          } else {
            if (child is FhirUnsignedIntBuilder) {
              usedX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              usedX = child;
              return;
            }
            if (child is MoneyBuilder) {
              usedX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'usedUnsignedInt':
        {
          if (child is FhirUnsignedIntBuilder) {
            usedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'usedString':
        {
          if (child is FhirStringBuilder) {
            usedX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'usedMoney':
        {
          if (child is MoneyBuilder) {
            usedX = child;
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'allowed':
      case 'allowedX':
        return [
          'FhirUnsignedIntBuilder',
          'FhirStringBuilder',
          'MoneyBuilder',
        ];
      case 'allowedUnsignedInt':
        return ['FhirUnsignedIntBuilder'];
      case 'allowedString':
        return ['FhirStringBuilder'];
      case 'allowedMoney':
        return ['MoneyBuilder'];
      case 'used':
      case 'usedX':
        return [
          'FhirUnsignedIntBuilder',
          'FhirStringBuilder',
          'MoneyBuilder',
        ];
      case 'usedUnsignedInt':
        return ['FhirUnsignedIntBuilder'];
      case 'usedString':
        return ['FhirStringBuilder'];
      case 'usedMoney':
        return ['MoneyBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CoverageEligibilityResponseBenefitBuilder]
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
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'allowed':
      case 'allowedX':
      case 'allowedUnsignedInt':
        {
          allowedX = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'allowedString':
        {
          allowedX = FhirStringBuilder.empty();
          return;
        }
      case 'allowedMoney':
        {
          allowedX = MoneyBuilder.empty();
          return;
        }
      case 'used':
      case 'usedX':
      case 'usedUnsignedInt':
        {
          usedX = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'usedString':
        {
          usedX = FhirStringBuilder.empty();
          return;
        }
      case 'usedMoney':
        {
          usedX = MoneyBuilder.empty();
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
    bool allowed = false,
    bool used = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (type) this.type = null;
    if (allowed) allowedX = null;
    if (used) usedX = null;
  }

  @override
  CoverageEligibilityResponseBenefitBuilder clone() =>
      throw UnimplementedError();
  @override
  CoverageEligibilityResponseBenefitBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    AllowedXCoverageEligibilityResponseBenefitBuilder? allowedX,
    UsedXCoverageEligibilityResponseBenefitBuilder? usedX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = CoverageEligibilityResponseBenefitBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      allowedX: allowedX ?? this.allowedX,
      usedX: usedX ?? this.usedX,
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
    if (o is! CoverageEligibilityResponseBenefitBuilder) {
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
      allowedX,
      o.allowedX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      usedX,
      o.usedX,
    )) {
      return false;
    }
    return true;
  }
}

/// [CoverageEligibilityResponseErrorBuilder]
/// Errors encountered during the processing of the request.
class CoverageEligibilityResponseErrorBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [CoverageEligibilityResponseErrorBuilder]

  CoverageEligibilityResponseErrorBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CoverageEligibilityResponse.error',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory CoverageEligibilityResponseErrorBuilder.empty() =>
      CoverageEligibilityResponseErrorBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityResponseErrorBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CoverageEligibilityResponse.error';
    return CoverageEligibilityResponseErrorBuilder(
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
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
    );
  }

  /// Deserialize [CoverageEligibilityResponseErrorBuilder]
  /// from a [String] or [YamlMap] object
  factory CoverageEligibilityResponseErrorBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CoverageEligibilityResponseErrorBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CoverageEligibilityResponseErrorBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CoverageEligibilityResponseErrorBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CoverageEligibilityResponseErrorBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageEligibilityResponseErrorBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CoverageEligibilityResponseErrorBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CoverageEligibilityResponseError';

  /// [code]
  /// An error code,from a specified code system, which details why the
  /// eligibility check could not be performed.
  CodeableConceptBuilder? code;

  /// Converts a [CoverageEligibilityResponseErrorBuilder]
  /// to [CoverageEligibilityResponseError]
  @override
  CoverageEligibilityResponseError build() =>
      CoverageEligibilityResponseError.fromJson(toJson());

  /// Converts a [CoverageEligibilityResponseErrorBuilder]
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
    addField('code', code);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
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
      case 'code':
        if (code != null) {
          fields.add(code!);
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
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
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
      case 'code':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [CoverageEligibilityResponseErrorBuilder]
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
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
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
    bool code = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (code) this.code = null;
  }

  @override
  CoverageEligibilityResponseErrorBuilder clone() => throw UnimplementedError();
  @override
  CoverageEligibilityResponseErrorBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? code,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = CoverageEligibilityResponseErrorBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
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
    if (o is! CoverageEligibilityResponseErrorBuilder) {
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
      code,
      o.code,
    )) {
      return false;
    }
    return true;
  }
}
