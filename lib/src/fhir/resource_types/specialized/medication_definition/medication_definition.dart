// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'medication_definition.freezed.dart';
part 'medication_definition.g.dart';

@freezed
class AdministrableProductDefinition
    with Resource, _$AdministrableProductDefinition {
  const AdministrableProductDefinition._();

  ///
  /// [AdministrableProductDefinition] A medicinal product in the final form which is suitable for administering to a patient (after any mixing of multiple components, dissolution etc. has been performed).",
  ///
  /// [resourceType] This is a AdministrableProductDefinition resource",
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.",
  ///
  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  ///
  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  ///
  /// [language] The base language in which the resource is written.;
  ///
  /// [languageElement] (_language): Extensions for language;
  ///
  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  ///
  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [identifier] The identifier(s) of this Ingredient that are assigned by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate.;
  ///
  /// [status] The status of this ingredient. Enables tracking the life-cycle of the content.;
  ///
  /// [statusElement] (_status): Extensions for status;
  ///
  const factory AdministrableProductDefinition({
    @Default(R4ResourceType.AdministrableProductDefinition)

    /// [resourceType] This is a AdministrableProductDefinition resource",
    R4ResourceType resourceType,
    String? id,

    /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
    FhirUri? implicitRules,

    /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
    @JsonKey(name: '_implicitRules') Element? implicitRulesElement,

    /// [language] The base language in which the resource is written.;
    FhirCode? language,

    /// [languageElement] (_language): Extensions for language;
    @JsonKey(name: '_language') Element? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [identifier] The identifier(s) of this Ingredient that are assigned by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate.;
    List<Identifier>? identifier,

    /// [status] The status of this ingredient. Enables tracking the life-cycle of the content.;
    FhirCode? status,

    /// [statusElement] (_status): Extensions for status;
    @JsonKey(name: '_status') Element? statusElement,
    List<Reference>? formOf,
    CodeableConcept? administrableDoseForm,
    CodeableConcept? unitOfPresentation,
    List<Reference>? producedFrom,
    List<CodeableConcept>? ingredient,
    Reference? device,
    List<AdministrableProductDefinitionProperty>? property,
    required List<AdministrableProductDefinitionRouteOfAdministration>
        routeOfAdministration,
  }) = _AdministrableProductDefinition;

  @override
  String get fhirType => 'AdministrableProductDefinition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory AdministrableProductDefinition.fromYaml(dynamic yaml) => yaml
          is String
      ? AdministrableProductDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AdministrableProductDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AdministrableProductDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinition.fromJson(Map<String, dynamic> json) =>
      _$AdministrableProductDefinitionFromJson(json);

  /// Acts like a constructor, returns a [AdministrableProductDefinition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory AdministrableProductDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AdministrableProductDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());
}

@freezed
class AdministrableProductDefinitionProperty
    with BackboneType, _$AdministrableProductDefinitionProperty {
  const AdministrableProductDefinitionProperty._();

  /// [AdministrableProductDefinitionProperty] A medicinal product in the final form which is suitable for administering to a patient (after any mixing of multiple components, dissolution etc. has been performed).

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [type] A code expressing the type of characteristic.;
  ///
  /// [valueCodeableConcept] A value for the characteristic.;
  ///
  /// [valueQuantity] A value for the characteristic.;
  ///
  /// [valueDate] A value for the characteristic.;
  ///
  /// [valueDateElement] (_valueDate): Extensions for valueDate;
  ///
  /// [valueBoolean] A value for the characteristic.;
  ///
  /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
  ///
  /// [valueAttachment] A value for the characteristic.;
  ///
  /// [status] The status of characteristic e.g. assigned or pending.;
  const factory AdministrableProductDefinitionProperty({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [type] A code expressing the type of characteristic.;
    required CodeableConcept type,

    /// [valueCodeableConcept] A value for the characteristic.;
    CodeableConcept? valueCodeableConcept,

    /// [valueQuantity] A value for the characteristic.;
    Quantity? valueQuantity,

    /// [valueDate] A value for the characteristic.;
    FhirDate? valueDate,

    /// [valueDateElement] (_valueDate): Extensions for valueDate;
    @JsonKey(name: '_valueDate') Element? valueDateElement,

    /// [valueBoolean] A value for the characteristic.;
    FhirBoolean? valueBoolean,

    /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
    @JsonKey(name: '_valueBoolean') Element? valueBooleanElement,

    /// [valueAttachment] A value for the characteristic.;
    Attachment? valueAttachment,

    /// [status] The status of characteristic e.g. assigned or pending.;
    CodeableConcept? status,
  }) = _AdministrableProductDefinitionProperty;

  @override
  String get fhirType => 'AdministrableProductDefinitionProperty';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory AdministrableProductDefinitionProperty.fromYaml(dynamic yaml) => yaml
          is String
      ? AdministrableProductDefinitionProperty.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? AdministrableProductDefinitionProperty.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'AdministrableProductDefinitionProperty cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinitionProperty.fromJson(
          Map<String, dynamic> json) =>
      _$AdministrableProductDefinitionPropertyFromJson(json);

  /// Acts like a constructor, returns a [AdministrableProductDefinitionProperty], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory AdministrableProductDefinitionProperty.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AdministrableProductDefinitionPropertyFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

