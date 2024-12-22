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
    Map<String, Object> profile,
  ) async {
    final messages = <ValidationMessage>[];

    final elements = profile['elements'];
    if (elements is List<Map<String, Object>>) {
      messages.addAll(await _validateElements(resource, elements));
    }

    return messages;
  }

  Future<List<ValidationMessage>> _validateElements(
    Map<String, dynamic> resource,
    List<Map<String, Object>> elements,
  ) async {
    final messages = <ValidationMessage>[];

    for (final element in elements) {
      final fieldName = element['name'] as String?;
      final childElements = element['children'] as List<Map<String, dynamic>>?;

      // Validate the current field
      if (fieldName != null) {
        final fieldValue = resource[fieldName];

        // Handle nested elements recursively
        if (childElements != null && fieldValue is Map<String, Object>) {
          messages.addAll(await _validateElements(fieldValue, childElements));
        } else if (childElements != null && fieldValue is List) {
          for (final nestedResource in fieldValue) {
            if (nestedResource is Map<String, Object>) {
              messages.addAll(
                  await _validateElements(nestedResource, childElements),);
            }
          }
        } else {
          // Perform regular validation (e.g., type and terminology checks)
          messages.addAll(await _validateElement(resource, fieldName, element));
        }
      }
    }

    return messages;
  }

  Future<List<ValidationMessage>> _validateElement(
    Map<String, Object> resource,
    String fieldName,
    Map<String, Object> element,
  ) async {
    final messages = <ValidationMessage>[];

    // Type validation
    final expectedType = element['type'] as String?;
    if (expectedType != null && resource[fieldName] != null) {
      final fieldValue = resource[fieldName]!;
      if (!_validateFieldType(fieldValue, expectedType)) {
        messages.add(ValidationMessage(
          severity: Severity.error,
          message:
              'Field $fieldName has an invalid type. Expected $expectedType.',
          location: fieldName,
        ),);
      }
    }

    // Terminology validation
    final binding = element['binding'] as Map<String, Object>?;
    if (binding != null) {
      final valueSetUrl = binding['valueSet'] as String?;
      final code = resource[fieldName] as String?;
      final system =
          resource['system'] as String?; // Assuming system is provided

      if (valueSetUrl != null && code != null && system != null) {
        final message = await terminologyValidator.validateCodeAgainstValueSet(
          code,
          system,
          valueSetUrl,
        );

        if (message != null) {
          messages.add(message);
        }
      }
    }

    return messages;
  }

  /// Validate the type of a field value
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
        return false; // Unsupported types return false
    }
  }
}
