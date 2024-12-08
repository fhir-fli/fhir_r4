// ignore_for_file: public_member_api_docs, avoid_positional_boolean_parameters

import 'dart:collection';

import 'package:fhir_r4/fhir_r4.dart';

import 'java.dart';

class FhirPathUtilities {
  static bool isWhitespace(dynamic value) {
    if (value is String) {
      return isWhitespaceString(value);
    } else if (value is int) {
      return isWhitespaceInt(value);
    } else {
      return false;
    }
  }

  static bool isWhitespaceInt(int codeUnit) {
    return codeUnit == 0x20 ||
        codeUnit == 0x09 ||
        codeUnit == 0x0A ||
        codeUnit == 0x0D;
  }

  static bool isWhitespaceString(String ch) {
    return [
      '\u0009',
      '\n',
      '\u000B',
      '\u000C',
      '\r',
      '\u0020',
      '\u0085',
      '\u00A0',
      '\u1680',
      '\u2000',
      '\u2001',
      '\u2002',
      '\u2003',
      '\u2004',
      '\u2005',
      '\u2006',
      '\u2007',
      '\u2008',
      '\u2009',
      '\u200A',
      '\u2028',
      '\u2029',
      '\u202F',
      '\u205F',
      '\u3000',
    ].contains(ch);
  }

  static bool isInteger(String string) {
    if (string.trim().isEmpty) {
      return false;
    }

    final value = string.startsWith('-') ? string.substring(1) : string;
    if (value.isEmpty) {
      return false;
    }

    for (var i = 0; i < value.length; i++) {
      if (!RegExp(r'\d').hasMatch(value[i])) {
        return false;
      }
    }

    // Check bounds -2,147,483,648..2,147,483,647
    if (value.length > 10) {
      return false;
    }

    if (string.startsWith('-')) {
      if (value.length == 10 && value.compareTo('2147483648') > 0) {
        return false;
      }
    } else {
      if (value.length == 10 && value.compareTo('2147483647') > 0) {
        return false;
      }
    }

    return true;
  }

  static String? stripBOM(String? string) {
    return string?.replaceAll('\uFEFF', '');
  }

  static bool noString(String? v) {
    return v == null || v.isEmpty;
  }

  static String? capitalize(String? s) {
    if (s == null) return null;
    if (s.isEmpty) return s;
    if (s.length == 1) return s.toUpperCase();

    return s.substring(0, 1).toUpperCase() + s.substring(1);
  }

