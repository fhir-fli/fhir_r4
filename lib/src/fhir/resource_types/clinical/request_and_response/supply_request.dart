// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'supply_request.freezed.dart';
part 'supply_request.g.dart';

/// [SupplyRequest] A record of a request for a medication, substance or
@freezed
class SupplyRequest with _$SupplyRequest implements DomainResource {
  /// [SupplyRequest] A record of a request for a medication, substance or
  const SupplyRequest._();

  /// [SupplyRequest] A record of a request for a medication, substance or
  ///  device used in the healthcare setting.
  ///
  /// [resourceType] This is a SupplyRequest resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [identifier] Business identifiers assigned to this SupplyRequest by the
  /// author and/or other systems. These identifiers remain constant as the
  ///  resource is updated and propagates from server to server.
  ///
  /// [status] Status of the supply request.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [category] Category of supply, e.g.  central, non-stock, etc. This is
  ///  used to support work flows associated with the supply process.
  ///
  /// [priority] Indicates how quickly this SupplyRequest should be addressed
  ///  with respect to other requests.
  ///
  /// [priorityElement] Extensions for priority
  ///
  /// [itemCodeableConcept] The item that is requested to be supplied. This is
  /// either a link to a resource representing the details of the item or a code
  ///  that identifies the item from a known list.
  ///
  /// [itemReference] The item that is requested to be supplied. This is either
  /// a link to a resource representing the details of the item or a code that
  ///  identifies the item from a known list.
  ///
  /// [quantity] The amount that is being ordered of the indicated item.
  ///
  /// [parameter] Specific parameters for the ordered item.  For example, the
  ///  size of the indicated item.
  ///
  /// [occurrenceDateTime] When the request should be fulfilled.
  ///
  /// [occurrenceDateTimeElement] Extensions for occurrenceDateTime
  ///
  /// [occurrencePeriod] When the request should be fulfilled.
  ///
  /// [occurrenceTiming] When the request should be fulfilled.
  ///
  /// [authoredOn] When the request was made.
  ///
  /// [authoredOnElement] Extensions for authoredOn
  ///
  /// [requester] The device, practitioner, etc. who initiated the request.
  ///
  /// [supplier] Who is intended to fulfill the request.
  ///
  /// [reasonCode] The reason why the supply item was requested.
  ///
  /// [reasonReference] The reason why the supply item was requested.
  ///
  /// [deliverFrom] Where the supply is expected to come from.
  ///
  /// [deliverTo] Where the supply is destined to go.
  const factory SupplyRequest({
    @Default(R4ResourceType.SupplyRequest)
    @JsonKey(unknownEnumValue: R4ResourceType.SupplyRequest)

    /// [resourceType] This is a SupplyRequest resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the resource and that modifies the
    /// understanding of the element that contains it and/or the understanding of
    /// the containing element's descendants. Usually modifier elements provide
    /// negation or qualification. To make the use of extensions safe and
    /// manageable, there is a strict set of governance applied to the definition
    /// and use of extensions. Though any implementer is allowed to define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [identifier] Business identifiers assigned to this SupplyRequest by the
    /// author and/or other systems. These identifiers remain constant as the
    ///  resource is updated and propagates from server to server.
    List<Identifier>? identifier,

    /// [status] Status of the supply request.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [category] Category of supply, e.g.  central, non-stock, etc. This is
    ///  used to support work flows associated with the supply process.
    CodeableConcept? category,

    /// [priority] Indicates how quickly this SupplyRequest should be addressed
    ///  with respect to other requests.
    FhirCode? priority,

    /// [priorityElement] Extensions for priority
    @JsonKey(name: '_priority') PrimitiveElement? priorityElement,

    /// [itemCodeableConcept] The item that is requested to be supplied. This is
    /// either a link to a resource representing the details of the item or a code
    ///  that identifies the item from a known list.
    CodeableConcept? itemCodeableConcept,

    /// [itemReference] The item that is requested to be supplied. This is either
    /// a link to a resource representing the details of the item or a code that
    ///  identifies the item from a known list.
    Reference? itemReference,

    /// [quantity] The amount that is being ordered of the indicated item.
    required Quantity quantity,

    /// [parameter] Specific parameters for the ordered item.  For example, the
    ///  size of the indicated item.
    List<SupplyRequestParameter>? parameter,

    /// [occurrenceDateTime] When the request should be fulfilled.
    FhirDateTime? occurrenceDateTime,

    /// [occurrenceDateTimeElement] Extensions for occurrenceDateTime
    @JsonKey(name: '_occurrenceDateTime')
    PrimitiveElement? occurrenceDateTimeElement,

    /// [occurrencePeriod] When the request should be fulfilled.
    Period? occurrencePeriod,

    /// [occurrenceTiming] When the request should be fulfilled.
    Timing? occurrenceTiming,

    /// [authoredOn] When the request was made.
    FhirDateTime? authoredOn,

    /// [authoredOnElement] Extensions for authoredOn
    @JsonKey(name: '_authoredOn') PrimitiveElement? authoredOnElement,

    /// [requester] The device, practitioner, etc. who initiated the request.
    Reference? requester,

    /// [supplier] Who is intended to fulfill the request.
    List<Reference>? supplier,

    /// [reasonCode] The reason why the supply item was requested.
    List<CodeableConcept>? reasonCode,

    /// [reasonReference] The reason why the supply item was requested.
    List<Reference>? reasonReference,

    /// [deliverFrom] Where the supply is expected to come from.
    Reference? deliverFrom,

    /// [deliverTo] Where the supply is destined to go.
    Reference? deliverTo,
  }) = _SupplyRequest;

