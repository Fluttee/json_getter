# Phân tích dự án JsonGetter

## Tổng quan dự án

**JsonGetter** là một Flutter package được thiết kế để trích xuất dữ liệu từ JSON một cách linh hoạt và mạnh mẽ thông qua hệ thống filter có thể cấu hình. Dự án bao gồm hai thành phần chính:

1. **json_getter** - Package chính cung cấp API để trích xuất dữ liệu JSON
2. **json_getter_builder** - Ứng dụng Flutter web để tạo và test các query một cách trực quan

## Kiến trúc dự án

### Package json_getter (v0.0.2)
Package chính được tổ chức theo cấu trúc modular:

**Core Components:**
- `JsonGetter` - Class chính xử lý việc áp dụng filters
- `JsonTools` - Bộ công cụ thực hiện các thao tác trên JSON
- `TypeUtils` - Utilities để xử lý kiểu dữ liệu

**Models:**
- `Filter` - Định nghĩa một filter đơn lẻ
- `Filters` - Container chứa danh sách các filters

**Enums:**
- `SelectorType` - 10 loại selector khác nhau (getValueByKey, getAllKeys, getLength, v.v.)
- `Operator` - 14 toán tử so sánh (equal, contains, greaterThan, v.v.)
- `FilterBy` - Lọc theo key hoặc value
- `DataType` - Các kiểu dữ liệu được hỗ trợ

### Ứng dụng json_getter_builder
Ứng dụng Flutter web cung cấp giao diện trực quan để:
- Tạo và test các query JSON
- Preview kết quả real-time
- Export cấu hình filter

## Tính năng chính

### 1. Selector Types đa dạng
- **getValueByKey**: Lấy giá trị theo key
- **getAllKeys/getAllValues**: Lấy tất cả keys/values
- **getLength**: Đếm số phần tử
- **getValueAt/First/Last**: Truy cập phần tử theo vị trí
- **getValueFromWhere**: Lọc với điều kiện
- **getItemsFromWhere**: Lấy items thỏa mãn điều kiện
- **join**: Nối các phần tử list thành string

### 2. Hệ thống Operators phong phú
- So sánh: equal, notEqual, greaterThan, lessThan
- Chuỗi: contains, startsWith, endsWith
- Trạng thái: isEmpty, isNotEmpty
- Hỗ trợ đa kiểu dữ liệu: string, number, boolean, list, map

### 3. Filtering linh hoạt
- Filter theo key hoặc value
- Chain multiple filters
- Hỗ trợ nested JSON structures
- Type-safe operations

## Cách sử dụng

### Với JSON String:
```dart
const jsonString = '{"key1": "value1", "key2": "value2"}';
const filtersString = '{"filters":[{"selectorType":"getValueByKey","key":"key1"}]}';
final filters = Filters.fromJson(filtersString);
final result = JsonGetter.get(filters: filters, json: jsonString);
```

### Với JSON Map:
```dart
final filters = Filters(filters: [
  Filter(selectorType: SelectorType.getValueByKey, key: 'key1')
]);
final result = JsonGetter.get(filters: filters, json: jsonMap);
```

## Công nghệ sử dụng
- **Flutter SDK**: ^3.6.0
- **dart_mappable**: Serialization/deserialization
- **build_runner**: Code generation
- **json_explorer**: JSON preview trong builder app
- **provider**: State management
- **http**: Network requests

## Demo và Documentation
- **Live Demo**: [Json Getter Builder](https://chungxon.github.io/json_getter/)
- **Repository**: [GitHub](https://github.com/chungxon/json_getter)
- **License**: MIT

## Điểm mạnh của dự án
1. ✅ Hỗ trợ operators toàn diện
2. ✅ Kiến trúc filter-based linh hoạt
3. ✅ Thiết kế enum tốt với metadata
4. ✅ Cấu hình linting rules nghiêm ngặt
5. ✅ Tích hợp dart mappable cho serialization

## Kết luận
Dự án này cung cấp một giải pháp toàn diện cho việc trích xuất dữ liệu JSON trong Flutter, từ package core đến công cụ visual builder, phù hợp cho cả developer và end-user.