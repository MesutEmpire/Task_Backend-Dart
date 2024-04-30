// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i3;
import 'prisma.dart' as _i2;

enum QueryMode implements _i1.PrismaEnum {
  $default._('default'),
  insensitive._('insensitive');

  const QueryMode._(this.name);

  @override
  final String name;
}

class NestedStringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class StringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
      };
}

class NestedStringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.isSet,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>>? not;

  final bool? isSet;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        'isSet': isSet,
      };
}

class StringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.isSet,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>>? not;

  final bool? isSet;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
        'isSet': isSet,
      };
}

class NestedEnumRoleFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedEnumRoleFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
  });

  final _i1.PrismaUnion<_i3.Role, _i1.Reference<_i3.Role>>? equals;

  final _i1.PrismaUnion<Iterable<_i3.Role>, _i1.Reference<Iterable<_i3.Role>>>?
      $in;

  final _i1.PrismaUnion<Iterable<_i3.Role>, _i1.Reference<Iterable<_i3.Role>>>?
      notIn;

  final _i1.PrismaUnion<_i3.Role, _i2.NestedEnumRoleFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
      };
}

class EnumRoleFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumRoleFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
  });

  final _i1.PrismaUnion<_i3.Role, _i1.Reference<_i3.Role>>? equals;

  final _i1.PrismaUnion<Iterable<_i3.Role>, _i1.Reference<Iterable<_i3.Role>>>?
      $in;

  final _i1.PrismaUnion<Iterable<_i3.Role>, _i1.Reference<Iterable<_i3.Role>>>?
      notIn;

  final _i1.PrismaUnion<_i3.Role, _i2.NestedEnumRoleFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
      };
}

class UserWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.email,
    this.name,
    this.role,
  });

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? AND;

  final Iterable<_i2.UserWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<_i2.EnumRoleFilter, _i3.Role>? role;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'email': email,
        'name': name,
        'role': role,
      };
}

class UserWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserWhereUniqueInput({
    this.id,
    this.email,
    this.AND,
    this.OR,
    this.NOT,
    this.name,
    this.role,
  });

  final String? id;

  final String? email;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? AND;

  final Iterable<_i2.UserWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<_i2.EnumRoleFilter, _i3.Role>? role;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'name': name,
        'role': role,
      };
}

class UserSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserSelect({
    this.id,
    this.email,
    this.name,
    this.role,
  });

  final bool? id;

  final bool? email;

  final bool? name;

  final bool? role;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'role': role,
      };
}

enum SortOrder implements _i1.PrismaEnum {
  asc._('asc'),
  desc._('desc');

  const SortOrder._(this.name);

  @override
  final String name;
}

class UserOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserOrderByWithRelationInput({
    this.id,
    this.email,
    this.name,
    this.role,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? name;

  final _i2.SortOrder? role;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'role': role,
      };
}

enum UserScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'User'),
  email<String>('email', 'User'),
  name$<String>('name', 'User'),
  role<_i3.Role>('role', 'User');

  const UserScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class UserCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateInput({
    this.id,
    required this.email,
    this.name,
    this.role,
  });

  final String? id;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? name;

  final _i3.Role? role;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'role': role,
      };
}

class UserUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateInput({
    this.id,
    required this.email,
    this.name,
    this.role,
  });

  final String? id;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? name;

  final _i3.Role? role;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'role': role,
      };
}

class AffectedRowsOutput {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map json) =>
      AffectedRowsOutput(count: json['count']);

  final int? count;

  Map<String, dynamic> toJson() => {'count': count};
}

class UserCreateManyInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateManyInput({
    this.id,
    required this.email,
    this.name,
    this.role,
  });

  final String? id;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? name;

  final _i3.Role? role;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'role': role,
      };
}

class StringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFieldUpdateOperationsInput({this.set});

  final String? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class NullableStringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableStringFieldUpdateOperationsInput({
    this.set,
    this.unset,
  });

  final _i1.PrismaUnion<String, _i1.PrismaNull>? set;

  final bool? unset;

  @override
  Map<String, dynamic> toJson() => {
        'set': set,
        'unset': unset,
      };
}

class EnumRoleFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumRoleFieldUpdateOperationsInput({this.set});

  final _i3.Role? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class UserUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateInput({
    this.email,
    this.name,
    this.role,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<_i3.Role, _i2.EnumRoleFieldUpdateOperationsInput>? role;

  @override
  Map<String, dynamic> toJson() => {
        'email': email,
        'name': name,
        'role': role,
      };
}

class UserUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateInput({
    this.email,
    this.name,
    this.role,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<_i3.Role, _i2.EnumRoleFieldUpdateOperationsInput>? role;

  @override
  Map<String, dynamic> toJson() => {
        'email': email,
        'name': name,
        'role': role,
      };
}

class UserUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateManyMutationInput({
    this.email,
    this.name,
    this.role,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<_i3.Role, _i2.EnumRoleFieldUpdateOperationsInput>? role;

  @override
  Map<String, dynamic> toJson() => {
        'email': email,
        'name': name,
        'role': role,
      };
}

class UserUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateManyInput({
    this.email,
    this.name,
    this.role,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<_i3.Role, _i2.EnumRoleFieldUpdateOperationsInput>? role;

  @override
  Map<String, dynamic> toJson() => {
        'email': email,
        'name': name,
        'role': role,
      };
}

class UserCountAggregateOutputType {
  const UserCountAggregateOutputType({
    this.id,
    this.email,
    this.name,
    this.role,
    this.$all,
  });

  factory UserCountAggregateOutputType.fromJson(Map json) =>
      UserCountAggregateOutputType(
        id: json['id'],
        email: json['email'],
        name: json['name'],
        role: json['role'],
        $all: json['_all'],
      );

  final int? id;

  final int? email;

  final int? name;

  final int? role;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'role': role,
        '_all': $all,
      };
}

class UserMinAggregateOutputType {
  const UserMinAggregateOutputType({
    this.id,
    this.email,
    this.name,
    this.role,
  });

  factory UserMinAggregateOutputType.fromJson(Map json) =>
      UserMinAggregateOutputType(
        id: json['id'],
        email: json['email'],
        name: json['name'],
        role: json['role'] != null
            ? _i3.Role.values.firstWhere((e) => e.name == json['role'])
            : null,
      );

  final String? id;

  final String? email;

  final String? name;

  final _i3.Role? role;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'role': role,
      };
}

class UserMaxAggregateOutputType {
  const UserMaxAggregateOutputType({
    this.id,
    this.email,
    this.name,
    this.role,
  });

  factory UserMaxAggregateOutputType.fromJson(Map json) =>
      UserMaxAggregateOutputType(
        id: json['id'],
        email: json['email'],
        name: json['name'],
        role: json['role'] != null
            ? _i3.Role.values.firstWhere((e) => e.name == json['role'])
            : null,
      );

  final String? id;

  final String? email;

  final String? name;

  final _i3.Role? role;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'role': role,
      };
}

class UserGroupByOutputType {
  const UserGroupByOutputType({
    this.id,
    this.email,
    this.name,
    this.role,
    this.$count,
    this.$min,
    this.$max,
  });

  factory UserGroupByOutputType.fromJson(Map json) => UserGroupByOutputType(
        id: json['id'],
        email: json['email'],
        name: json['name'],
        role: json['role'] != null
            ? _i3.Role.values.firstWhere((e) => e.name == json['role'])
            : null,
        $count: json['_count'] is Map
            ? _i2.UserCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UserMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UserMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? email;

  final String? name;

  final _i3.Role? role;

  final _i2.UserCountAggregateOutputType? $count;

  final _i2.UserMinAggregateOutputType? $min;

  final _i2.UserMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'role': role,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class UserCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountOrderByAggregateInput({
    this.id,
    this.email,
    this.name,
    this.role,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? name;

  final _i2.SortOrder? role;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'role': role,
      };
}

class UserMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMaxOrderByAggregateInput({
    this.id,
    this.email,
    this.name,
    this.role,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? name;

  final _i2.SortOrder? role;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'role': role,
      };
}

class UserMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMinOrderByAggregateInput({
    this.id,
    this.email,
    this.name,
    this.role,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? name;

  final _i2.SortOrder? role;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'role': role,
      };
}

class UserOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserOrderByWithAggregationInput({
    this.id,
    this.email,
    this.name,
    this.role,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? name;

  final _i2.SortOrder? role;

  final _i2.UserCountOrderByAggregateInput? $count;

  final _i2.UserMaxOrderByAggregateInput? $max;

  final _i2.UserMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'role': role,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class NestedIntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedStringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedIntNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.isSet,
  });

  final _i1
      .PrismaUnion<int, _i1.PrismaUnion<_i1.Reference<int>, _i1.PrismaNull>>?
      equals;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int,
      _i1.PrismaUnion<_i2.NestedIntNullableFilter, _i1.PrismaNull>>? not;

  final bool? isSet;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        'isSet': isSet,
      };
}

class NestedStringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
    this.isSet,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NestedStringNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  final bool? isSet;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
        'isSet': isSet,
      };
}

class StringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
    this.isSet,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NestedStringNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  final bool? isSet;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
        'isSet': isSet,
      };
}

class NestedEnumRoleWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedEnumRoleWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<_i3.Role, _i1.Reference<_i3.Role>>? equals;

  final _i1.PrismaUnion<Iterable<_i3.Role>, _i1.Reference<Iterable<_i3.Role>>>?
      $in;

  final _i1.PrismaUnion<Iterable<_i3.Role>, _i1.Reference<Iterable<_i3.Role>>>?
      notIn;

  final _i1.PrismaUnion<_i3.Role, _i2.NestedEnumRoleWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedEnumRoleFilter? $min;

  final _i2.NestedEnumRoleFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class EnumRoleWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const EnumRoleWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<_i3.Role, _i1.Reference<_i3.Role>>? equals;

  final _i1.PrismaUnion<Iterable<_i3.Role>, _i1.Reference<Iterable<_i3.Role>>>?
      $in;

  final _i1.PrismaUnion<Iterable<_i3.Role>, _i1.Reference<Iterable<_i3.Role>>>?
      notIn;

  final _i1.PrismaUnion<_i3.Role, _i2.NestedEnumRoleWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedEnumRoleFilter? $min;

  final _i2.NestedEnumRoleFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class UserScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.email,
    this.name,
    this.role,
  });

  final _i1.PrismaUnion<_i2.UserScalarWhereWithAggregatesInput,
      Iterable<_i2.UserScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.UserScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.UserScalarWhereWithAggregatesInput,
      Iterable<_i2.UserScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<_i2.EnumRoleWithAggregatesFilter, _i3.Role>? role;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'email': email,
        'name': name,
        'role': role,
      };
}

class UserCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountAggregateOutputTypeSelect({
    this.id,
    this.email,
    this.name,
    this.role,
    this.$all,
  });

  final bool? id;

  final bool? email;

  final bool? name;

  final bool? role;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'role': role,
        '_all': $all,
      };
}

class UserGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeCountArgs({this.select});

  final _i2.UserCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMinAggregateOutputTypeSelect({
    this.id,
    this.email,
    this.name,
    this.role,
  });

  final bool? id;

  final bool? email;

  final bool? name;

  final bool? role;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'role': role,
      };
}

class UserGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeMinArgs({this.select});

  final _i2.UserMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMaxAggregateOutputTypeSelect({
    this.id,
    this.email,
    this.name,
    this.role,
  });

  final bool? id;

  final bool? email;

  final bool? name;

  final bool? role;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'role': role,
      };
}

class UserGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeMaxArgs({this.select});

  final _i2.UserMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeSelect({
    this.id,
    this.email,
    this.name,
    this.role,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? email;

  final bool? name;

  final bool? role;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'role': role,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateUser {
  const AggregateUser({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateUser.fromJson(Map json) => AggregateUser(
        $count: json['_count'] is Map
            ? _i2.UserCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UserMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UserMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.UserCountAggregateOutputType? $count;

  final _i2.UserMinAggregateOutputType? $min;

  final _i2.UserMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateUserCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserCountArgs({this.select});

  final _i2.UserCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserMinArgs({this.select});

  final _i2.UserMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserMaxArgs({this.select});

  final _i2.UserMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateUserCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateUserMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateUserMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class TaskWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
  });

  final _i1.PrismaUnion<_i2.TaskWhereInput, Iterable<_i2.TaskWhereInput>>? AND;

  final Iterable<_i2.TaskWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TaskWhereInput, Iterable<_i2.TaskWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? name;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'name': name,
      };
}

class TaskWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskWhereUniqueInput({
    this.id,
    this.name,
    this.AND,
    this.OR,
    this.NOT,
  });

  final String? id;

  final String? name;

  final _i1.PrismaUnion<_i2.TaskWhereInput, Iterable<_i2.TaskWhereInput>>? AND;

  final Iterable<_i2.TaskWhereInput>? OR;

  final _i1.PrismaUnion<_i2.TaskWhereInput, Iterable<_i2.TaskWhereInput>>? NOT;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
      };
}

class TaskSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskSelect({
    this.id,
    this.name,
  });

  final bool? id;

  final bool? name;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}

class TaskOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskOrderByWithRelationInput({
    this.id,
    this.name,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}

enum TaskScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Task'),
  name$<String>('name', 'Task');

  const TaskScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class TaskCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskCreateInput({
    this.id,
    required this.name,
  });

  final String? id;

  final String name;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}

class TaskUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskUncheckedCreateInput({
    this.id,
    required this.name,
  });

  final String? id;

  final String name;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}

class TaskCreateManyInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskCreateManyInput({
    this.id,
    required this.name,
  });

  final String? id;

  final String name;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}

class TaskUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskUpdateInput({this.name});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  @override
  Map<String, dynamic> toJson() => {'name': name};
}

class TaskUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskUncheckedUpdateInput({this.name});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  @override
  Map<String, dynamic> toJson() => {'name': name};
}

class TaskUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskUpdateManyMutationInput({this.name});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  @override
  Map<String, dynamic> toJson() => {'name': name};
}

class TaskUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskUncheckedUpdateManyInput({this.name});

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? name;

  @override
  Map<String, dynamic> toJson() => {'name': name};
}

class TaskCountAggregateOutputType {
  const TaskCountAggregateOutputType({
    this.id,
    this.name,
    this.$all,
  });

  factory TaskCountAggregateOutputType.fromJson(Map json) =>
      TaskCountAggregateOutputType(
        id: json['id'],
        name: json['name'],
        $all: json['_all'],
      );

  final int? id;

  final int? name;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        '_all': $all,
      };
}

class TaskMinAggregateOutputType {
  const TaskMinAggregateOutputType({
    this.id,
    this.name,
  });

  factory TaskMinAggregateOutputType.fromJson(Map json) =>
      TaskMinAggregateOutputType(
        id: json['id'],
        name: json['name'],
      );

  final String? id;

  final String? name;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}

class TaskMaxAggregateOutputType {
  const TaskMaxAggregateOutputType({
    this.id,
    this.name,
  });

  factory TaskMaxAggregateOutputType.fromJson(Map json) =>
      TaskMaxAggregateOutputType(
        id: json['id'],
        name: json['name'],
      );

  final String? id;

  final String? name;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}

class TaskGroupByOutputType {
  const TaskGroupByOutputType({
    this.id,
    this.name,
    this.$count,
    this.$min,
    this.$max,
  });

  factory TaskGroupByOutputType.fromJson(Map json) => TaskGroupByOutputType(
        id: json['id'],
        name: json['name'],
        $count: json['_count'] is Map
            ? _i2.TaskCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.TaskMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.TaskMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? name;

  final _i2.TaskCountAggregateOutputType? $count;

  final _i2.TaskMinAggregateOutputType? $min;

  final _i2.TaskMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class TaskCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskCountOrderByAggregateInput({
    this.id,
    this.name,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}

class TaskMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskMaxOrderByAggregateInput({
    this.id,
    this.name,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}

class TaskMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskMinOrderByAggregateInput({
    this.id,
    this.name,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}

class TaskOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskOrderByWithAggregationInput({
    this.id,
    this.name,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? name;

  final _i2.TaskCountOrderByAggregateInput? $count;

  final _i2.TaskMaxOrderByAggregateInput? $max;

  final _i2.TaskMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class TaskScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
  });

  final _i1.PrismaUnion<_i2.TaskScalarWhereWithAggregatesInput,
      Iterable<_i2.TaskScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.TaskScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.TaskScalarWhereWithAggregatesInput,
      Iterable<_i2.TaskScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? name;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'name': name,
      };
}

class TaskCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskCountAggregateOutputTypeSelect({
    this.id,
    this.name,
    this.$all,
  });

  final bool? id;

  final bool? name;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        '_all': $all,
      };
}

class TaskGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskGroupByOutputTypeCountArgs({this.select});

  final _i2.TaskCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TaskMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskMinAggregateOutputTypeSelect({
    this.id,
    this.name,
  });

  final bool? id;

  final bool? name;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}

class TaskGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskGroupByOutputTypeMinArgs({this.select});

  final _i2.TaskMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TaskMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskMaxAggregateOutputTypeSelect({
    this.id,
    this.name,
  });

  final bool? id;

  final bool? name;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}

class TaskGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskGroupByOutputTypeMaxArgs({this.select});

  final _i2.TaskMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class TaskGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const TaskGroupByOutputTypeSelect({
    this.id,
    this.name,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? name;

  final _i1.PrismaUnion<bool, _i2.TaskGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.TaskGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.TaskGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateTask {
  const AggregateTask({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateTask.fromJson(Map json) => AggregateTask(
        $count: json['_count'] is Map
            ? _i2.TaskCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.TaskMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.TaskMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.TaskCountAggregateOutputType? $count;

  final _i2.TaskMinAggregateOutputType? $min;

  final _i2.TaskMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateTaskCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTaskCountArgs({this.select});

  final _i2.TaskCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTaskMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTaskMinArgs({this.select});

  final _i2.TaskMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTaskMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTaskMaxArgs({this.select});

  final _i2.TaskMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateTaskSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateTaskSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateTaskCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateTaskMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateTaskMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}
