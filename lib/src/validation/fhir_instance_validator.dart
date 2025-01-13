import 'package:fhir_r4/fhir_r4.dart';

/// Core Validator Class
class FhirInstanceValidator {
  /// Constructor
  FhirInstanceValidator(this.validationSupport)
      : terminologyValidator = TerminologyValidator(validationSupport);

  /// Validation Support
  final ValidationSupport validationSupport;

  /// Terminology Validator
  final TerminologyValidator terminologyValidator;

  /// Validate a FHIR resource against a list of profiles
  Future<List<ValidationMessage>> validate(
    Map<String, dynamic> resource,
    List<String> profiles,
  ) async {
    final messages = <ValidationMessage>[];

    // Validate against profiles
    for (final profileUrl in profiles) {
      final profile =
          await validationSupport.fetchStructureDefinition(profileUrl);
      if (profile != null) {
        final profileMessages =
            await _validateResourceWithProfile(resource, profile);
        messages.addAll(profileMessages);
      } else {
        messages.add(
          ValidationMessage(
            severity: Severity.error,
            message: 'Profile not found: $profileUrl',
          ),
        );
      }
    }

    return messages;
  }

  /// Validate a FHIR resource against a profile
  Future<List<ValidationMessage>> _validateResourceWithProfile(
    Map<String, dynamic> resource,
    Map<String, dynamic> profile,
  ) async {
    final messages = <ValidationMessage>[];

    final elements = profile['elements'];
    if (elements is List<Map<String, dynamic>>) {
      messages.addAll(await _validateElements(resource, elements));
    }

    return messages;
  }

  Future<List<ValidationMessage>> _validateElements(
    Map<String, dynamic> resource,
    List<Map<String, dynamic>> elements, [
    String? parentPath,
  ]) async {
    final messages = <ValidationMessage>[];

    for (final element in elements) {
      final fieldName = element['name'] as String?;
      final childElements = element['children'] as List<Map<String, dynamic>>?;
      final currentPath = parentPath != null && fieldName != null
          ? '$parentPath.$fieldName'
          : fieldName;

      if (fieldName != null) {
        final fieldValue = resource[fieldName];

        // Recursively validate child elements
        if (childElements != null && fieldValue is Map<String, dynamic>) {
          messages.addAll(
            await _validateElements(fieldValue, childElements, currentPath),
          );
        } else if (childElements != null && fieldValue is List) {
          for (var i = 0; i < fieldValue.length; i++) {
            final nestedResource = fieldValue[i];
            if (nestedResource is Map<String, dynamic>) {
              messages.addAll(
                await _validateElements(
                  nestedResource,
                  childElements,
                  '$currentPath[$i]',
                ),
              );
            }
          }
        } else {
          // Validate the current field
          messages.addAll(
            await _validateElement(
              resource,
              fieldName,
              element,
              currentPath,
            ),
          );
        }
      }
    }

    return messages;
  }

  Future<List<ValidationMessage>> _validateElement(
    Map<String, dynamic> resource,
    String fieldName,
    Map<String, dynamic> element,
    String? path,
  ) async {
    final messages = <ValidationMessage>[];

    // Check if the field is required
    final isRequired = element['required'] as bool? ?? false;
    if (isRequired && resource[fieldName] == null) {
      messages.add(
        ValidationMessage(
          severity: Severity.error,
          message: 'Missing required field: $fieldName.',
          path: path,
        ),
      );
    }

    // Validate field type
    final expectedType = element['type'] as String?;
    final fieldValue = resource[fieldName];
    if (expectedType != null && fieldValue != null && fieldValue is Object) {
      if (!_validateFieldType(fieldValue, expectedType)) {
        messages.add(
          ValidationMessage(
            severity: Severity.error,
            message:
                'Field "$fieldName" has invalid type. Expected $expectedType.',
            path: path,
          ),
        );
      }
    }

    return messages;
  }

  bool _validateFieldType(Object value, String expectedType) {
    switch (expectedType) {
      case 'string':
        return value is String;
      case 'boolean':
        return value is bool;
      case 'integer':
        return value is int;
      case 'array':
        return value is List;
      default:
        return false; // Unsupported types
    }
  }

  /// Validate a code against a value set
  Future<bool> validateCode(
    String code,
    String system,
    String valueSetUrl,
  ) async {
    final valueSet = await validationSupport.fetchValueSet(valueSetUrl);
    if (valueSet == null) return false;

    final codes = valueSet['codes'] as List<dynamic>?;
    return codes?.any((entry) {
          return entry is Map<String, dynamic> &&
              entry['code'] == code &&
              entry['system'] == system;
        }) ??
        false;
  }
}
