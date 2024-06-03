/// /// [DeviceMetric] Describes a measurement, calculation or setting
/// capability of a device.

@freezed
class DeviceMetric with _$DeviceMetric {
  const DeviceMetric._();

  const factory DeviceMetric({
/// /// [resourceType] This is a DeviceMetric resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// /// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// /// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// /// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// /// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') FhirElement? implicitRulesElement,
/// /// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// /// [_language] Extensions for language

    @JsonKey(name: '_language') FhirElement? languageElement,
/// /// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// /// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// /// [identifier] Instance identifiers assigned to a device, by the device
/// or gateway software, manufacturers, other organizations or owners. For
/// example, handle ID.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// /// [type] Describes the type of the metric. For example: Heart Rate, PEEP
/// Setting, etc.

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [unit] Describes the unit that an observed value determined for this
/// metric will have. For example: Percent, Seconds, etc.

    @JsonKey(name: 'unit') CodeableConcept? unit,
/// /// [device] Describes the link to the Device.  This is also known as a
/// channel device.

    @JsonKey(name: 'device') Reference? device,
/// /// [operationalStatus] Indicates current operational state of the device.
/// For example: On, Off, Standby, etc.

    @JsonKey(name: 'operationalStatus') FhirCode? operationalStatus,
/// /// [_operationalStatus] Extensions for operationalStatus

    @JsonKey(name: '_operationalStatus') FhirElement? operationalStatusElement,
/// /// [color] The preferred color associated with the metric (e.g., display
/// color). This is often used to aid clinicians to track and identify
/// parameter types by color. In practice, consider a Patient Monitor that has
/// ECG/HR and Pleth; the metrics are displayed in different characteristic
/// colors, such as HR in blue, BP in green, and PR and SpO2 in magenta.

    @JsonKey(name: 'color') FhirCode? color,
/// /// [_color] Extensions for color

    @JsonKey(name: '_color') FhirElement? colorElement,
/// /// [category] Indicates the category of the observation generation
/// process. A DeviceMetric can be for example a setting, measurement, or
/// calculation.

    @JsonKey(name: 'category') FhirCode? category,
/// /// [_category] Extensions for category

    @JsonKey(name: '_category') FhirElement? categoryElement,
/// /// [measurementFrequency] The frequency at which the metric is taken or
/// recorded. Devices measure metrics at a wide range of frequencies; for
/// example, an ECG might sample measurements in the millisecond range, while
/// an NIBP might trigger only once an hour. Less often, the
/// measurementFrequency may be based on a unit other than time, such as
/// distance (e.g. for a measuring wheel). The update period may be different
/// than the measurement frequency, if the device does not update the published
/// observed value with the same frequency as it was measured.

    @JsonKey(name: 'measurementFrequency') Quantity? measurementFrequency,
/// /// [calibration] Describes the calibrations that have been performed or
/// that are required to be performed.

    @JsonKey(name: 'calibration') List<List<DeviceMetric_Calibration>>? calibration,
  }) = _$DeviceMetric;

  @override
  String get fhirType => 'DeviceMetric';

  factory DeviceMetric.fromJson(Map<String, dynamic> json) =>
      _$DeviceMetricFromJson(json);

  factory DeviceMetric.fromYaml(dynamic yaml) => yaml is String
      ? DeviceMetric.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceMetric.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceMetric cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DeviceMetric.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceMetricFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