  static String? unescapeJson(String? json) {
    if (json == null) {
      return null;
    }
    final b = StringBuffer();
    var i = 0;
    while (i < json.length) {
      if (json[i] == r'\') {
        i++;
        final ch = json[i];
        switch (ch) {
          case '"':
            b.write('"');
          case r'\':
            b.write(r'\');
          case '/':
            b.write('/');
          case 'b':
            b.write('\b');
          case 'f':
            b.write('\f');
          case 'n':
            b.write('\n');
          case 'r':
            b.write('\r');
          case 't':
            b.write('\t');
          case 'u':
            final hex = json.substring(i + 1, i + 5);
            b.write(String.fromCharCode(int.parse(hex, radix: 16)));
            i += 4;
          default:
            throw Exception('Unknown JSON escape \\$ch');
        }
      } else {
        b.write(json[i]);
      }
      i++;
    }
    return b.toString();
  }

  static String escapeJson(
    String? value, [
    bool escapeUnicodeWhitespace = true,
  ]) {
    if (value == null) {
      return '';
    }

    final b = StringBuffer();
    for (final c in value.runes) {
      switch (c) {
        case 0x0D:
          b.write(r'\r');
        case 0x0A:
          b.write(r'\n');
        case 0x09:
          b.write(r'\t');
        case 0x22:
          b.write(r'\"');
        case 0x5C:
          b.write(r'\\');
        case 0x20:
          b.write(' ');
        default:
          if ((c == 0x0D || c == 0x0A) ||
              (isWhitespace(c) && escapeUnicodeWhitespace)) {
            b.write('\\u${c.toRadixString(16).padLeft(4, '0')}');
          } else if (c < 32) {
            b.write('\\u${c.toRadixString(16).padLeft(4, '0')}');
          } else {
            b.write(String.fromCharCode(c));
          }
      }
    }
    return b.toString();
  }

  static bool isAbsoluteUrl(String? ref) {
    if (ref == null || !ref.contains(':')) return false;

    final scheme = ref.substring(0, ref.indexOf(':'));
    final details = ref.substring(ref.indexOf(':') + 1);

    return (['http', 'https', 'urn', 'file'].contains(scheme) ||
            (isToken(scheme) && scheme == scheme.toLowerCase()) ||
            startsWithInList(ref, [
              'urn:iso:',
              'urn:iso-iec:',
              'urn:iso-cie:',
              'urn:iso-astm:',
              'urn:iso-ieee:',
              'urn:iec:',
            ])) &&
        details.isNotEmpty &&
        !details.contains(' '); // rfc5141
  }

  static bool startsWithInList(String? s, List<String?> list) {
    if (s == null) return false;
    for (final l in list) {
      if (l != null && s.startsWith(l)) return true;
    }
    return false;
  }

  static bool isToken(String? tail) {
    if (tail == null || tail.isEmpty) return false;
    if (!isAlphabetic(tail[0])) return false;

    for (var i = 1; i < tail.length; i++) {
      final char = tail[i];
      if (!(isAlphabetic(char) ||
          isDigit(char) ||
          char == '_' ||
          char == '[' ||
          char == ']')) {
        return false;
      }
    }
    return true;
  }

  static bool isAlphabetic(String c) {
    final code = c.codeUnitAt(0);
    return (code >= 65 && code <= 90) ||
        (code >= 97 && code <= 122); // A-Z, a-z
  }

  static bool isDigit(String c) {
    final code = c.codeUnitAt(0);
    return code >= 48 && code <= 57; // 0-9
  }

  static String? uncapitalize(String? s) {
    if (s == null) return null;
    if (s.isEmpty) return s;
    if (s.length == 1) return s.toLowerCase();

    return s.substring(0, 1).toLowerCase() + s.substring(1);
  }
}

class FunctionDetails {
  FunctionDetails(this.description, this.minParameters, this.maxParameters);

  String description;
  int minParameters;
  int maxParameters;

  String getDescription() {
    return description;
  }

  int getMinParameters() {
    return minParameters;
  }

  int getMaxParameters() {
    return maxParameters;
  }
}

class ProfileUtilities {
  ProfileUtilities(this.context) {
    if (context != null) {
      fpe = FHIRPathEngine(context!);
    }
  }

  IWorkerContext? context;
  FHIRPathEngine? fpe;
}

enum Equality {
  null_,
  true_,
  false_,
}

/// if the fhir path expressions are allowed to use constants beyond those
/// defined in the specification
/// the application can implement them by providing a constant resolver
abstract class IEvaluationContext {
  /// A constant reference - e.g. a reference to a name that must be resolved in
  /// context. The % will be removed from the constant name before this is
  /// invoked. Variables created with defineVariable will not be processed by
  /// resolveConstant (or resolveConstantType)
  ///
  /// This will also be called if the host invokes the FluentPath engine with a
  /// context of null
  ///
  /// @param appContext    - content passed into the fluent path engine
  /// @param name          - name reference to resolve
  /// @param beforeContext - whether this is being called before the name is
  ///                      resolved locally, or not
  /// @return the value of the reference (or null, if it's not valid, though can
  ///         throw an exception if desired)
  List<FhirBase> resolveConstant(
    FHIRPathEngine engine,
    Object appContext,
    String name,
    bool beforeContext,
    bool explicitConstant,
  );

  TypeDetails resolveConstantType(
    FHIRPathEngine engine,
    Object appContext,
    String name,
    bool explicitConstant,
  );

  /// when the .log() function is called
  ///
  /// @param argument
  /// @param focus
  /// @return
  bool log(String argument, List<FhirBase> focus);

  // extensibility for functions
  ///
  /// @param functionName
  /// @return null if the function is not known
  FunctionDetails resolveFunction(FHIRPathEngine engine, String functionName);

  /// Check the function parameters, and throw an error if they are incorrect,
  /// or return the type for the function
  ///
  /// @param functionName
  /// @param parameters
  /// @return
  TypeDetails checkFunction(
    FHIRPathEngine engine,
    Object appContext,
    String functionName,
    TypeDetails focus,
    List<TypeDetails> parameters,
  );

  /// @param appContext
  /// @param functionName
  /// @param parameters
  /// @return
  List<FhirBase> executeFunction(
    FHIRPathEngine engine,
    Object appContext,
    List<FhirBase> focus,
    String functionName,
    List<List<FhirBase>> parameters,
  );

