part of 'device_definition.dart';

/// A name of the manufacturer.
sealed class ManufacturerXDeviceDefinitionDeviceDefinition extends DataType {}

/// A name of the manufacturer.
class StringManufacturerDeviceDefinitionDeviceDefinition extends FhirString
    implements ManufacturerXDeviceDefinitionDeviceDefinition {
  /// Constructor for [StringManufacturerDeviceDefinitionDeviceDefinition]
  StringManufacturerDeviceDefinitionDeviceDefinition(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringManufacturerDeviceDefinitionDeviceDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json)
          as StringManufacturerDeviceDefinitionDeviceDefinition;
}

/// A name of the manufacturer.
class ReferenceManufacturerDeviceDefinitionDeviceDefinition extends Reference
    implements ManufacturerXDeviceDefinitionDeviceDefinition {
  /// Factory constructor for super class
  factory ReferenceManufacturerDeviceDefinitionDeviceDefinition.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json)
          as ReferenceManufacturerDeviceDefinitionDeviceDefinition;
}
