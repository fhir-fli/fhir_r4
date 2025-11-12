// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes,
// ignore_for_file: constant_identifier_names

import 'dart:collection';
import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

/// ValueSetChecker
class ValueSetChecker {
  /// Create a new value set checker
  ValueSetChecker({
    required this.context,
    required this.options,
    this.valueSet,
    this.localContext,
  }) {
    if (localContext != null) {
      analyseValueSet();
    }
  }

  /// The value set to check against
  final ValueSet? valueSet;

  /// The worker context
  final WorkerContext context;

  /// The validation options
  final ValidationOptions options;

  /// The local context
  final ValidationContextCarrier? localContext;

  /// The local systems
  final List<CodeSystem> localSystems = [];

  /// The inner value set checkers
  final Map<String, ValueSetChecker> inner = HashMap();

  /// Analyse a component of a value set
  void analyseValueSet() {
    if (valueSet != null) {
      for (final include in valueSet!.compose?.include ?? <ValueSetInclude>[]) {
        analyseComponent(include);
      }
      for (final exclude in valueSet!.compose?.exclude ?? <ValueSetInclude>[]) {
        analyseComponent(exclude);
      }
    }
  }

  /// Analyse a component of a value set
  Future<ValidationResult> validateCode(CodeableConcept code) async {
    final errors = <String>[];
    final warnings = <String>[];

    if (!options.membershipOnly) {
      for (final coding in code.coding ?? <Coding>[]) {
        if (coding.system == null) {
          warnings.add('Coding has no system, cannot validate');
        }

        final cs = await resolveCodeSystem(coding.system?.primitiveValue);
        ValidationResult? res;

        if (cs?.content != CodeSystemContentMode.complete) {
          // Adjusted to call the new method
          res = await context.validateCodeWithCoding(
            options.withNoClient(),
            coding,
            null,
          );
        } else {
          if (cs == null) {
            return ValidationResult.error(
              message: 'Code system not found',
            );
          }
          res = validateCodeAgainstCodeSystem(coding, cs);
        }

        if (res.isOk != true) {
          errors.add(res.message ?? 'Unknown error');
        } else if (res.message != null) {
          warnings.add(res.message!);
        }
      }
    }

    if (valueSet != null) {
      final result = await _validateCodeInValueSet(code, warnings);
      if (result.errors.isNotEmpty) {
        errors.insertAll(0, result.errors);
      }
      if (result.warnings.isNotEmpty) {
        warnings.insertAll(0, result.warnings);
      }
    }

    if (errors.isNotEmpty) {
      return ValidationResult.error(message: errors.join(', '));
    } else if (warnings.isNotEmpty) {
      return ValidationResult(
        severity: IssueSeverity.warning,
        message: warnings.join(', '),
      );
    } else {
      return ValidationResult(severity: IssueSeverity.information);
    }
  }

  /// Analyse a component of a value set
  Future<CodeSystem?> resolveCodeSystem(String? system) async {
    if (system == null) return null;
    for (final cs in localSystems) {
      if (cs.url?.primitiveValue == system) {
        return cs;
      }
    }
    return context.fetchCodeSystem(system);
  }

  /// Analyse a component of a ValueSet
  void analyseComponent(ValueSetInclude component) {
    if (component.system?.extension_ != null) {
      final extensions = component.system?.extension_?.where(
            (ext) =>
                ext.url.valueString ==
                'http://hl7.org/fhir/StructureDefinition/valueSet-system',
          ) ??
          [];

      for (final ext in extensions) {
        final ref = (ext.valueX as FhirString?)?.valueString;
        if (ref != null) {
          if (ref.startsWith('#')) {
            // Handle contained resources
            final id = ref.substring(1);
            final containedResource = localContext?.resources
                .expand(
                  (proxy) =>
                      (proxy.resource as DomainResource?)?.contained ??
                      <DomainResource>[],
                )
                .firstWhereOrNull((r) => r.id?.valueString == id);

            if (containedResource is CodeSystem) {
              localSystems.add(containedResource);
            }
          } else {
            throw UnsupportedError(
              'External references are not supported yet: $ref',
            );
          }
        }
      }
    }
  }