  @override
  String get fhirType => 'SupplyRequest';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SupplyRequest.fromYaml(dynamic yaml) => yaml is String
      ? SupplyRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SupplyRequest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SupplyRequest cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SupplyRequest.fromJson(Map<String, dynamic> json) =>
      _$SupplyRequestFromJson(json);

  /// Acts like a constructor, returns a [SupplyRequest], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SupplyRequest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SupplyRequestFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta}) =>
      copyWith(meta: updateFhirMetaVersion(meta));
}

/// [SupplyRequestParameter] A record of a request for a medication,
@freezed

/// [SupplyRequestParameter] A record of a request for a medication,
@freezed
class SupplyRequestParameter
    with _$SupplyRequestParameter
    implements BackboneElement {
  /// [SupplyRequestParameter] A record of a request for a medication,
  const SupplyRequestParameter._();

  /// [SupplyRequestParameter] A record of a request for a medication,
  ///  substance or device used in the healthcare setting.
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
  /// [code] A code or string that identifies the device detail being asserted.
  ///
  /// [valueCodeableConcept] The value of the device detail.
  ///
  /// [valueQuantity] The value of the device detail.
  ///
  /// [valueRange] The value of the device detail.
  ///
  /// [valueBoolean] The value of the device detail.
  ///
  /// [valueBooleanElement] Extensions for valueBoolean
  const factory SupplyRequestParameter({
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

    /// [code] A code or string that identifies the device detail being asserted.
    CodeableConcept? code,

    /// [valueCodeableConcept] The value of the device detail.
    CodeableConcept? valueCodeableConcept,

    /// [valueQuantity] The value of the device detail.
    Quantity? valueQuantity,

    /// [valueRange] The value of the device detail.
    Range? valueRange,

    /// [valueBoolean] The value of the device detail.
    FhirBoolean? valueBoolean,

    /// [valueBooleanElement] Extensions for valueBoolean
    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
  }) = _SupplyRequestParameter;

  @override
  String get fhirType => 'SupplyRequestParameter';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SupplyRequestParameter.fromYaml(dynamic yaml) => yaml is String
      ? SupplyRequestParameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SupplyRequestParameter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SupplyRequestParameter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SupplyRequestParameter.fromJson(Map<String, dynamic> json) =>
      _$SupplyRequestParameterFromJson(json);

  /// Acts like a constructor, returns a [SupplyRequestParameter], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SupplyRequestParameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SupplyRequestParameterFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
