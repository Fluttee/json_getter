// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'operator_enum.dart';

class OperatorMapper extends EnumMapper<Operator> {
  OperatorMapper._();

  static OperatorMapper? _instance;
  static OperatorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OperatorMapper._());
    }
    return _instance!;
  }

  static Operator fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Operator decode(dynamic value) {
    switch (value) {
      case r'equal':
        return Operator.equal;
      case r'notEqual':
        return Operator.notEqual;
      case r'contains':
        return Operator.contains;
      case r'notContains':
        return Operator.notContains;
      case r'startsWith':
        return Operator.startsWith;
      case r'notStartsWith':
        return Operator.notStartsWith;
      case r'endsWith':
        return Operator.endsWith;
      case r'notEndsWith':
        return Operator.notEndsWith;
      case r'isEmpty':
        return Operator.isEmpty;
      case r'isNotEmpty':
        return Operator.isNotEmpty;
      case r'greaterThan':
        return Operator.greaterThan;
      case r'greaterThanOrEqual':
        return Operator.greaterThanOrEqual;
      case r'lessThan':
        return Operator.lessThan;
      case r'lessThanOrEqual':
        return Operator.lessThanOrEqual;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Operator self) {
    switch (self) {
      case Operator.equal:
        return r'equal';
      case Operator.notEqual:
        return r'notEqual';
      case Operator.contains:
        return r'contains';
      case Operator.notContains:
        return r'notContains';
      case Operator.startsWith:
        return r'startsWith';
      case Operator.notStartsWith:
        return r'notStartsWith';
      case Operator.endsWith:
        return r'endsWith';
      case Operator.notEndsWith:
        return r'notEndsWith';
      case Operator.isEmpty:
        return r'isEmpty';
      case Operator.isNotEmpty:
        return r'isNotEmpty';
      case Operator.greaterThan:
        return r'greaterThan';
      case Operator.greaterThanOrEqual:
        return r'greaterThanOrEqual';
      case Operator.lessThan:
        return r'lessThan';
      case Operator.lessThanOrEqual:
        return r'lessThanOrEqual';
    }
  }
}

extension OperatorMapperExtension on Operator {
  String toValue() {
    OperatorMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Operator>(this) as String;
  }
}

