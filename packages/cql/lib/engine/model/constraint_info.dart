import 'package:json_annotation/json_annotation.dart';

import '../../../../../cql.dart';

class ConstraintInfo {
  // Optional attribute - Description of the constraint
  final String? description;

  // List of expressions for the constraint in different languages
  final List<ExpressionInfo> expressions;

  // Optional attribute - Message returned on constraint violation (templatable)
  final String? message;

  // Required attribute - Unique name of the constraint
  final String name;

  // Required attribute - Severity of the constraint (Info, Warning, Error)
  final ConstraintSeverity severity;

  ConstraintInfo({
    required this.name,
    required this.severity,
    List<ExpressionInfo>? expressions,
    this.description,
    this.message,
  }) : expressions = expressions ?? [];

  factory ConstraintInfo.fromJson(Map<String, dynamic> json) {
    return ConstraintInfo(
      name: json['name'],
      severity: json['severity'] == 'info'
          ? ConstraintSeverity.info
          : json['severity'] == 'warning'
              ? ConstraintSeverity.warning
              : ConstraintSeverity.error,
      expressions: json['expressions'] == null
          ? []
          : (json['expressions'] as List)
              .map((e) => ExpressionInfo.fromJson(e))
              .toList(),
      description: json['description'],
      message: json['message'],
    );
  }

  @override
  String toString() {
    return 'ConstraintInfo{name: $name, severity: $severity, expressions: $expressions, description: $description, message: $message}';
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['severity'] = severity.toString().split('.').last;
    data['expressions'] = expressions.map((e) => e.toJson()).toList();
    if (description != null) {
      data['description'] = description;
    }
    if (message != null) {
      data['message'] = message;
    }
    return data;
  }

  void addExpression(ExpressionInfo expression) {
    expressions.add(expression);
  }
}

enum ConstraintSeverity {
  @JsonValue('info')
  info,
  @JsonValue('warning')
  warning,
  @JsonValue('error')
  error,
}