@freezed
class AdministrableProductDefinitionRouteOfAdministration
    with BackboneType, _$AdministrableProductDefinitionRouteOfAdministration {
  const AdministrableProductDefinitionRouteOfAdministration._();

  /// [AdministrableProductDefinitionRouteOfAdministration] A medicinal product in the final form which is suitable for administering to a patient (after any mixing of multiple components, dissolution etc. has been performed).

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [code] Coded expression for the route.;
  ///
  /// [firstDose] The first dose (dose quantity) administered can be specified for the product, using a numerical value and its unit of measurement.;
  ///
  /// [maxSingleDose] The maximum single dose that can be administered, specified using a numerical value and its unit of measurement.;
  ///
  /// [maxDosePerDay] The maximum dose per day (maximum dose quantity to be administered in any one 24-h period) that can be administered.;
  ///
  /// [maxDosePerTreatmentPeriod] The maximum dose per treatment period that can be administered.;
  ///
  /// [maxTreatmentPeriod] The maximum treatment period during which the product can be administered.;
  ///
  /// [targetSpecies] A species for which this route applies.;
  const factory AdministrableProductDefinitionRouteOfAdministration({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [code] Coded expression for the route.;
    required CodeableConcept code,

    /// [firstDose] The first dose (dose quantity) administered can be specified for the product, using a numerical value and its unit of measurement.;
    Quantity? firstDose,

    /// [maxSingleDose] The maximum single dose that can be administered, specified using a numerical value and its unit of measurement.;
    Quantity? maxSingleDose,

    /// [maxDosePerDay] The maximum dose per day (maximum dose quantity to be administered in any one 24-h period) that can be administered.;
    Quantity? maxDosePerDay,

    /// [maxDosePerTreatmentPeriod] The maximum dose per treatment period that can be administered.;
    Ratio? maxDosePerTreatmentPeriod,

    /// [maxTreatmentPeriod] The maximum treatment period during which the product can be administered.;
    FhirDuration? maxTreatmentPeriod,

    /// [targetSpecies] A species for which this route applies.;
    List<AdministrableProductDefinitionTargetSpecies>? targetSpecies,
  }) = _AdministrableProductDefinitionRouteOfAdministration;

  @override
  String get fhirType => 'AdministrableProductDefinitionRouteOfAdministration';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory AdministrableProductDefinitionRouteOfAdministration.fromYaml(
          dynamic yaml) =>
      yaml is String
          ? AdministrableProductDefinitionRouteOfAdministration.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
          : yaml is YamlMap
              ? AdministrableProductDefinitionRouteOfAdministration.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
              : throw ArgumentError(
                  'AdministrableProductDefinitionRouteOfAdministration cannot be constructed from input provided,'
                  ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinitionRouteOfAdministration.fromJson(
          Map<String, dynamic> json) =>
      _$AdministrableProductDefinitionRouteOfAdministrationFromJson(json);

  /// Acts like a constructor, returns a [AdministrableProductDefinitionRouteOfAdministration], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory AdministrableProductDefinitionRouteOfAdministration.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AdministrableProductDefinitionRouteOfAdministrationFromJson(
          json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

@freezed
class AdministrableProductDefinitionTargetSpecies
    with BackboneType, _$AdministrableProductDefinitionTargetSpecies {
  const AdministrableProductDefinitionTargetSpecies._();

  /// [AdministrableProductDefinitionTargetSpecies] A medicinal product in the final form which is suitable for administering to a patient (after any mixing of multiple components, dissolution etc. has been performed).

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [code] Coded expression for the species.;
  ///
  /// [withdrawalPeriod] A species specific time during which consumption of animal product is not appropriate.;
  const factory AdministrableProductDefinitionTargetSpecies({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [code] Coded expression for the species.;
    required CodeableConcept code,

    /// [withdrawalPeriod] A species specific time during which consumption of animal product is not appropriate.;
    List<AdministrableProductDefinitionWithdrawalPeriod>? withdrawalPeriod,
  }) = _AdministrableProductDefinitionTargetSpecies;

  @override
  String get fhirType => 'AdministrableProductDefinitionTargetSpecies';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory AdministrableProductDefinitionTargetSpecies.fromYaml(dynamic yaml) =>
      yaml is String
          ? AdministrableProductDefinitionTargetSpecies.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
          : yaml is YamlMap
              ? AdministrableProductDefinitionTargetSpecies.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
              : throw ArgumentError(
                  'AdministrableProductDefinitionTargetSpecies cannot be constructed from input provided,'
                  ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinitionTargetSpecies.fromJson(
          Map<String, dynamic> json) =>
      _$AdministrableProductDefinitionTargetSpeciesFromJson(json);

  /// Acts like a constructor, returns a [AdministrableProductDefinitionTargetSpecies], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory AdministrableProductDefinitionTargetSpecies.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AdministrableProductDefinitionTargetSpeciesFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

@freezed
class AdministrableProductDefinitionWithdrawalPeriod
    with BackboneType, _$AdministrableProductDefinitionWithdrawalPeriod {
  const AdministrableProductDefinitionWithdrawalPeriod._();

  /// [AdministrableProductDefinitionWithdrawalPeriod] A medicinal product in the final form which is suitable for administering to a patient (after any mixing of multiple components, dissolution etc. has been performed).

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [tissue] Coded expression for the type of tissue for which the withdrawal period applies, e.g. meat, milk.;
  ///
  /// [value] A value for the time.;
  ///
  /// [supportingInformation] Extra information about the withdrawal period.;
  ///
  /// [supportingInformationElement] (_supportingInformation): Extensions for supportingInformation;
  const factory AdministrableProductDefinitionWithdrawalPeriod({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [tissue] Coded expression for the type of tissue for which the withdrawal period applies, e.g. meat, milk.;
    required CodeableConcept tissue,

    /// [value] A value for the time.;
    required Quantity value,

    /// [supportingInformation] Extra information about the withdrawal period.;
    String? supportingInformation,
    @JsonKey(name: '_supportingInformation')

    /// [supportingInformationElement] (_supportingInformation): Extensions for supportingInformation;
    Element? supportingInformationElement,
  }) = _AdministrableProductDefinitionWithdrawalPeriod;

  @override
  String get fhirType => 'AdministrableProductDefinitionWithdrawalPeriod';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory AdministrableProductDefinitionWithdrawalPeriod.fromYaml(
          dynamic yaml) =>
      yaml is String
          ? AdministrableProductDefinitionWithdrawalPeriod.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
          : yaml is YamlMap
              ? AdministrableProductDefinitionWithdrawalPeriod.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
              : throw ArgumentError(
                  'AdministrableProductDefinitionWithdrawalPeriod cannot be constructed from input provided,'
                  ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory AdministrableProductDefinitionWithdrawalPeriod.fromJson(
          Map<String, dynamic> json) =>
      _$AdministrableProductDefinitionWithdrawalPeriodFromJson(json);

  /// Acts like a constructor, returns a [AdministrableProductDefinitionWithdrawalPeriod], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory AdministrableProductDefinitionWithdrawalPeriod.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AdministrableProductDefinitionWithdrawalPeriodFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [Ingredient] An ingredient of a manufactured item or pharmaceutical product.
@freezed
class Ingredient with Resource, _$Ingredient {
  /// [Ingredient] An ingredient of a manufactured item or pharmaceutical product.
  const Ingredient._();

  /// [Ingredient] An ingredient of a manufactured item or pharmaceutical product.

  ///
  /// [resourceType] This is a Ingredient resource;
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
  ///
  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  ///
  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  ///
  /// [language] The base language in which the resource is written.;
  ///
  /// [languageElement] (_language): Extensions for language;
  ///
  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  ///
  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [identifier] The identifier(s) of this Ingredient that are assigned by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate.;
  ///
  /// [status] The status of this ingredient. Enables tracking the life-cycle of the content.;
  ///
  /// [statusElement] (_status): Extensions for status;
  ///
  /// [for] The product which this ingredient is a constituent part of.;
  ///
  /// [role] A classification of the ingredient identifying its purpose within the product, e.g. active, inactive.;
  ///
  /// [function] A classification of the ingredient identifying its precise purpose(s) in the drug product. This extends the Ingredient.role to add more detail. Example: antioxidant, alkalizing agent.;
  ///
  /// [group] A classification of the ingredient according to where in the physical item it tends to be used, such the outer shell of a tablet, inner body or ink.;
  ///
  /// [allergenicIndicator] If the ingredient is a known or suspected allergen. Note that this is a property of the substance, so if a reference to a SubstanceDefinition is used to decribe that (rather than just a code), the allergen information should go there, not here.;
  ///
  /// [allergenicIndicatorElement] (_allergenicIndicator): Extensions for allergenicIndicator;
  ///
  /// [manufacturer] The organization(s) that manufacture this ingredient. Can be used to indicate:         1) Organizations we are aware of that manufacture this ingredient         2) Specific Manufacturer(s) currently being used         3) Set of organisations allowed to manufacture this ingredient for this product         Users must be clear on the application of context relevant to their use case.;
  ///
  /// [substance] The substance that comprises this ingredient.;
  const factory Ingredient({
    /// [resourceType] This is a Ingredient resource;
    @Default(R4ResourceType.Ingredient) R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
    String? id,

    /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
    FhirUri? implicitRules,

    /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
    @JsonKey(name: '_implicitRules') Element? implicitRulesElement,

    /// [language] The base language in which the resource is written.;
    FhirCode? language,

    /// [languageElement] (_language): Extensions for language;
    @JsonKey(name: '_language') Element? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [identifier] The identifier(s) of this Ingredient that are assigned by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate.;
    Identifier? identifier,

    /// [status] The status of this ingredient. Enables tracking the life-cycle of the content.;
    FhirCode? status,

    /// [statusElement] (_status): Extensions for status;
    @JsonKey(name: '_status') Element? statusElement,

    /// [for] The product which this ingredient is a constituent part of.;
    @JsonKey(name: 'for') List<Reference>? for_,

    /// [role] A classification of the ingredient identifying its purpose within the product, e.g. active, inactive.;
    required CodeableConcept role,

    /// [function] A classification of the ingredient identifying its precise purpose(s) in the drug product. This extends the Ingredient.role to add more detail. Example: antioxidant, alkalizing agent.;
    List<CodeableConcept>? function,

    /// [group] A classification of the ingredient according to where in the physical item it tends to be used, such the outer shell of a tablet, inner body or ink.;
    CodeableConcept? group,

    /// [allergenicIndicator] If the ingredient is a known or suspected allergen. Note that this is a property of the substance, so if a reference to a SubstanceDefinition is used to decribe that (rather than just a code), the allergen information should go there, not here.;
    FhirBoolean? allergenicIndicator,

    /// [allergenicIndicatorElement] (_allergenicIndicator): Extensions for allergenicIndicator;
    @JsonKey(name: '_allergenicIndicator') Element? allergenicIndicatorElement,

    /// [manufacturer] The organization(s) that manufacture this ingredient. Can be used to indicate:         1) Organizations we are aware of that manufacture this ingredient         2) Specific Manufacturer(s) currently being used         3) Set of organisations allowed to manufacture this ingredient for this product         Users must be clear on the application of context relevant to their use case.;
    List<IngredientManufacturer>? manufacturer,

    /// [substance] The substance that comprises this ingredient.;
    required IngredientSubstance substance,
  }) = _Ingredient;

  @override
  String get fhirType => 'Ingredient';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Ingredient.fromYaml(dynamic yaml) => yaml is String
      ? Ingredient.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Ingredient.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Ingredient cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);

  /// Acts like a constructor, returns a [Ingredient], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Ingredient.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$IngredientFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());
}

/// [IngredientManufacturer] An ingredient of a manufactured item or pharmaceutical product.
@freezed
class IngredientManufacturer with BackboneType, _$IngredientManufacturer {
  /// [IngredientManufacturer] An ingredient of a manufactured item or pharmaceutical product.
  const IngredientManufacturer._();

  /// [IngredientManufacturer] An ingredient of a manufactured item or pharmaceutical product.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [role] The way in which this manufacturer is associated with the ingredient. For example whether it is a possible one (others allowed), or an exclusive authorized one for this ingredient. Note that this is not the manufacturing process role.;
  ///
  /// [roleElement] (_role): Extensions for role;
  ///
  /// [manufacturer] An organization that manufactures this ingredient.;
  const factory IngredientManufacturer({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [role] The way in which this manufacturer is associated with the ingredient. For example whether it is a possible one (others allowed), or an exclusive authorized one for this ingredient. Note that this is not the manufacturing process role.;
    FhirCode? role,

    /// [roleElement] (_role): Extensions for role;
    @JsonKey(name: '_role') Element? roleElement,

    /// [manufacturer] An organization that manufactures this ingredient.;
    required Reference manufacturer,
  }) = _IngredientManufacturer;

  @override
  String get fhirType => 'IngredientManufacturer';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory IngredientManufacturer.fromYaml(dynamic yaml) => yaml is String
      ? IngredientManufacturer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? IngredientManufacturer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'IngredientManufacturer cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory IngredientManufacturer.fromJson(Map<String, dynamic> json) =>
      _$IngredientManufacturerFromJson(json);

  /// Acts like a constructor, returns a [IngredientManufacturer], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory IngredientManufacturer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$IngredientManufacturerFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [IngredientSubstance] An ingredient of a manufactured item or pharmaceutical product.
@freezed
class IngredientSubstance with BackboneType, _$IngredientSubstance {
  /// [IngredientSubstance] An ingredient of a manufactured item or pharmaceutical product.
  const IngredientSubstance._();

  /// [IngredientSubstance] An ingredient of a manufactured item or pharmaceutical product.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [code] A code or full resource that represents the ingredient's substance.;
  ///
  /// [strength] The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical product or manufactured item. The allowed repetitions do not represent different strengths, but are different representations - mathematically equivalent - of a single strength.;
  const factory IngredientSubstance({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [code] A code or full resource that represents the ingredient's substance.;
    required CodeableReference code,

    /// [strength] The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical product or manufactured item. The allowed repetitions do not represent different strengths, but are different representations - mathematically equivalent - of a single strength.;
    List<IngredientStrength>? strength,
  }) = _IngredientSubstance;

  @override
  String get fhirType => 'IngredientSubstance';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory IngredientSubstance.fromYaml(dynamic yaml) => yaml is String
      ? IngredientSubstance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? IngredientSubstance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'IngredientSubstance cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory IngredientSubstance.fromJson(Map<String, dynamic> json) =>
      _$IngredientSubstanceFromJson(json);

  /// Acts like a constructor, returns a [IngredientSubstance], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory IngredientSubstance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$IngredientSubstanceFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [IngredientStrength] An ingredient of a manufactured item or pharmaceutical product.
@freezed
class IngredientStrength with BackboneType, _$IngredientStrength {
  /// [IngredientStrength] An ingredient of a manufactured item or pharmaceutical product.
  const IngredientStrength._();

  /// [IngredientStrength] An ingredient of a manufactured item or pharmaceutical product.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [presentationRatio] The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical product or manufactured item. Unit of presentation refers to the quantity that the item occurs in e.g. a strength per tablet size, perhaps 'per 20mg' (the size of the tablet). It is not generally normalized as a unitary unit, which would be 'per mg').;
  ///
  /// [presentationRatioRange] The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical product or manufactured item. Unit of presentation refers to the quantity that the item occurs in e.g. a strength per tablet size, perhaps 'per 20mg' (the size of the tablet). It is not generally normalized as a unitary unit, which would be 'per mg').;
  ///
  /// [textPresentation] A textual represention of either the whole of the presentation strength or a part of it - with the rest being in Strength.presentation as a ratio.;
  ///
  /// [textPresentationElement] (_textPresentation): Extensions for textPresentation;
  ///
  /// [concentrationRatio] The strength per unitary volume (or mass).;
  ///
  /// [concentrationRatioRange] The strength per unitary volume (or mass).;
  ///
  /// [textConcentration] A textual represention of either the whole of the concentration strength or a part of it - with the rest being in Strength.concentration as a ratio.;
  ///
  /// [textConcentrationElement] (_textConcentration): Extensions for textConcentration;
  ///
  /// [measurementPoint] For when strength is measured at a particular point or distance. There are products where strength is measured at a particular point. For example, the strength of the ingredient in some inhalers is measured at a particular position relative to the point of aerosolization.;
  ///
  /// [measurementPointElement] (_measurementPoint): Extensions for measurementPoint;
  ///
  /// [country] The country or countries for which the strength range applies.;
  ///
  /// [referenceStrength] Strength expressed in terms of a reference substance. For when the ingredient strength is additionally expressed as equivalent to the strength of some other closely related substance (e.g. salt vs. base). Reference strength represents the strength (quantitative composition) of the active moiety of the active substance. There are situations when the active substance and active moiety are different, therefore both a strength and a reference strength are needed.;
  const factory IngredientStrength({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [presentationRatio] The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical product or manufactured item. Unit of presentation refers to the quantity that the item occurs in e.g. a strength per tablet size, perhaps 'per 20mg' (the size of the tablet). It is not generally normalized as a unitary unit, which would be 'per mg').;
    Ratio? presentationRatio,

    /// [presentationRatioRange] The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical product or manufactured item. Unit of presentation refers to the quantity that the item occurs in e.g. a strength per tablet size, perhaps 'per 20mg' (the size of the tablet). It is not generally normalized as a unitary unit, which would be 'per mg').;
    RatioRange? presentationRatioRange,

    /// [textPresentation] A textual represention of either the whole of the presentation strength or a part of it - with the rest being in Strength.presentation as a ratio.;
    String? textPresentation,

    /// [textPresentationElement] (_textPresentation): Extensions for textPresentation;
    @JsonKey(name: '_textPresentation') Element? textPresentationElement,

    /// [concentrationRatio] The strength per unitary volume (or mass).;
    Ratio? concentrationRatio,

    /// [concentrationRatioRange] The strength per unitary volume (or mass).;
    RatioRange? concentrationRatioRange,

    /// [textConcentration] A textual represention of either the whole of the concentration strength or a part of it - with the rest being in Strength.concentration as a ratio.;
    String? textConcentration,

    /// [textConcentrationElement] (_textConcentration): Extensions for textConcentration;
    @JsonKey(name: '_textConcentration') Element? textConcentrationElement,

    /// [measurementPoint] For when strength is measured at a particular point or distance. There are products where strength is measured at a particular point. For example, the strength of the ingredient in some inhalers is measured at a particular position relative to the point of aerosolization.;
    String? measurementPoint,

    /// [measurementPointElement] (_measurementPoint): Extensions for measurementPoint;
    @JsonKey(name: '_measurementPoint') Element? measurementPointElement,

    /// [country] The country or countries for which the strength range applies.;
    List<CodeableConcept>? country,

    /// [referenceStrength] Strength expressed in terms of a reference substance. For when the ingredient strength is additionally expressed as equivalent to the strength of some other closely related substance (e.g. salt vs. base). Reference strength represents the strength (quantitative composition) of the active moiety of the active substance. There are situations when the active substance and active moiety are different, therefore both a strength and a reference strength are needed.;
    List<IngredientReferenceStrength>? referenceStrength,
  }) = _IngredientStrength;

  @override
  String get fhirType => 'IngredientStrength';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory IngredientStrength.fromYaml(dynamic yaml) => yaml is String
      ? IngredientStrength.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? IngredientStrength.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'IngredientStrength cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory IngredientStrength.fromJson(Map<String, dynamic> json) =>
      _$IngredientStrengthFromJson(json);

  /// Acts like a constructor, returns a [IngredientStrength], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory IngredientStrength.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$IngredientStrengthFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [IngredientReferenceStrength] An ingredient of a manufactured item or pharmaceutical product.
@freezed
class IngredientReferenceStrength
    with BackboneType, _$IngredientReferenceStrength {
  /// [IngredientReferenceStrength] An ingredient of a manufactured item or pharmaceutical product.
  const IngredientReferenceStrength._();

  /// [IngredientReferenceStrength] An ingredient of a manufactured item or pharmaceutical product.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [substance] Relevant reference substance.;
  ///
  /// [strengthRatio] Strength expressed in terms of a reference substance.;
  ///
  /// [strengthRatioRange] Strength expressed in terms of a reference substance.;
  ///
  /// [strengthQuantity] Strength expressed in terms of a reference substance.;
  ///
  /// [measurementPoint] For when strength is measured at a particular point or distance.;
  ///
  /// [measurementPointElement] (_measurementPoint): Extensions for measurementPoint;
  ///
  /// [country] The country or countries for which the strength range applies.;
  const factory IngredientReferenceStrength({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [substance] Relevant reference substance.;
    CodeableReference? substance,

    /// [strengthRatio] Strength expressed in terms of a reference substance.;
    Ratio? strengthRatio,

    /// [strengthRatioRange] Strength expressed in terms of a reference substance.;
    RatioRange? strengthRatioRange,

    /// [strengthQuantity] Strength expressed in terms of a reference substance.;
    Quantity? strengthQuantity,

    /// [measurementPoint] For when strength is measured at a particular point or distance.;
    String? measurementPoint,

    /// [measurementPointElement] (_measurementPoint): Extensions for measurementPoint;
    @JsonKey(name: '_measurementPoint') Element? measurementPointElement,

    /// [country] The country or countries for which the strength range applies.;
    List<CodeableConcept>? country,
  }) = _IngredientReferenceStrength;

  @override
  String get fhirType => 'IngredientReferenceStrength';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory IngredientReferenceStrength.fromYaml(dynamic yaml) => yaml is String
      ? IngredientReferenceStrength.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? IngredientReferenceStrength.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'IngredientReferenceStrength cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory IngredientReferenceStrength.fromJson(Map<String, dynamic> json) =>
      _$IngredientReferenceStrengthFromJson(json);

  /// Acts like a constructor, returns a [IngredientReferenceStrength], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory IngredientReferenceStrength.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$IngredientReferenceStrengthFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [ClinicalUseDefinition] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
@freezed
class ClinicalUseDefinition with Resource, _$ClinicalUseDefinition {
  /// [ClinicalUseDefinition] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
  const ClinicalUseDefinition._();

  /// [ClinicalUseDefinition] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.

  ///
  /// [resourceType] This is a ClinicalUseDefinition resource;
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
  ///
  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  ///
  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  ///
  /// [language] The base language in which the resource is written.;
  ///
  /// [languageElement] (_language): Extensions for language;
  ///
  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  ///
  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [identifier] Business identifier for this issue.;
  ///
  /// [type] indication | contraindication | interaction | undesirable-effect | warning.;
  ///
  /// [typeElement] (_type): Extensions for type;
  ///
  /// [category] A categorisation of the issue, primarily for dividing warnings into subject heading areas such as "Pregnancy and Lactation", "Overdose", "Effects on Ability to Drive and Use Machines".;
  ///
  /// [subject] The medication or procedure for which this is an indication.;
  ///
  /// [status] Whether this is a current issue or one that has been retired etc.;
  ///
  /// [contraindication] Specifics for when this is a contraindication.;
  ///
  /// [indication] Specifics for when this is an indication.;
  ///
  /// [interaction] Specifics for when this is an interaction.;
  ///
  /// [population] The population group to which this applies.;
  ///
  /// [undesirableEffect] Describe the possible undesirable effects (negative outcomes) from the use of the medicinal product as treatment.;
  ///
  /// [warning] A critical piece of information about environmental, health or physical risks or hazards that serve as caution to the user. For example 'Do not operate heavy machinery', 'May cause drowsiness', or 'Get medical advice/attention if you feel unwell'.;
  const factory ClinicalUseDefinition({
    /// [resourceType] This is a ClinicalUseDefinition resource;
    @Default(R4ResourceType.ClinicalUseDefinition) R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
    String? id,

    /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
    FhirUri? implicitRules,

    /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
    @JsonKey(name: '_implicitRules') Element? implicitRulesElement,

    /// [language] The base language in which the resource is written.;
    FhirCode? language,

    /// [languageElement] (_language): Extensions for language;
    @JsonKey(name: '_language') Element? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [identifier] Business identifier for this issue.;
    List<Identifier>? identifier,

    /// [type] indication | contraindication | interaction | undesirable-effect | warning.;
    FhirCode? type,

    /// [typeElement] (_type): Extensions for type;
    @JsonKey(name: '_type') Element? typeElement,

    /// [category] A categorisation of the issue, primarily for dividing warnings into subject heading areas such as "Pregnancy and Lactation", "Overdose", "Effects on Ability to Drive and Use Machines".;
    List<CodeableConcept>? category,

    /// [subject] The medication or procedure for which this is an indication.;
    List<Reference>? subject,

    /// [status] Whether this is a current issue or one that has been retired etc.;
    CodeableConcept? status,

    /// [contraindication] Specifics for when this is a contraindication.;
    ClinicalUseDefinitionContraindication? contraindication,

    /// [indication] Specifics for when this is an indication.;
    ClinicalUseDefinitionIndication? indication,

    /// [interaction] Specifics for when this is an interaction.;
    ClinicalUseDefinitionInteraction? interaction,

    /// [population] The population group to which this applies.;
    List<Reference>? population,

    /// [undesirableEffect] Describe the possible undesirable effects (negative outcomes) from the use of the medicinal product as treatment.;
    ClinicalUseDefinitionUndesirableEffect? undesirableEffect,

    /// [warning] A critical piece of information about environmental, health or physical risks or hazards that serve as caution to the user. For example 'Do not operate heavy machinery', 'May cause drowsiness', or 'Get medical advice/attention if you feel unwell'.;
    ClinicalUseDefinitionWarning? warning,
  }) = _ClinicalUseDefinition;

  @override
  String get fhirType => 'ClinicalUseDefinition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClinicalUseDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ClinicalUseDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalUseDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalUseDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinition.fromJson(Map<String, dynamic> json) =>
      _$ClinicalUseDefinitionFromJson(json);

  /// Acts like a constructor, returns a [ClinicalUseDefinition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClinicalUseDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalUseDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());
}

@freezed
class ClinicalUseDefinitionContraindication
    with BackboneType, _$ClinicalUseDefinitionContraindication {
  const ClinicalUseDefinitionContraindication._();

  /// [ClinicalUseDefinitionContraindication] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [diseaseSymptomProcedure] The situation that is being documented as contraindicating against this item.;
  ///
  /// [diseaseStatus] The status of the disease or symptom for the contraindication, for example "chronic" or "metastatic".;
  ///
  /// [comorbidity] A comorbidity (concurrent condition) or coinfection.;
  ///
  /// [indication] The indication which this is a contraidication for.;
  ///
  /// [otherTherapy] Information about the use of the medicinal product in relation to other therapies described as part of the contraindication.;
  const factory ClinicalUseDefinitionContraindication({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [diseaseSymptomProcedure] The situation that is being documented as contraindicating against this item.;
    CodeableReference? diseaseSymptomProcedure,

    /// [diseaseStatus] The status of the disease or symptom for the contraindication, for example "chronic" or "metastatic".;
    CodeableReference? diseaseStatus,

    /// [comorbidity] A comorbidity (concurrent condition) or coinfection.;
    List<CodeableReference>? comorbidity,

    /// [indication] The indication which this is a contraidication for.;
    List<Reference>? indication,

    /// [otherTherapy] Information about the use of the medicinal product in relation to other therapies described as part of the contraindication.;
    List<ClinicalUseDefinitionOtherTherapy>? otherTherapy,
  }) = _ClinicalUseDefinitionContraindication;

  @override
  String get fhirType => 'ClinicalUseDefinitionContraindication';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClinicalUseDefinitionContraindication.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalUseDefinitionContraindication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalUseDefinitionContraindication.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalUseDefinitionContraindication cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionContraindication.fromJson(
          Map<String, dynamic> json) =>
      _$ClinicalUseDefinitionContraindicationFromJson(json);

  /// Acts like a constructor, returns a [ClinicalUseDefinitionContraindication], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClinicalUseDefinitionContraindication.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalUseDefinitionContraindicationFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

@freezed
class ClinicalUseDefinitionOtherTherapy
    with BackboneType, _$ClinicalUseDefinitionOtherTherapy {
  const ClinicalUseDefinitionOtherTherapy._();

  /// [ClinicalUseDefinitionOtherTherapy] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [relationshipType] The type of relationship between the medicinal product indication or contraindication and another therapy.;
  ///
  /// [therapy] Reference to a specific medication (active substance, medicinal product or class of products) as part of an indication or contraindication.;
  const factory ClinicalUseDefinitionOtherTherapy({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [relationshipType] The type of relationship between the medicinal product indication or contraindication and another therapy.;
    required CodeableConcept relationshipType,

    /// [therapy] Reference to a specific medication (active substance, medicinal product or class of products) as part of an indication or contraindication.;
    required CodeableReference therapy,
  }) = _ClinicalUseDefinitionOtherTherapy;

  @override
  String get fhirType => 'ClinicalUseDefinitionOtherTherapy';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClinicalUseDefinitionOtherTherapy.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalUseDefinitionOtherTherapy.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalUseDefinitionOtherTherapy.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalUseDefinitionOtherTherapy cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionOtherTherapy.fromJson(
          Map<String, dynamic> json) =>
      _$ClinicalUseDefinitionOtherTherapyFromJson(json);

  /// Acts like a constructor, returns a [ClinicalUseDefinitionOtherTherapy], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClinicalUseDefinitionOtherTherapy.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalUseDefinitionOtherTherapyFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [ClinicalUseDefinitionIndication] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
@freezed
class ClinicalUseDefinitionIndication
    with BackboneType, _$ClinicalUseDefinitionIndication {
  /// [ClinicalUseDefinitionIndication] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
  const ClinicalUseDefinitionIndication._();

  /// [ClinicalUseDefinitionIndication] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [diseaseSymptomProcedure] The situation that is being documented as an indicaton for this item.;
  ///
  /// [diseaseStatus] The status of the disease or symptom for the indication, for example "chronic" or "metastatic".;
  ///
  /// [comorbidity] A comorbidity (concurrent condition) or coinfection as part of the indication.;
  ///
  /// [intendedEffect] The intended effect, aim or strategy to be achieved.;
  ///
  /// [durationRange] Timing or duration information, that may be associated with use with the indicated condition e.g. Adult patients suffering from myocardial infarction (from a few days until less than 35 days), ischaemic stroke (from 7 days until less than 6 months).;
  ///
  /// [durationString] Timing or duration information, that may be associated with use with the indicated condition e.g. Adult patients suffering from myocardial infarction (from a few days until less than 35 days), ischaemic stroke (from 7 days until less than 6 months).;
  ///
  /// [durationStringElement] (_durationString): Extensions for durationString;
  ///
  /// [undesirableEffect] An unwanted side effect or negative outcome that may happen if you use the drug (or other subject of this resource) for this indication.;
  ///
  /// [otherTherapy] Information about the use of the medicinal product in relation to other therapies described as part of the indication.;
  const factory ClinicalUseDefinitionIndication({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [diseaseSymptomProcedure] The situation that is being documented as an indicaton for this item.;
    CodeableReference? diseaseSymptomProcedure,

    /// [diseaseStatus] The status of the disease or symptom for the indication, for example "chronic" or "metastatic".;
    CodeableReference? diseaseStatus,

    /// [comorbidity] A comorbidity (concurrent condition) or coinfection as part of the indication.;
    List<CodeableReference>? comorbidity,

    /// [intendedEffect] The intended effect, aim or strategy to be achieved.;
    CodeableReference? intendedEffect,

    /// [durationRange] Timing or duration information, that may be associated with use with the indicated condition e.g. Adult patients suffering from myocardial infarction (from a few days until less than 35 days), ischaemic stroke (from 7 days until less than 6 months).;
    Range? durationRange,

    /// [durationString] Timing or duration information, that may be associated with use with the indicated condition e.g. Adult patients suffering from myocardial infarction (from a few days until less than 35 days), ischaemic stroke (from 7 days until less than 6 months).;
    FhirMarkdown? durationString,

    /// [durationStringElement] (_durationString): Extensions for durationString;
    @JsonKey(name: '_durationString') Element? durationStringElement,

    /// [undesirableEffect] An unwanted side effect or negative outcome that may happen if you use the drug (or other subject of this resource) for this indication.;
    List<Reference>? undesirableEffect,

    /// [otherTherapy] Information about the use of the medicinal product in relation to other therapies described as part of the indication.;
    List<ClinicalUseDefinitionOtherTherapy>? otherTherapy,
  }) = _ClinicalUseDefinitionIndication;

  @override
  String get fhirType => 'ClinicalUseDefinitionIndication';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClinicalUseDefinitionIndication.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalUseDefinitionIndication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalUseDefinitionIndication.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalUseDefinitionIndication cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionIndication.fromJson(Map<String, dynamic> json) =>
      _$ClinicalUseDefinitionIndicationFromJson(json);

  /// Acts like a constructor, returns a [ClinicalUseDefinitionIndication], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClinicalUseDefinitionIndication.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalUseDefinitionIndicationFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [ClinicalUseDefinitionInteraction] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
@freezed
class ClinicalUseDefinitionInteraction
    with BackboneType, _$ClinicalUseDefinitionInteraction {
  /// [ClinicalUseDefinitionInteraction] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
  const ClinicalUseDefinitionInteraction._();

  /// [ClinicalUseDefinitionInteraction] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [interactant] The specific medication, food, substance or laboratory test that interacts.;
  ///
  /// [type] The type of the interaction e.g. drug-drug interaction, drug-food interaction, drug-lab test interaction.;
  ///
  /// [effect] The effect of the interaction, for example "reduced gastric absorption of primary medication".;
  ///
  /// [incidence] The incidence of the interaction, e.g. theoretical, observed.;
  ///
  /// [management] Actions for managing the interaction.;
  const factory ClinicalUseDefinitionInteraction({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [interactant] The specific medication, food, substance or laboratory test that interacts.;
    List<ClinicalUseDefinitionInteractant>? interactant,

    /// [type] The type of the interaction e.g. drug-drug interaction, drug-food interaction, drug-lab test interaction.;
    CodeableConcept? type,

    /// [effect] The effect of the interaction, for example "reduced gastric absorption of primary medication".;
    CodeableReference? effect,

    /// [incidence] The incidence of the interaction, e.g. theoretical, observed.;
    CodeableConcept? incidence,

    /// [management] Actions for managing the interaction.;
    List<CodeableConcept>? management,
  }) = _ClinicalUseDefinitionInteraction;

  @override
  String get fhirType => 'ClinicalUseDefinitionInteraction';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClinicalUseDefinitionInteraction.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalUseDefinitionInteraction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalUseDefinitionInteraction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalUseDefinitionInteraction cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionInteraction.fromJson(
          Map<String, dynamic> json) =>
      _$ClinicalUseDefinitionInteractionFromJson(json);

  /// Acts like a constructor, returns a [ClinicalUseDefinitionInteraction], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClinicalUseDefinitionInteraction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalUseDefinitionInteractionFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [ClinicalUseDefinitionInteractant] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
@freezed
class ClinicalUseDefinitionInteractant
    with BackboneType, _$ClinicalUseDefinitionInteractant {
  /// [ClinicalUseDefinitionInteractant] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
  const ClinicalUseDefinitionInteractant._();

  /// [ClinicalUseDefinitionInteractant] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [itemReference] The specific medication, food or laboratory test that interacts.;
  ///
  /// [itemCodeableConcept] The specific medication, food or laboratory test that interacts.;
  const factory ClinicalUseDefinitionInteractant({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [itemReference] The specific medication, food or laboratory test that interacts.;
    Reference? itemReference,

    /// [itemCodeableConcept] The specific medication, food or laboratory test that interacts.;
    CodeableConcept? itemCodeableConcept,
  }) = _ClinicalUseDefinitionInteractant;

  @override
  String get fhirType => 'ClinicalUseDefinitionInteractant';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClinicalUseDefinitionInteractant.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalUseDefinitionInteractant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalUseDefinitionInteractant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalUseDefinitionInteractant cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionInteractant.fromJson(
          Map<String, dynamic> json) =>
      _$ClinicalUseDefinitionInteractantFromJson(json);

  /// Acts like a constructor, returns a [ClinicalUseDefinitionInteractant], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClinicalUseDefinitionInteractant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalUseDefinitionInteractantFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

@freezed
class ClinicalUseDefinitionUndesirableEffect
    with BackboneType, _$ClinicalUseDefinitionUndesirableEffect {
  const ClinicalUseDefinitionUndesirableEffect._();

  /// [ClinicalUseDefinitionUndesirableEffect] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [symptomConditionEffect] The situation in which the undesirable effect may manifest.;
  ///
  /// [classification] High level classification of the effect.;
  ///
  /// [frequencyOfOccurrence] How often the effect is seen.;
  const factory ClinicalUseDefinitionUndesirableEffect({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [symptomConditionEffect] The situation in which the undesirable effect may manifest.;
    CodeableReference? symptomConditionEffect,

    /// [classification] High level classification of the effect.;
    CodeableConcept? classification,

    /// [frequencyOfOccurrence] How often the effect is seen.;
    CodeableConcept? frequencyOfOccurrence,
  }) = _ClinicalUseDefinitionUndesirableEffect;

  @override
  String get fhirType => 'ClinicalUseDefinitionUndesirableEffect';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClinicalUseDefinitionUndesirableEffect.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalUseDefinitionUndesirableEffect.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalUseDefinitionUndesirableEffect.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalUseDefinitionUndesirableEffect cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionUndesirableEffect.fromJson(
          Map<String, dynamic> json) =>
      _$ClinicalUseDefinitionUndesirableEffectFromJson(json);

  /// Acts like a constructor, returns a [ClinicalUseDefinitionUndesirableEffect], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClinicalUseDefinitionUndesirableEffect.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalUseDefinitionUndesirableEffectFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [ClinicalUseDefinitionWarning] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
@freezed
class ClinicalUseDefinitionWarning
    with BackboneType, _$ClinicalUseDefinitionWarning {
  /// [ClinicalUseDefinitionWarning] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.
  const ClinicalUseDefinitionWarning._();

  /// [ClinicalUseDefinitionWarning] A single issue - either an indication, contraindication, interaction or an undesirable effect for a medicinal product, medication, device or procedure.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [description] A textual definition of this warning, with formatting.;
  ///
  /// [descriptionElement] (_description): Extensions for description;
  ///
  /// [code] A coded or unformatted textual definition of this warning.;
  const factory ClinicalUseDefinitionWarning({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [description] A textual definition of this warning, with formatting.;
    FhirMarkdown? description,

    /// [descriptionElement] (_description): Extensions for description;
    @JsonKey(name: '_description') Element? descriptionElement,

    /// [code] A coded or unformatted textual definition of this warning.;
    CodeableConcept? code,
  }) = _ClinicalUseDefinitionWarning;

  @override
  String get fhirType => 'ClinicalUseDefinitionWarning';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ClinicalUseDefinitionWarning.fromYaml(dynamic yaml) => yaml is String
      ? ClinicalUseDefinitionWarning.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClinicalUseDefinitionWarning.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClinicalUseDefinitionWarning cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ClinicalUseDefinitionWarning.fromJson(Map<String, dynamic> json) =>
      _$ClinicalUseDefinitionWarningFromJson(json);

  /// Acts like a constructor, returns a [ClinicalUseDefinitionWarning], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ClinicalUseDefinitionWarning.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClinicalUseDefinitionWarningFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [ManufacturedItemDefinition] The definition and characteristics of a medicinal manufactured item, such as a tablet or capsule, as contained in a packaged medicinal product.
@freezed
class ManufacturedItemDefinition with Resource, _$ManufacturedItemDefinition {
  /// [ManufacturedItemDefinition] The definition and characteristics of a medicinal manufactured item, such as a tablet or capsule, as contained in a packaged medicinal product.
  const ManufacturedItemDefinition._();

  /// [ManufacturedItemDefinition] The definition and characteristics of a medicinal manufactured item, such as a tablet or capsule, as contained in a packaged medicinal product.

  ///
  /// [resourceType] This is a ManufacturedItemDefinition resource;
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
  ///
  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  ///
  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  ///
  /// [language] The base language in which the resource is written.;
  ///
  /// [languageElement] (_language): Extensions for language;
  ///
  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  ///
  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [identifier] Unique identifier.;
  ///
  /// [status] The status of this item. Enables tracking the life-cycle of the content.;
  ///
  /// [statusElement] (_status): Extensions for status;
  ///
  /// [manufacturedDoseForm] Dose form as manufactured and before any transformation into the pharmaceutical product.;
  ///
  /// [unitOfPresentation] The “real world” units in which the quantity of the manufactured item is described.;
  ///
  /// [manufacturer] Manufacturer of the item (Note that this should be named "manufacturer" but it currently causes technical issues).;
  ///
  /// [ingredient] The ingredients of this manufactured item. This is only needed if the ingredients are not specified by incoming references from the Ingredient resource.;
  ///
  /// [property] General characteristics of this item.;
  const factory ManufacturedItemDefinition({
    @Default(R4ResourceType.ManufacturedItemDefinition)

    /// [resourceType] This is a ManufacturedItemDefinition resource;
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
    String? id,

    /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
    FhirUri? implicitRules,

    /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
    @JsonKey(name: '_implicitRules') Element? implicitRulesElement,

    /// [language] The base language in which the resource is written.;
    FhirCode? language,

    /// [languageElement] (_language): Extensions for language;
    @JsonKey(name: '_language') Element? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [identifier] Unique identifier.;
    List<Identifier>? identifier,

    /// [status] The status of this item. Enables tracking the life-cycle of the content.;
    FhirCode? status,

    /// [statusElement] (_status): Extensions for status;
    @JsonKey(name: '_status') Element? statusElement,

    /// [manufacturedDoseForm] Dose form as manufactured and before any transformation into the pharmaceutical product.;
    required CodeableConcept manufacturedDoseForm,

    /// [unitOfPresentation] The “real world” units in which the quantity of the manufactured item is described.;
    CodeableConcept? unitOfPresentation,

    /// [manufacturer] Manufacturer of the item (Note that this should be named "manufacturer" but it currently causes technical issues).;
    List<Reference>? manufacturer,

    /// [ingredient] The ingredients of this manufactured item. This is only needed if the ingredients are not specified by incoming references from the Ingredient resource.;
    List<CodeableConcept>? ingredient,

    /// [property] General characteristics of this item.;
    List<ManufacturedItemDefinitionProperty>? property,
  }) = _ManufacturedItemDefinition;

  @override
  String get fhirType => 'ManufacturedItemDefinition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ManufacturedItemDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ManufacturedItemDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ManufacturedItemDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ManufacturedItemDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ManufacturedItemDefinition.fromJson(Map<String, dynamic> json) =>
      _$ManufacturedItemDefinitionFromJson(json);

  /// Acts like a constructor, returns a [ManufacturedItemDefinition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ManufacturedItemDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ManufacturedItemDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());
}

@freezed
class ManufacturedItemDefinitionProperty
    with BackboneType, _$ManufacturedItemDefinitionProperty {
  const ManufacturedItemDefinitionProperty._();

  /// [ManufacturedItemDefinitionProperty] The definition and characteristics of a medicinal manufactured item, such as a tablet or capsule, as contained in a packaged medicinal product.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [type] A code expressing the type of characteristic.;
  ///
  /// [valueCodeableConcept] A value for the characteristic.;
  ///
  /// [valueQuantity] A value for the characteristic.;
  ///
  /// [valueDate] A value for the characteristic.;
  ///
  /// [valueDateElement] (_valueDate): Extensions for valueDate;
  ///
  /// [valueBoolean] A value for the characteristic.;
  ///
  /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
  ///
  /// [valueAttachment] A value for the characteristic.;
  const factory ManufacturedItemDefinitionProperty({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [type] A code expressing the type of characteristic.;
    required CodeableConcept type,

    /// [valueCodeableConcept] A value for the characteristic.;
    CodeableConcept? valueCodeableConcept,

    /// [valueQuantity] A value for the characteristic.;
    Quantity? valueQuantity,

    /// [valueDate] A value for the characteristic.;
    FhirDate? valueDate,

    /// [valueDateElement] (_valueDate): Extensions for valueDate;
    @JsonKey(name: '_valueDate') Element? valueDateElement,

    /// [valueBoolean] A value for the characteristic.;
    FhirBoolean? valueBoolean,

    /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
    @JsonKey(name: '_valueBoolean') Element? valueBooleanElement,

    /// [valueAttachment] A value for the characteristic.;
    Attachment? valueAttachment,
  }) = _ManufacturedItemDefinitionProperty;

  @override
  String get fhirType => 'ManufacturedItemDefinitionProperty';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ManufacturedItemDefinitionProperty.fromYaml(dynamic yaml) => yaml
          is String
      ? ManufacturedItemDefinitionProperty.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ManufacturedItemDefinitionProperty.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ManufacturedItemDefinitionProperty cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ManufacturedItemDefinitionProperty.fromJson(
          Map<String, dynamic> json) =>
      _$ManufacturedItemDefinitionPropertyFromJson(json);

  /// Acts like a constructor, returns a [ManufacturedItemDefinitionProperty], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ManufacturedItemDefinitionProperty.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ManufacturedItemDefinitionPropertyFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [MedicinalProductDefinition] A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).
@freezed
class MedicinalProductDefinition with Resource, _$MedicinalProductDefinition {
  /// [MedicinalProductDefinition] A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).
  const MedicinalProductDefinition._();

  /// [MedicinalProductDefinition] A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).
  ///
  /// [resourceType] This is a MedicinalProductDefinition resource;
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
  ///
  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  ///
  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  ///
  /// [language] The base language in which the resource is written.;
  ///
  /// [languageElement] (_language): Extensions for language;
  ///
  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  ///
  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [identifier] Business identifier for this product. Could be an MPID. When in development or being regulated, products are typically referenced by official identifiers, assigned by a manufacturer or regulator, and unique to a product (which, when compared to a product instance being prescribed, is actually a product type). See also MedicinalProductDefinition.code.;
  ///
  /// [type] Regulatory type, e.g. Investigational or Authorized.;
  ///
  /// [domain] If this medicine applies to human or veterinary uses.;
  ///
  /// [version] A business identifier relating to a specific version of the product, this is commonly used to support revisions to an existing product.;
  ///
  /// [versionElement] (_version): Extensions for version;
  ///
  /// [status] The status within the lifecycle of this product record. A high-level status, this is not intended to duplicate details carried elsewhere such as legal status, or authorization status.;
  ///
  /// [statusDate] The date at which the given status became applicable.;
  ///
  /// [statusDateElement] (_statusDate): Extensions for statusDate;
  ///
  /// [description] General description of this product.;
  ///
  /// [descriptionElement] (_description): Extensions for description;
  ///
  /// [combinedPharmaceuticalDoseForm] The dose form for a single part product, or combined form of a multiple part product. This is one concept that describes all the components. It does not represent the form with components physically mixed, if that might be necessary, for which see (AdministrableProductDefinition.administrableDoseForm).;
  ///
  /// [route] The path by which the product is taken into or makes contact with the body. In some regions this is referred to as the licenced or approved route. See also AdministrableProductDefinition resource. MedicinalProductDefinition.route is the same concept as AdministrableProductDefinition.routeOfAdministration.code, and they cannot be used together.;
  ///
  /// [indication] Description of indication(s) for this product, used when structured indications are not required. In cases where structured indications are required, they are captured using the ClinicalUseDefinition resource. An indication is a medical situation for which using the product is appropriate.;
  ///
  /// [indicationElement] (_indication): Extensions for indication;
  ///
  /// [legalStatusOfSupply] The legal status of supply of the medicinal product as classified by the regulator.;
  ///
  /// [additionalMonitoringIndicator] Whether the Medicinal Product is subject to additional monitoring for regulatory reasons, such as heightened reporting requirements.;
  ///
  /// [specialMeasures] Whether the Medicinal Product is subject to special measures for regulatory reasons, such as a requirement to conduct post-authorisation studies.;
  ///
  /// [pediatricUseIndicator] If authorised for use in children, or infants, neonates etc.;
  ///
  /// [classification] Allows the product to be classified by various systems, commonly WHO ATC.;
  ///
  /// [marketingStatus] Marketing status of the medicinal product, in contrast to marketing authorization. This refers to the product being actually 'on the market' as opposed to being allowed to be on the market (which is an authorization).;
  ///
  /// [packagedMedicinalProduct] Package type for the product. See also the PackagedProductDefinition resource.;
  ///
  /// [ingredient] The ingredients of this medicinal product - when not detailed in other resources. This is only needed if the ingredients are not specified by incoming references from the Ingredient resource, or indirectly via incoming AdministrableProductDefinition, PackagedProductDefinition or ManufacturedItemDefinition references. In cases where those levels of detail are not used, the ingredients may be specified directly here as codes.;
  ///
  /// [impurity] Any component of the drug product which is not the chemical entity defined as the drug substance, or an excipient in the drug product. This includes process-related impurities and contaminants, product-related impurities including degradation products.;
  ///
  /// [attachedDocument] Additional information or supporting documentation about the medicinal product.;
  ///
  /// [masterFile] A master file for the medicinal product (e.g. Pharmacovigilance System Master File). Drug master files (DMFs) are documents submitted to regulatory agencies to provide confidential detailed information about facilities, processes or articles used in the manufacturing, processing, packaging and storing of drug products.;
  ///
  /// [contact] A product specific contact, person (in a role), or an organization.;
  ///
  /// [clinicalTrial] Clinical trials or studies that this product is involved in.;
  ///
  /// [code] A code that this product is known by, usually within some formal terminology, perhaps assigned by a third party (i.e. not the manufacturer or regulator). Products (types of medications) tend to be known by identifiers during development and within regulatory process. However when they are prescribed they tend to be identified by codes. The same product may be have multiple codes, applied to it by multiple organizations.;
  ///
  /// [name] The product's name, including full name and possibly coded parts.;
  ///
  /// [crossReference] Reference to another product, e.g. for linking authorised to investigational product, or a virtual product.;
  ///
  /// [operation] A manufacturing or administrative process or step associated with (or performed on) the medicinal product.;
  ///
  /// [characteristic] Allows the key product features to be recorded, such as "sugar free", "modified release", "parallel import".;
  const factory MedicinalProductDefinition({
    @Default(R4ResourceType.MedicinalProductDefinition)

    /// [resourceType] This is a MedicinalProductDefinition resource;
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
    String? id,

    /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
    FhirUri? implicitRules,

    /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
    @JsonKey(name: '_implicitRules') Element? implicitRulesElement,

    /// [language] The base language in which the resource is written.;
    FhirCode? language,

    /// [languageElement] (_language): Extensions for language;
    @JsonKey(name: '_language') Element? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [identifier] Business identifier for this product. Could be an MPID. When in development or being regulated, products are typically referenced by official identifiers, assigned by a manufacturer or regulator, and unique to a product (which, when compared to a product instance being prescribed, is actually a product type). See also MedicinalProductDefinition.code.;
    List<Identifier>? identifier,

    /// [type] Regulatory type, e.g. Investigational or Authorized.;
    CodeableConcept? type,

    /// [domain] If this medicine applies to human or veterinary uses.;
    CodeableConcept? domain,

    /// [version] A business identifier relating to a specific version of the product, this is commonly used to support revisions to an existing product.;
    String? version,

    /// [versionElement] (_version): Extensions for version;
    @JsonKey(name: '_version') Element? versionElement,

    /// [status] The status within the lifecycle of this product record. A high-level status, this is not intended to duplicate details carried elsewhere such as legal status, or authorization status.;
    CodeableConcept? status,

    /// [statusDate] The date at which the given status became applicable.;
    FhirDateTime? statusDate,

    /// [statusDateElement] (_statusDate): Extensions for statusDate;
    @JsonKey(name: '_statusDate') Element? statusDateElement,

    /// [description] General description of this product.;
    FhirMarkdown? description,

    /// [descriptionElement] (_description): Extensions for description;
    @JsonKey(name: '_description') Element? descriptionElement,

    /// [combinedPharmaceuticalDoseForm] The dose form for a single part product, or combined form of a multiple part product. This is one concept that describes all the components. It does not represent the form with components physically mixed, if that might be necessary, for which see (AdministrableProductDefinition.administrableDoseForm).;
    CodeableConcept? combinedPharmaceuticalDoseForm,

    /// [route] The path by which the product is taken into or makes contact with the body. In some regions this is referred to as the licenced or approved route. See also AdministrableProductDefinition resource. MedicinalProductDefinition.route is the same concept as AdministrableProductDefinition.routeOfAdministration.code, and they cannot be used together.;
    List<CodeableConcept>? route,

    /// [indication] Description of indication(s) for this product, used when structured indications are not required. In cases where structured indications are required, they are captured using the ClinicalUseDefinition resource. An indication is a medical situation for which using the product is appropriate.;
    FhirMarkdown? indication,

    /// [indicationElement] (_indication): Extensions for indication;
    @JsonKey(name: '_indication') Element? indicationElement,

    /// [legalStatusOfSupply] The legal status of supply of the medicinal product as classified by the regulator.;
    CodeableConcept? legalStatusOfSupply,

    /// [additionalMonitoringIndicator] Whether the Medicinal Product is subject to additional monitoring for regulatory reasons, such as heightened reporting requirements.;
    CodeableConcept? additionalMonitoringIndicator,

    /// [specialMeasures] Whether the Medicinal Product is subject to special measures for regulatory reasons, such as a requirement to conduct post-authorisation studies.;
    List<CodeableConcept>? specialMeasures,

    /// [pediatricUseIndicator] If authorised for use in children, or infants, neonates etc.;
    CodeableConcept? pediatricUseIndicator,

    /// [classification] Allows the product to be classified by various systems, commonly WHO ATC.;
    List<CodeableConcept>? classification,

    /// [marketingStatus] Marketing status of the medicinal product, in contrast to marketing authorization. This refers to the product being actually 'on the market' as opposed to being allowed to be on the market (which is an authorization).;
    List<MarketingStatus>? marketingStatus,

    /// [packagedMedicinalProduct] Package type for the product. See also the PackagedProductDefinition resource.;
    List<CodeableConcept>? packagedMedicinalProduct,

    /// [ingredient] The ingredients of this medicinal product - when not detailed in other resources. This is only needed if the ingredients are not specified by incoming references from the Ingredient resource, or indirectly via incoming AdministrableProductDefinition, PackagedProductDefinition or ManufacturedItemDefinition references. In cases where those levels of detail are not used, the ingredients may be specified directly here as codes.;
    List<CodeableConcept>? ingredient,

    /// [impurity] Any component of the drug product which is not the chemical entity defined as the drug substance, or an excipient in the drug product. This includes process-related impurities and contaminants, product-related impurities including degradation products.;
    List<CodeableReference>? impurity,

    /// [attachedDocument] Additional information or supporting documentation about the medicinal product.;
    List<Reference>? attachedDocument,

    /// [masterFile] A master file for the medicinal product (e.g. Pharmacovigilance System Master File). Drug master files (DMFs) are documents submitted to regulatory agencies to provide confidential detailed information about facilities, processes or articles used in the manufacturing, processing, packaging and storing of drug products.;
    List<Reference>? masterFile,

    /// [contact] A product specific contact, person (in a role), or an organization.;
    List<MedicinalProductDefinitionContact>? contact,

    /// [clinicalTrial] Clinical trials or studies that this product is involved in.;
    List<Reference>? clinicalTrial,

    /// [code] A code that this product is known by, usually within some formal terminology, perhaps assigned by a third party (i.e. not the manufacturer or regulator). Products (types of medications) tend to be known by identifiers during development and within regulatory process. However when they are prescribed they tend to be identified by codes. The same product may be have multiple codes, applied to it by multiple organizations.;
    List<Coding>? code,

    /// [name] The product's name, including full name and possibly coded parts.;
    required List<MedicinalProductDefinitionName> name,

    /// [crossReference] Reference to another product, e.g. for linking authorised to investigational product, or a virtual product.;
    List<MedicinalProductDefinitionCrossReference>? crossReference,

    /// [operation] A manufacturing or administrative process or step associated with (or performed on) the medicinal product.;
    List<MedicinalProductDefinitionOperation>? operation,

    /// [characteristic] Allows the key product features to be recorded, such as "sugar free", "modified release", "parallel import".;
    List<MedicinalProductDefinitionCharacteristic>? characteristic,
  }) = _MedicinalProductDefinition;

  @override
  String get fhirType => 'MedicinalProductDefinition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicinalProductDefinition.fromYaml(dynamic yaml) => yaml is String
      ? MedicinalProductDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicinalProductDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicinalProductDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinition.fromJson(Map<String, dynamic> json) =>
      _$MedicinalProductDefinitionFromJson(json);

  /// Acts like a constructor, returns a [MedicinalProductDefinition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicinalProductDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicinalProductDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());
}

@freezed
class MedicinalProductDefinitionContact
    with BackboneType, _$MedicinalProductDefinitionContact {
  const MedicinalProductDefinitionContact._();

  /// [MedicinalProductDefinitionContact] A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [type] Allows the contact to be classified, for example QPPV, Pharmacovigilance Enquiry Information.;
  ///
  /// [contact] A product specific contact, person (in a role), or an organization.;
  const factory MedicinalProductDefinitionContact({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [type] Allows the contact to be classified, for example QPPV, Pharmacovigilance Enquiry Information.;
    CodeableConcept? type,

    /// [contact] A product specific contact, person (in a role), or an organization.;
    required Reference contact,
  }) = _MedicinalProductDefinitionContact;

  @override
  String get fhirType => 'MedicinalProductDefinitionContact';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicinalProductDefinitionContact.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionContact.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicinalProductDefinitionContact.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicinalProductDefinitionContact cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionContact.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductDefinitionContactFromJson(json);

  /// Acts like a constructor, returns a [MedicinalProductDefinitionContact], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicinalProductDefinitionContact.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicinalProductDefinitionContactFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [MedicinalProductDefinitionName] A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).
@freezed
class MedicinalProductDefinitionName
    with BackboneType, _$MedicinalProductDefinitionName {
  /// [MedicinalProductDefinitionName] A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).
  const MedicinalProductDefinitionName._();

  /// [MedicinalProductDefinitionName] A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [productName] The full product name.;
  ///
  /// [productNameElement] (_productName): Extensions for productName;
  ///
  /// [type] Type of product name, such as rINN, BAN, Proprietary, Non-Proprietary.;
  ///
  /// [namePart] Coding words or phrases of the name.;
  ///
  /// [countryLanguage] Country and jurisdiction where the name applies, and associated language.;
  const factory MedicinalProductDefinitionName({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [productName] The full product name.;
    String? productName,

    /// [productNameElement] (_productName): Extensions for productName;
    @JsonKey(name: '_productName') Element? productNameElement,

    /// [type] Type of product name, such as rINN, BAN, Proprietary, Non-Proprietary.;
    CodeableConcept? type,

    /// [namePart] Coding words or phrases of the name.;
    List<MedicinalProductDefinitionNamePart>? namePart,

    /// [countryLanguage] Country and jurisdiction where the name applies, and associated language.;
    List<MedicinalProductDefinitionCountryLanguage>? countryLanguage,
  }) = _MedicinalProductDefinitionName;

  @override
  String get fhirType => 'MedicinalProductDefinitionName';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicinalProductDefinitionName.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionName.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicinalProductDefinitionName.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicinalProductDefinitionName cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionName.fromJson(Map<String, dynamic> json) =>
      _$MedicinalProductDefinitionNameFromJson(json);

  /// Acts like a constructor, returns a [MedicinalProductDefinitionName], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicinalProductDefinitionName.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicinalProductDefinitionNameFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

@freezed
class MedicinalProductDefinitionNamePart
    with BackboneType, _$MedicinalProductDefinitionNamePart {
  const MedicinalProductDefinitionNamePart._();

  /// [MedicinalProductDefinitionNamePart] A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [part] A fragment of a product name.;
  ///
  /// [partElement] (_part): Extensions for part;
  ///
  /// [type] Identifying type for this part of the name (e.g. strength part).;
  const factory MedicinalProductDefinitionNamePart({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [part] A fragment of a product name.;
    @JsonKey(name: 'part') String? part_,

    /// [partElement] (_part): Extensions for part;
    @JsonKey(name: '_part') Element? partElement,

    /// [type] Identifying type for this part of the name (e.g. strength part).;
    required CodeableConcept type,
  }) = _MedicinalProductDefinitionNamePart;

  @override
  String get fhirType => 'MedicinalProductDefinitionNamePart';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicinalProductDefinitionNamePart.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionNamePart.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicinalProductDefinitionNamePart.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicinalProductDefinitionNamePart cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionNamePart.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductDefinitionNamePartFromJson(json);

  /// Acts like a constructor, returns a [MedicinalProductDefinitionNamePart], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicinalProductDefinitionNamePart.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicinalProductDefinitionNamePartFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

@freezed
class MedicinalProductDefinitionCountryLanguage
    with BackboneType, _$MedicinalProductDefinitionCountryLanguage {
  const MedicinalProductDefinitionCountryLanguage._();

  /// [MedicinalProductDefinitionCountryLanguage] A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [country] Country code for where this name applies.;
  ///
  /// [jurisdiction] Jurisdiction code for where this name applies. A jurisdiction may be a sub- or supra-national entity (e.g. a state or a geographic region).;
  ///
  /// [language] Language code for this name.;
  const factory MedicinalProductDefinitionCountryLanguage({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [country] Country code for where this name applies.;
    required CodeableConcept country,

    /// [jurisdiction] Jurisdiction code for where this name applies. A jurisdiction may be a sub- or supra-national entity (e.g. a state or a geographic region).;
    CodeableConcept? jurisdiction,

    /// [language] Language code for this name.;
    required CodeableConcept language,
  }) = _MedicinalProductDefinitionCountryLanguage;

  @override
  String get fhirType => 'MedicinalProductDefinitionCountryLanguage';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicinalProductDefinitionCountryLanguage.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionCountryLanguage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicinalProductDefinitionCountryLanguage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicinalProductDefinitionCountryLanguage cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionCountryLanguage.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductDefinitionCountryLanguageFromJson(json);

  /// Acts like a constructor, returns a [MedicinalProductDefinitionCountryLanguage], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicinalProductDefinitionCountryLanguage.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicinalProductDefinitionCountryLanguageFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

@freezed
class MedicinalProductDefinitionCrossReference
    with BackboneType, _$MedicinalProductDefinitionCrossReference {
  const MedicinalProductDefinitionCrossReference._();

  /// [MedicinalProductDefinitionCrossReference] A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [product] Reference to another product, e.g. for linking authorised to investigational product.;
  ///
  /// [type] The type of relationship, for instance branded to generic, virtual to actual product, product to development product (investigational), parallel import version.;
  const factory MedicinalProductDefinitionCrossReference({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [product] Reference to another product, e.g. for linking authorised to investigational product.;
    required CodeableReference product,

    /// [type] The type of relationship, for instance branded to generic, virtual to actual product, product to development product (investigational), parallel import version.;
    CodeableConcept? type,
  }) = _MedicinalProductDefinitionCrossReference;

  @override
  String get fhirType => 'MedicinalProductDefinitionCrossReference';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicinalProductDefinitionCrossReference.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionCrossReference.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicinalProductDefinitionCrossReference.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicinalProductDefinitionCrossReference cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionCrossReference.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductDefinitionCrossReferenceFromJson(json);

  /// Acts like a constructor, returns a [MedicinalProductDefinitionCrossReference], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicinalProductDefinitionCrossReference.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicinalProductDefinitionCrossReferenceFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

@freezed
class MedicinalProductDefinitionOperation
    with BackboneType, _$MedicinalProductDefinitionOperation {
  const MedicinalProductDefinitionOperation._();

  /// [MedicinalProductDefinitionOperation] A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [type] The type of manufacturing operation e.g. manufacturing itself, re-packaging. For the authorization of this, a RegulatedAuthorization would point to the same plan or activity referenced here.;
  ///
  /// [effectiveDate] Date range of applicability.;
  ///
  /// [organization] The organization or establishment responsible for (or associated with) the particular process or step, examples include the manufacturer, importer, agent.;
  ///
  /// [confidentialityIndicator] Specifies whether this particular business or manufacturing process is considered proprietary or confidential.;
  const factory MedicinalProductDefinitionOperation({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [type] The type of manufacturing operation e.g. manufacturing itself, re-packaging. For the authorization of this, a RegulatedAuthorization would point to the same plan or activity referenced here.;
    CodeableReference? type,

    /// [effectiveDate] Date range of applicability.;
    Period? effectiveDate,

    /// [organization] The organization or establishment responsible for (or associated with) the particular process or step, examples include the manufacturer, importer, agent.;
    List<Reference>? organization,

    /// [confidentialityIndicator] Specifies whether this particular business or manufacturing process is considered proprietary or confidential.;
    CodeableConcept? confidentialityIndicator,
  }) = _MedicinalProductDefinitionOperation;

  @override
  String get fhirType => 'MedicinalProductDefinitionOperation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicinalProductDefinitionOperation.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionOperation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicinalProductDefinitionOperation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicinalProductDefinitionOperation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionOperation.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductDefinitionOperationFromJson(json);

  /// Acts like a constructor, returns a [MedicinalProductDefinitionOperation], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicinalProductDefinitionOperation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicinalProductDefinitionOperationFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

@freezed
class MedicinalProductDefinitionCharacteristic
    with BackboneType, _$MedicinalProductDefinitionCharacteristic {
  const MedicinalProductDefinitionCharacteristic._();

  /// [MedicinalProductDefinitionCharacteristic] A medicinal product, being a substance or combination of substances that is intended to treat, prevent or diagnose a disease, or to restore, correct or modify physiological functions by exerting a pharmacological, immunological or metabolic action. This resource is intended to define and detail such products and their properties, for uses other than direct patient care (e.g. regulatory use, or drug catalogs).

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [type] A code expressing the type of characteristic.;
  ///
  /// [valueCodeableConcept] A value for the characteristic.text.;
  ///
  /// [valueQuantity] A value for the characteristic.text.;
  ///
  /// [valueDate] A value for the characteristic.text.;
  ///
  /// [valueDateElement] (_valueDate): Extensions for valueDate;
  ///
  /// [valueBoolean] A value for the characteristic.text.;
  ///
  /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
  ///
  /// [valueAttachment] A value for the characteristic.text.;
  const factory MedicinalProductDefinitionCharacteristic({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [type] A code expressing the type of characteristic.;
    required CodeableConcept type,

    /// [valueCodeableConcept] A value for the characteristic.text.;
    CodeableConcept? valueCodeableConcept,

    /// [valueQuantity] A value for the characteristic.text.;
    Quantity? valueQuantity,

    /// [valueDate] A value for the characteristic.text.;
    FhirDate? valueDate,

    /// [valueDateElement] (_valueDate): Extensions for valueDate;
    @JsonKey(name: '_valueDate') Element? valueDateElement,

    /// [valueBoolean] A value for the characteristic.text.;
    FhirBoolean? valueBoolean,

    /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
    @JsonKey(name: '_valueBoolean') Element? valueBooleanElement,

    /// [valueAttachment] A value for the characteristic.text.;
    Attachment? valueAttachment,
  }) = _MedicinalProductDefinitionCharacteristic;

  @override
  String get fhirType => 'MedicinalProductDefinitionCharacteristic';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicinalProductDefinitionCharacteristic.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicinalProductDefinitionCharacteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicinalProductDefinitionCharacteristic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicinalProductDefinitionCharacteristic cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicinalProductDefinitionCharacteristic.fromJson(
          Map<String, dynamic> json) =>
      _$MedicinalProductDefinitionCharacteristicFromJson(json);

  /// Acts like a constructor, returns a [MedicinalProductDefinitionCharacteristic], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicinalProductDefinitionCharacteristic.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicinalProductDefinitionCharacteristicFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [PackagedProductDefinition] A medically related item or items, in a container or package.
@freezed
class PackagedProductDefinition with Resource, _$PackagedProductDefinition {
  /// [PackagedProductDefinition] A medically related item or items, in a container or package.
  const PackagedProductDefinition._();

  /// [PackagedProductDefinition] A medically related item or items, in a container or package.

  ///
  /// [resourceType] This is a PackagedProductDefinition resource;
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
  ///
  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  ///
  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  ///
  /// [language] The base language in which the resource is written.;
  ///
  /// [languageElement] (_language): Extensions for language;
  ///
  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  ///
  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [identifier] A unique identifier for this package as whole - not the the content of the package. Unique instance identifiers assigned to a package by manufacturers, regulators, drug catalogue custodians or other organizations.;
  ///
  /// [name] A name for this package. Typically what it would be listed as in a drug formulary or catalogue, inventory etc.;
  ///
  /// [nameElement] (_name): Extensions for name;
  ///
  /// [type] A high level category e.g. medicinal product, raw material, shipping/transport container, etc.;
  ///
  /// [packageFor] The product this package model relates to, not the contents of the package (for which see package.containedItem).;
  ///
  /// [status] The status within the lifecycle of this item. A high level status, this is not intended to duplicate details carried elsewhere such as legal status, or authorization or marketing status.;
  ///
  /// [statusDate] The date at which the given status became applicable.;
  ///
  /// [statusDateElement] (_statusDate): Extensions for statusDate;
  ///
  /// [containedItemQuantity] A total of the complete count of contained items of a particular type/form, independent of sub-packaging or organization. This can be considered as the pack size. This attribute differs from containedItem.amount in that it can give a single aggregated count of all tablet types in a pack, even when these are different manufactured items. For example a pill pack of 21 tablets plus 7 sugar tablets, can be denoted here as '28 tablets'. This attribute is repeatable so that the different item types in one pack type can be counted (e.g. a count of vials and count of syringes). Each repeat must have different units, so that it is clear what the different sets of counted items are, and it is not intended to allow different counts of similar items (e.g. not '2 tubes and 3 tubes'). Repeats are not to be used to represent different pack sizes (e.g. 20 pack vs. 50 pack) - which would be different instances of this resource.;
  ///
  /// [description] Textual description. Note that this is not the name of the package or product.;
  ///
  /// [descriptionElement] (_description): Extensions for description;
  ///
  /// [legalStatusOfSupply] The legal status of supply of the packaged item as classified by the regulator.;
  ///
  /// [marketingStatus] Allows specifying that an item is on the market for sale, or that it is not available, and the dates and locations associated.;
  ///
  /// [characteristic] Allows the key features to be recorded, such as "hospital pack", "nurse prescribable", "calendar pack".;
  ///
  /// [copackagedIndicator] Identifies if the package contains different items, such as when a drug product is supplied with another item e.g. a diluent or adjuvant.;
  ///
  /// [copackagedIndicatorElement] (_copackagedIndicator): Extensions for copackagedIndicator;
  ///
  /// [manufacturer] Manufacturer of this package type. When there are multiple it means these are all possible manufacturers.;
  ///
  /// [package] A packaging item, as a container for medically related items, possibly with other packaging items within, or a packaging component, such as bottle cap (which is not a device or a medication manufactured item).;
  const factory PackagedProductDefinition({
    @Default(R4ResourceType.PackagedProductDefinition)

    /// [resourceType] This is a PackagedProductDefinition resource;
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
    String? id,

    /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
    FhirUri? implicitRules,

    /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
    @JsonKey(name: '_implicitRules') Element? implicitRulesElement,

    /// [language] The base language in which the resource is written.;
    FhirCode? language,

    /// [languageElement] (_language): Extensions for language;
    @JsonKey(name: '_language') Element? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [identifier] A unique identifier for this package as whole - not the the content of the package. Unique instance identifiers assigned to a package by manufacturers, regulators, drug catalogue custodians or other organizations.;
    List<Identifier>? identifier,

    /// [name] A name for this package. Typically what it would be listed as in a drug formulary or catalogue, inventory etc.;
    String? name,

    /// [nameElement] (_name): Extensions for name;
    @JsonKey(name: '_name') Element? nameElement,

    /// [type] A high level category e.g. medicinal product, raw material, shipping/transport container, etc.;
    CodeableConcept? type,

    /// [packageFor] The product this package model relates to, not the contents of the package (for which see package.containedItem).;
    List<Reference>? packageFor,

    /// [status] The status within the lifecycle of this item. A high level status, this is not intended to duplicate details carried elsewhere such as legal status, or authorization or marketing status.;
    CodeableConcept? status,

    /// [statusDate] The date at which the given status became applicable.;
    FhirDateTime? statusDate,

    /// [statusDateElement] (_statusDate): Extensions for statusDate;
    @JsonKey(name: '_statusDate') Element? statusDateElement,

    /// [containedItemQuantity] A total of the complete count of contained items of a particular type/form, independent of sub-packaging or organization. This can be considered as the pack size. This attribute differs from containedItem.amount in that it can give a single aggregated count of all tablet types in a pack, even when these are different manufactured items. For example a pill pack of 21 tablets plus 7 sugar tablets, can be denoted here as '28 tablets'. This attribute is repeatable so that the different item types in one pack type can be counted (e.g. a count of vials and count of syringes). Each repeat must have different units, so that it is clear what the different sets of counted items are, and it is not intended to allow different counts of similar items (e.g. not '2 tubes and 3 tubes'). Repeats are not to be used to represent different pack sizes (e.g. 20 pack vs. 50 pack) - which would be different instances of this resource.;
    List<Quantity>? containedItemQuantity,

    /// [description] Textual description. Note that this is not the name of the package or product.;
    FhirMarkdown? description,

    /// [descriptionElement] (_description): Extensions for description;
    @JsonKey(name: '_description') Element? descriptionElement,

    /// [legalStatusOfSupply] The legal status of supply of the packaged item as classified by the regulator.;
    List<PackagedProductDefinitionLegalStatusOfSupply>? legalStatusOfSupply,

    /// [marketingStatus] Allows specifying that an item is on the market for sale, or that it is not available, and the dates and locations associated.;
    List<MarketingStatus>? marketingStatus,

    /// [characteristic] Allows the key features to be recorded, such as "hospital pack", "nurse prescribable", "calendar pack".;
    List<CodeableConcept>? characteristic,

    /// [copackagedIndicator] Identifies if the package contains different items, such as when a drug product is supplied with another item e.g. a diluent or adjuvant.;
    FhirBoolean? copackagedIndicator,

    /// [copackagedIndicatorElement] (_copackagedIndicator): Extensions for copackagedIndicator;
    @JsonKey(name: '_copackagedIndicator') Element? copackagedIndicatorElement,

    /// [manufacturer] Manufacturer of this package type. When there are multiple it means these are all possible manufacturers.;
    List<Reference>? manufacturer,

    /// [package] A packaging item, as a container for medically related items, possibly with other packaging items within, or a packaging component, such as bottle cap (which is not a device or a medication manufactured item).;
    PackagedProductDefinitionPackage? package,
  }) = _PackagedProductDefinition;

  @override
  String get fhirType => 'PackagedProductDefinition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory PackagedProductDefinition.fromYaml(dynamic yaml) => yaml is String
      ? PackagedProductDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PackagedProductDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PackagedProductDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinition.fromJson(Map<String, dynamic> json) =>
      _$PackagedProductDefinitionFromJson(json);

  /// Acts like a constructor, returns a [PackagedProductDefinition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory PackagedProductDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PackagedProductDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());
}

@freezed
class PackagedProductDefinitionLegalStatusOfSupply
    with BackboneType, _$PackagedProductDefinitionLegalStatusOfSupply {
  const PackagedProductDefinitionLegalStatusOfSupply._();

  /// [PackagedProductDefinitionLegalStatusOfSupply] A medically related item or items, in a container or package.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [code] The actual status of supply. Conveys in what situation this package type may be supplied for use.;
  ///
  /// [jurisdiction] The place where the legal status of supply applies. When not specified, this indicates it is unknown in this context.;
  const factory PackagedProductDefinitionLegalStatusOfSupply({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [code] The actual status of supply. Conveys in what situation this package type may be supplied for use.;
    CodeableConcept? code,

    /// [jurisdiction] The place where the legal status of supply applies. When not specified, this indicates it is unknown in this context.;
    CodeableConcept? jurisdiction,
  }) = _PackagedProductDefinitionLegalStatusOfSupply;

  @override
  String get fhirType => 'PackagedProductDefinitionLegalStatusOfSupply';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory PackagedProductDefinitionLegalStatusOfSupply.fromYaml(dynamic yaml) =>
      yaml is String
          ? PackagedProductDefinitionLegalStatusOfSupply.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
          : yaml is YamlMap
              ? PackagedProductDefinitionLegalStatusOfSupply.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
              : throw ArgumentError(
                  'PackagedProductDefinitionLegalStatusOfSupply cannot be constructed from input provided,'
                  ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionLegalStatusOfSupply.fromJson(
          Map<String, dynamic> json) =>
      _$PackagedProductDefinitionLegalStatusOfSupplyFromJson(json);

  /// Acts like a constructor, returns a [PackagedProductDefinitionLegalStatusOfSupply], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory PackagedProductDefinitionLegalStatusOfSupply.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PackagedProductDefinitionLegalStatusOfSupplyFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [PackagedProductDefinitionPackage] A medically related item or items, in a container or package.
@freezed
class PackagedProductDefinitionPackage
    with BackboneType, _$PackagedProductDefinitionPackage {
  /// [PackagedProductDefinitionPackage] A medically related item or items, in a container or package.
  const PackagedProductDefinitionPackage._();

  /// [PackagedProductDefinitionPackage] A medically related item or items, in a container or package.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [identifier] A business identifier that is specific to this particular part of the packaging, often assigned by the manufacturer. Including possibly Data Carrier Identifier (a GS1 barcode).;
  ///
  /// [type] The physical type of the container of the items.;
  ///
  /// [quantity] The quantity of packaging items contained at this layer of the package. This does not relate to the number of contained items but relates solely to the number of packaging items. When looking at the outermost layer it is always 1. If there are two boxes within, at the next layer it would be 2.;
  ///
  /// [quantityElement] (_quantity): Extensions for quantity;
  ///
  /// [material] Material type of the package item.;
  ///
  /// [alternateMaterial] A possible alternate material for this part of the packaging, that is allowed to be used instead of the usual material (e.g. different types of plastic for a blister sleeve).;
  ///
  /// [shelfLifeStorage] Shelf Life and storage information.;
  ///
  /// [manufacturer] Manufacturer of this packaging item. When there are multiple values each one is a potential manufacturer of this packaging item.;
  ///
  /// [property] General characteristics of this item.;
  ///
  /// [containedItem] The item(s) within the packaging.;
  ///
  /// [package] Allows containers (and parts of containers) parwithin containers, still a single packaged product.  See also PackagedProductDefinition.package.containedItem.item(PackagedProductDefinition).;
  const factory PackagedProductDefinitionPackage({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [identifier] A business identifier that is specific to this particular part of the packaging, often assigned by the manufacturer. Including possibly Data Carrier Identifier (a GS1 barcode).;
    List<Identifier>? identifier,

    /// [type] The physical type of the container of the items.;
    CodeableConcept? type,

    /// [quantity] The quantity of packaging items contained at this layer of the package. This does not relate to the number of contained items but relates solely to the number of packaging items. When looking at the outermost layer it is always 1. If there are two boxes within, at the next layer it would be 2.;
    FhirInteger? quantity,

    /// [quantityElement] (_quantity): Extensions for quantity;
    @JsonKey(name: '_quantity') Element? quantityElement,

    /// [material] Material type of the package item.;
    List<CodeableConcept>? material,

    /// [alternateMaterial] A possible alternate material for this part of the packaging, that is allowed to be used instead of the usual material (e.g. different types of plastic for a blister sleeve).;
    List<CodeableConcept>? alternateMaterial,

    /// [shelfLifeStorage] Shelf Life and storage information.;
    List<PackagedProductDefinitionShelfLifeStorage>? shelfLifeStorage,

    /// [manufacturer] Manufacturer of this packaging item. When there are multiple values each one is a potential manufacturer of this packaging item.;
    List<Reference>? manufacturer,

    /// [property] General characteristics of this item.;
    List<PackagedProductDefinitionProperty>? property,

    /// [containedItem] The item(s) within the packaging.;
    List<PackagedProductDefinitionContainedItem>? containedItem,

    /// [package] Allows containers (and parts of containers) parwithin containers, still a single packaged product.  See also PackagedProductDefinition.package.containedItem.item(PackagedProductDefinition).;
    List<PackagedProductDefinitionPackage>? package,
  }) = _PackagedProductDefinitionPackage;

  @override
  String get fhirType => 'PackagedProductDefinitionPackage';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory PackagedProductDefinitionPackage.fromYaml(dynamic yaml) => yaml
          is String
      ? PackagedProductDefinitionPackage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PackagedProductDefinitionPackage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PackagedProductDefinitionPackage cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionPackage.fromJson(
          Map<String, dynamic> json) =>
      _$PackagedProductDefinitionPackageFromJson(json);

  /// Acts like a constructor, returns a [PackagedProductDefinitionPackage], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory PackagedProductDefinitionPackage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PackagedProductDefinitionPackageFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

@freezed
class PackagedProductDefinitionShelfLifeStorage
    with BackboneType, _$PackagedProductDefinitionShelfLifeStorage {
  const PackagedProductDefinitionShelfLifeStorage._();

  /// [PackagedProductDefinitionShelfLifeStorage] The shelf-life and storage information for a medicinal
  ///  product item or container can be described using this class.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [identifier] Unique identifier for the packaged Medicinal Product.
  ///
  /// [type] This describes the shelf life, taking into account various
  /// scenarios such as shelf life of the packaged Medicinal Product itself,
  /// shelf life after transformation where necessary and shelf life after the
  /// first opening of a bottle, etc. The shelf life type shall be specified
  /// using an appropriate controlled vocabulary The controlled term and the
  ///  controlled term identifier shall be specified.
  ///
  /// [periodDuration] The shelf life time period can be specified using a
  /// numerical value for the period of time and its unit of time measurement
  /// The unit of measurement shall be specified in accordance with ISO 11240
  /// and the resulting terminology The symbol and the symbol identifier shall
  /// be used.
  ///
  /// [periodString] The shelf life time period can be specified using a
  /// numerical value for the period of time and its unit of time measurement
  /// The unit of measurement shall be specified in accordance with ISO 11240
  /// and the resulting terminology The symbol and the symbol identifier shall
  /// be used.
  ///
  /// [periodStringElement] (_periodString) Extensions for periodString
  ///
  /// [specialPrecautionsForStorage] Special precautions for storage, if any,
  /// can be specified using an appropriate controlled vocabulary The controlled
  ///  term and the controlled term identifier shall be specified.
  const factory PackagedProductDefinitionShelfLifeStorage({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [identifier] Unique identifier for the packaged Medicinal Product.
    Identifier? identifier,

    /// [type] This describes the shelf life, taking into account various
    /// scenarios such as shelf life of the packaged Medicinal Product itself,
    /// shelf life after transformation where necessary and shelf life after the
    /// first opening of a bottle, etc. The shelf life type shall be specified
    /// using an appropriate controlled vocabulary The controlled term and the
    ///  controlled term identifier shall be specified.
    required CodeableConcept type,

    /// [periodDuration] The shelf life time period can be specified using a
    /// numerical value for the period of time and its unit of time measurement
    /// The unit of measurement shall be specified in accordance with ISO 11240
    /// and the resulting terminology The symbol and the symbol identifier shall
    /// be used.
    FhirDuration? periodDuration,

    /// [periodString] The shelf life time period can be specified using a
    /// numerical value for the period of time and its unit of time measurement
    /// The unit of measurement shall be specified in accordance with ISO 11240
    /// and the resulting terminology The symbol and the symbol identifier shall
    /// be used.
    String? periodString,

    /// [periodStringElement] (_periodString) Extensions for periodString
    @JsonKey(name: '_periodString') Element? periodStringElement,

    /// [specialPrecautionsForStorage] Special precautions for storage, if any,
    /// can be specified using an appropriate controlled vocabulary The controlled
    ///  term and the controlled term identifier shall be specified.
    List<CodeableConcept>? specialPrecautionsForStorage,
  }) = _PackagedProductDefinitionShelfLifeStorage;

  @override
  String get fhirType => 'PackagedProductDefinitionShelfLifeStorage';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory PackagedProductDefinitionShelfLifeStorage.fromYaml(dynamic yaml) => yaml
          is String
      ? PackagedProductDefinitionShelfLifeStorage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PackagedProductDefinitionShelfLifeStorage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PackagedProductDefinitionShelfLifeStorage cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionShelfLifeStorage.fromJson(
          Map<String, dynamic> json) =>
      _$PackagedProductDefinitionShelfLifeStorageFromJson(json);

  /// Acts like a constructor, returns a [PackagedProductDefinitionShelfLifeStorage], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory PackagedProductDefinitionShelfLifeStorage.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PackagedProductDefinitionShelfLifeStorageFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

@freezed
class PackagedProductDefinitionProperty
    with BackboneType, _$PackagedProductDefinitionProperty {
  const PackagedProductDefinitionProperty._();

  /// [PackagedProductDefinitionProperty] A medically related item or items, in a container or package.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [type] A code expressing the type of characteristic.;
  ///
  /// [valueCodeableConcept] A value for the characteristic.;
  ///
  /// [valueQuantity] A value for the characteristic.;
  ///
  /// [valueDate] A value for the characteristic.;
  ///
  /// [valueDateElement] (_valueDate): Extensions for valueDate;
  ///
  /// [valueBoolean] A value for the characteristic.;
  ///
  /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
  ///
  /// [valueAttachment] A value for the characteristic.;
  const factory PackagedProductDefinitionProperty({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [type] A code expressing the type of characteristic.;
    required CodeableConcept type,

    /// [valueCodeableConcept] A value for the characteristic.;
    CodeableConcept? valueCodeableConcept,

    /// [valueQuantity] A value for the characteristic.;
    Quantity? valueQuantity,

    /// [valueDate] A value for the characteristic.;
    FhirDate? valueDate,

    /// [valueDateElement] (_valueDate): Extensions for valueDate;
    @JsonKey(name: '_valueDate') Element? valueDateElement,

    /// [valueBoolean] A value for the characteristic.;
    FhirBoolean? valueBoolean,

    /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
    @JsonKey(name: '_valueBoolean') Element? valueBooleanElement,

    /// [valueAttachment] A value for the characteristic.;
    Attachment? valueAttachment,
  }) = _PackagedProductDefinitionProperty;

  @override
  String get fhirType => 'PackagedProductDefinitionProperty';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory PackagedProductDefinitionProperty.fromYaml(dynamic yaml) => yaml
          is String
      ? PackagedProductDefinitionProperty.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PackagedProductDefinitionProperty.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PackagedProductDefinitionProperty cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionProperty.fromJson(
          Map<String, dynamic> json) =>
      _$PackagedProductDefinitionPropertyFromJson(json);

  /// Acts like a constructor, returns a [PackagedProductDefinitionProperty], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory PackagedProductDefinitionProperty.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PackagedProductDefinitionPropertyFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

@freezed
class PackagedProductDefinitionContainedItem
    with BackboneType, _$PackagedProductDefinitionContainedItem {
  const PackagedProductDefinitionContainedItem._();

  /// [PackagedProductDefinitionContainedItem] A medically related item or items, in a container or package.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [item] The actual item(s) of medication, as manufactured, or a device (typically, but not necessarily, a co-packaged one), or other medically related item (such as food, biologicals, raw materials, medical fluids, gases etc.), as contained in the package. This also allows another whole packaged product to be included, which is solely for the case where a package of other entire packages is wanted - such as a wholesale or distribution pack (for layers within one package, use PackagedProductDefinition.package.package).;
  ///
  /// [amount] The number of this type of item within this packaging.;
  const factory PackagedProductDefinitionContainedItem({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [item] The actual item(s) of medication, as manufactured, or a device (typically, but not necessarily, a co-packaged one), or other medically related item (such as food, biologicals, raw materials, medical fluids, gases etc.), as contained in the package. This also allows another whole packaged product to be included, which is solely for the case where a package of other entire packages is wanted - such as a wholesale or distribution pack (for layers within one package, use PackagedProductDefinition.package.package).;
    required CodeableReference item,

    /// [amount] The number of this type of item within this packaging.;
    Quantity? amount,
  }) = _PackagedProductDefinitionContainedItem;

  @override
  String get fhirType => 'PackagedProductDefinitionContainedItem';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory PackagedProductDefinitionContainedItem.fromYaml(dynamic yaml) => yaml
          is String
      ? PackagedProductDefinitionContainedItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PackagedProductDefinitionContainedItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PackagedProductDefinitionContainedItem cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory PackagedProductDefinitionContainedItem.fromJson(
          Map<String, dynamic> json) =>
      _$PackagedProductDefinitionContainedItemFromJson(json);

  /// Acts like a constructor, returns a [PackagedProductDefinitionContainedItem], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory PackagedProductDefinitionContainedItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PackagedProductDefinitionContainedItemFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [RegulatedAuthorization] Regulatory approval, clearance or licencing related to a regulated product, treatment, facility or activity that is cited in a guidance, regulation, rule or legislative act. An example is Market Authorization relating to a Medicinal Product.
@freezed
class RegulatedAuthorization with Resource, _$RegulatedAuthorization {
  /// [RegulatedAuthorization] Regulatory approval, clearance or licencing related to a regulated product, treatment, facility or activity that is cited in a guidance, regulation, rule or legislative act. An example is Market Authorization relating to a Medicinal Product.
  const RegulatedAuthorization._();

  /// [RegulatedAuthorization] Regulatory approval, clearance or licencing related to a regulated product, treatment, facility or activity that is cited in a guidance, regulation, rule or legislative act. An example is Market Authorization relating to a Medicinal Product.

  ///
  /// [resourceType] This is a RegulatedAuthorization resource;
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
  ///
  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  ///
  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  ///
  /// [language] The base language in which the resource is written.;
  ///
  /// [languageElement] (_language): Extensions for language;
  ///
  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  ///
  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [identifier] Business identifier for the authorization, typically assigned by the authorizing body.;
  ///
  /// [subject] The product type, treatment, facility or activity that is being authorized.;
  ///
  /// [type] Overall type of this authorization, for example drug marketing approval, orphan drug designation.;
  ///
  /// [description] General textual supporting information.;
  ///
  /// [descriptionElement] (_description): Extensions for description;
  ///
  /// [region] The territory (e.g., country, jurisdiction etc.) in which the authorization has been granted.;
  ///
  /// [status] The status that is authorised e.g. approved. Intermediate states and actions can be tracked with cases and applications.;
  ///
  /// [statusDate] The date at which the current status was assigned.;
  ///
  /// [statusDateElement] (_statusDate): Extensions for statusDate;
  ///
  /// [validityPeriod] The time period in which the regulatory approval, clearance or licencing is in effect. As an example, a Marketing Authorization includes the date of authorization and/or an expiration date.;
  ///
  /// [indication] Condition for which the use of the regulated product applies.;
  ///
  /// [intendedUse] The intended use of the product, e.g. prevention, treatment, diagnosis.;
  ///
  /// [basis] The legal or regulatory framework against which this authorization is granted, or other reasons for it.;
  ///
  /// [holder] The organization that has been granted this authorization, by some authoritative body (the 'regulator').;
  ///
  /// [regulator] The regulatory authority or authorizing body granting the authorization. For example, European Medicines Agency (EMA), Food and Drug Administration (FDA), Health Canada (HC), etc.;
  ///
  /// [case_] The case or regulatory procedure for granting or amending a regulated authorization. An authorization is granted in response to submissions/applications by those seeking authorization. A case is the administrative process that deals with the application(s) that relate to this and assesses them. Note: This area is subject to ongoing review and the workgroup is seeking implementer feedback on its use (see link at bottom of page).;
  const factory RegulatedAuthorization({
    /// [resourceType] This is a RegulatedAuthorization resource;
    @Default(R4ResourceType.RegulatedAuthorization) R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
    String? id,

    /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
    FhirUri? implicitRules,

    /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
    @JsonKey(name: '_implicitRules') Element? implicitRulesElement,

    /// [language] The base language in which the resource is written.;
    FhirCode? language,

    /// [languageElement] (_language): Extensions for language;
    @JsonKey(name: '_language') Element? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [identifier] Business identifier for the authorization, typically assigned by the authorizing body.;
    List<Identifier>? identifier,

    /// [subject] The product type, treatment, facility or activity that is being authorized.;
    List<Reference>? subject,

    /// [type] Overall type of this authorization, for example drug marketing approval, orphan drug designation.;
    CodeableConcept? type,

    /// [description] General textual supporting information.;
    FhirMarkdown? description,

    /// [descriptionElement] (_description): Extensions for description;
    @JsonKey(name: '_description') Element? descriptionElement,

    /// [region] The territory (e.g., country, jurisdiction etc.) in which the authorization has been granted.;
    List<CodeableConcept>? region,

    /// [status] The status that is authorised e.g. approved. Intermediate states and actions can be tracked with cases and applications.;
    CodeableConcept? status,

    /// [statusDate] The date at which the current status was assigned.;
    FhirDateTime? statusDate,

    /// [statusDateElement] (_statusDate): Extensions for statusDate;
    @JsonKey(name: '_statusDate') Element? statusDateElement,

    /// [validityPeriod] The time period in which the regulatory approval, clearance or licencing is in effect. As an example, a Marketing Authorization includes the date of authorization and/or an expiration date.;
    Period? validityPeriod,

    /// [indication] Condition for which the use of the regulated product applies.;
    CodeableReference? indication,

    /// [intendedUse] The intended use of the product, e.g. prevention, treatment, diagnosis.;
    CodeableConcept? intendedUse,

    /// [basis] The legal or regulatory framework against which this authorization is granted, or other reasons for it.;
    List<CodeableConcept>? basis,

    /// [holder] The organization that has been granted this authorization, by some authoritative body (the 'regulator').;
    Reference? holder,

    /// [regulator] The regulatory authority or authorizing body granting the authorization. For example, European Medicines Agency (EMA), Food and Drug Administration (FDA), Health Canada (HC), etc.;
    Reference? regulator,

    /// [case_] The case or regulatory procedure for granting or amending a regulated authorization. An authorization is granted in response to submissions/applications by those seeking authorization. A case is the administrative process that deals with the application(s) that relate to this and assesses them. Note: This area is subject to ongoing review and the workgroup is seeking implementer feedback on its use (see link at bottom of page).;
    @JsonKey(name: 'case') RegulatedAuthorizationCase? case_,
  }) = _RegulatedAuthorization;

  @override
  String get fhirType => 'RegulatedAuthorization';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory RegulatedAuthorization.fromYaml(dynamic yaml) => yaml is String
      ? RegulatedAuthorization.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? RegulatedAuthorization.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'RegulatedAuthorization cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory RegulatedAuthorization.fromJson(Map<String, dynamic> json) =>
      _$RegulatedAuthorizationFromJson(json);

  /// Acts like a constructor, returns a [RegulatedAuthorization], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory RegulatedAuthorization.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RegulatedAuthorizationFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());
}

/// [RegulatedAuthorizationCase] Regulatory approval, clearance or licencing related to a regulated product, treatment, facility or activity that is cited in a guidance, regulation, rule or legislative act. An example is Market Authorization relating to a Medicinal Product.
@freezed
class RegulatedAuthorizationCase
    with BackboneType, _$RegulatedAuthorizationCase {
  /// [RegulatedAuthorizationCase] Regulatory approval, clearance or licencing related to a regulated product, treatment, facility or activity that is cited in a guidance, regulation, rule or legislative act. An example is Market Authorization relating to a Medicinal Product.
  const RegulatedAuthorizationCase._();

  /// [RegulatedAuthorizationCase] Regulatory approval, clearance or licencing related to a regulated product, treatment, facility or activity that is cited in a guidance, regulation, rule or legislative act. An example is Market Authorization relating to a Medicinal Product.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [identifier] Identifier by which this case can be referenced.;
  ///
  /// [type] The defining type of case.;
  ///
  /// [status] The status associated with the case.;
  ///
  /// [datePeriod] Relevant date for this case.;
  ///
  /// [dateDateTime] Relevant date for this case.;
  ///
  /// [dateDateTimeElement] (_dateDateTime): Extensions for dateDateTime;
  ///
  /// [application] A regulatory submission from an organization to a regulator, as part of an assessing case. Multiple applications may occur over time, with more or different information to support or modify the submission or the authorization. The applications can be considered as steps within the longer running case or procedure for this authorization process.;
  const factory RegulatedAuthorizationCase({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [identifier] Identifier by which this case can be referenced.;
    Identifier? identifier,

    /// [type] The defining type of case.;
    CodeableConcept? type,

    /// [status] The status associated with the case.;
    CodeableConcept? status,

    /// [datePeriod] Relevant date for this case.;
    Period? datePeriod,

    /// [dateDateTime] Relevant date for this case.;
    FhirDateTime? dateDateTime,

    /// [dateDateTimeElement] (_dateDateTime): Extensions for dateDateTime;
    @JsonKey(name: '_dateDateTime') Element? dateDateTimeElement,

    /// [application] A regulatory submission from an organization to a regulator, as part of an assessing case. Multiple applications may occur over time, with more or different information to support or modify the submission or the authorization. The applications can be considered as steps within the longer running case or procedure for this authorization process.;
    List<RegulatedAuthorizationCase>? application,
  }) = _RegulatedAuthorizationCase;

  @override
  String get fhirType => 'RegulatedAuthorizationCase';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory RegulatedAuthorizationCase.fromYaml(dynamic yaml) => yaml is String
      ? RegulatedAuthorizationCase.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? RegulatedAuthorizationCase.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'RegulatedAuthorizationCase cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory RegulatedAuthorizationCase.fromJson(Map<String, dynamic> json) =>
      _$RegulatedAuthorizationCaseFromJson(json);

  /// Acts like a constructor, returns a [RegulatedAuthorizationCase], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory RegulatedAuthorizationCase.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RegulatedAuthorizationCaseFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [SubstanceDefinition] The detailed description of a substance, typically at a level beyond what is used for prescribing.
@freezed
class SubstanceDefinition with Resource, _$SubstanceDefinition {
  /// [SubstanceDefinition] The detailed description of a substance, typically at a level beyond what is used for prescribing.
  const SubstanceDefinition._();

  /// [SubstanceDefinition] The detailed description of a substance, typically at a level beyond what is used for prescribing.

  ///
  /// [resourceType] This is a SubstanceDefinition resource;
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
  ///
  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  ///
  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  ///
  /// [language] The base language in which the resource is written.;
  ///
  /// [languageElement] (_language): Extensions for language;
  ///
  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  ///
  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [identifier] Identifier by which this substance is known.;
  ///
  /// [version] A business level version identifier of the substance.;
  ///
  /// [versionElement] (_version): Extensions for version;
  ///
  /// [status] Status of substance within the catalogue e.g. active, retired.;
  ///
  /// [classification] A high level categorization, e.g. polymer or nucleic acid, or food, chemical, biological, or a lower level such as the general types of polymer (linear or branch chain) or type of impurity (process related or contaminant).;
  ///
  /// [domain] If the substance applies to human or veterinary use.;
  ///
  /// [grade] The quality standard, established benchmark, to which substance complies (e.g. USP/NF, Ph. Eur, JP, BP, Company Standard).;
  ///
  /// [description] Textual description of the substance.;
  ///
  /// [descriptionElement] (_description): Extensions for description;
  ///
  /// [informationSource] Supporting literature.;
  ///
  /// [note] Textual comment about the substance's catalogue or registry record.;
  ///
  /// [manufacturer] The entity that creates, makes, produces or fabricates the substance. This is a set of potential manufacturers but is not necessarily comprehensive.;
  ///
  /// [supplier] An entity that is the source for the substance. It may be different from the manufacturer. Supplier is synonymous to a distributor.;
  ///
  /// [moiety] Moiety, for structural modifications.;
  ///
  /// [property] General specifications for this substance.;
  ///
  /// [molecularWeight] The molecular weight or weight range (for proteins, polymers or nucleic acids).;
  ///
  /// [structure] Structural information.;
  ///
  /// [code] Codes associated with the substance.;
  ///
  /// [name] Names applicable to this substance.;
  ///
  /// [relationship] A link between this substance and another, with details of the relationship.;
  ///
  /// [sourceMaterial] Material or taxonomic/anatomical source for the substance.;
  const factory SubstanceDefinition({
    /// [resourceType] This is a SubstanceDefinition resource;
    @Default(R4ResourceType.SubstanceDefinition) R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
    String? id,

    /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
    FhirUri? implicitRules,

    /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
    @JsonKey(name: '_implicitRules') Element? implicitRulesElement,

    /// [language] The base language in which the resource is written.;
    FhirCode? language,

    /// [languageElement] (_language): Extensions for language;
    @JsonKey(name: '_language') Element? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [identifier] Identifier by which this substance is known.;
    List<Identifier>? identifier,

    /// [version] A business level version identifier of the substance.;
    String? version,

    /// [versionElement] (_version): Extensions for version;
    @JsonKey(name: '_version') Element? versionElement,

    /// [status] Status of substance within the catalogue e.g. active, retired.;
    CodeableConcept? status,

    /// [classification] A high level categorization, e.g. polymer or nucleic acid, or food, chemical, biological, or a lower level such as the general types of polymer (linear or branch chain) or type of impurity (process related or contaminant).;
    List<CodeableConcept>? classification,

    /// [domain] If the substance applies to human or veterinary use.;
    CodeableConcept? domain,

    /// [grade] The quality standard, established benchmark, to which substance complies (e.g. USP/NF, Ph. Eur, JP, BP, Company Standard).;
    List<CodeableConcept>? grade,

    /// [description] Textual description of the substance.;
    FhirMarkdown? description,

    /// [descriptionElement] (_description): Extensions for description;
    @JsonKey(name: '_description') Element? descriptionElement,

    /// [informationSource] Supporting literature.;
    List<Reference>? informationSource,

    /// [note] Textual comment about the substance's catalogue or registry record.;
    List<Annotation>? note,

    /// [manufacturer] The entity that creates, makes, produces or fabricates the substance. This is a set of potential manufacturers but is not necessarily comprehensive.;
    List<Reference>? manufacturer,

    /// [supplier] An entity that is the source for the substance. It may be different from the manufacturer. Supplier is synonymous to a distributor.;
    List<Reference>? supplier,

    /// [moiety] Moiety, for structural modifications.;
    List<SubstanceDefinitionMoiety>? moiety,

    /// [property] General specifications for this substance.;
    List<SubstanceDefinitionProperty>? property,

    /// [molecularWeight] The molecular weight or weight range (for proteins, polymers or nucleic acids).;
    List<SubstanceDefinitionMolecularWeight>? molecularWeight,

    /// [structure] Structural information.;
    SubstanceDefinitionStructure? structure,

    /// [code] Codes associated with the substance.;
    List<SubstanceDefinitionCode>? code,

    /// [name] Names applicable to this substance.;
    List<SubstanceDefinitionName>? name,

    /// [relationship] A link between this substance and another, with details of the relationship.;
    List<SubstanceDefinitionRelationship>? relationship,

    /// [sourceMaterial] Material or taxonomic/anatomical source for the substance.;
    SubstanceDefinitionSourceMaterial? sourceMaterial,
  }) = _SubstanceDefinition;

  @override
  String get fhirType => 'SubstanceDefinition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubstanceDefinition.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinition.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinitionFromJson(json);

  /// Acts like a constructor, returns a [SubstanceDefinition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubstanceDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());
}

/// [SubstanceDefinitionMoiety] The detailed description of a substance, typically at a level beyond what is used for prescribing.
@freezed
class SubstanceDefinitionMoiety with BackboneType, _$SubstanceDefinitionMoiety {
  /// [SubstanceDefinitionMoiety] The detailed description of a substance, typically at a level beyond what is used for prescribing.
  const SubstanceDefinitionMoiety._();

  /// [SubstanceDefinitionMoiety] The detailed description of a substance, typically at a level beyond what is used for prescribing.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [role] Role that the moiety is playing.;
  ///
  /// [identifier] Identifier by which this moiety substance is known.;
  ///
  /// [name] Textual name for this moiety substance.;
  ///
  /// [nameElement] (_name): Extensions for name;
  ///
  /// [stereochemistry] Stereochemistry type.;
  ///
  /// [opticalActivity] Optical activity type.;
  ///
  /// [molecularFormula] Molecular formula for this moiety of this substance, typically using the Hill system.;
  ///
  /// [molecularFormulaElement] (_molecularFormula): Extensions for molecularFormula;
  ///
  /// [amountQuantity] Quantitative value for this moiety.;
  ///
  /// [amountString] Quantitative value for this moiety.;
  ///
  /// [amountStringElement] (_amountString): Extensions for amountString;
  ///
  /// [measurementType] The measurement type of the quantitative value. In capturing the actual relative amounts of substances or molecular fragments it may be necessary to indicate whether the amount refers to, for example, a mole ratio or weight ratio.;
  const factory SubstanceDefinitionMoiety({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [role] Role that the moiety is playing.;
    CodeableConcept? role,

    /// [identifier] Identifier by which this moiety substance is known.;
    Identifier? identifier,

    /// [name] Textual name for this moiety substance.;
    String? name,

    /// [nameElement] (_name): Extensions for name;
    @JsonKey(name: '_name') Element? nameElement,

    /// [stereochemistry] Stereochemistry type.;
    CodeableConcept? stereochemistry,

    /// [opticalActivity] Optical activity type.;
    CodeableConcept? opticalActivity,

    /// [molecularFormula] Molecular formula for this moiety of this substance, typically using the Hill system.;
    String? molecularFormula,

    /// [molecularFormulaElement] (_molecularFormula): Extensions for molecularFormula;
    @JsonKey(name: '_molecularFormula') Element? molecularFormulaElement,

    /// [amountQuantity] Quantitative value for this moiety.;
    Quantity? amountQuantity,

    /// [amountString] Quantitative value for this moiety.;
    FhirMarkdown? amountString,

    /// [amountStringElement] (_amountString): Extensions for amountString;
    @JsonKey(name: '_amountString') Element? amountStringElement,

    /// [measurementType] The measurement type of the quantitative value. In capturing the actual relative amounts of substances or molecular fragments it may be necessary to indicate whether the amount refers to, for example, a mole ratio or weight ratio.;
    CodeableConcept? measurementType,
  }) = _SubstanceDefinitionMoiety;

  @override
  String get fhirType => 'SubstanceDefinitionMoiety';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubstanceDefinitionMoiety.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinitionMoiety.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinitionMoiety.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinitionMoiety cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionMoiety.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinitionMoietyFromJson(json);

  /// Acts like a constructor, returns a [SubstanceDefinitionMoiety], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubstanceDefinitionMoiety.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinitionMoietyFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [SubstanceDefinitionProperty] The detailed description of a substance, typically at a level beyond what is used for prescribing.
@freezed
class SubstanceDefinitionProperty
    with BackboneType, _$SubstanceDefinitionProperty {
  /// [SubstanceDefinitionProperty] The detailed description of a substance, typically at a level beyond what is used for prescribing.
  const SubstanceDefinitionProperty._();

  /// [SubstanceDefinitionProperty] The detailed description of a substance, typically at a level beyond what is used for prescribing.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [type] A code expressing the type of property.;
  ///
  /// [valueCodeableConcept] A value for the property.;
  ///
  /// [valueQuantity] A value for the property.;
  ///
  /// [valueDate] A value for the property.;
  ///
  /// [valueDateElement] (_valueDate): Extensions for valueDate;
  ///
  /// [valueBoolean] A value for the property.;
  ///
  /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
  ///
  /// [valueAttachment] A value for the property.;
  const factory SubstanceDefinitionProperty({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [type] A code expressing the type of property.;
    required CodeableConcept type,

    /// [valueCodeableConcept] A value for the property.;
    CodeableConcept? valueCodeableConcept,

    /// [valueQuantity] A value for the property.;
    Quantity? valueQuantity,

    /// [valueDate] A value for the property.;
    FhirDate? valueDate,

    /// [valueDateElement] (_valueDate): Extensions for valueDate;
    @JsonKey(name: '_valueDate') Element? valueDateElement,

    /// [valueBoolean] A value for the property.;
    FhirBoolean? valueBoolean,

    /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
    @JsonKey(name: '_valueBoolean') Element? valueBooleanElement,

    /// [valueAttachment] A value for the property.;
    Attachment? valueAttachment,
  }) = _SubstanceDefinitionProperty;

  @override
  String get fhirType => 'SubstanceDefinitionProperty';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubstanceDefinitionProperty.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinitionProperty.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinitionProperty.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinitionProperty cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionProperty.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinitionPropertyFromJson(json);

  /// Acts like a constructor, returns a [SubstanceDefinitionProperty], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubstanceDefinitionProperty.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinitionPropertyFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

@freezed
class SubstanceDefinitionMolecularWeight
    with BackboneType, _$SubstanceDefinitionMolecularWeight {
  const SubstanceDefinitionMolecularWeight._();

  /// [SubstanceDefinitionMolecularWeight] The detailed description of a substance, typically at a level beyond what is used for prescribing.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [method] The method by which the molecular weight was determined.;
  ///
  /// [type] Type of molecular weight such as exact, average (also known as. number average), weight average.;
  ///
  /// [amount] Used to capture quantitative values for a variety of elements. If only limits are given, the arithmetic mean would be the average. If only a single definite value for a given element is given, it would be captured in this field.;
  const factory SubstanceDefinitionMolecularWeight({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [method] The method by which the molecular weight was determined.;
    CodeableConcept? method,

    /// [type] Type of molecular weight such as exact, average (also known as. number average), weight average.;
    CodeableConcept? type,

    /// [amount] Used to capture quantitative values for a variety of elements. If only limits are given, the arithmetic mean would be the average. If only a single definite value for a given element is given, it would be captured in this field.;
    required Quantity amount,
  }) = _SubstanceDefinitionMolecularWeight;

  @override
  String get fhirType => 'SubstanceDefinitionMolecularWeight';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubstanceDefinitionMolecularWeight.fromYaml(dynamic yaml) => yaml
          is String
      ? SubstanceDefinitionMolecularWeight.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinitionMolecularWeight.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinitionMolecularWeight cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionMolecularWeight.fromJson(
          Map<String, dynamic> json) =>
      _$SubstanceDefinitionMolecularWeightFromJson(json);

  /// Acts like a constructor, returns a [SubstanceDefinitionMolecularWeight], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubstanceDefinitionMolecularWeight.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinitionMolecularWeightFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [SubstanceDefinitionStructure] The detailed description of a substance, typically at a level beyond what is used for prescribing.
@freezed
class SubstanceDefinitionStructure
    with BackboneType, _$SubstanceDefinitionStructure {
  /// [SubstanceDefinitionStructure] The detailed description of a substance, typically at a level beyond what is used for prescribing.
  const SubstanceDefinitionStructure._();

  /// [SubstanceDefinitionStructure] The detailed description of a substance, typically at a level beyond what is used for prescribing.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [stereochemistry] Stereochemistry type.;
  ///
  /// [opticalActivity] Optical activity type.;
  ///
  /// [molecularFormula] Molecular formula of this substance, typically using the Hill system.;
  ///
  /// [molecularFormulaElement] (_molecularFormula): Extensions for molecularFormula;
  ///
  /// [molecularFormulaByMoiety] Specified per moiety according to the Hill system, i.e. first C, then H, then alphabetical, each moiety separated by a dot.;
  ///
  /// [molecularFormulaByMoietyElement] (_molecularFormulaByMoiety): Extensions for molecularFormulaByMoiety;
  ///
  /// [molecularWeight] The molecular weight or weight range (for proteins, polymers or nucleic acids).;
  ///
  /// [technique] The method used to elucidate the structure or characterization of the drug substance. Examples: X-ray, HPLC, NMR, Peptide mapping, Ligand binding assay.;
  ///
  /// [sourceDocument] The source of information about the structure.;
  ///
  /// [representation] A depiction of the structure or characterization of the substance.;
  const factory SubstanceDefinitionStructure({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [stereochemistry] Stereochemistry type.;
    CodeableConcept? stereochemistry,

    /// [opticalActivity] Optical activity type.;
    CodeableConcept? opticalActivity,

    /// [molecularFormula] Molecular formula of this substance, typically using the Hill system.;
    String? molecularFormula,

    /// [molecularFormulaElement] (_molecularFormula): Extensions for molecularFormula;
    @JsonKey(name: '_molecularFormula') Element? molecularFormulaElement,

    /// [molecularFormulaByMoiety] Specified per moiety according to the Hill system, i.e. first C, then H, then alphabetical, each moiety separated by a dot.;
    String? molecularFormulaByMoiety,
    @JsonKey(name: '_molecularFormulaByMoiety')

    /// [molecularFormulaByMoietyElement] (_molecularFormulaByMoiety): Extensions for molecularFormulaByMoiety;
    Element? molecularFormulaByMoietyElement,

    /// [molecularWeight] The molecular weight or weight range (for proteins, polymers or nucleic acids).;
    SubstanceDefinitionMolecularWeight? molecularWeight,

    /// [technique] The method used to elucidate the structure or characterization of the drug substance. Examples: X-ray, HPLC, NMR, Peptide mapping, Ligand binding assay.;
    List<CodeableConcept>? technique,

    /// [sourceDocument] The source of information about the structure.;
    List<Reference>? sourceDocument,

    /// [representation] A depiction of the structure or characterization of the substance.;
    List<SubstanceDefinitionRepresentation>? representation,
  }) = _SubstanceDefinitionStructure;

  @override
  String get fhirType => 'SubstanceDefinitionStructure';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubstanceDefinitionStructure.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinitionStructure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinitionStructure.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinitionStructure cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionStructure.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinitionStructureFromJson(json);

  /// Acts like a constructor, returns a [SubstanceDefinitionStructure], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubstanceDefinitionStructure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinitionStructureFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

@freezed
class SubstanceDefinitionRepresentation
    with BackboneType, _$SubstanceDefinitionRepresentation {
  const SubstanceDefinitionRepresentation._();

  /// [SubstanceDefinitionRepresentation] The detailed description of a substance, typically at a level beyond what is used for prescribing.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [type] The kind of structural representation (e.g. full, partial).;
  ///
  /// [representation] The structural representation or characterization as a text string in a standard format.;
  ///
  /// [representationElement] (_representation): Extensions for representation;
  ///
  /// [format] The format of the representation e.g. InChI, SMILES, MOLFILE, CDX, SDF, PDB, mmCIF. The logical content type rather than the physical file format of a document.;
  ///
  /// [document] An attached file with the structural representation or characterization e.g. a molecular structure graphic of the substance, a JCAMP or AnIML file.;
  const factory SubstanceDefinitionRepresentation({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [type] The kind of structural representation (e.g. full, partial).;
    CodeableConcept? type,

    /// [representation] The structural representation or characterization as a text string in a standard format.;
    String? representation,

    /// [representationElement] (_representation): Extensions for representation;
    @JsonKey(name: '_representation') Element? representationElement,

    /// [format] The format of the representation e.g. InChI, SMILES, MOLFILE, CDX, SDF, PDB, mmCIF. The logical content type rather than the physical file format of a document.;
    CodeableConcept? format,

    /// [document] An attached file with the structural representation or characterization e.g. a molecular structure graphic of the substance, a JCAMP or AnIML file.;
    Reference? document,
  }) = _SubstanceDefinitionRepresentation;

  @override
  String get fhirType => 'SubstanceDefinitionRepresentation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubstanceDefinitionRepresentation.fromYaml(dynamic yaml) => yaml
          is String
      ? SubstanceDefinitionRepresentation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinitionRepresentation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinitionRepresentation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionRepresentation.fromJson(
          Map<String, dynamic> json) =>
      _$SubstanceDefinitionRepresentationFromJson(json);

  /// Acts like a constructor, returns a [SubstanceDefinitionRepresentation], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubstanceDefinitionRepresentation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinitionRepresentationFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [SubstanceDefinitionCode] The detailed description of a substance, typically at a level beyond what is used for prescribing.
@freezed
class SubstanceDefinitionCode with BackboneType, _$SubstanceDefinitionCode {
  /// [SubstanceDefinitionCode] The detailed description of a substance, typically at a level beyond what is used for prescribing.
  const SubstanceDefinitionCode._();

  /// [SubstanceDefinitionCode] The detailed description of a substance, typically at a level beyond what is used for prescribing.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [code] The specific code.;
  ///
  /// [status] Status of the code assignment, for example 'provisional', 'approved'.;
  ///
  /// [statusDate] The date at which the code status was changed as part of the terminology maintenance.;
  ///
  /// [statusDateElement] (_statusDate): Extensions for statusDate;
  ///
  /// [note] Any comment can be provided in this field, if necessary.;
  ///
  /// [source] Supporting literature.;
  const factory SubstanceDefinitionCode({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [code] The specific code.;
    CodeableConcept? code,

    /// [status] Status of the code assignment, for example 'provisional', 'approved'.;
    CodeableConcept? status,

    /// [statusDate] The date at which the code status was changed as part of the terminology maintenance.;
    FhirDateTime? statusDate,

    /// [statusDateElement] (_statusDate): Extensions for statusDate;
    @JsonKey(name: '_statusDate') Element? statusDateElement,

    /// [note] Any comment can be provided in this field, if necessary.;
    List<Annotation>? note,

    /// [source] Supporting literature.;
    List<Reference>? source,
  }) = _SubstanceDefinitionCode;

  @override
  String get fhirType => 'SubstanceDefinitionCode';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubstanceDefinitionCode.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinitionCode.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinitionCode.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinitionCode cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionCode.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinitionCodeFromJson(json);

  /// Acts like a constructor, returns a [SubstanceDefinitionCode], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubstanceDefinitionCode.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinitionCodeFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [SubstanceDefinitionName] The detailed description of a substance, typically at a level beyond what is used for prescribing.
@freezed
class SubstanceDefinitionName with BackboneType, _$SubstanceDefinitionName {
  /// [SubstanceDefinitionName] The detailed description of a substance, typically at a level beyond what is used for prescribing.
  const SubstanceDefinitionName._();

  /// [SubstanceDefinitionName] The detailed description of a substance, typically at a level beyond what is used for prescribing.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [name] The actual name.;
  ///
  /// [nameElement] (_name): Extensions for name;
  ///
  /// [type] Name type, for example 'systematic',  'scientific, 'brand'.;
  ///
  /// [status] The status of the name, for example 'current', 'proposed'.;
  ///
  /// [preferred] If this is the preferred name for this substance.;
  ///
  /// [preferredElement] (_preferred): Extensions for preferred;
  ///
  /// [language] Human language that the name is written in.;
  ///
  /// [domain] The use context of this name for example if there is a different name a drug active ingredient as opposed to a food colour additive.;
  ///
  /// [jurisdiction] The jurisdiction where this name applies.;
  ///
  /// [synonym] A synonym of this particular name, by which the substance is also known.;
  ///
  /// [translation] A translation for this name into another human language.;
  ///
  /// [official] Details of the official nature of this name.;
  ///
  /// [source] Supporting literature.;
  const factory SubstanceDefinitionName({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [name] The actual name.;
    String? name,

    /// [nameElement] (_name): Extensions for name;
    @JsonKey(name: '_name') Element? nameElement,

    /// [type] Name type, for example 'systematic',  'scientific, 'brand'.;
    CodeableConcept? type,

    /// [status] The status of the name, for example 'current', 'proposed'.;
    CodeableConcept? status,

    /// [preferred] If this is the preferred name for this substance.;
    FhirBoolean? preferred,

    /// [preferredElement] (_preferred): Extensions for preferred;
    @JsonKey(name: '_preferred') Element? preferredElement,

    /// [language] Human language that the name is written in.;
    List<CodeableConcept>? language,

    /// [domain] The use context of this name for example if there is a different name a drug active ingredient as opposed to a food colour additive.;
    List<CodeableConcept>? domain,

    /// [jurisdiction] The jurisdiction where this name applies.;
    List<CodeableConcept>? jurisdiction,

    /// [synonym] A synonym of this particular name, by which the substance is also known.;
    List<SubstanceDefinitionName>? synonym,

    /// [translation] A translation for this name into another human language.;
    List<SubstanceDefinitionName>? translation,

    /// [official] Details of the official nature of this name.;
    List<SubstanceDefinitionOfficial>? official,

    /// [source] Supporting literature.;
    List<Reference>? source,
  }) = _SubstanceDefinitionName;

  @override
  String get fhirType => 'SubstanceDefinitionName';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubstanceDefinitionName.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinitionName.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinitionName.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinitionName cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionName.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinitionNameFromJson(json);

  /// Acts like a constructor, returns a [SubstanceDefinitionName], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubstanceDefinitionName.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinitionNameFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [SubstanceDefinitionOfficial] The detailed description of a substance, typically at a level beyond what is used for prescribing.
@freezed
class SubstanceDefinitionOfficial
    with BackboneType, _$SubstanceDefinitionOfficial {
  /// [SubstanceDefinitionOfficial] The detailed description of a substance, typically at a level beyond what is used for prescribing.
  const SubstanceDefinitionOfficial._();

  /// [SubstanceDefinitionOfficial] The detailed description of a substance, typically at a level beyond what is used for prescribing.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [authority] Which authority uses this official name.;
  ///
  /// [status] The status of the official name, for example 'draft', 'active', 'retired'.;
  ///
  /// [date] Date of the official name change.;
  ///
  /// [dateElement] (_date): Extensions for date;
  const factory SubstanceDefinitionOfficial({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [authority] Which authority uses this official name.;
    CodeableConcept? authority,

    /// [status] The status of the official name, for example 'draft', 'active', 'retired'.;
    CodeableConcept? status,

    /// [date] Date of the official name change.;
    FhirDateTime? date,

    /// [dateElement] (_date): Extensions for date;
    @JsonKey(name: '_date') Element? dateElement,
  }) = _SubstanceDefinitionOfficial;

  @override
  String get fhirType => 'SubstanceDefinitionOfficial';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubstanceDefinitionOfficial.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinitionOfficial.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinitionOfficial.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinitionOfficial cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionOfficial.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinitionOfficialFromJson(json);

  /// Acts like a constructor, returns a [SubstanceDefinitionOfficial], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubstanceDefinitionOfficial.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinitionOfficialFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [SubstanceDefinitionRelationship] The detailed description of a substance, typically at a level beyond what is used for prescribing.
@freezed
class SubstanceDefinitionRelationship
    with BackboneType, _$SubstanceDefinitionRelationship {
  /// [SubstanceDefinitionRelationship] The detailed description of a substance, typically at a level beyond what is used for prescribing.
  const SubstanceDefinitionRelationship._();

  /// [SubstanceDefinitionRelationship] The detailed description of a substance, typically at a level beyond what is used for prescribing.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [substanceDefinitionReference] A pointer to another substance, as a resource or just a representational code.;
  ///
  /// [substanceDefinitionCodeableConcept] A pointer to another substance, as a resource or just a representational code.;
  ///
  /// [type] For example "salt to parent", "active moiety", "starting material", "polymorph", "impurity of".;
  ///
  /// [isDefining] For example where an enzyme strongly bonds with a particular substance, this is a defining relationship for that enzyme, out of several possible substance relationships.;
  ///
  /// [isDefiningElement] (_isDefining): Extensions for isDefining;
  ///
  /// [amountQuantity] A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.;
  ///
  /// [amountRatio] A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.;
  ///
  /// [amountString] A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.;
  ///
  /// [amountStringElement] (_amountString): Extensions for amountString;
  ///
  /// [ratioHighLimitAmount] For use when the numeric has an uncertain range.;
  ///
  /// [comparator] An operator for the amount, for example "average", "approximately", "less than".;
  ///
  /// [source] Supporting literature.;
  const factory SubstanceDefinitionRelationship({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [substanceDefinitionReference] A pointer to another substance, as a resource or just a representational code.;
    Reference? substanceDefinitionReference,

    /// [substanceDefinitionCodeableConcept] A pointer to another substance, as a resource or just a representational code.;
    CodeableConcept? substanceDefinitionCodeableConcept,

    /// [type] For example "salt to parent", "active moiety", "starting material", "polymorph", "impurity of".;
    required CodeableConcept type,

    /// [isDefining] For example where an enzyme strongly bonds with a particular substance, this is a defining relationship for that enzyme, out of several possible substance relationships.;
    FhirBoolean? isDefining,

    /// [isDefiningElement] (_isDefining): Extensions for isDefining;
    @JsonKey(name: '_isDefining') Element? isDefiningElement,

    /// [amountQuantity] A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.;
    Quantity? amountQuantity,

    /// [amountRatio] A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.;
    Ratio? amountRatio,

    /// [amountString] A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.;
    FhirMarkdown? amountString,

    /// [amountStringElement] (_amountString): Extensions for amountString;
    @JsonKey(name: '_amountString') Element? amountStringElement,

    /// [ratioHighLimitAmount] For use when the numeric has an uncertain range.;
    Ratio? ratioHighLimitAmount,

    /// [comparator] An operator for the amount, for example "average", "approximately", "less than".;
    CodeableConcept? comparator,

    /// [source] Supporting literature.;
    List<Reference>? source,
  }) = _SubstanceDefinitionRelationship;

  @override
  String get fhirType => 'SubstanceDefinitionRelationship';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubstanceDefinitionRelationship.fromYaml(dynamic yaml) => yaml
          is String
      ? SubstanceDefinitionRelationship.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinitionRelationship.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinitionRelationship cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionRelationship.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinitionRelationshipFromJson(json);

  /// Acts like a constructor, returns a [SubstanceDefinitionRelationship], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubstanceDefinitionRelationship.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinitionRelationshipFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

@freezed
class SubstanceDefinitionSourceMaterial
    with BackboneType, _$SubstanceDefinitionSourceMaterial {
  const SubstanceDefinitionSourceMaterial._();

  /// [SubstanceDefinitionSourceMaterial] The detailed description of a substance, typically at a level beyond what is used for prescribing.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [type] A classification that provides the origin of the raw material. Example: cat hair would be an Animal source type.;
  ///
  /// [genus] The genus of an organism, typically referring to the Latin epithet of the genus element of the plant/animal scientific name.;
  ///
  /// [species] The species of an organism, typically referring to the Latin epithet of the species of the plant/animal.;
  ///
  /// [part_] An anatomical origin of the source material within an organism.;
  ///
  /// [countryOfOrigin] The country or countries where the material is harvested.;
  const factory SubstanceDefinitionSourceMaterial({
    /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
    String? id,

    /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
    List<FhirExtension>? modifierExtension,

    /// [type] A classification that provides the origin of the raw material. Example: cat hair would be an Animal source type.;
    CodeableConcept? type,

    /// [genus] The genus of an organism, typically referring to the Latin epithet of the genus element of the plant/animal scientific name.;
    CodeableConcept? genus,

    /// [species] The species of an organism, typically referring to the Latin epithet of the species of the plant/animal.;
    CodeableConcept? species,

    /// [part_] An anatomical origin of the source material within an organism.;
    @JsonKey(name: 'part') CodeableConcept? part_,

    /// [countryOfOrigin] The country or countries where the material is harvested.;
    List<CodeableConcept>? countryOfOrigin,
  }) = _SubstanceDefinitionSourceMaterial;

  @override
  String get fhirType => 'SubstanceDefinitionSourceMaterial';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubstanceDefinitionSourceMaterial.fromYaml(dynamic yaml) => yaml
          is String
      ? SubstanceDefinitionSourceMaterial.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinitionSourceMaterial.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinitionSourceMaterial cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubstanceDefinitionSourceMaterial.fromJson(
          Map<String, dynamic> json) =>
      _$SubstanceDefinitionSourceMaterialFromJson(json);

  /// Acts like a constructor, returns a [SubstanceDefinitionSourceMaterial], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubstanceDefinitionSourceMaterial.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinitionSourceMaterialFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}
