import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [AdministrableProductDefinition]
/// A medicinal product in the final form which is suitable for
/// administering to a patient (after any mixing of multiple components,
/// dissolution etc. has been performed).
class AdministrableProductDefinition extends DomainResource {
  /// Primary constructor for
  /// [AdministrableProductDefinition]

  const AdministrableProductDefinition({
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
    this.formOf,
    this.administrableDoseForm,
    this.unitOfPresentation,
    this.producedFrom,
    this.ingredient,
    this.device,
    this.property,
    required this.routeOfAdministration,
  }) : super(
          objectPath: 'AdministrableProductDefinition',
          resourceType: R4ResourceType.AdministrableProductDefinition,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory AdministrableProductDefinition.empty() =>
      AdministrableProductDefinition(
        status: PublicationStatus.values.first,
        routeOfAdministration: <AdministrableProductDefinitionRouteOfAdministration>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AdministrableProductDefinition';
    return AdministrableProductDefinition(
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
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
        '$objectPath.status',
      )!,
      formOf: (json['formOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.formOf',
              },
            ),
          )
          .toList(),
      administrableDoseForm: JsonParser.parseObject<CodeableConcept>(
        json,
        'administrableDoseForm',
        CodeableConcept.fromJson,
        '$objectPath.administrableDoseForm',
      ),
      unitOfPresentation: JsonParser.parseObject<CodeableConcept>(
        json,
        'unitOfPresentation',
        CodeableConcept.fromJson,
        '$objectPath.unitOfPresentation',
      ),
      producedFrom: (json['producedFrom'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.producedFrom',
              },
            ),
          )
          .toList(),
      ingredient: (json['ingredient'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.ingredient',
              },
            ),
          )
          .toList(),
      device: JsonParser.parseObject<Reference>(
        json,
        'device',
        Reference.fromJson,
        '$objectPath.device',
      ),
      property: (json['property'] as List<dynamic>?)
          ?.map<AdministrableProductDefinitionProperty>(
            (v) => AdministrableProductDefinitionProperty.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.property',
              },
            ),
          )
          .toList(),
      routeOfAdministration: (json['routeOfAdministration'] as List<dynamic>)
          .map<AdministrableProductDefinitionRouteOfAdministration>(
            (v) => AdministrableProductDefinitionRouteOfAdministration.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.routeOfAdministration',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AdministrableProductDefinition]
  /// from a [String] or [YamlMap] object
  factory AdministrableProductDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdministrableProductDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdministrableProductDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdministrableProductDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdministrableProductDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdministrableProductDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdministrableProductDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AdministrableProductDefinition';

  /// [identifier]
  /// An identifier for the administrable product.
  final List<Identifier>? identifier;

  /// [status]
  /// The status of this administrable product. Enables tracking the
  /// life-cycle of the content.
  final PublicationStatus status;

  /// [formOf]
  /// References a product from which one or more of the constituent parts of
  /// that product can be prepared and used as described by this
  /// administrable product. If this administrable product describes the
  /// administration of a crushed tablet, the 'formOf' would be the product
  /// representing a distribution containing tablets and possibly also a
  /// cream. This is distinct from the 'producedFrom' which refers to the
  /// specific components of the product that are used in this preparation,
  /// rather than the product as a whole.
  final List<Reference>? formOf;

  /// [administrableDoseForm]
  /// The dose form of the final product after necessary reconstitution or
  /// processing. Contrasts to the manufactured dose form (see
  /// ManufacturedItemDefinition). If the manufactured form was 'powder for
  /// solution for injection', the administrable dose form could be 'solution
  /// for injection' (once mixed with another item having manufactured form
  /// 'solvent for solution for injection').
  final CodeableConcept? administrableDoseForm;

  /// [unitOfPresentation]
  /// The presentation type in which this item is given to a patient. e.g.
  /// for a spray - 'puff' (as in 'contains 100 mcg per puff'), or for a
  /// liquid - 'vial' (as in 'contains 5 ml per vial').
  final CodeableConcept? unitOfPresentation;

  /// [producedFrom]
  /// Indicates the specific manufactured items that are part of the 'formOf'
  /// product that are used in the preparation of this specific administrable
  /// form. In some cases, an administrable form might use all of the items
  /// from the overall product (or there might only be one item), while in
  /// other cases, an administrable form might use only a subset of the items
  /// available in the overall product. For example, an administrable form
  /// might involve combining a liquid and a powder available as part of an
  /// overall product, but not involve applying the also supplied cream.
  final List<Reference>? producedFrom;

  /// [ingredient]
  /// The ingredients of this administrable medicinal product. This is only
  /// needed if the ingredients are not specified either using
  /// ManufacturedItemDefiniton (via
  /// AdministrableProductDefinition.producedFrom) to state which component
  /// items are used to make this, or using by incoming references from the
  /// Ingredient resource, to state in detail which substances exist within
  /// this. This element allows a basic coded ingredient to be used.
  final List<CodeableConcept>? ingredient;

  /// [device]
  /// A device that is integral to the medicinal product, in effect being
  /// considered as an "ingredient" of the medicinal product. This is not
  /// intended for devices that are just co-packaged.
  final Reference? device;

  /// [property]
  /// Characteristics e.g. a product's onset of action.
  final List<AdministrableProductDefinitionProperty>? property;

  /// [routeOfAdministration]
  /// The path by which the product is taken into or makes contact with the
  /// body. In some regions this is referred to as the licenced or approved
  /// route. RouteOfAdministration cannot be used when the 'formOf' product
  /// already uses MedicinalProductDefinition.route (and vice versa).
  final List<AdministrableProductDefinitionRouteOfAdministration>
      routeOfAdministration;
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
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'status',
      status,
    );
    addField(
      'formOf',
      formOf,
    );
    addField(
      'administrableDoseForm',
      administrableDoseForm,
    );
    addField(
      'unitOfPresentation',
      unitOfPresentation,
    );
    addField(
      'producedFrom',
      producedFrom,
    );
    addField(
      'ingredient',
      ingredient,
    );
    addField(
      'device',
      device,
    );
    addField(
      'property',
      property,
    );
    addField(
      'routeOfAdministration',
      routeOfAdministration,
    );
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
      'formOf',
      'administrableDoseForm',
      'unitOfPresentation',
      'producedFrom',
      'ingredient',
      'device',
      'property',
      'routeOfAdministration',
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
      case 'formOf':
        if (formOf != null) {
          fields.addAll(formOf!);
        }
      case 'administrableDoseForm':
        if (administrableDoseForm != null) {
          fields.add(administrableDoseForm!);
        }
      case 'unitOfPresentation':
        if (unitOfPresentation != null) {
          fields.add(unitOfPresentation!);
        }
      case 'producedFrom':
        if (producedFrom != null) {
          fields.addAll(producedFrom!);
        }
      case 'ingredient':
        if (ingredient != null) {
          fields.addAll(ingredient!);
        }
      case 'device':
        if (device != null) {
          fields.add(device!);
        }
      case 'property':
        if (property != null) {
          fields.addAll(property!);
        }
      case 'routeOfAdministration':
        fields.addAll(routeOfAdministration);
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
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            // Add all elements from passed list
            final newList = [...?contained, ...child];
            return copyWith(contained: newList);
          } else if (child is Resource) {
            // Add single element to existing list or create new list
            final newList = [...?contained, child];
            return copyWith(contained: newList);
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
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            // Add all elements from passed list
            final newList = [...?identifier, ...child];
            return copyWith(identifier: newList);
          } else if (child is Identifier) {
            // Add single element to existing list or create new list
            final newList = [...?identifier, child];
            return copyWith(identifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is PublicationStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'formOf':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?formOf, ...child];
            return copyWith(formOf: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?formOf, child];
            return copyWith(formOf: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'administrableDoseForm':
        {
          if (child is CodeableConcept) {
            return copyWith(administrableDoseForm: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'unitOfPresentation':
        {
          if (child is CodeableConcept) {
            return copyWith(unitOfPresentation: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'producedFrom':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?producedFrom, ...child];
            return copyWith(producedFrom: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?producedFrom, child];
            return copyWith(producedFrom: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'ingredient':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?ingredient, ...child];
            return copyWith(ingredient: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?ingredient, child];
            return copyWith(ingredient: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'device':
        {
          if (child is Reference) {
            return copyWith(device: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'property':
        {
          if (child is List<AdministrableProductDefinitionProperty>) {
            // Add all elements from passed list
            final newList = [...?property, ...child];
            return copyWith(property: newList);
          } else if (child is AdministrableProductDefinitionProperty) {
            // Add single element to existing list or create new list
            final newList = [...?property, child];
            return copyWith(property: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'routeOfAdministration':
        {
          if (child
              is List<AdministrableProductDefinitionRouteOfAdministration>) {
            // Add all elements from passed list
            final newList = [...routeOfAdministration, ...child];
            return copyWith(routeOfAdministration: newList);
          } else if (child
              is AdministrableProductDefinitionRouteOfAdministration) {
            // Add single element to existing list or create new list
            final newList = [...routeOfAdministration, child];
            return copyWith(routeOfAdministration: newList);
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
      case 'formOf':
        return ['Reference'];
      case 'administrableDoseForm':
        return ['CodeableConcept'];
      case 'unitOfPresentation':
        return ['CodeableConcept'];
      case 'producedFrom':
        return ['Reference'];
      case 'ingredient':
        return ['CodeableConcept'];
      case 'device':
        return ['Reference'];
      case 'property':
        return ['AdministrableProductDefinitionProperty'];
      case 'routeOfAdministration':
        return ['AdministrableProductDefinitionRouteOfAdministration'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AdministrableProductDefinition]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  AdministrableProductDefinition createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'meta':
        {
          return copyWith(
            meta: FhirMeta.empty(),
          );
        }
      case 'implicitRules':
        {
          return copyWith(
            implicitRules: FhirUri.empty(),
          );
        }
      case 'language':
        {
          return copyWith(
            language: CommonLanguages.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: Narrative.empty(),
          );
        }
      case 'contained':
        {
          return copyWith(
            contained: <Resource>[],
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: <Identifier>[],
          );
        }
      case 'status':
        {
          return copyWith(
            status: PublicationStatus.empty(),
          );
        }
      case 'formOf':
        {
          return copyWith(
            formOf: <Reference>[],
          );
        }
      case 'administrableDoseForm':
        {
          return copyWith(
            administrableDoseForm: CodeableConcept.empty(),
          );
        }
      case 'unitOfPresentation':
        {
          return copyWith(
            unitOfPresentation: CodeableConcept.empty(),
          );
        }
      case 'producedFrom':
        {
          return copyWith(
            producedFrom: <Reference>[],
          );
        }
      case 'ingredient':
        {
          return copyWith(
            ingredient: <CodeableConcept>[],
          );
        }
      case 'device':
        {
          return copyWith(
            device: Reference.empty(),
          );
        }
      case 'property':
        {
          return copyWith(
            property: <AdministrableProductDefinitionProperty>[],
          );
        }
      case 'routeOfAdministration':
        {
          return copyWith(
            routeOfAdministration: <AdministrableProductDefinitionRouteOfAdministration>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  AdministrableProductDefinition clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool formOf = false,
    bool administrableDoseForm = false,
    bool unitOfPresentation = false,
    bool producedFrom = false,
    bool ingredient = false,
    bool device = false,
    bool property = false,
  }) {
    return AdministrableProductDefinition(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      status: status,
      formOf: formOf ? null : this.formOf,
      administrableDoseForm:
          administrableDoseForm ? null : this.administrableDoseForm,
      unitOfPresentation: unitOfPresentation ? null : this.unitOfPresentation,
      producedFrom: producedFrom ? null : this.producedFrom,
      ingredient: ingredient ? null : this.ingredient,
      device: device ? null : this.device,
      property: property ? null : this.property,
      routeOfAdministration: routeOfAdministration,
    );
  }

  @override
  AdministrableProductDefinition clone() => throw UnimplementedError();
  @override
  AdministrableProductDefinition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    PublicationStatus? status,
    List<Reference>? formOf,
    CodeableConcept? administrableDoseForm,
    CodeableConcept? unitOfPresentation,
    List<Reference>? producedFrom,
    List<CodeableConcept>? ingredient,
    Reference? device,
    List<AdministrableProductDefinitionProperty>? property,
    List<AdministrableProductDefinitionRouteOfAdministration>?
        routeOfAdministration,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return AdministrableProductDefinition(
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
      formOf: formOf
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.formOf',
                ),
              )
              .toList() ??
          this.formOf,
      administrableDoseForm: administrableDoseForm?.copyWith(
            objectPath: '$newObjectPath.administrableDoseForm',
          ) ??
          this.administrableDoseForm,
      unitOfPresentation: unitOfPresentation?.copyWith(
            objectPath: '$newObjectPath.unitOfPresentation',
          ) ??
          this.unitOfPresentation,
      producedFrom: producedFrom
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.producedFrom',
                ),
              )
              .toList() ??
          this.producedFrom,
      ingredient: ingredient
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.ingredient',
                ),
              )
              .toList() ??
          this.ingredient,
      device: device?.copyWith(
            objectPath: '$newObjectPath.device',
          ) ??
          this.device,
      property: property
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.property',
                ),
              )
              .toList() ??
          this.property,
      routeOfAdministration: routeOfAdministration
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.routeOfAdministration',
                ),
              )
              .toList() ??
          this.routeOfAdministration,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AdministrableProductDefinition) {
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
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      formOf,
      o.formOf,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      administrableDoseForm,
      o.administrableDoseForm,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      unitOfPresentation,
      o.unitOfPresentation,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      producedFrom,
      o.producedFrom,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      ingredient,
      o.ingredient,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      device,
      o.device,
    )) {
      return false;
    }
    if (!listEquals<AdministrableProductDefinitionProperty>(
      property,
      o.property,
    )) {
      return false;
    }
    if (!listEquals<AdministrableProductDefinitionRouteOfAdministration>(
      routeOfAdministration,
      o.routeOfAdministration,
    )) {
      return false;
    }
    return true;
  }
}

/// [AdministrableProductDefinitionProperty]
/// Characteristics e.g. a product's onset of action.
class AdministrableProductDefinitionProperty extends BackboneElement {
  /// Primary constructor for
  /// [AdministrableProductDefinitionProperty]

  const AdministrableProductDefinitionProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueX,
    this.status,
    super.disallowExtensions,
  }) : super(
          objectPath: 'AdministrableProductDefinition.property',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory AdministrableProductDefinitionProperty.empty() =>
      AdministrableProductDefinitionProperty(
        type: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AdministrableProductDefinition.property';
    return AdministrableProductDefinitionProperty(
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
      valueX: JsonParser.parsePolymorphic<
          ValueXAdministrableProductDefinitionProperty>(
        json,
        {
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueDate': FhirDate.fromJson,
          'valueBoolean': FhirBoolean.fromJson,
          'valueAttachment': Attachment.fromJson,
        },
        objectPath,
      ),
      status: JsonParser.parseObject<CodeableConcept>(
        json,
        'status',
        CodeableConcept.fromJson,
        '$objectPath.status',
      ),
    );
  }

  /// Deserialize [AdministrableProductDefinitionProperty]
  /// from a [String] or [YamlMap] object
  factory AdministrableProductDefinitionProperty.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdministrableProductDefinitionProperty.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdministrableProductDefinitionProperty.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdministrableProductDefinitionProperty '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdministrableProductDefinitionProperty]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdministrableProductDefinitionProperty.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdministrableProductDefinitionProperty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AdministrableProductDefinitionProperty';

  /// [type]
  /// A code expressing the type of characteristic.
  final CodeableConcept type;

  /// [valueX]
  /// A value for the characteristic.
  final ValueXAdministrableProductDefinitionProperty? valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX?.isAs<CodeableConcept>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX?.isAs<Quantity>();

  /// Getter for [valueDate] as a FhirDate
  FhirDate? get valueDate => valueX?.isAs<FhirDate>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX?.isAs<FhirBoolean>();

  /// Getter for [valueAttachment] as a Attachment
  Attachment? get valueAttachment => valueX?.isAs<Attachment>();

  /// [status]
  /// The status of characteristic e.g. assigned or pending.
  final CodeableConcept? status;
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
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'type',
      type,
    );
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField(
        'value${fhirType.capitalize()}',
        valueX,
      );
    }

    addField(
      'status',
      status,
    );
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
      'valueX',
      'status',
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
      case 'value':
        fields.add(valueX!);
      case 'valueX':
        fields.add(valueX!);
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX!);
        }
      case 'valueDate':
        if (valueX is FhirDate) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX!);
        }
      case 'valueAttachment':
        if (valueX is Attachment) {
          fields.add(valueX!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
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
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueX':
        {
          if (child is ValueXAdministrableProductDefinitionProperty) {
            return copyWith(valueX: child);
          } else {
            if (child is CodeableConcept) {
              return copyWith(valueX: child);
            }
            if (child is Quantity) {
              return copyWith(valueX: child);
            }
            if (child is FhirDate) {
              return copyWith(valueX: child);
            }
            if (child is FhirBoolean) {
              return copyWith(valueX: child);
            }
            if (child is Attachment) {
              return copyWith(valueX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is Quantity) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirDate':
        {
          if (child is FhirDate) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirBoolean':
        {
          if (child is FhirBoolean) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAttachment':
        {
          if (child is Attachment) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is CodeableConcept) {
            return copyWith(status: child);
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
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'type':
        return ['CodeableConcept'];
      case 'value':
      case 'valueX':
        return [
          'CodeableConcept',
          'Quantity',
          'FhirDate',
          'FhirBoolean',
          'Attachment',
        ];
      case 'valueCodeableConcept':
        return ['CodeableConcept'];
      case 'valueQuantity':
        return ['Quantity'];
      case 'valueDate':
        return ['FhirDate'];
      case 'valueBoolean':
        return ['FhirBoolean'];
      case 'valueAttachment':
        return ['Attachment'];
      case 'status':
        return ['CodeableConcept'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AdministrableProductDefinitionProperty]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  AdministrableProductDefinitionProperty createProperty(
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
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'value':
      case 'valueX':
      case 'valueCodeableConcept':
        {
          return copyWith(
            valueX: CodeableConcept.empty(),
          );
        }
      case 'valueQuantity':
        {
          return copyWith(
            valueX: Quantity.empty(),
          );
        }
      case 'valueDate':
        {
          return copyWith(
            valueX: FhirDate.empty(),
          );
        }
      case 'valueBoolean':
        {
          return copyWith(
            valueX: FhirBoolean.empty(),
          );
        }
      case 'valueAttachment':
        {
          return copyWith(
            valueX: Attachment.empty(),
          );
        }
      case 'status':
        {
          return copyWith(
            status: CodeableConcept.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  AdministrableProductDefinitionProperty clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool value = false,
    bool status = false,
  }) {
    return AdministrableProductDefinitionProperty(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type,
      valueX: value ? null : valueX,
      status: status ? null : this.status,
    );
  }

  @override
  AdministrableProductDefinitionProperty clone() => throw UnimplementedError();
  @override
  AdministrableProductDefinitionProperty copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    ValueXAdministrableProductDefinitionProperty? valueX,
    CodeableConcept? status,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return AdministrableProductDefinitionProperty(
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
      valueX: valueX?.copyWith(
            objectPath: '$newObjectPath.valueX',
          ) as ValueXAdministrableProductDefinitionProperty? ??
          this.valueX,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AdministrableProductDefinitionProperty) {
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
    if (!listEquals<FhirExtension>(
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
      valueX,
      o.valueX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    return true;
  }
}

/// [AdministrableProductDefinitionRouteOfAdministration]
/// The path by which the product is taken into or makes contact with the
/// body. In some regions this is referred to as the licenced or approved
/// route. RouteOfAdministration cannot be used when the 'formOf' product
/// already uses MedicinalProductDefinition.route (and vice versa).
class AdministrableProductDefinitionRouteOfAdministration
    extends BackboneElement {
  /// Primary constructor for
  /// [AdministrableProductDefinitionRouteOfAdministration]

  const AdministrableProductDefinitionRouteOfAdministration({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.firstDose,
    this.maxSingleDose,
    this.maxDosePerDay,
    this.maxDosePerTreatmentPeriod,
    this.maxTreatmentPeriod,
    this.targetSpecies,
    super.disallowExtensions,
  }) : super(
          objectPath: 'AdministrableProductDefinition.routeOfAdministration',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory AdministrableProductDefinitionRouteOfAdministration.empty() =>
      AdministrableProductDefinitionRouteOfAdministration(
        code: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinitionRouteOfAdministration.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AdministrableProductDefinition.routeOfAdministration';
    return AdministrableProductDefinitionRouteOfAdministration(
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
      firstDose: JsonParser.parseObject<Quantity>(
        json,
        'firstDose',
        Quantity.fromJson,
        '$objectPath.firstDose',
      ),
      maxSingleDose: JsonParser.parseObject<Quantity>(
        json,
        'maxSingleDose',
        Quantity.fromJson,
        '$objectPath.maxSingleDose',
      ),
      maxDosePerDay: JsonParser.parseObject<Quantity>(
        json,
        'maxDosePerDay',
        Quantity.fromJson,
        '$objectPath.maxDosePerDay',
      ),
      maxDosePerTreatmentPeriod: JsonParser.parseObject<Ratio>(
        json,
        'maxDosePerTreatmentPeriod',
        Ratio.fromJson,
        '$objectPath.maxDosePerTreatmentPeriod',
      ),
      maxTreatmentPeriod: JsonParser.parseObject<FhirDuration>(
        json,
        'maxTreatmentPeriod',
        FhirDuration.fromJson,
        '$objectPath.maxTreatmentPeriod',
      ),
      targetSpecies: (json['targetSpecies'] as List<dynamic>?)
          ?.map<AdministrableProductDefinitionTargetSpecies>(
            (v) => AdministrableProductDefinitionTargetSpecies.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.targetSpecies',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AdministrableProductDefinitionRouteOfAdministration]
  /// from a [String] or [YamlMap] object
  factory AdministrableProductDefinitionRouteOfAdministration.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdministrableProductDefinitionRouteOfAdministration.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdministrableProductDefinitionRouteOfAdministration.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdministrableProductDefinitionRouteOfAdministration '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdministrableProductDefinitionRouteOfAdministration]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdministrableProductDefinitionRouteOfAdministration.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdministrableProductDefinitionRouteOfAdministration.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AdministrableProductDefinitionRouteOfAdministration';

  /// [code]
  /// Coded expression for the route.
  final CodeableConcept code;

  /// [firstDose]
  /// The first dose (dose quantity) administered can be specified for the
  /// product, using a numerical value and its unit of measurement.
  final Quantity? firstDose;

  /// [maxSingleDose]
  /// The maximum single dose that can be administered, specified using a
  /// numerical value and its unit of measurement.
  final Quantity? maxSingleDose;

  /// [maxDosePerDay]
  /// The maximum dose per day (maximum dose quantity to be administered in
  /// any one 24-h period) that can be administered.
  final Quantity? maxDosePerDay;

  /// [maxDosePerTreatmentPeriod]
  /// The maximum dose per treatment period that can be administered.
  final Ratio? maxDosePerTreatmentPeriod;

  /// [maxTreatmentPeriod]
  /// The maximum treatment period during which the product can be
  /// administered.
  final FhirDuration? maxTreatmentPeriod;

  /// [targetSpecies]
  /// A species for which this route applies.
  final List<AdministrableProductDefinitionTargetSpecies>? targetSpecies;
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
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'code',
      code,
    );
    addField(
      'firstDose',
      firstDose,
    );
    addField(
      'maxSingleDose',
      maxSingleDose,
    );
    addField(
      'maxDosePerDay',
      maxDosePerDay,
    );
    addField(
      'maxDosePerTreatmentPeriod',
      maxDosePerTreatmentPeriod,
    );
    addField(
      'maxTreatmentPeriod',
      maxTreatmentPeriod,
    );
    addField(
      'targetSpecies',
      targetSpecies,
    );
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
      'firstDose',
      'maxSingleDose',
      'maxDosePerDay',
      'maxDosePerTreatmentPeriod',
      'maxTreatmentPeriod',
      'targetSpecies',
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
      case 'firstDose':
        if (firstDose != null) {
          fields.add(firstDose!);
        }
      case 'maxSingleDose':
        if (maxSingleDose != null) {
          fields.add(maxSingleDose!);
        }
      case 'maxDosePerDay':
        if (maxDosePerDay != null) {
          fields.add(maxDosePerDay!);
        }
      case 'maxDosePerTreatmentPeriod':
        if (maxDosePerTreatmentPeriod != null) {
          fields.add(maxDosePerTreatmentPeriod!);
        }
      case 'maxTreatmentPeriod':
        if (maxTreatmentPeriod != null) {
          fields.add(maxTreatmentPeriod!);
        }
      case 'targetSpecies':
        if (targetSpecies != null) {
          fields.addAll(targetSpecies!);
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
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'firstDose':
        {
          if (child is Quantity) {
            return copyWith(firstDose: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxSingleDose':
        {
          if (child is Quantity) {
            return copyWith(maxSingleDose: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxDosePerDay':
        {
          if (child is Quantity) {
            return copyWith(maxDosePerDay: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxDosePerTreatmentPeriod':
        {
          if (child is Ratio) {
            return copyWith(maxDosePerTreatmentPeriod: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'maxTreatmentPeriod':
        {
          if (child is FhirDuration) {
            return copyWith(maxTreatmentPeriod: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'targetSpecies':
        {
          if (child is List<AdministrableProductDefinitionTargetSpecies>) {
            // Add all elements from passed list
            final newList = [...?targetSpecies, ...child];
            return copyWith(targetSpecies: newList);
          } else if (child is AdministrableProductDefinitionTargetSpecies) {
            // Add single element to existing list or create new list
            final newList = [...?targetSpecies, child];
            return copyWith(targetSpecies: newList);
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
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'code':
        return ['CodeableConcept'];
      case 'firstDose':
        return ['Quantity'];
      case 'maxSingleDose':
        return ['Quantity'];
      case 'maxDosePerDay':
        return ['Quantity'];
      case 'maxDosePerTreatmentPeriod':
        return ['Ratio'];
      case 'maxTreatmentPeriod':
        return ['FhirDuration'];
      case 'targetSpecies':
        return ['AdministrableProductDefinitionTargetSpecies'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AdministrableProductDefinitionRouteOfAdministration]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  AdministrableProductDefinitionRouteOfAdministration createProperty(
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
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'code':
        {
          return copyWith(
            code: CodeableConcept.empty(),
          );
        }
      case 'firstDose':
        {
          return copyWith(
            firstDose: Quantity.empty(),
          );
        }
      case 'maxSingleDose':
        {
          return copyWith(
            maxSingleDose: Quantity.empty(),
          );
        }
      case 'maxDosePerDay':
        {
          return copyWith(
            maxDosePerDay: Quantity.empty(),
          );
        }
      case 'maxDosePerTreatmentPeriod':
        {
          return copyWith(
            maxDosePerTreatmentPeriod: Ratio.empty(),
          );
        }
      case 'maxTreatmentPeriod':
        {
          return copyWith(
            maxTreatmentPeriod: FhirDuration.empty(),
          );
        }
      case 'targetSpecies':
        {
          return copyWith(
            targetSpecies: <AdministrableProductDefinitionTargetSpecies>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  AdministrableProductDefinitionRouteOfAdministration clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool firstDose = false,
    bool maxSingleDose = false,
    bool maxDosePerDay = false,
    bool maxDosePerTreatmentPeriod = false,
    bool maxTreatmentPeriod = false,
    bool targetSpecies = false,
  }) {
    return AdministrableProductDefinitionRouteOfAdministration(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      code: code,
      firstDose: firstDose ? null : this.firstDose,
      maxSingleDose: maxSingleDose ? null : this.maxSingleDose,
      maxDosePerDay: maxDosePerDay ? null : this.maxDosePerDay,
      maxDosePerTreatmentPeriod:
          maxDosePerTreatmentPeriod ? null : this.maxDosePerTreatmentPeriod,
      maxTreatmentPeriod: maxTreatmentPeriod ? null : this.maxTreatmentPeriod,
      targetSpecies: targetSpecies ? null : this.targetSpecies,
    );
  }

  @override
  AdministrableProductDefinitionRouteOfAdministration clone() =>
      throw UnimplementedError();
  @override
  AdministrableProductDefinitionRouteOfAdministration copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    Quantity? firstDose,
    Quantity? maxSingleDose,
    Quantity? maxDosePerDay,
    Ratio? maxDosePerTreatmentPeriod,
    FhirDuration? maxTreatmentPeriod,
    List<AdministrableProductDefinitionTargetSpecies>? targetSpecies,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return AdministrableProductDefinitionRouteOfAdministration(
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
      firstDose: firstDose?.copyWith(
            objectPath: '$newObjectPath.firstDose',
          ) ??
          this.firstDose,
      maxSingleDose: maxSingleDose?.copyWith(
            objectPath: '$newObjectPath.maxSingleDose',
          ) ??
          this.maxSingleDose,
      maxDosePerDay: maxDosePerDay?.copyWith(
            objectPath: '$newObjectPath.maxDosePerDay',
          ) ??
          this.maxDosePerDay,
      maxDosePerTreatmentPeriod: maxDosePerTreatmentPeriod?.copyWith(
            objectPath: '$newObjectPath.maxDosePerTreatmentPeriod',
          ) ??
          this.maxDosePerTreatmentPeriod,
      maxTreatmentPeriod: maxTreatmentPeriod?.copyWith(
            objectPath: '$newObjectPath.maxTreatmentPeriod',
          ) ??
          this.maxTreatmentPeriod,
      targetSpecies: targetSpecies
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.targetSpecies',
                ),
              )
              .toList() ??
          this.targetSpecies,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AdministrableProductDefinitionRouteOfAdministration) {
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
    if (!listEquals<FhirExtension>(
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
    if (!equalsDeepWithNull(
      firstDose,
      o.firstDose,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maxSingleDose,
      o.maxSingleDose,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maxDosePerDay,
      o.maxDosePerDay,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maxDosePerTreatmentPeriod,
      o.maxDosePerTreatmentPeriod,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      maxTreatmentPeriod,
      o.maxTreatmentPeriod,
    )) {
      return false;
    }
    if (!listEquals<AdministrableProductDefinitionTargetSpecies>(
      targetSpecies,
      o.targetSpecies,
    )) {
      return false;
    }
    return true;
  }
}

/// [AdministrableProductDefinitionTargetSpecies]
/// A species for which this route applies.
class AdministrableProductDefinitionTargetSpecies extends BackboneElement {
  /// Primary constructor for
  /// [AdministrableProductDefinitionTargetSpecies]

  const AdministrableProductDefinitionTargetSpecies({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.withdrawalPeriod,
    super.disallowExtensions,
  }) : super(
          objectPath:
              'AdministrableProductDefinition.routeOfAdministration.targetSpecies',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory AdministrableProductDefinitionTargetSpecies.empty() =>
      AdministrableProductDefinitionTargetSpecies(
        code: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinitionTargetSpecies.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'AdministrableProductDefinition.routeOfAdministration.targetSpecies';
    return AdministrableProductDefinitionTargetSpecies(
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
      withdrawalPeriod: (json['withdrawalPeriod'] as List<dynamic>?)
          ?.map<AdministrableProductDefinitionWithdrawalPeriod>(
            (v) => AdministrableProductDefinitionWithdrawalPeriod.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.withdrawalPeriod',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AdministrableProductDefinitionTargetSpecies]
  /// from a [String] or [YamlMap] object
  factory AdministrableProductDefinitionTargetSpecies.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdministrableProductDefinitionTargetSpecies.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdministrableProductDefinitionTargetSpecies.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdministrableProductDefinitionTargetSpecies '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdministrableProductDefinitionTargetSpecies]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdministrableProductDefinitionTargetSpecies.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdministrableProductDefinitionTargetSpecies.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AdministrableProductDefinitionTargetSpecies';

  /// [code]
  /// Coded expression for the species.
  final CodeableConcept code;

  /// [withdrawalPeriod]
  /// A species specific time during which consumption of animal product is
  /// not appropriate.
  final List<AdministrableProductDefinitionWithdrawalPeriod>? withdrawalPeriod;
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
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'code',
      code,
    );
    addField(
      'withdrawalPeriod',
      withdrawalPeriod,
    );
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
      'withdrawalPeriod',
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
      case 'withdrawalPeriod':
        if (withdrawalPeriod != null) {
          fields.addAll(withdrawalPeriod!);
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
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'withdrawalPeriod':
        {
          if (child is List<AdministrableProductDefinitionWithdrawalPeriod>) {
            // Add all elements from passed list
            final newList = [...?withdrawalPeriod, ...child];
            return copyWith(withdrawalPeriod: newList);
          } else if (child is AdministrableProductDefinitionWithdrawalPeriod) {
            // Add single element to existing list or create new list
            final newList = [...?withdrawalPeriod, child];
            return copyWith(withdrawalPeriod: newList);
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
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'code':
        return ['CodeableConcept'];
      case 'withdrawalPeriod':
        return ['AdministrableProductDefinitionWithdrawalPeriod'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AdministrableProductDefinitionTargetSpecies]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  AdministrableProductDefinitionTargetSpecies createProperty(
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
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'code':
        {
          return copyWith(
            code: CodeableConcept.empty(),
          );
        }
      case 'withdrawalPeriod':
        {
          return copyWith(
            withdrawalPeriod: <AdministrableProductDefinitionWithdrawalPeriod>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  AdministrableProductDefinitionTargetSpecies clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool withdrawalPeriod = false,
  }) {
    return AdministrableProductDefinitionTargetSpecies(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      code: code,
      withdrawalPeriod: withdrawalPeriod ? null : this.withdrawalPeriod,
    );
  }

  @override
  AdministrableProductDefinitionTargetSpecies clone() =>
      throw UnimplementedError();
  @override
  AdministrableProductDefinitionTargetSpecies copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    List<AdministrableProductDefinitionWithdrawalPeriod>? withdrawalPeriod,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return AdministrableProductDefinitionTargetSpecies(
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
      withdrawalPeriod: withdrawalPeriod
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.withdrawalPeriod',
                ),
              )
              .toList() ??
          this.withdrawalPeriod,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AdministrableProductDefinitionTargetSpecies) {
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
    if (!listEquals<FhirExtension>(
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
    if (!listEquals<AdministrableProductDefinitionWithdrawalPeriod>(
      withdrawalPeriod,
      o.withdrawalPeriod,
    )) {
      return false;
    }
    return true;
  }
}

/// [AdministrableProductDefinitionWithdrawalPeriod]
/// A species specific time during which consumption of animal product is
/// not appropriate.
class AdministrableProductDefinitionWithdrawalPeriod extends BackboneElement {
  /// Primary constructor for
  /// [AdministrableProductDefinitionWithdrawalPeriod]

  const AdministrableProductDefinitionWithdrawalPeriod({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.tissue,
    required this.value,
    this.supportingInformation,
    super.disallowExtensions,
  }) : super(
          objectPath:
              'AdministrableProductDefinition.routeOfAdministration.targetSpecies.withdrawalPeriod',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory AdministrableProductDefinitionWithdrawalPeriod.empty() =>
      AdministrableProductDefinitionWithdrawalPeriod(
        tissue: CodeableConcept.empty(),
        value: Quantity.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinitionWithdrawalPeriod.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'AdministrableProductDefinition.routeOfAdministration.targetSpecies.withdrawalPeriod';
    return AdministrableProductDefinitionWithdrawalPeriod(
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
      tissue: JsonParser.parseObject<CodeableConcept>(
        json,
        'tissue',
        CodeableConcept.fromJson,
        '$objectPath.tissue',
      )!,
      value: JsonParser.parseObject<Quantity>(
        json,
        'value',
        Quantity.fromJson,
        '$objectPath.value',
      )!,
      supportingInformation: JsonParser.parsePrimitive<FhirString>(
        json,
        'supportingInformation',
        FhirString.fromJson,
        '$objectPath.supportingInformation',
      ),
    );
  }

  /// Deserialize [AdministrableProductDefinitionWithdrawalPeriod]
  /// from a [String] or [YamlMap] object
  factory AdministrableProductDefinitionWithdrawalPeriod.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdministrableProductDefinitionWithdrawalPeriod.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdministrableProductDefinitionWithdrawalPeriod.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdministrableProductDefinitionWithdrawalPeriod '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdministrableProductDefinitionWithdrawalPeriod]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdministrableProductDefinitionWithdrawalPeriod.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdministrableProductDefinitionWithdrawalPeriod.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AdministrableProductDefinitionWithdrawalPeriod';

  /// [tissue]
  /// Coded expression for the type of tissue for which the withdrawal period
  /// applies, e.g. meat, milk.
  final CodeableConcept tissue;

  /// [value]
  /// A value for the time.
  final Quantity value;

  /// [supportingInformation]
  /// Extra information about the withdrawal period.
  final FhirString? supportingInformation;
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
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'tissue',
      tissue,
    );
    addField(
      'value',
      value,
    );
    addField(
      'supportingInformation',
      supportingInformation,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'tissue',
      'value',
      'supportingInformation',
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
      case 'tissue':
        fields.add(tissue);
      case 'value':
        fields.add(value);
      case 'supportingInformation':
        if (supportingInformation != null) {
          fields.add(supportingInformation!);
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
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'tissue':
        {
          if (child is CodeableConcept) {
            return copyWith(tissue: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'value':
        {
          if (child is Quantity) {
            return copyWith(value: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'supportingInformation':
        {
          if (child is FhirString) {
            return copyWith(supportingInformation: child);
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
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'tissue':
        return ['CodeableConcept'];
      case 'value':
        return ['Quantity'];
      case 'supportingInformation':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AdministrableProductDefinitionWithdrawalPeriod]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  AdministrableProductDefinitionWithdrawalPeriod createProperty(
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
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'tissue':
        {
          return copyWith(
            tissue: CodeableConcept.empty(),
          );
        }
      case 'value':
        {
          return copyWith(
            value: Quantity.empty(),
          );
        }
      case 'supportingInformation':
        {
          return copyWith(
            supportingInformation: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  AdministrableProductDefinitionWithdrawalPeriod clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool supportingInformation = false,
  }) {
    return AdministrableProductDefinitionWithdrawalPeriod(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      tissue: tissue,
      value: value,
      supportingInformation:
          supportingInformation ? null : this.supportingInformation,
    );
  }

  @override
  AdministrableProductDefinitionWithdrawalPeriod clone() =>
      throw UnimplementedError();
  @override
  AdministrableProductDefinitionWithdrawalPeriod copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? tissue,
    Quantity? value,
    FhirString? supportingInformation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return AdministrableProductDefinitionWithdrawalPeriod(
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
      tissue: tissue?.copyWith(
            objectPath: '$newObjectPath.tissue',
          ) ??
          this.tissue,
      value: value?.copyWith(
            objectPath: '$newObjectPath.value',
          ) ??
          this.value,
      supportingInformation: supportingInformation?.copyWith(
            objectPath: '$newObjectPath.supportingInformation',
          ) ??
          this.supportingInformation,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AdministrableProductDefinitionWithdrawalPeriod) {
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
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      tissue,
      o.tissue,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      value,
      o.value,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      supportingInformation,
      o.supportingInformation,
    )) {
      return false;
    }
    return true;
  }
}
