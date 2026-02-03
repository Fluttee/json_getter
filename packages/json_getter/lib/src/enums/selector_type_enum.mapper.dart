// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'selector_type_enum.dart';

class SelectorTypeMapper extends EnumMapper<SelectorType> {
  SelectorTypeMapper._();

  static SelectorTypeMapper? _instance;
  static SelectorTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SelectorTypeMapper._());
    }
    return _instance!;
  }

  static SelectorType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  SelectorType decode(dynamic value) {
    switch (value) {
      case r'getValueByKey':
        return SelectorType.getValueByKey;
      case r'getAllKeys':
        return SelectorType.getAllKeys;
      case r'getAllValues':
        return SelectorType.getAllValues;
      case r'getLength':
        return SelectorType.getLength;
      case r'getValueFromWhere':
        return SelectorType.getValueFromWhere;
      case r'getValueAt':
        return SelectorType.getValueAt;
      case r'getValueFirst':
        return SelectorType.getValueFirst;
      case r'getValueLast':
        return SelectorType.getValueLast;
      case r'join':
        return SelectorType.join;
      case r'getItemsFromWhere':
        return SelectorType.getItemsFromWhere;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(SelectorType self) {
    switch (self) {
      case SelectorType.getValueByKey:
        return r'getValueByKey';
      case SelectorType.getAllKeys:
        return r'getAllKeys';
      case SelectorType.getAllValues:
        return r'getAllValues';
      case SelectorType.getLength:
        return r'getLength';
      case SelectorType.getValueFromWhere:
        return r'getValueFromWhere';
      case SelectorType.getValueAt:
        return r'getValueAt';
      case SelectorType.getValueFirst:
        return r'getValueFirst';
      case SelectorType.getValueLast:
        return r'getValueLast';
      case SelectorType.join:
        return r'join';
      case SelectorType.getItemsFromWhere:
        return r'getItemsFromWhere';
    }
  }
}

extension SelectorTypeMapperExtension on SelectorType {
  String toValue() {
    SelectorTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<SelectorType>(this) as String;
  }
}

