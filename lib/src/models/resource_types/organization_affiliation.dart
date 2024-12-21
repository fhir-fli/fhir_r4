import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [OrganizationAffiliation]
/// Defines an affiliation/assotiation/relationship between 2 distinct
/// oganizations, that is not a part-of relationship/sub-division
/// relationship.
class OrganizationAffiliation extends DomainResource {
  /// Primary constructor for
  /// [OrganizationAffiliation]

  const OrganizationAffiliation({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.active,
    this.period,
    this.organization,
    this.participatingOrganization,
    this.network,
    this.code,
    this.specialty,
    this.location,
    this.healthcareService,
    this.telecom,
    this.endpoint,
  }) : super(
          resourceType: R4ResourceType.OrganizationAffiliation,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory OrganizationAffiliation.fromJson(
    Map<String, dynamic> json,
  ) {
    return OrganizationAffiliation(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      active: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'active',
        FhirBoolean.fromJson,
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
      ),
      organization: JsonParser.parseObject<Reference>(
        json,
        'organization',
        Reference.fromJson,
      ),
      participatingOrganization: JsonParser.parseObject<Reference>(
        json,
        'participatingOrganization',
        Reference.fromJson,
      ),
      network: (json['network'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      specialty: (json['specialty'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      location: (json['location'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      healthcareService: (json['healthcareService'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      telecom: (json['telecom'] as List<dynamic>?)
          ?.map<ContactPoint>(
            (v) => ContactPoint.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      endpoint: (json['endpoint'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [OrganizationAffiliation]
  /// from a [String] or [YamlMap] object
  factory OrganizationAffiliation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return OrganizationAffiliation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return OrganizationAffiliation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'OrganizationAffiliation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [OrganizationAffiliation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory OrganizationAffiliation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return OrganizationAffiliation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'OrganizationAffiliation';

  /// [identifier]
  /// Business identifiers that are specific to this role.
  final List<Identifier>? identifier;

  /// [active]
  /// Whether this organization affiliation record is in active use.
  final FhirBoolean? active;

  /// [period]
  /// The period during which the participatingOrganization is affiliated
  /// with the primary organization.
  final Period? period;

  /// [organization]
  /// Organization where the role is available (primary organization/has
  /// members).
  final Reference? organization;

  /// [participatingOrganization]
  /// The Participating Organization provides/performs the role(s) defined by
  /// the code to the Primary Organization (e.g. providing services or is a
  /// member of).
  final Reference? participatingOrganization;

  /// [network]
  /// Health insurance provider network in which the
  /// participatingOrganization provides the role's services (if defined) at
  /// the indicated locations (if defined).
  final List<Reference>? network;

  /// [code]
  /// Definition of the role the participatingOrganization plays in the
  /// association.
  final List<CodeableConcept>? code;

  /// [specialty]
  /// Specific specialty of the participatingOrganization in the context of
  /// the role.
  final List<CodeableConcept>? specialty;

  /// [location]
  /// The location(s) at which the role occurs.
  final List<Reference>? location;

  /// [healthcareService]
  /// Healthcare services provided through the role.
  final List<Reference>? healthcareService;

  /// [telecom]
  /// Contact details at the participatingOrganization relevant to this
  /// Affiliation.
  final List<ContactPoint>? telecom;

  /// [endpoint]
  /// Technical endpoints providing access to services operated for this
  /// role.
  final List<Reference>? endpoint;
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

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (active != null) {
      addField('active', active);
    }

    if (period != null) {
      json['period'] = period!.toJson();
    }

    if (organization != null) {
      json['organization'] = organization!.toJson();
    }

    if (participatingOrganization != null) {
      json['participatingOrganization'] = participatingOrganization!.toJson();
    }

    if (network != null && network!.isNotEmpty) {
      json['network'] = network!.map((e) => e.toJson()).toList();
    }

    if (code != null && code!.isNotEmpty) {
      json['code'] = code!.map((e) => e.toJson()).toList();
    }

    if (specialty != null && specialty!.isNotEmpty) {
      json['specialty'] = specialty!.map((e) => e.toJson()).toList();
    }

    if (location != null && location!.isNotEmpty) {
      json['location'] = location!.map((e) => e.toJson()).toList();
    }

    if (healthcareService != null && healthcareService!.isNotEmpty) {
      json['healthcareService'] =
          healthcareService!.map((e) => e.toJson()).toList();
    }

    if (telecom != null && telecom!.isNotEmpty) {
      json['telecom'] = telecom!.map((e) => e.toJson()).toList();
    }

    if (endpoint != null && endpoint!.isNotEmpty) {
      json['endpoint'] = endpoint!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  OrganizationAffiliation clone() => throw UnimplementedError();
  @override
  OrganizationAffiliation copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirBoolean? active,
    Period? period,
    Reference? organization,
    Reference? participatingOrganization,
    List<Reference>? network,
    List<CodeableConcept>? code,
    List<CodeableConcept>? specialty,
    List<Reference>? location,
    List<Reference>? healthcareService,
    List<ContactPoint>? telecom,
    List<Reference>? endpoint,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return OrganizationAffiliation(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      active: active ?? this.active,
      period: period ?? this.period,
      organization: organization ?? this.organization,
      participatingOrganization:
          participatingOrganization ?? this.participatingOrganization,
      network: network ?? this.network,
      code: code ?? this.code,
      specialty: specialty ?? this.specialty,
      location: location ?? this.location,
      healthcareService: healthcareService ?? this.healthcareService,
      telecom: telecom ?? this.telecom,
      endpoint: endpoint ?? this.endpoint,
    );
  }
}
