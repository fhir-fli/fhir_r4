/// The BindingStrength type describes possible strengths of a binding
/// specification, Required, Extensible, Preferred, and Example.
enum BindingStrength {
  required,
  extensible,
  preferred,
  example,
}

extension BindingStrengthJson on BindingStrength {
  String toJson() {
    switch (this) {
      case BindingStrength.required:
        return 'Required';
      case BindingStrength.extensible:
        return 'Extensible';
      case BindingStrength.preferred:
        return 'Preferred';
      case BindingStrength.example:
        return 'Example';
    }
  }
}

BindingStrength? bindingStrengthFromJson(String? json) {
  if (json == null) return null;

  switch (json) {
    case 'Required':
      return BindingStrength.required;
    case 'Extensible':
      return BindingStrength.extensible;
    case 'Preferred':
      return BindingStrength.preferred;
    case 'Example':
      return BindingStrength.example;
  }
  throw ArgumentError('Invalid BindingStrength value: $json');
}
