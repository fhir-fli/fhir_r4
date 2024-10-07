import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class DeviceMetric extends DomainResource {
  DeviceMetric({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.type,
    this.unit,
    this.source,
    this.parent,
    this.operationalStatus,
    this.operationalStatusElement,
    this.color,
    this.colorElement,
    required this.category,
    this.categoryElement,
    this.measurementPeriod,
    this.calibration,
  }) : super(resourceType: R4ResourceType.DeviceMetric);

  final List<Identifier>? identifier;
  final CodeableConcept type;
  final CodeableConcept? unit;
  final Reference? source;
  final Reference? parent;
  final FhirCode? operationalStatus;
  final Element? operationalStatusElement;
  final FhirCode? color;
  final Element? colorElement;
  final FhirCode category;
  final Element? categoryElement;
  final Timing? measurementPeriod;
  final List<DeviceMetricCalibration>? calibration;
  @override
  DeviceMetric clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class DeviceMetricCalibration extends BackboneElement {
  DeviceMetricCalibration({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.typeElement,
    this.state,
    this.stateElement,
    this.time,
    this.timeElement,
  });

  final FhirCode? type;
  final Element? typeElement;
  final FhirCode? state;
  final Element? stateElement;
  final FhirInstant? time;
  final Element? timeElement;
  @override
  DeviceMetricCalibration clone() => throw UnimplementedError();
}