  /// Analyse a component of a value set
  ValidationResult validateCodeAgainstCodeSystem(Coding coding, CodeSystem cs) {
    if (cs.content != CodeSystemContentMode.complete) {
      return ValidationResult(
        severity: IssueSeverity.warning,
        message: 'Code system is incomplete: ${cs.url}',
      );
    }

    final concept = findCodeInConceptList(
      cs.concept ?? <CodeSystemConcept>[],
      coding.code?.primitiveValue ?? '',
    );

    if (concept == null) {
      return ValidationResult.error(
        message: 'Code not found in code system: ${coding.code}',
      );
    }

    return ValidationResult.success(
      system: coding.system?.primitiveValue,
      definition: concept,
    )..display = coding.display?.valueString ?? concept.display?.valueString;
  }

  /// Analyse a component of a value set
  CodeSystemConcept? findCodeInConceptList(
    List<CodeSystemConcept> concepts,
    String code,
  ) {
    for (final concept in concepts) {
      if (concept.code.primitiveValue == code) {
        return concept;
      }
      final subConcept =
          findCodeInConceptList(concept.concept ?? <CodeSystemConcept>[], code);
      if (subConcept != null) {
        return subConcept;
      }
    }
    return null;
  }

  Future<CodeInValueSetResult> _validateCodeInValueSet(
    CodeableConcept code,
    List<String> warnings,
  ) async {
    final errors = <String>[];
    final matchedCodes = <bool?>[];

    for (final coding in code.coding ?? <Coding>[]) {
      final matched = await codeInValueSet(
        coding.system?.primitiveValue,
        coding.code?.primitiveValue,
        warnings,
      );
      matchedCodes.add(matched);
      if (matched == null) {
        errors.add('Unable to validate ${coding.code} in value set');
      } else if (!matched) {
        errors.add('Code ${coding.code} not in value set');
      }
    }

    return CodeInValueSetResult(errors: errors, warnings: warnings);
  }

  /// Check if a code is in the value set
  Future<bool?> codeInValueSet(
    String? system,
    String? code,
    List<String>? warnings,
  ) async {
    if (valueSet == null) return false;

    if (valueSet!.expansion != null) {
      return _checkExpansion(
        Coding(system: system?.toFhirUri, code: code?.toFhirCode),
      );
    }

    if (valueSet!.compose != null) {
      bool? result = false;
      for (final include in valueSet!.compose!.include) {
        final match = await _inComponent(include, system, code);
        if (match ?? false) return true;
        if (match == null) result = null;
      }

      for (final exclude in valueSet!.compose!.exclude ?? <ValueSetInclude>[]) {
        final match = await _inComponent(exclude, system, code);
        if (match ?? false) return false;
      }

      return result;
    }

    return false;
  }

  Future<bool?> _inComponent(
    ValueSetInclude component,
    String? system,
    String? code,
  ) async {
    if (system == null) return false;
    if (code == null) return null;
    if (component.system?.primitiveValue != system) return false;

    if (component.concept == null && component.system?.valueString != null) {
      final codeSystem = await resolveCodeSystem(component.system?.valueString);
      final codeSystemConcept = findCodeInConceptList(
        codeSystem?.concept ?? <CodeSystemConcept>[],
        code,
      );
      return codeSystemConcept != null;
    } else {
      for (final concept in component.concept ?? <ValueSetConcept>[]) {
        if (concept.code.primitiveValue == code) {
          return true;
        }
      }
    }

    return null;
  }

  bool _checkExpansion(Coding coding) {
    for (final item in valueSet!.expansion!.contains ?? <ValueSetContains>[]) {
      if (item.system?.valueString == coding.system?.valueString &&
          item.code?.valueString == coding.code?.valueString) {
        return true;
      }
      if ((item.contains?.isNotEmpty ?? false) &&
          _checkExpansionRecursive(
            coding,
            item.contains ?? <ValueSetContains>[],
          )) {
        return true;
      }
    }
    return false;
  }

  bool _checkExpansionRecursive(
    Coding coding,
    List<ValueSetContains> items,
  ) {
    for (final item in items) {
      if (item.system?.valueString == coding.system?.valueString &&
          item.code?.valueString == coding.code?.valueString) {
        return true;
      }
      if ((item.contains?.isNotEmpty ?? false) &&
          _checkExpansionRecursive(
            coding,
            item.contains ?? <ValueSetContains>[],
          )) {
        return true;
      }
    }
    return false;
  }
}

/// The result of checking a code against a value set