  /// Implementation of resolve() function. Passed a string, return matching
  /// resource, if one is known - else null
  ///
  /// @appContext - passed in by the host to the FHIRPathEngine
  /// @param url the reference (Reference.reference or the value of the
  /// canonical
  /// @return
  /// @throws FHIRException
  FhirBase resolveReference(
    FHIRPathEngine engine,
    Object appContext,
    String url,
    FhirBase refContext,
  );

  bool conformsToProfile(
    FHIRPathEngine engine,
    Object appContext,
    FhirBase item,
    String url,
  );

  /// return the value set referenced by the url, which has been used in
  /// memberOf()
  ValueSet resolveValueSet(
    FHIRPathEngine engine,
    Object appContext,
    String url,
  );
}

class ExpressionNodeWithOffset {
  ExpressionNodeWithOffset(this.offset, this.node);

  int offset;
  ExpressionNode node;

  int getOffset() {
    return offset;
  }

  ExpressionNode getNode() {
    return node;
  }
}

class ExecutionContext {
  ExecutionContext(
    this.appInfo,
    this.focusResource,
    this.rootResource,
    this.context,
    this.thisItem,
  ) {
    index = 0;
  }

  final Object appInfo;
  final FhirBase focusResource;
  final FhirBase rootResource;
  final FhirBase context;
  final FhirBase thisItem;
  List<FhirBase>? total;
  int index = 0;
  Map<String, List<FhirBase>>? definedVariables;

  FhirBase getFocusResource() => focusResource;

  FhirBase getRootResource() => rootResource;

  FhirBase getThisItem() => thisItem;

  List<FhirBase>? getTotal() => total;

  void next() {
    index++;
  }

  FhirInteger getIndex() => FhirInteger(input: index);

  bool hasDefinedVariable(String name) {
    return definedVariables != null && definedVariables!.containsKey(name);
  }

  List<FhirBase> getDefinedVariable(String name) {
    return definedVariables == null
        ? <FhirBase>[]
        : definedVariables![name] ?? <FhirBase>[];
  }

  void setDefinedVariable(
    IWorkerContext worker,
    String name,
    List<FhirBase> value,
  ) {
    if (isSystemVariable(name)) {
      throw PathEngineException(
        worker.formatMessage('FHIRPATH_REDEFINE_VARIABLE', [name]),
      );
    }

    definedVariables ??= {};
    if (definedVariables!.containsKey(name)) {
      throw PathEngineException(
        worker.formatMessage('FHIRPATH_REDEFINE_VARIABLE', [
          name,
        ]),
      );
    }

    definedVariables![name] = value;
  }
}

class ExecutionTypeContext {
  ExecutionTypeContext(
    this.appInfo,
    this.resource,
    this.context,
    this.thisItem,
  );

  final Object appInfo;
  final String resource;
  final TypeDetails context;
  final TypeDetails thisItem;
  TypeDetails? total;
  Map<String, TypeDetails>? definedVariables;

  String getResource() => resource;

  TypeDetails getThisItem() => thisItem;

  bool hasDefinedVariable(String name) {
    return definedVariables != null && definedVariables!.containsKey(name);
  }

  TypeDetails? getDefinedVariable(String name) {
    return definedVariables?[name];
  }

  void setDefinedVariable(String name, TypeDetails value) {
    if (isSystemVariable(name)) {
      throw PathEngineException(
        'Redefine of variable $name: FHIRPATH_REDEFINE_VARIABLE',
      );
    }

    definedVariables ??= {};
    if (definedVariables!.containsKey(name)) {
      throw PathEngineException(
        'Redefine of variable $name: FHIRPATH_REDEFINE_VARIABLE',
      );
    }

    definedVariables![name] = value;
  }
}

bool isSystemVariable(String name) {
  if (['sct', 'loinc', 'ucum', 'resource', 'rootResource', 'context']
      .contains(name)) {
    return true;
  }
  return false;
}

class ElementDefinitionMatch {
  ElementDefinitionMatch(this.definition, this.fixedType);

  ElementDefinition? definition;
  String? fixedType;
}

extension ElementDefinitionExtension on ElementDefinition {
  bool hasContentReference() {
    return contentReference != null &&
        (contentReference!.value?.toString().isNotEmpty ?? false);
  }
}
