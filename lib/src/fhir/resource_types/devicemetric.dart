import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class DeviceMetric extends DomainResource {
  final List<Identifier>? identifier;
  final CodeableConcept type;
  final CodeableConcept? unit;
  final Reference? source;
  final Reference? parent;
  final FhirCode? operationalStatus;
  final Element? operationalStatusElement;
  final FhirCode? color;
  final Element? colorElement;
  final FhirCode? category;
  final Element? categoryElement;
  final Timing? measurementPeriod;
  final List<DeviceMetricCalibration>? calibration;

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
    this.category,
    this.categoryElement,
    this.measurementPeriod,
    this.calibration,
  }): super(resourceType: R4ResourceType.DeviceMetric);

@override
DeviceMetric clone() => this;

}


@Data()
@JsonCodable()
class DeviceMetricCalibration {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? type;
  final Element? typeElement;
  final FhirCode? state;
  final Element? stateElement;
  final FhirInstant? time;
  final Element? timeElement;

  DeviceMetricCalibration({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.typeElement,
    this.state,
    this.stateElement,
    this.time,
    this.timeElement,
  });

}



