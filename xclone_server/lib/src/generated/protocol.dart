/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'example.dart' as _i3;
import 'post.dart' as _i4;
import 'post_audience_settings.dart' as _i5;
import 'post_reply_settings.dart' as _i6;
import 'post_type.dart' as _i7;
import 'user.dart' as _i8;
import 'package:xclone_server/src/generated/post.dart' as _i9;
export 'example.dart';
export 'post.dart';
export 'post_audience_settings.dart';
export 'post_reply_settings.dart';
export 'post_type.dart';
export 'user.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'posts',
      dartName: 'Post',
      schema: 'public',
      module: 'xclone',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'posts_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'caption',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'imageUrl',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'protocol:PostType',
        ),
        _i2.ColumnDefinition(
          name: 'audience',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'protocol:PostAudienceSettings',
        ),
        _i2.ColumnDefinition(
          name: 'reply',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'protocol:PostReplySettings',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'username',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'profileImageUrl',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'posts_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'users',
      dartName: 'User',
      schema: 'public',
      module: 'xclone',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'users_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'email',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'username',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'handle',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'bio',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'profileImageUrl',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'profileBannerUrl',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'followerCount',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'followingCount',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'users_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i3.Example) {
      return _i3.Example.fromJson(data, this) as T;
    }
    if (t == _i4.Post) {
      return _i4.Post.fromJson(data, this) as T;
    }
    if (t == _i5.PostAudienceSettings) {
      return _i5.PostAudienceSettings.fromJson(data) as T;
    }
    if (t == _i6.PostReplySettings) {
      return _i6.PostReplySettings.fromJson(data) as T;
    }
    if (t == _i7.PostType) {
      return _i7.PostType.fromJson(data) as T;
    }
    if (t == _i8.User) {
      return _i8.User.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i3.Example?>()) {
      return (data != null ? _i3.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.Post?>()) {
      return (data != null ? _i4.Post.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.PostAudienceSettings?>()) {
      return (data != null ? _i5.PostAudienceSettings.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i6.PostReplySettings?>()) {
      return (data != null ? _i6.PostReplySettings.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.PostType?>()) {
      return (data != null ? _i7.PostType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.User?>()) {
      return (data != null ? _i8.User.fromJson(data, this) : null) as T;
    }
    if (t == List<_i9.Post>) {
      return (data as List).map((e) => deserialize<_i9.Post>(e)).toList()
          as dynamic;
    }
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i3.Example) {
      return 'Example';
    }
    if (data is _i4.Post) {
      return 'Post';
    }
    if (data is _i5.PostAudienceSettings) {
      return 'PostAudienceSettings';
    }
    if (data is _i6.PostReplySettings) {
      return 'PostReplySettings';
    }
    if (data is _i7.PostType) {
      return 'PostType';
    }
    if (data is _i8.User) {
      return 'User';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Example') {
      return deserialize<_i3.Example>(data['data']);
    }
    if (data['className'] == 'Post') {
      return deserialize<_i4.Post>(data['data']);
    }
    if (data['className'] == 'PostAudienceSettings') {
      return deserialize<_i5.PostAudienceSettings>(data['data']);
    }
    if (data['className'] == 'PostReplySettings') {
      return deserialize<_i6.PostReplySettings>(data['data']);
    }
    if (data['className'] == 'PostType') {
      return deserialize<_i7.PostType>(data['data']);
    }
    if (data['className'] == 'User') {
      return deserialize<_i8.User>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i4.Post:
        return _i4.Post.t;
      case _i8.User:
        return _i8.User.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'xclone';
}
