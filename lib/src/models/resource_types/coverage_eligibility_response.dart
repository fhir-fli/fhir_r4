import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [CoverageEligibilityResponse]
/// This resource provides eligibility and plan details from the processing
/// of an CoverageEligibilityRequest resource.
class CoverageEligibilityResponse extends DomainResource {
  /// Primary constructor for
  /// [CoverageEligibilityResponse]

  const CoverageEligibilityResponse({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    required this.purpose,
    required this.patient,
    this.servicedX,
    required this.created,
    this.requestor,
    required this.request,
    required this.outcome,
    this.disposition,
    required this.insurer,
    this.insurance,
    this.preAuthRef,
    this.form,
    this.error,
  }) : super(
          objectPath: 'CoverageEligibilityResponse',
          resourceType: R4ResourceType.CoverageEligibilityResponse,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CoverageEligibilityResponse.empty() => CoverageEligibilityResponse(
        status: FinancialResourceStatusCodes.values.first,
        purpose: <EligibilityResponsePurpose>[],
        patient: Reference.empty(),
        created: FhirDateTime.empty(),
        request: Reference.empty(),
        outcome: RemittanceOutcome.values.first,
        insurer: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CoverageEligibilityResponse';
    return CoverageEligibilityResponse(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<FinancialResourceStatusCodes>(
        json,
        'status',
        FinancialResourceStatusCodes.fromJson,
        '$objectPath.status',
      )!,
      purpose: JsonParser.parsePrimitiveList<EligibilityResponsePurpose>(
        json,
        'purpose',
        EligibilityResponsePurpose.fromJson,
        '$objectPath.purpose',
      )!,
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
        '$objectPath.patient',
      )!,
      servicedX:
          JsonParser.parsePolymorphic<ServicedXCoverageEligibilityResponse>(
        json,
        {
          'servicedDate': FhirDate.fromJson,
          'servicedPeriod': Period.fromJson,
        },
        objectPath,
      ),
      created: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'created',
        FhirDateTime.fromJson,
        '$objectPath.created',
      )!,
      requestor: JsonParser.parseObject<Reference>(
        json,
        'requestor',
        Reference.fromJson,
        '$objectPath.requestor',
      ),
      request: JsonParser.parseObject<Reference>(
        json,
        'request',
        Reference.fromJson,
        '$objectPath.request',
      )!,
      outcome: JsonParser.parsePrimitive<RemittanceOutcome>(
        json,
        'outcome',
        RemittanceOutcome.fromJson,
        '$objectPath.outcome',
      )!,
      disposition: JsonParser.parsePrimitive<FhirString>(
        json,
        'disposition',
        FhirString.fromJson,
        '$objectPath.disposition',
      ),
      insurer: JsonParser.parseObject<Reference>(
        json,
        'insurer',
        Reference.fromJson,
        '$objectPath.insurer',
      )!,
      insurance: (json['insurance'] as List<dynamic>?)
          ?.map<CoverageEligibilityResponseInsurance>(
            (v) => CoverageEligibilityResponseInsurance.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.insurance',
              },
            ),
          )
          .toList(),
      preAuthRef: JsonParser.parsePrimitive<FhirString>(
        json,
        'preAuthRef',
        FhirString.fromJson,
        '$objectPath.preAuthRef',
      ),
      form: JsonParser.parseObject<CodeableConcept>(
        json,
        'form',
        CodeableConcept.fromJson,
        '$objectPath.form',
      ),
      error: (json['error'] as List<dynamic>?)
          ?.map<CoverageEligibilityResponseError>(
            (v) => CoverageEligibilityResponseError.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.error',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CoverageEligibilityResponse]
  /// from a [String] or [YamlMap] object
  factory CoverageEligibilityResponse.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CoverageEligibilityResponse.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CoverageEligibilityResponse.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CoverageEligibilityResponse '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CoverageEligibilityResponse]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageEligibilityResponse.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CoverageEligibilityResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CoverageEligibilityResponse';

  /// [identifier]
  /// A unique identifier assigned to this coverage eligiblity request.
  final List<Identifier>? identifier;

  /// [status]
  /// The status of the resource instance.
  final FinancialResourceStatusCodes status;

  /// [purpose]
  /// Code to specify whether requesting: prior authorization requirements
  /// for some service categories or billing codes; benefits for coverages
  /// specified or discovered; discovery and return of coverages for the
  /// patient; and/or validation that the specified coverage is in-force at
  /// the date/period specified or 'now' if not specified.
  final List<EligibilityResponsePurpose> purpose;

  /// [patient]
  /// The party who is the beneficiary of the supplied coverage and for whom
  /// eligibility is sought.
  final Reference patient;

  /// [servicedX]
  /// The date or dates when the enclosed suite of services were performed or
  /// completed.
  final ServicedXCoverageEligibilityResponse? servicedX;

  /// Getter for [servicedDate] as a FhirDate
  FhirDate? get servicedDate => servicedX?.isAs<FhirDate>();

  /// Getter for [servicedPeriod] as a Period
  Period? get servicedPeriod => servicedX?.isAs<Period>();

  /// [created]
  /// The date this resource was created.
  final FhirDateTime created;

  /// [requestor]
  /// The provider which is responsible for the request.
  final Reference? requestor;

  /// [request]
  /// Reference to the original request resource.
  final Reference request;

  /// [outcome]
  /// The outcome of the request processing.
  final RemittanceOutcome outcome;

  /// [disposition]
  /// A human readable description of the status of the adjudication.
  final FhirString? disposition;

  /// [insurer]
  /// The Insurer who issued the coverage in question and is the author of
  /// the response.
  final Reference insurer;

  /// [insurance]
  /// Financial instruments for reimbursement for the health care products
  /// and services.
  final List<CoverageEligibilityResponseInsurance>? insurance;

  /// [preAuthRef]
  /// A reference from the Insurer to which these services pertain to be used
  /// on further communication and as proof that the request occurred.
  final FhirString? preAuthRef;

  /// [form]
  /// A code for the form to be used for printing the content.
  final CodeableConcept? form;

  /// [error]
  /// Errors encountered during the processing of the request.
  final List<CoverageEligibilityResponseError>? error;
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
        fields.add(status);
      case 'purpose':
        fields.addAll(purpose);
      case 'patient':
        fields.add(patient);
      case 'serviced':
        fields.add(servicedX!);
      case 'servicedX':
        fields.add(servicedX!);
      case 'servicedDate':
        if (servicedX is FhirDate) {
          fields.add(servicedX!);
        }
      case 'servicedPeriod':
        if (servicedX is Period) {
          fields.add(servicedX!);
        }
      case 'created':
        fields.add(created);
      case 'requestor':
        if (requestor != null) {
          fields.add(requestor!);
        }
      case 'request':
        fields.add(request);
      case 'outcome':
        fields.add(outcome);
      case 'disposition':
        if (disposition != null) {
          fields.add(disposition!);
        }
      case 'insurer':
        fields.add(insurer);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            return copyWith(contained: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'status':
        {
          if (child is FinancialResourceStatusCodes) {
            return copyWith(status: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'purpose':
        {
          if (child is List<EligibilityResponsePurpose>) {
            return copyWith(purpose: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'patient':
        {
          if (child is Reference) {
            return copyWith(patient: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'servicedX':
        {
          if (child is ServicedXCoverageEligibilityResponse) {
            // child is e.g. SubjectX union
            return copyWith(servicedX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'servicedFhirDate':
        {
          if (child is FhirDate) {
            return copyWith(servicedX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'servicedPeriod':
        {
          if (child is Period) {
            return copyWith(servicedX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'created':
        {
          if (child is FhirDateTime) {
            return copyWith(created: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'requestor':
        {
          if (child is Reference) {
            return copyWith(requestor: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'request':
        {
          if (child is Reference) {
            return copyWith(request: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'outcome':
        {
          if (child is RemittanceOutcome) {
            return copyWith(outcome: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'disposition':
        {
          if (child is FhirString) {
            return copyWith(disposition: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'insurer':
        {
          if (child is Reference) {
            return copyWith(insurer: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'insurance':
        {
          if (child is List<CoverageEligibilityResponseInsurance>) {
            return copyWith(insurance: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'preAuthRef':
        {
          if (child is FhirString) {
            return copyWith(preAuthRef: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'form':
        {
          if (child is CodeableConcept) {
            return copyWith(form: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'error':
        {
          if (child is List<CoverageEligibilityResponseError>) {
            return copyWith(error: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'identifier':
        return ['Identifier'];
      case 'status':
        return ['FhirCode'];
      case 'purpose':
        return ['FhirCode'];
      case 'patient':
        return ['Reference'];
      case 'serviced':
      case 'servicedX':
        return ['FhirDate', 'Period'];
      case 'servicedDate':
        return ['FhirDate'];
      case 'servicedPeriod':
        return ['Period'];
      case 'created':
        return ['FhirDateTime'];
      case 'requestor':
        return ['Reference'];
      case 'request':
        return ['Reference'];
      case 'outcome':
        return ['FhirCode'];
      case 'disposition':
        return ['FhirString'];
      case 'insurer':
        return ['Reference'];
      case 'insurance':
        return ['CoverageEligibilityResponseInsurance'];
      case 'preAuthRef':
        return ['FhirString'];
      case 'form':
        return ['CodeableConcept'];
      case 'error':
        return ['CoverageEligibilityResponseError'];
      default:
        return <String>[];
    }
  }

  @override
  CoverageEligibilityResponse clone() => throw UnimplementedError();
  @override
  CoverageEligibilityResponse copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FinancialResourceStatusCodes? status,
    List<EligibilityResponsePurpose>? purpose,
    Reference? patient,
    ServicedXCoverageEligibilityResponse? servicedX,
    FhirDateTime? created,
    Reference? requestor,
    Reference? request,
    RemittanceOutcome? outcome,
    FhirString? disposition,
    Reference? insurer,
    List<CoverageEligibilityResponseInsurance>? insurance,
    FhirString? preAuthRef,
    CodeableConcept? form,
    List<CoverageEligibilityResponseError>? error,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return CoverageEligibilityResponse(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      purpose: purpose
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.purpose',
                ),
              )
              .toList() ??
          this.purpose,
      patient: patient?.copyWith(
            objectPath: '$newObjectPath.patient',
          ) ??
          this.patient,
      servicedX: servicedX?.copyWith(
            objectPath: '$newObjectPath.servicedX',
          ) as ServicedXCoverageEligibilityResponse? ??
          this.servicedX,
      created: created?.copyWith(
            objectPath: '$newObjectPath.created',
          ) ??
          this.created,
      requestor: requestor?.copyWith(
            objectPath: '$newObjectPath.requestor',
          ) ??
          this.requestor,
      request: request?.copyWith(
            objectPath: '$newObjectPath.request',
          ) ??
          this.request,
      outcome: outcome?.copyWith(
            objectPath: '$newObjectPath.outcome',
          ) ??
          this.outcome,
      disposition: disposition?.copyWith(
            objectPath: '$newObjectPath.disposition',
          ) ??
          this.disposition,
      insurer: insurer?.copyWith(
            objectPath: '$newObjectPath.insurer',
          ) ??
          this.insurer,
      insurance: insurance
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.insurance',
                ),
              )
              .toList() ??
          this.insurance,
      preAuthRef: preAuthRef?.copyWith(
            objectPath: '$newObjectPath.preAuthRef',
          ) ??
          this.preAuthRef,
      form: form?.copyWith(
            objectPath: '$newObjectPath.form',
          ) ??
          this.form,
      error: error
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.error',
                ),
              )
              .toList() ??
          this.error,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CoverageEligibilityResponse) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!listEquals<EligibilityResponsePurpose>(
      purpose,
      o.purpose,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(patient, o.patient)) {
      return false;
    }
    if (!equalsDeepWithNull(servicedX, o.servicedX)) {
      return false;
    }
    if (!equalsDeepWithNull(created, o.created)) {
      return false;
    }
    if (!equalsDeepWithNull(requestor, o.requestor)) {
      return false;
    }
    if (!equalsDeepWithNull(request, o.request)) {
      return false;
    }
    if (!equalsDeepWithNull(outcome, o.outcome)) {
      return false;
    }
    if (!equalsDeepWithNull(disposition, o.disposition)) {
      return false;
    }
    if (!equalsDeepWithNull(insurer, o.insurer)) {
      return false;
    }
    if (!listEquals<CoverageEligibilityResponseInsurance>(
      insurance,
      o.insurance,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(preAuthRef, o.preAuthRef)) {
      return false;
    }
    if (!equalsDeepWithNull(form, o.form)) {
      return false;
    }
    if (!listEquals<CoverageEligibilityResponseError>(
      error,
      o.error,
    )) {
      return false;
    }
    return true;
  }
}

/// [CoverageEligibilityResponseInsurance]
/// Financial instruments for reimbursement for the health care products
/// and services.
class CoverageEligibilityResponseInsurance extends BackboneElement {
  /// Primary constructor for
  /// [CoverageEligibilityResponseInsurance]

  const CoverageEligibilityResponseInsurance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.coverage,
    this.inforce,
    this.benefitPeriod,
    this.item,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CoverageEligibilityResponse.insurance',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CoverageEligibilityResponseInsurance.empty() =>
      CoverageEligibilityResponseInsurance(
        coverage: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityResponseInsurance.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CoverageEligibilityResponse.insurance';
    return CoverageEligibilityResponseInsurance(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      coverage: JsonParser.parseObject<Reference>(
        json,
        'coverage',
        Reference.fromJson,
        '$objectPath.coverage',
      )!,
      inforce: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'inforce',
        FhirBoolean.fromJson,
        '$objectPath.inforce',
      ),
      benefitPeriod: JsonParser.parseObject<Period>(
        json,
        'benefitPeriod',
        Period.fromJson,
        '$objectPath.benefitPeriod',
      ),
      item: (json['item'] as List<dynamic>?)
          ?.map<CoverageEligibilityResponseItem>(
            (v) => CoverageEligibilityResponseItem.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.item',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [CoverageEligibilityResponseInsurance]
  /// from a [String] or [YamlMap] object
  factory CoverageEligibilityResponseInsurance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CoverageEligibilityResponseInsurance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CoverageEligibilityResponseInsurance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CoverageEligibilityResponseInsurance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CoverageEligibilityResponseInsurance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageEligibilityResponseInsurance.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CoverageEligibilityResponseInsurance.fromJson(json);
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
  final Reference coverage;

  /// [inforce]
  /// Flag indicating if the coverage provided is inforce currently if no
  /// service date(s) specified or for the whole duration of the service
  /// dates.
  final FhirBoolean? inforce;

  /// [benefitPeriod]
  /// The term of the benefits documented in this response.
  final Period? benefitPeriod;

  /// [item]
  /// Benefits and optionally current balances, and authorization details by
  /// category or service.
  final List<CoverageEligibilityResponseItem>? item;
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'coverage':
        fields.add(coverage);
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'coverage':
        {
          if (child is Reference) {
            return copyWith(coverage: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'inforce':
        {
          if (child is FhirBoolean) {
            return copyWith(inforce: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'benefitPeriod':
        {
          if (child is Period) {
            return copyWith(benefitPeriod: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'item':
        {
          if (child is List<CoverageEligibilityResponseItem>) {
            return copyWith(item: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
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
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'coverage':
        return ['Reference'];
      case 'inforce':
        return ['FhirBoolean'];
      case 'benefitPeriod':
        return ['Period'];
      case 'item':
        return ['CoverageEligibilityResponseItem'];
      default:
        return <String>[];
    }
  }

  @override
  CoverageEligibilityResponseInsurance clone() => throw UnimplementedError();
  @override
  CoverageEligibilityResponseInsurance copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? coverage,
    FhirBoolean? inforce,
    Period? benefitPeriod,
    List<CoverageEligibilityResponseItem>? item,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CoverageEligibilityResponseInsurance(
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
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      coverage: coverage?.copyWith(
            objectPath: '$newObjectPath.coverage',
          ) ??
          this.coverage,
      inforce: inforce?.copyWith(
            objectPath: '$newObjectPath.inforce',
          ) ??
          this.inforce,
      benefitPeriod: benefitPeriod?.copyWith(
            objectPath: '$newObjectPath.benefitPeriod',
          ) ??
          this.benefitPeriod,
      item: item
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.item',
                ),
              )
              .toList() ??
          this.item,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CoverageEligibilityResponseInsurance) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(coverage, o.coverage)) {
      return false;
    }
    if (!equalsDeepWithNull(inforce, o.inforce)) {
      return false;
    }
    if (!equalsDeepWithNull(benefitPeriod, o.benefitPeriod)) {
      return false;
    }
    if (!listEquals<CoverageEligibilityResponseItem>(
      item,
      o.item,
    )) {
      return false;
    }
    return true;
  }
}

/// [CoverageEligibilityResponseItem]
/// Benefits and optionally current balances, and authorization details by
/// category or service.
class CoverageEligibilityResponseItem extends BackboneElement {
  /// Primary constructor for
  /// [CoverageEligibilityResponseItem]

  const CoverageEligibilityResponseItem({
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
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CoverageEligibilityResponseItem.empty() =>
      const CoverageEligibilityResponseItem();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityResponseItem.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CoverageEligibilityResponse.insurance.item';
    return CoverageEligibilityResponseItem(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      category: JsonParser.parseObject<CodeableConcept>(
        json,
        'category',
        CodeableConcept.fromJson,
        '$objectPath.category',
      ),
      productOrService: JsonParser.parseObject<CodeableConcept>(
        json,
        'productOrService',
        CodeableConcept.fromJson,
        '$objectPath.productOrService',
      ),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifier',
              },
            ),
          )
          .toList(),
      provider: JsonParser.parseObject<Reference>(
        json,
        'provider',
        Reference.fromJson,
        '$objectPath.provider',
      ),
      excluded: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'excluded',
        FhirBoolean.fromJson,
        '$objectPath.excluded',
      ),
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      network: JsonParser.parseObject<CodeableConcept>(
        json,
        'network',
        CodeableConcept.fromJson,
        '$objectPath.network',
      ),
      unit: JsonParser.parseObject<CodeableConcept>(
        json,
        'unit',
        CodeableConcept.fromJson,
        '$objectPath.unit',
      ),
      term: JsonParser.parseObject<CodeableConcept>(
        json,
        'term',
        CodeableConcept.fromJson,
        '$objectPath.term',
      ),
      benefit: (json['benefit'] as List<dynamic>?)
          ?.map<CoverageEligibilityResponseBenefit>(
            (v) => CoverageEligibilityResponseBenefit.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.benefit',
              },
            ),
          )
          .toList(),
      authorizationRequired: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'authorizationRequired',
        FhirBoolean.fromJson,
        '$objectPath.authorizationRequired',
      ),
      authorizationSupporting:
          (json['authorizationSupporting'] as List<dynamic>?)
              ?.map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  {
                    ...v as Map<String, dynamic>,
                    'objectPath': '$objectPath.authorizationSupporting',
                  },
                ),
              )
              .toList(),
      authorizationUrl: JsonParser.parsePrimitive<FhirUri>(
        json,
        'authorizationUrl',
        FhirUri.fromJson,
        '$objectPath.authorizationUrl',
      ),
    );
  }

  /// Deserialize [CoverageEligibilityResponseItem]
  /// from a [String] or [YamlMap] object
  factory CoverageEligibilityResponseItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CoverageEligibilityResponseItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CoverageEligibilityResponseItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CoverageEligibilityResponseItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CoverageEligibilityResponseItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageEligibilityResponseItem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CoverageEligibilityResponseItem.fromJson(json);
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
  final CodeableConcept? category;

  /// [productOrService]
  /// This contains the product, service, drug or other billing code for the
  /// item.
  final CodeableConcept? productOrService;

  /// [modifier]
  /// Item typification or modifiers codes to convey additional context for
  /// the product or service.
  final List<CodeableConcept>? modifier;

  /// [provider]
  /// The practitioner who is eligible for the provision of the product or
  /// service.
  final Reference? provider;

  /// [excluded]
  /// True if the indicated class of service is excluded from the plan,
  /// missing or False indicates the product or service is included in the
  /// coverage.
  final FhirBoolean? excluded;

  /// [name]
  /// A short name or tag for the benefit.
  final FhirString? name;

  /// [description]
  /// A richer description of the benefit or services covered.
  final FhirString? description;

  /// [network]
  /// Is a flag to indicate whether the benefits refer to in-network
  /// providers or out-of-network providers.
  final CodeableConcept? network;

  /// [unit]
  /// Indicates if the benefits apply to an individual or to the family.
  final CodeableConcept? unit;

  /// [term]
  /// The term or period of the values such as 'maximum lifetime benefit' or
  /// 'maximum annual visits'.
  final CodeableConcept? term;

  /// [benefit]
  /// Benefits used to date.
  final List<CoverageEligibilityResponseBenefit>? benefit;

  /// [authorizationRequired]
  /// A boolean flag indicating whether a preauthorization is required prior
  /// to actual service delivery.
  final FhirBoolean? authorizationRequired;

  /// [authorizationSupporting]
  /// Codes or comments regarding information or actions associated with the
  /// preauthorization.
  final List<CodeableConcept>? authorizationSupporting;

  /// [authorizationUrl]
  /// A web location for obtaining requirements or descriptive information
  /// regarding the preauthorization.
  final FhirUri? authorizationUrl;
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'category':
        {
          if (child is CodeableConcept) {
            return copyWith(category: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'productOrService':
        {
          if (child is CodeableConcept) {
            return copyWith(productOrService: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifier':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(modifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'provider':
        {
          if (child is Reference) {
            return copyWith(provider: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'excluded':
        {
          if (child is FhirBoolean) {
            return copyWith(excluded: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'name':
        {
          if (child is FhirString) {
            return copyWith(name: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'network':
        {
          if (child is CodeableConcept) {
            return copyWith(network: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'unit':
        {
          if (child is CodeableConcept) {
            return copyWith(unit: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'term':
        {
          if (child is CodeableConcept) {
            return copyWith(term: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'benefit':
        {
          if (child is List<CoverageEligibilityResponseBenefit>) {
            return copyWith(benefit: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'authorizationRequired':
        {
          if (child is FhirBoolean) {
            return copyWith(authorizationRequired: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'authorizationSupporting':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(authorizationSupporting: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'authorizationUrl':
        {
          if (child is FhirUri) {
            return copyWith(authorizationUrl: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
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
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'category':
        return ['CodeableConcept'];
      case 'productOrService':
        return ['CodeableConcept'];
      case 'modifier':
        return ['CodeableConcept'];
      case 'provider':
        return ['Reference'];
      case 'excluded':
        return ['FhirBoolean'];
      case 'name':
        return ['FhirString'];
      case 'description':
        return ['FhirString'];
      case 'network':
        return ['CodeableConcept'];
      case 'unit':
        return ['CodeableConcept'];
      case 'term':
        return ['CodeableConcept'];
      case 'benefit':
        return ['CoverageEligibilityResponseBenefit'];
      case 'authorizationRequired':
        return ['FhirBoolean'];
      case 'authorizationSupporting':
        return ['CodeableConcept'];
      case 'authorizationUrl':
        return ['FhirUri'];
      default:
        return <String>[];
    }
  }

  @override
  CoverageEligibilityResponseItem clone() => throw UnimplementedError();
  @override
  CoverageEligibilityResponseItem copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    Reference? provider,
    FhirBoolean? excluded,
    FhirString? name,
    FhirString? description,
    CodeableConcept? network,
    CodeableConcept? unit,
    CodeableConcept? term,
    List<CoverageEligibilityResponseBenefit>? benefit,
    FhirBoolean? authorizationRequired,
    List<CodeableConcept>? authorizationSupporting,
    FhirUri? authorizationUrl,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CoverageEligibilityResponseItem(
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
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      category: category?.copyWith(
            objectPath: '$newObjectPath.category',
          ) ??
          this.category,
      productOrService: productOrService?.copyWith(
            objectPath: '$newObjectPath.productOrService',
          ) ??
          this.productOrService,
      modifier: modifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifier',
                ),
              )
              .toList() ??
          this.modifier,
      provider: provider?.copyWith(
            objectPath: '$newObjectPath.provider',
          ) ??
          this.provider,
      excluded: excluded?.copyWith(
            objectPath: '$newObjectPath.excluded',
          ) ??
          this.excluded,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      network: network?.copyWith(
            objectPath: '$newObjectPath.network',
          ) ??
          this.network,
      unit: unit?.copyWith(
            objectPath: '$newObjectPath.unit',
          ) ??
          this.unit,
      term: term?.copyWith(
            objectPath: '$newObjectPath.term',
          ) ??
          this.term,
      benefit: benefit
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.benefit',
                ),
              )
              .toList() ??
          this.benefit,
      authorizationRequired: authorizationRequired?.copyWith(
            objectPath: '$newObjectPath.authorizationRequired',
          ) ??
          this.authorizationRequired,
      authorizationSupporting: authorizationSupporting
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.authorizationSupporting',
                ),
              )
              .toList() ??
          this.authorizationSupporting,
      authorizationUrl: authorizationUrl?.copyWith(
            objectPath: '$newObjectPath.authorizationUrl',
          ) ??
          this.authorizationUrl,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CoverageEligibilityResponseItem) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(category, o.category)) {
      return false;
    }
    if (!equalsDeepWithNull(productOrService, o.productOrService)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      modifier,
      o.modifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(provider, o.provider)) {
      return false;
    }
    if (!equalsDeepWithNull(excluded, o.excluded)) {
      return false;
    }
    if (!equalsDeepWithNull(name, o.name)) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!equalsDeepWithNull(network, o.network)) {
      return false;
    }
    if (!equalsDeepWithNull(unit, o.unit)) {
      return false;
    }
    if (!equalsDeepWithNull(term, o.term)) {
      return false;
    }
    if (!listEquals<CoverageEligibilityResponseBenefit>(
      benefit,
      o.benefit,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(authorizationRequired, o.authorizationRequired)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      authorizationSupporting,
      o.authorizationSupporting,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(authorizationUrl, o.authorizationUrl)) {
      return false;
    }
    return true;
  }
}

/// [CoverageEligibilityResponseBenefit]
/// Benefits used to date.
class CoverageEligibilityResponseBenefit extends BackboneElement {
  /// Primary constructor for
  /// [CoverageEligibilityResponseBenefit]

  const CoverageEligibilityResponseBenefit({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.allowedX,
    this.usedX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CoverageEligibilityResponse.insurance.item.benefit',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CoverageEligibilityResponseBenefit.empty() =>
      CoverageEligibilityResponseBenefit(
        type: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityResponseBenefit.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CoverageEligibilityResponse.insurance.item.benefit';
    return CoverageEligibilityResponseBenefit(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      )!,
      allowedX: JsonParser.parsePolymorphic<
          AllowedXCoverageEligibilityResponseBenefit>(
        json,
        {
          'allowedUnsignedInt': FhirUnsignedInt.fromJson,
          'allowedString': FhirString.fromJson,
          'allowedMoney': Money.fromJson,
        },
        objectPath,
      ),
      usedX:
          JsonParser.parsePolymorphic<UsedXCoverageEligibilityResponseBenefit>(
        json,
        {
          'usedUnsignedInt': FhirUnsignedInt.fromJson,
          'usedString': FhirString.fromJson,
          'usedMoney': Money.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [CoverageEligibilityResponseBenefit]
  /// from a [String] or [YamlMap] object
  factory CoverageEligibilityResponseBenefit.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CoverageEligibilityResponseBenefit.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CoverageEligibilityResponseBenefit.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CoverageEligibilityResponseBenefit '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CoverageEligibilityResponseBenefit]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageEligibilityResponseBenefit.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CoverageEligibilityResponseBenefit.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'CoverageEligibilityResponseBenefit';

  /// [type]
  /// Classification of benefit being provided.
  final CodeableConcept type;

  /// [allowedX]
  /// The quantity of the benefit which is permitted under the coverage.
  final AllowedXCoverageEligibilityResponseBenefit? allowedX;

  /// Getter for [allowedUnsignedInt] as a FhirUnsignedInt
  FhirUnsignedInt? get allowedUnsignedInt => allowedX?.isAs<FhirUnsignedInt>();

  /// Getter for [allowedString] as a FhirString
  FhirString? get allowedString => allowedX?.isAs<FhirString>();

  /// Getter for [allowedMoney] as a Money
  Money? get allowedMoney => allowedX?.isAs<Money>();

  /// [usedX]
  /// The quantity of the benefit which have been consumed to date.
  final UsedXCoverageEligibilityResponseBenefit? usedX;

  /// Getter for [usedUnsignedInt] as a FhirUnsignedInt
  FhirUnsignedInt? get usedUnsignedInt => usedX?.isAs<FhirUnsignedInt>();

  /// Getter for [usedString] as a FhirString
  FhirString? get usedString => usedX?.isAs<FhirString>();

  /// Getter for [usedMoney] as a Money
  Money? get usedMoney => usedX?.isAs<Money>();
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'type':
        fields.add(type);
      case 'allowed':
        fields.add(allowedX!);
      case 'allowedX':
        fields.add(allowedX!);
      case 'allowedUnsignedInt':
        if (allowedX is FhirUnsignedInt) {
          fields.add(allowedX!);
        }
      case 'allowedString':
        if (allowedX is FhirString) {
          fields.add(allowedX!);
        }
      case 'allowedMoney':
        if (allowedX is Money) {
          fields.add(allowedX!);
        }
      case 'used':
        fields.add(usedX!);
      case 'usedX':
        fields.add(usedX!);
      case 'usedUnsignedInt':
        if (usedX is FhirUnsignedInt) {
          fields.add(usedX!);
        }
      case 'usedString':
        if (usedX is FhirString) {
          fields.add(usedX!);
        }
      case 'usedMoney':
        if (usedX is Money) {
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'allowedX':
        {
          if (child is AllowedXCoverageEligibilityResponseBenefit) {
            // child is e.g. SubjectX union
            return copyWith(allowedX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'allowedFhirUnsignedInt':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(allowedX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'allowedFhirString':
        {
          if (child is FhirString) {
            return copyWith(allowedX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'allowedMoney':
        {
          if (child is Money) {
            return copyWith(allowedX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'usedX':
        {
          if (child is UsedXCoverageEligibilityResponseBenefit) {
            // child is e.g. SubjectX union
            return copyWith(usedX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'usedFhirUnsignedInt':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(usedX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'usedFhirString':
        {
          if (child is FhirString) {
            return copyWith(usedX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'usedMoney':
        {
          if (child is Money) {
            return copyWith(usedX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
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
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'allowed':
      case 'allowedX':
        return ['FhirUnsignedInt', 'FhirString', 'Money'];
      case 'allowedUnsignedInt':
        return ['FhirUnsignedInt'];
      case 'allowedString':
        return ['FhirString'];
      case 'allowedMoney':
        return ['Money'];
      case 'used':
      case 'usedX':
        return ['FhirUnsignedInt', 'FhirString', 'Money'];
      case 'usedUnsignedInt':
        return ['FhirUnsignedInt'];
      case 'usedString':
        return ['FhirString'];
      case 'usedMoney':
        return ['Money'];
      default:
        return <String>[];
    }
  }

  @override
  CoverageEligibilityResponseBenefit clone() => throw UnimplementedError();
  @override
  CoverageEligibilityResponseBenefit copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    AllowedXCoverageEligibilityResponseBenefit? allowedX,
    UsedXCoverageEligibilityResponseBenefit? usedX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CoverageEligibilityResponseBenefit(
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
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      allowedX: allowedX?.copyWith(
            objectPath: '$newObjectPath.allowedX',
          ) as AllowedXCoverageEligibilityResponseBenefit? ??
          this.allowedX,
      usedX: usedX?.copyWith(
            objectPath: '$newObjectPath.usedX',
          ) as UsedXCoverageEligibilityResponseBenefit? ??
          this.usedX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CoverageEligibilityResponseBenefit) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(allowedX, o.allowedX)) {
      return false;
    }
    if (!equalsDeepWithNull(usedX, o.usedX)) {
      return false;
    }
    return true;
  }
}

/// [CoverageEligibilityResponseError]
/// Errors encountered during the processing of the request.
class CoverageEligibilityResponseError extends BackboneElement {
  /// Primary constructor for
  /// [CoverageEligibilityResponseError]

  const CoverageEligibilityResponseError({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    super.disallowExtensions,
  }) : super(
          objectPath: 'CoverageEligibilityResponse.error',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory CoverageEligibilityResponseError.empty() =>
      CoverageEligibilityResponseError(
        code: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory CoverageEligibilityResponseError.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'CoverageEligibilityResponse.error';
    return CoverageEligibilityResponseError(
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
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      )!,
    );
  }

  /// Deserialize [CoverageEligibilityResponseError]
  /// from a [String] or [YamlMap] object
  factory CoverageEligibilityResponseError.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return CoverageEligibilityResponseError.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return CoverageEligibilityResponseError.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'CoverageEligibilityResponseError '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [CoverageEligibilityResponseError]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory CoverageEligibilityResponseError.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return CoverageEligibilityResponseError.fromJson(json);
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
  final CodeableConcept code;
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
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'code':
        fields.add(code);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
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
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'code':
        return ['CodeableConcept'];
      default:
        return <String>[];
    }
  }

  @override
  CoverageEligibilityResponseError clone() => throw UnimplementedError();
  @override
  CoverageEligibilityResponseError copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return CoverageEligibilityResponseError(
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
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! CoverageEligibilityResponseError) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    return true;
  }
}
