import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        AdministrableProductDefinition,
        AdministrableProductDefinitionProperty,
        AdministrableProductDefinitionRouteOfAdministration,
        AdministrableProductDefinitionTargetSpecies,
        AdministrableProductDefinitionWithdrawalPeriod,
        R4ResourceType,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';
import 'package:yaml/yaml.dart';

/// [AdministrableProductDefinitionBuilder]
/// A medicinal product in the final form which is suitable for
/// administering to a patient (after any mixing of multiple components,
/// dissolution etc. has been performed).
class AdministrableProductDefinitionBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [AdministrableProductDefinitionBuilder]

  AdministrableProductDefinitionBuilder({
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
    this.formOf,
    this.administrableDoseForm,
    this.unitOfPresentation,
    this.producedFrom,
    this.ingredient,
    this.device,
    this.property,
    this.routeOfAdministration,
  }) : super(
          objectPath: 'AdministrableProductDefinition',
          resourceType: R4ResourceType.AdministrableProductDefinition,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AdministrableProductDefinitionBuilder.empty() =>
      AdministrableProductDefinitionBuilder(
        status: PublicationStatusBuilder.values.first,
        routeOfAdministration: <AdministrableProductDefinitionRouteOfAdministrationBuilder>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinitionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AdministrableProductDefinition';
    return AdministrableProductDefinitionBuilder(
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
      status: JsonParser.parsePrimitive<PublicationStatusBuilder>(
        json,
        'status',
        PublicationStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      formOf: (json['formOf'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.formOf',
              },
            ),
          )
          .toList(),
      administrableDoseForm: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'administrableDoseForm',
        CodeableConceptBuilder.fromJson,
        '$objectPath.administrableDoseForm',
      ),
      unitOfPresentation: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'unitOfPresentation',
        CodeableConceptBuilder.fromJson,
        '$objectPath.unitOfPresentation',
      ),
      producedFrom: (json['producedFrom'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.producedFrom',
              },
            ),
          )
          .toList(),
      ingredient: (json['ingredient'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.ingredient',
              },
            ),
          )
          .toList(),
      device: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'device',
        ReferenceBuilder.fromJson,
        '$objectPath.device',
      ),
      property: (json['property'] as List<dynamic>?)
          ?.map<AdministrableProductDefinitionPropertyBuilder>(
            (v) => AdministrableProductDefinitionPropertyBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.property',
              },
            ),
          )
          .toList(),
      routeOfAdministration: (json['routeOfAdministration'] as List<dynamic>?)
          ?.map<AdministrableProductDefinitionRouteOfAdministrationBuilder>(
            (v) => AdministrableProductDefinitionRouteOfAdministrationBuilder
                .fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.routeOfAdministration',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AdministrableProductDefinitionBuilder]
  /// from a [String] or [YamlMap] object
  factory AdministrableProductDefinitionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdministrableProductDefinitionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdministrableProductDefinitionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdministrableProductDefinitionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdministrableProductDefinitionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdministrableProductDefinitionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdministrableProductDefinitionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AdministrableProductDefinition';

  /// [identifier]
  /// An identifier for the administrable product.
  List<IdentifierBuilder>? identifier;

  /// [status]
  /// The status of this administrable product. Enables tracking the
  /// life-cycle of the content.
  PublicationStatusBuilder? status;

  /// [formOf]
  /// References a product from which one or more of the constituent parts of
  /// that product can be prepared and used as described by this
  /// administrable product. If this administrable product describes the
  /// administration of a crushed tablet, the 'formOf' would be the product
  /// representing a distribution containing tablets and possibly also a
  /// cream. This is distinct from the 'producedFrom' which refers to the
  /// specific components of the product that are used in this preparation,
  /// rather than the product as a whole.
  List<ReferenceBuilder>? formOf;

  /// [administrableDoseForm]
  /// The dose form of the final product after necessary reconstitution or
  /// processing. Contrasts to the manufactured dose form (see
  /// ManufacturedItemDefinition). If the manufactured form was 'powder for
  /// solution for injection', the administrable dose form could be 'solution
  /// for injection' (once mixed with another item having manufactured form
  /// 'solvent for solution for injection').
  CodeableConceptBuilder? administrableDoseForm;

  /// [unitOfPresentation]
  /// The presentation type in which this item is given to a patient. e.g.
  /// for a spray - 'puff' (as in 'contains 100 mcg per puff'), or for a
  /// liquid - 'vial' (as in 'contains 5 ml per vial').
  CodeableConceptBuilder? unitOfPresentation;

  /// [producedFrom]
  /// Indicates the specific manufactured items that are part of the 'formOf'
  /// product that are used in the preparation of this specific administrable
  /// form. In some cases, an administrable form might use all of the items
  /// from the overall product (or there might only be one item), while in
  /// other cases, an administrable form might use only a subset of the items
  /// available in the overall product. For example, an administrable form
  /// might involve combining a liquid and a powder available as part of an
  /// overall product, but not involve applying the also supplied cream.
  List<ReferenceBuilder>? producedFrom;

  /// [ingredient]
  /// The ingredients of this administrable medicinal product. This is only
  /// needed if the ingredients are not specified either using
  /// ManufacturedItemDefiniton (via
  /// AdministrableProductDefinition.producedFrom) to state which component
  /// items are used to make this, or using by incoming references from the
  /// Ingredient resource, to state in detail which substances exist within
  /// this. This element allows a basic coded ingredient to be used.
  List<CodeableConceptBuilder>? ingredient;

  /// [device]
  /// A device that is integral to the medicinal product, in effect being
  /// considered as an "ingredient" of the medicinal product. This is not
  /// intended for devices that are just co-packaged.
  ReferenceBuilder? device;

  /// [property]
  /// Characteristics e.g. a product's onset of action.
  List<AdministrableProductDefinitionPropertyBuilder>? property;

  /// [routeOfAdministration]
  /// The path by which the product is taken into or makes contact with the
  /// body. In some regions this is referred to as the licenced or approved
  /// route. RouteOfAdministration cannot be used when the 'formOf' product
  /// already uses MedicinalProductDefinition.route (and vice versa).
  List<AdministrableProductDefinitionRouteOfAdministrationBuilder>?
      routeOfAdministration;

  /// Converts a [AdministrableProductDefinitionBuilder]
  /// to [AdministrableProductDefinition]
  @override
  AdministrableProductDefinition build() =>
      AdministrableProductDefinition.fromJson(toJson());

  /// Converts a [AdministrableProductDefinitionBuilder]
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
    addField('formOf', formOf);
    addField('administrableDoseForm', administrableDoseForm);
    addField('unitOfPresentation', unitOfPresentation);
    addField('producedFrom', producedFrom);
    addField('ingredient', ingredient);
    addField('device', device);
    addField('property', property);
    addField('routeOfAdministration', routeOfAdministration);
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
        if (routeOfAdministration != null) {
          fields.addAll(routeOfAdministration!);
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
          if (child is PublicationStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = PublicationStatusBuilder(stringValue);
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
      case 'formOf':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            formOf = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            formOf = [
              ...(formOf ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'administrableDoseForm':
        {
          if (child is CodeableConceptBuilder) {
            administrableDoseForm = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'unitOfPresentation':
        {
          if (child is CodeableConceptBuilder) {
            unitOfPresentation = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'producedFrom':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            producedFrom = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            producedFrom = [
              ...(producedFrom ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'ingredient':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            ingredient = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            ingredient = [
              ...(ingredient ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'device':
        {
          if (child is ReferenceBuilder) {
            device = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'property':
        {
          if (child is List<AdministrableProductDefinitionPropertyBuilder>) {
            // Replace or create new list
            property = child;
            return;
          } else if (child is AdministrableProductDefinitionPropertyBuilder) {
            // Add single element to existing list or create new list
            property = [
              ...(property ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'routeOfAdministration':
        {
          if (child is List<
              AdministrableProductDefinitionRouteOfAdministrationBuilder>) {
            // Replace or create new list
            routeOfAdministration = child;
            return;
          } else if (child
              is AdministrableProductDefinitionRouteOfAdministrationBuilder) {
            // Add single element to existing list or create new list
            routeOfAdministration = [
              ...(routeOfAdministration ?? []),
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
      case 'formOf':
        return ['ReferenceBuilder'];
      case 'administrableDoseForm':
        return ['CodeableConceptBuilder'];
      case 'unitOfPresentation':
        return ['CodeableConceptBuilder'];
      case 'producedFrom':
        return ['ReferenceBuilder'];
      case 'ingredient':
        return ['CodeableConceptBuilder'];
      case 'device':
        return ['ReferenceBuilder'];
      case 'property':
        return ['AdministrableProductDefinitionPropertyBuilder'];
      case 'routeOfAdministration':
        return ['AdministrableProductDefinitionRouteOfAdministrationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AdministrableProductDefinitionBuilder]
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
          status = PublicationStatusBuilder.empty();
          return;
        }
      case 'formOf':
        {
          formOf = <ReferenceBuilder>[];
          return;
        }
      case 'administrableDoseForm':
        {
          administrableDoseForm = CodeableConceptBuilder.empty();
          return;
        }
      case 'unitOfPresentation':
        {
          unitOfPresentation = CodeableConceptBuilder.empty();
          return;
        }
      case 'producedFrom':
        {
          producedFrom = <ReferenceBuilder>[];
          return;
        }
      case 'ingredient':
        {
          ingredient = <CodeableConceptBuilder>[];
          return;
        }
      case 'device':
        {
          device = ReferenceBuilder.empty();
          return;
        }
      case 'property':
        {
          property = <AdministrableProductDefinitionPropertyBuilder>[];
          return;
        }
      case 'routeOfAdministration':
        {
          routeOfAdministration =
              <AdministrableProductDefinitionRouteOfAdministrationBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AdministrableProductDefinitionBuilder clone() => throw UnimplementedError();
  @override
  AdministrableProductDefinitionBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    PublicationStatusBuilder? status,
    List<ReferenceBuilder>? formOf,
    CodeableConceptBuilder? administrableDoseForm,
    CodeableConceptBuilder? unitOfPresentation,
    List<ReferenceBuilder>? producedFrom,
    List<CodeableConceptBuilder>? ingredient,
    ReferenceBuilder? device,
    List<AdministrableProductDefinitionPropertyBuilder>? property,
    List<AdministrableProductDefinitionRouteOfAdministrationBuilder>?
        routeOfAdministration,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = AdministrableProductDefinitionBuilder(
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
      formOf: formOf ?? this.formOf,
      administrableDoseForm:
          administrableDoseForm ?? this.administrableDoseForm,
      unitOfPresentation: unitOfPresentation ?? this.unitOfPresentation,
      producedFrom: producedFrom ?? this.producedFrom,
      ingredient: ingredient ?? this.ingredient,
      device: device ?? this.device,
      property: property ?? this.property,
      routeOfAdministration:
          routeOfAdministration ?? this.routeOfAdministration,
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
    if (o is! AdministrableProductDefinitionBuilder) {
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
    if (!listEquals<ReferenceBuilder>(
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
    if (!listEquals<ReferenceBuilder>(
      producedFrom,
      o.producedFrom,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<AdministrableProductDefinitionPropertyBuilder>(
      property,
      o.property,
    )) {
      return false;
    }
    if (!listEquals<AdministrableProductDefinitionRouteOfAdministrationBuilder>(
      routeOfAdministration,
      o.routeOfAdministration,
    )) {
      return false;
    }
    return true;
  }
}

/// [AdministrableProductDefinitionPropertyBuilder]
/// Characteristics e.g. a product's onset of action.
class AdministrableProductDefinitionPropertyBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AdministrableProductDefinitionPropertyBuilder]

  AdministrableProductDefinitionPropertyBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.valueX,
    this.status,
    super.disallowExtensions,
  }) : super(
          objectPath: 'AdministrableProductDefinition.property',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AdministrableProductDefinitionPropertyBuilder.empty() =>
      AdministrableProductDefinitionPropertyBuilder(
        type: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinitionPropertyBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AdministrableProductDefinition.property';
    return AdministrableProductDefinitionPropertyBuilder(
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
      valueX: JsonParser.parsePolymorphic<
          ValueXAdministrableProductDefinitionPropertyBuilder>(
        json,
        {
          'valueCodeableConcept': CodeableConceptBuilder.fromJson,
          'valueQuantity': QuantityBuilder.fromJson,
          'valueDate': FhirDateBuilder.fromJson,
          'valueBoolean': FhirBooleanBuilder.fromJson,
          'valueAttachment': AttachmentBuilder.fromJson,
        },
        objectPath,
      ),
      status: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'status',
        CodeableConceptBuilder.fromJson,
        '$objectPath.status',
      ),
    );
  }

  /// Deserialize [AdministrableProductDefinitionPropertyBuilder]
  /// from a [String] or [YamlMap] object
  factory AdministrableProductDefinitionPropertyBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdministrableProductDefinitionPropertyBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdministrableProductDefinitionPropertyBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdministrableProductDefinitionPropertyBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdministrableProductDefinitionPropertyBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdministrableProductDefinitionPropertyBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdministrableProductDefinitionPropertyBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AdministrableProductDefinitionProperty';

  /// [type]
  /// A code expressing the type of characteristic.
  CodeableConceptBuilder? type;

  /// [valueX]
  /// A value for the characteristic.
  ValueXAdministrableProductDefinitionPropertyBuilder? valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get valueCodeableConcept =>
      valueX?.isAs<CodeableConceptBuilder>();

  /// Getter for [valueQuantity] as a QuantityBuilder
  QuantityBuilder? get valueQuantity => valueX?.isAs<QuantityBuilder>();

  /// Getter for [valueDate] as a FhirDateBuilder
  FhirDateBuilder? get valueDate => valueX?.isAs<FhirDateBuilder>();

  /// Getter for [valueBoolean] as a FhirBooleanBuilder
  FhirBooleanBuilder? get valueBoolean => valueX?.isAs<FhirBooleanBuilder>();

  /// Getter for [valueAttachment] as a AttachmentBuilder
  AttachmentBuilder? get valueAttachment => valueX?.isAs<AttachmentBuilder>();

  /// [status]
  /// The status of characteristic e.g. assigned or pending.
  CodeableConceptBuilder? status;

  /// Converts a [AdministrableProductDefinitionPropertyBuilder]
  /// to [AdministrableProductDefinitionProperty]
  @override
  AdministrableProductDefinitionProperty build() =>
      AdministrableProductDefinitionProperty.fromJson(toJson());

  /// Converts a [AdministrableProductDefinitionPropertyBuilder]
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
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalizeFirstLetter()}', valueX);
    }

    addField('status', status);
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
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConceptBuilder) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is QuantityBuilder) {
          fields.add(valueX!);
        }
      case 'valueDate':
        if (valueX is FhirDateBuilder) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBooleanBuilder) {
          fields.add(valueX!);
        }
      case 'valueAttachment':
        if (valueX is AttachmentBuilder) {
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
      case 'value':
      case 'valueX':
        {
          if (child is ValueXAdministrableProductDefinitionPropertyBuilder) {
            valueX = child;
            return;
          } else {
            if (child is CodeableConceptBuilder) {
              valueX = child;
              return;
            }
            if (child is QuantityBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirDateBuilder) {
              valueX = child;
              return;
            }
            if (child is FhirBooleanBuilder) {
              valueX = child;
              return;
            }
            if (child is AttachmentBuilder) {
              valueX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueQuantity':
        {
          if (child is QuantityBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueDate':
        {
          if (child is FhirDateBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueBoolean':
        {
          if (child is FhirBooleanBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueAttachment':
        {
          if (child is AttachmentBuilder) {
            valueX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is CodeableConceptBuilder) {
            status = child;
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
        return ['CodeableConceptBuilder'];
      case 'value':
      case 'valueX':
        return [
          'CodeableConceptBuilder',
          'QuantityBuilder',
          'FhirDateBuilder',
          'FhirBooleanBuilder',
          'AttachmentBuilder',
        ];
      case 'valueCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'valueQuantity':
        return ['QuantityBuilder'];
      case 'valueDate':
        return ['FhirDateBuilder'];
      case 'valueBoolean':
        return ['FhirBooleanBuilder'];
      case 'valueAttachment':
        return ['AttachmentBuilder'];
      case 'status':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AdministrableProductDefinitionPropertyBuilder]
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
      case 'value':
      case 'valueX':
      case 'valueCodeableConcept':
        {
          valueX = CodeableConceptBuilder.empty();
          return;
        }
      case 'valueQuantity':
        {
          valueX = QuantityBuilder.empty();
          return;
        }
      case 'valueDate':
        {
          valueX = FhirDateBuilder.empty();
          return;
        }
      case 'valueBoolean':
        {
          valueX = FhirBooleanBuilder.empty();
          return;
        }
      case 'valueAttachment':
        {
          valueX = AttachmentBuilder.empty();
          return;
        }
      case 'status':
        {
          status = CodeableConceptBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AdministrableProductDefinitionPropertyBuilder clone() =>
      throw UnimplementedError();
  @override
  AdministrableProductDefinitionPropertyBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? type,
    ValueXAdministrableProductDefinitionPropertyBuilder? valueX,
    CodeableConceptBuilder? status,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AdministrableProductDefinitionPropertyBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueX: valueX ?? this.valueX,
      status: status ?? this.status,
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
    if (o is! AdministrableProductDefinitionPropertyBuilder) {
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

/// [AdministrableProductDefinitionRouteOfAdministrationBuilder]
/// The path by which the product is taken into or makes contact with the
/// body. In some regions this is referred to as the licenced or approved
/// route. RouteOfAdministration cannot be used when the 'formOf' product
/// already uses MedicinalProductDefinition.route (and vice versa).
class AdministrableProductDefinitionRouteOfAdministrationBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AdministrableProductDefinitionRouteOfAdministrationBuilder]

  AdministrableProductDefinitionRouteOfAdministrationBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
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
  /// For Builder classes, no fields are required
  factory AdministrableProductDefinitionRouteOfAdministrationBuilder.empty() =>
      AdministrableProductDefinitionRouteOfAdministrationBuilder(
        code: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinitionRouteOfAdministrationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AdministrableProductDefinition.routeOfAdministration';
    return AdministrableProductDefinitionRouteOfAdministrationBuilder(
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
      firstDose: JsonParser.parseObject<QuantityBuilder>(
        json,
        'firstDose',
        QuantityBuilder.fromJson,
        '$objectPath.firstDose',
      ),
      maxSingleDose: JsonParser.parseObject<QuantityBuilder>(
        json,
        'maxSingleDose',
        QuantityBuilder.fromJson,
        '$objectPath.maxSingleDose',
      ),
      maxDosePerDay: JsonParser.parseObject<QuantityBuilder>(
        json,
        'maxDosePerDay',
        QuantityBuilder.fromJson,
        '$objectPath.maxDosePerDay',
      ),
      maxDosePerTreatmentPeriod: JsonParser.parseObject<RatioBuilder>(
        json,
        'maxDosePerTreatmentPeriod',
        RatioBuilder.fromJson,
        '$objectPath.maxDosePerTreatmentPeriod',
      ),
      maxTreatmentPeriod: JsonParser.parseObject<FhirDurationBuilder>(
        json,
        'maxTreatmentPeriod',
        FhirDurationBuilder.fromJson,
        '$objectPath.maxTreatmentPeriod',
      ),
      targetSpecies: (json['targetSpecies'] as List<dynamic>?)
          ?.map<AdministrableProductDefinitionTargetSpeciesBuilder>(
            (v) => AdministrableProductDefinitionTargetSpeciesBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.targetSpecies',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AdministrableProductDefinitionRouteOfAdministrationBuilder]
  /// from a [String] or [YamlMap] object
  factory AdministrableProductDefinitionRouteOfAdministrationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdministrableProductDefinitionRouteOfAdministrationBuilder
          .fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdministrableProductDefinitionRouteOfAdministrationBuilder
          .fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdministrableProductDefinitionRouteOfAdministrationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdministrableProductDefinitionRouteOfAdministrationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdministrableProductDefinitionRouteOfAdministrationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdministrableProductDefinitionRouteOfAdministrationBuilder
          .fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AdministrableProductDefinitionRouteOfAdministration';

  /// [code]
  /// Coded expression for the route.
  CodeableConceptBuilder? code;

  /// [firstDose]
  /// The first dose (dose quantity) administered can be specified for the
  /// product, using a numerical value and its unit of measurement.
  QuantityBuilder? firstDose;

  /// [maxSingleDose]
  /// The maximum single dose that can be administered, specified using a
  /// numerical value and its unit of measurement.
  QuantityBuilder? maxSingleDose;

  /// [maxDosePerDay]
  /// The maximum dose per day (maximum dose quantity to be administered in
  /// any one 24-h period) that can be administered.
  QuantityBuilder? maxDosePerDay;

  /// [maxDosePerTreatmentPeriod]
  /// The maximum dose per treatment period that can be administered.
  RatioBuilder? maxDosePerTreatmentPeriod;

  /// [maxTreatmentPeriod]
  /// The maximum treatment period during which the product can be
  /// administered.
  FhirDurationBuilder? maxTreatmentPeriod;

  /// [targetSpecies]
  /// A species for which this route applies.
  List<AdministrableProductDefinitionTargetSpeciesBuilder>? targetSpecies;

  /// Converts a [AdministrableProductDefinitionRouteOfAdministrationBuilder]
  /// to [AdministrableProductDefinitionRouteOfAdministration]
  @override
  AdministrableProductDefinitionRouteOfAdministration build() =>
      AdministrableProductDefinitionRouteOfAdministration.fromJson(toJson());

  /// Converts a [AdministrableProductDefinitionRouteOfAdministrationBuilder]
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
    addField('firstDose', firstDose);
    addField('maxSingleDose', maxSingleDose);
    addField('maxDosePerDay', maxDosePerDay);
    addField('maxDosePerTreatmentPeriod', maxDosePerTreatmentPeriod);
    addField('maxTreatmentPeriod', maxTreatmentPeriod);
    addField('targetSpecies', targetSpecies);
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
      case 'firstDose':
        {
          if (child is QuantityBuilder) {
            firstDose = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'maxSingleDose':
        {
          if (child is QuantityBuilder) {
            maxSingleDose = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'maxDosePerDay':
        {
          if (child is QuantityBuilder) {
            maxDosePerDay = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'maxDosePerTreatmentPeriod':
        {
          if (child is RatioBuilder) {
            maxDosePerTreatmentPeriod = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'maxTreatmentPeriod':
        {
          if (child is FhirDurationBuilder) {
            maxTreatmentPeriod = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'targetSpecies':
        {
          if (child
              is List<AdministrableProductDefinitionTargetSpeciesBuilder>) {
            // Replace or create new list
            targetSpecies = child;
            return;
          } else if (child
              is AdministrableProductDefinitionTargetSpeciesBuilder) {
            // Add single element to existing list or create new list
            targetSpecies = [
              ...(targetSpecies ?? []),
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
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'firstDose':
        return ['QuantityBuilder'];
      case 'maxSingleDose':
        return ['QuantityBuilder'];
      case 'maxDosePerDay':
        return ['QuantityBuilder'];
      case 'maxDosePerTreatmentPeriod':
        return ['RatioBuilder'];
      case 'maxTreatmentPeriod':
        return ['FhirDurationBuilder'];
      case 'targetSpecies':
        return ['AdministrableProductDefinitionTargetSpeciesBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AdministrableProductDefinitionRouteOfAdministrationBuilder]
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
      case 'firstDose':
        {
          firstDose = QuantityBuilder.empty();
          return;
        }
      case 'maxSingleDose':
        {
          maxSingleDose = QuantityBuilder.empty();
          return;
        }
      case 'maxDosePerDay':
        {
          maxDosePerDay = QuantityBuilder.empty();
          return;
        }
      case 'maxDosePerTreatmentPeriod':
        {
          maxDosePerTreatmentPeriod = RatioBuilder.empty();
          return;
        }
      case 'maxTreatmentPeriod':
        {
          maxTreatmentPeriod = FhirDurationBuilder.empty();
          return;
        }
      case 'targetSpecies':
        {
          targetSpecies =
              <AdministrableProductDefinitionTargetSpeciesBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AdministrableProductDefinitionRouteOfAdministrationBuilder clone() =>
      throw UnimplementedError();
  @override
  AdministrableProductDefinitionRouteOfAdministrationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? code,
    QuantityBuilder? firstDose,
    QuantityBuilder? maxSingleDose,
    QuantityBuilder? maxDosePerDay,
    RatioBuilder? maxDosePerTreatmentPeriod,
    FhirDurationBuilder? maxTreatmentPeriod,
    List<AdministrableProductDefinitionTargetSpeciesBuilder>? targetSpecies,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult =
        AdministrableProductDefinitionRouteOfAdministrationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      firstDose: firstDose ?? this.firstDose,
      maxSingleDose: maxSingleDose ?? this.maxSingleDose,
      maxDosePerDay: maxDosePerDay ?? this.maxDosePerDay,
      maxDosePerTreatmentPeriod:
          maxDosePerTreatmentPeriod ?? this.maxDosePerTreatmentPeriod,
      maxTreatmentPeriod: maxTreatmentPeriod ?? this.maxTreatmentPeriod,
      targetSpecies: targetSpecies ?? this.targetSpecies,
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
    if (o is! AdministrableProductDefinitionRouteOfAdministrationBuilder) {
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
    if (!listEquals<AdministrableProductDefinitionTargetSpeciesBuilder>(
      targetSpecies,
      o.targetSpecies,
    )) {
      return false;
    }
    return true;
  }
}

/// [AdministrableProductDefinitionTargetSpeciesBuilder]
/// A species for which this route applies.
class AdministrableProductDefinitionTargetSpeciesBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AdministrableProductDefinitionTargetSpeciesBuilder]

  AdministrableProductDefinitionTargetSpeciesBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.withdrawalPeriod,
    super.disallowExtensions,
  }) : super(
          objectPath:
              'AdministrableProductDefinition.routeOfAdministration.targetSpecies',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AdministrableProductDefinitionTargetSpeciesBuilder.empty() =>
      AdministrableProductDefinitionTargetSpeciesBuilder(
        code: CodeableConceptBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinitionTargetSpeciesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'AdministrableProductDefinition.routeOfAdministration.targetSpecies';
    return AdministrableProductDefinitionTargetSpeciesBuilder(
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
      withdrawalPeriod: (json['withdrawalPeriod'] as List<dynamic>?)
          ?.map<AdministrableProductDefinitionWithdrawalPeriodBuilder>(
            (v) =>
                AdministrableProductDefinitionWithdrawalPeriodBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.withdrawalPeriod',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AdministrableProductDefinitionTargetSpeciesBuilder]
  /// from a [String] or [YamlMap] object
  factory AdministrableProductDefinitionTargetSpeciesBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdministrableProductDefinitionTargetSpeciesBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdministrableProductDefinitionTargetSpeciesBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdministrableProductDefinitionTargetSpeciesBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdministrableProductDefinitionTargetSpeciesBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdministrableProductDefinitionTargetSpeciesBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdministrableProductDefinitionTargetSpeciesBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AdministrableProductDefinitionTargetSpecies';

  /// [code]
  /// Coded expression for the species.
  CodeableConceptBuilder? code;

  /// [withdrawalPeriod]
  /// A species specific time during which consumption of animal product is
  /// not appropriate.
  List<AdministrableProductDefinitionWithdrawalPeriodBuilder>? withdrawalPeriod;

  /// Converts a [AdministrableProductDefinitionTargetSpeciesBuilder]
  /// to [AdministrableProductDefinitionTargetSpecies]
  @override
  AdministrableProductDefinitionTargetSpecies build() =>
      AdministrableProductDefinitionTargetSpecies.fromJson(toJson());

  /// Converts a [AdministrableProductDefinitionTargetSpeciesBuilder]
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
    addField('withdrawalPeriod', withdrawalPeriod);
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
      case 'withdrawalPeriod':
        {
          if (child
              is List<AdministrableProductDefinitionWithdrawalPeriodBuilder>) {
            // Replace or create new list
            withdrawalPeriod = child;
            return;
          } else if (child
              is AdministrableProductDefinitionWithdrawalPeriodBuilder) {
            // Add single element to existing list or create new list
            withdrawalPeriod = [
              ...(withdrawalPeriod ?? []),
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
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'withdrawalPeriod':
        return ['AdministrableProductDefinitionWithdrawalPeriodBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AdministrableProductDefinitionTargetSpeciesBuilder]
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
      case 'withdrawalPeriod':
        {
          withdrawalPeriod =
              <AdministrableProductDefinitionWithdrawalPeriodBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AdministrableProductDefinitionTargetSpeciesBuilder clone() =>
      throw UnimplementedError();
  @override
  AdministrableProductDefinitionTargetSpeciesBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? code,
    List<AdministrableProductDefinitionWithdrawalPeriodBuilder>?
        withdrawalPeriod,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AdministrableProductDefinitionTargetSpeciesBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      withdrawalPeriod: withdrawalPeriod ?? this.withdrawalPeriod,
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
    if (o is! AdministrableProductDefinitionTargetSpeciesBuilder) {
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
    if (!listEquals<AdministrableProductDefinitionWithdrawalPeriodBuilder>(
      withdrawalPeriod,
      o.withdrawalPeriod,
    )) {
      return false;
    }
    return true;
  }
}

/// [AdministrableProductDefinitionWithdrawalPeriodBuilder]
/// A species specific time during which consumption of animal product is
/// not appropriate.
class AdministrableProductDefinitionWithdrawalPeriodBuilder
    extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AdministrableProductDefinitionWithdrawalPeriodBuilder]

  AdministrableProductDefinitionWithdrawalPeriodBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.tissue,
    this.value,
    this.supportingInformation,
    super.disallowExtensions,
  }) : super(
          objectPath:
              'AdministrableProductDefinition.routeOfAdministration.targetSpecies.withdrawalPeriod',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AdministrableProductDefinitionWithdrawalPeriodBuilder.empty() =>
      AdministrableProductDefinitionWithdrawalPeriodBuilder(
        tissue: CodeableConceptBuilder.empty(),
        value: QuantityBuilder.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinitionWithdrawalPeriodBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath =
        'AdministrableProductDefinition.routeOfAdministration.targetSpecies.withdrawalPeriod';
    return AdministrableProductDefinitionWithdrawalPeriodBuilder(
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
      tissue: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'tissue',
        CodeableConceptBuilder.fromJson,
        '$objectPath.tissue',
      ),
      value: JsonParser.parseObject<QuantityBuilder>(
        json,
        'value',
        QuantityBuilder.fromJson,
        '$objectPath.value',
      ),
      supportingInformation: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'supportingInformation',
        FhirStringBuilder.fromJson,
        '$objectPath.supportingInformation',
      ),
    );
  }

  /// Deserialize [AdministrableProductDefinitionWithdrawalPeriodBuilder]
  /// from a [String] or [YamlMap] object
  factory AdministrableProductDefinitionWithdrawalPeriodBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AdministrableProductDefinitionWithdrawalPeriodBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AdministrableProductDefinitionWithdrawalPeriodBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AdministrableProductDefinitionWithdrawalPeriodBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AdministrableProductDefinitionWithdrawalPeriodBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AdministrableProductDefinitionWithdrawalPeriodBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AdministrableProductDefinitionWithdrawalPeriodBuilder.fromJson(
          json,);
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
  CodeableConceptBuilder? tissue;

  /// [value]
  /// A value for the time.
  QuantityBuilder? value;

  /// [supportingInformation]
  /// Extra information about the withdrawal period.
  FhirStringBuilder? supportingInformation;

  /// Converts a [AdministrableProductDefinitionWithdrawalPeriodBuilder]
  /// to [AdministrableProductDefinitionWithdrawalPeriod]
  @override
  AdministrableProductDefinitionWithdrawalPeriod build() =>
      AdministrableProductDefinitionWithdrawalPeriod.fromJson(toJson());

  /// Converts a [AdministrableProductDefinitionWithdrawalPeriodBuilder]
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
    addField('tissue', tissue);
    addField('value', value);
    addField('supportingInformation', supportingInformation);
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
      case 'tissue':
        if (tissue != null) {
          fields.add(tissue!);
        }
      case 'value':
        if (value != null) {
          fields.add(value!);
        }
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
      case 'tissue':
        {
          if (child is CodeableConceptBuilder) {
            tissue = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'value':
        {
          if (child is QuantityBuilder) {
            value = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'supportingInformation':
        {
          if (child is FhirStringBuilder) {
            supportingInformation = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                supportingInformation = converted;
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
      case 'tissue':
        return ['CodeableConceptBuilder'];
      case 'value':
        return ['QuantityBuilder'];
      case 'supportingInformation':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AdministrableProductDefinitionWithdrawalPeriodBuilder]
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
      case 'tissue':
        {
          tissue = CodeableConceptBuilder.empty();
          return;
        }
      case 'value':
        {
          value = QuantityBuilder.empty();
          return;
        }
      case 'supportingInformation':
        {
          supportingInformation = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  AdministrableProductDefinitionWithdrawalPeriodBuilder clone() =>
      throw UnimplementedError();
  @override
  AdministrableProductDefinitionWithdrawalPeriodBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? tissue,
    QuantityBuilder? value,
    FhirStringBuilder? supportingInformation,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AdministrableProductDefinitionWithdrawalPeriodBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      tissue: tissue ?? this.tissue,
      value: value ?? this.value,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
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
    if (o is! AdministrableProductDefinitionWithdrawalPeriodBuilder) {
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
