// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class MUser extends DataClass implements Insertable<MUser> {
  final String id;
  final String googleId;
  final String name;
  final String email;
  final String jwtToken;
  final String avatar;
  final bool isTopicSelected;
  final DateTime jwtIssueDate;
  final DateTime createdAt;
  final DateTime updatedAt;
  MUser(
      {@required this.id,
      @required this.googleId,
      @required this.name,
      @required this.email,
      @required this.jwtToken,
      @required this.avatar,
      @required this.isTopicSelected,
      @required this.jwtIssueDate,
      @required this.createdAt,
      @required this.updatedAt});
  factory MUser.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return MUser(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      googleId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}google_id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      email:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}email']),
      jwtToken: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}jwt_token']),
      avatar:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}avatar']),
      isTopicSelected: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_topic_selected']),
      jwtIssueDate: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}jwt_issue_date']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || googleId != null) {
      map['google_id'] = Variable<String>(googleId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || jwtToken != null) {
      map['jwt_token'] = Variable<String>(jwtToken);
    }
    if (!nullToAbsent || avatar != null) {
      map['avatar'] = Variable<String>(avatar);
    }
    if (!nullToAbsent || isTopicSelected != null) {
      map['is_topic_selected'] = Variable<bool>(isTopicSelected);
    }
    if (!nullToAbsent || jwtIssueDate != null) {
      map['jwt_issue_date'] = Variable<DateTime>(jwtIssueDate);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      googleId: googleId == null && nullToAbsent
          ? const Value.absent()
          : Value(googleId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      jwtToken: jwtToken == null && nullToAbsent
          ? const Value.absent()
          : Value(jwtToken),
      avatar:
          avatar == null && nullToAbsent ? const Value.absent() : Value(avatar),
      isTopicSelected: isTopicSelected == null && nullToAbsent
          ? const Value.absent()
          : Value(isTopicSelected),
      jwtIssueDate: jwtIssueDate == null && nullToAbsent
          ? const Value.absent()
          : Value(jwtIssueDate),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory MUser.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MUser(
      id: serializer.fromJson<String>(json['id']),
      googleId: serializer.fromJson<String>(json['googleId']),
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String>(json['email']),
      jwtToken: serializer.fromJson<String>(json['jwtToken']),
      avatar: serializer.fromJson<String>(json['avatar']),
      isTopicSelected: serializer.fromJson<bool>(json['isTopicSelected']),
      jwtIssueDate: serializer.fromJson<DateTime>(json['jwtIssueDate']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'googleId': serializer.toJson<String>(googleId),
      'name': serializer.toJson<String>(name),
      'email': serializer.toJson<String>(email),
      'jwtToken': serializer.toJson<String>(jwtToken),
      'avatar': serializer.toJson<String>(avatar),
      'isTopicSelected': serializer.toJson<bool>(isTopicSelected),
      'jwtIssueDate': serializer.toJson<DateTime>(jwtIssueDate),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  MUser copyWith(
          {String id,
          String googleId,
          String name,
          String email,
          String jwtToken,
          String avatar,
          bool isTopicSelected,
          DateTime jwtIssueDate,
          DateTime createdAt,
          DateTime updatedAt}) =>
      MUser(
        id: id ?? this.id,
        googleId: googleId ?? this.googleId,
        name: name ?? this.name,
        email: email ?? this.email,
        jwtToken: jwtToken ?? this.jwtToken,
        avatar: avatar ?? this.avatar,
        isTopicSelected: isTopicSelected ?? this.isTopicSelected,
        jwtIssueDate: jwtIssueDate ?? this.jwtIssueDate,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('MUser(')
          ..write('id: $id, ')
          ..write('googleId: $googleId, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('jwtToken: $jwtToken, ')
          ..write('avatar: $avatar, ')
          ..write('isTopicSelected: $isTopicSelected, ')
          ..write('jwtIssueDate: $jwtIssueDate, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          googleId.hashCode,
          $mrjc(
              name.hashCode,
              $mrjc(
                  email.hashCode,
                  $mrjc(
                      jwtToken.hashCode,
                      $mrjc(
                          avatar.hashCode,
                          $mrjc(
                              isTopicSelected.hashCode,
                              $mrjc(
                                  jwtIssueDate.hashCode,
                                  $mrjc(createdAt.hashCode,
                                      updatedAt.hashCode))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MUser &&
          other.id == this.id &&
          other.googleId == this.googleId &&
          other.name == this.name &&
          other.email == this.email &&
          other.jwtToken == this.jwtToken &&
          other.avatar == this.avatar &&
          other.isTopicSelected == this.isTopicSelected &&
          other.jwtIssueDate == this.jwtIssueDate &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class UsersCompanion extends UpdateCompanion<MUser> {
  final Value<String> id;
  final Value<String> googleId;
  final Value<String> name;
  final Value<String> email;
  final Value<String> jwtToken;
  final Value<String> avatar;
  final Value<bool> isTopicSelected;
  final Value<DateTime> jwtIssueDate;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.googleId = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.jwtToken = const Value.absent(),
    this.avatar = const Value.absent(),
    this.isTopicSelected = const Value.absent(),
    this.jwtIssueDate = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  UsersCompanion.insert({
    @required String id,
    @required String googleId,
    @required String name,
    @required String email,
    @required String jwtToken,
    @required String avatar,
    @required bool isTopicSelected,
    this.jwtIssueDate = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : id = Value(id),
        googleId = Value(googleId),
        name = Value(name),
        email = Value(email),
        jwtToken = Value(jwtToken),
        avatar = Value(avatar),
        isTopicSelected = Value(isTopicSelected);
  static Insertable<MUser> custom({
    Expression<String> id,
    Expression<String> googleId,
    Expression<String> name,
    Expression<String> email,
    Expression<String> jwtToken,
    Expression<String> avatar,
    Expression<bool> isTopicSelected,
    Expression<DateTime> jwtIssueDate,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (googleId != null) 'google_id': googleId,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (jwtToken != null) 'jwt_token': jwtToken,
      if (avatar != null) 'avatar': avatar,
      if (isTopicSelected != null) 'is_topic_selected': isTopicSelected,
      if (jwtIssueDate != null) 'jwt_issue_date': jwtIssueDate,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  UsersCompanion copyWith(
      {Value<String> id,
      Value<String> googleId,
      Value<String> name,
      Value<String> email,
      Value<String> jwtToken,
      Value<String> avatar,
      Value<bool> isTopicSelected,
      Value<DateTime> jwtIssueDate,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return UsersCompanion(
      id: id ?? this.id,
      googleId: googleId ?? this.googleId,
      name: name ?? this.name,
      email: email ?? this.email,
      jwtToken: jwtToken ?? this.jwtToken,
      avatar: avatar ?? this.avatar,
      isTopicSelected: isTopicSelected ?? this.isTopicSelected,
      jwtIssueDate: jwtIssueDate ?? this.jwtIssueDate,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (googleId.present) {
      map['google_id'] = Variable<String>(googleId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (jwtToken.present) {
      map['jwt_token'] = Variable<String>(jwtToken.value);
    }
    if (avatar.present) {
      map['avatar'] = Variable<String>(avatar.value);
    }
    if (isTopicSelected.present) {
      map['is_topic_selected'] = Variable<bool>(isTopicSelected.value);
    }
    if (jwtIssueDate.present) {
      map['jwt_issue_date'] = Variable<DateTime>(jwtIssueDate.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('googleId: $googleId, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('jwtToken: $jwtToken, ')
          ..write('avatar: $avatar, ')
          ..write('isTopicSelected: $isTopicSelected, ')
          ..write('jwtIssueDate: $jwtIssueDate, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, MUser> {
  final GeneratedDatabase _db;
  final String _alias;
  $UsersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _googleIdMeta = const VerificationMeta('googleId');
  GeneratedTextColumn _googleId;
  @override
  GeneratedTextColumn get googleId => _googleId ??= _constructGoogleId();
  GeneratedTextColumn _constructGoogleId() {
    return GeneratedTextColumn(
      'google_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _emailMeta = const VerificationMeta('email');
  GeneratedTextColumn _email;
  @override
  GeneratedTextColumn get email => _email ??= _constructEmail();
  GeneratedTextColumn _constructEmail() {
    return GeneratedTextColumn(
      'email',
      $tableName,
      false,
    );
  }

  final VerificationMeta _jwtTokenMeta = const VerificationMeta('jwtToken');
  GeneratedTextColumn _jwtToken;
  @override
  GeneratedTextColumn get jwtToken => _jwtToken ??= _constructJwtToken();
  GeneratedTextColumn _constructJwtToken() {
    return GeneratedTextColumn(
      'jwt_token',
      $tableName,
      false,
    );
  }

  final VerificationMeta _avatarMeta = const VerificationMeta('avatar');
  GeneratedTextColumn _avatar;
  @override
  GeneratedTextColumn get avatar => _avatar ??= _constructAvatar();
  GeneratedTextColumn _constructAvatar() {
    return GeneratedTextColumn(
      'avatar',
      $tableName,
      false,
    );
  }

  final VerificationMeta _isTopicSelectedMeta =
      const VerificationMeta('isTopicSelected');
  GeneratedBoolColumn _isTopicSelected;
  @override
  GeneratedBoolColumn get isTopicSelected =>
      _isTopicSelected ??= _constructIsTopicSelected();
  GeneratedBoolColumn _constructIsTopicSelected() {
    return GeneratedBoolColumn(
      'is_topic_selected',
      $tableName,
      false,
    );
  }

  final VerificationMeta _jwtIssueDateMeta =
      const VerificationMeta('jwtIssueDate');
  GeneratedDateTimeColumn _jwtIssueDate;
  @override
  GeneratedDateTimeColumn get jwtIssueDate =>
      _jwtIssueDate ??= _constructJwtIssueDate();
  GeneratedDateTimeColumn _constructJwtIssueDate() {
    return GeneratedDateTimeColumn(
      'jwt_issue_date',
      $tableName,
      false,
    )..clientDefault = () => DateTime.now();
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    )..clientDefault = () => DateTime.now();
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      false,
    )..clientDefault = () => DateTime.now();
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        googleId,
        name,
        email,
        jwtToken,
        avatar,
        isTopicSelected,
        jwtIssueDate,
        createdAt,
        updatedAt
      ];
  @override
  $UsersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'users';
  @override
  final String actualTableName = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<MUser> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('google_id')) {
      context.handle(_googleIdMeta,
          googleId.isAcceptableOrUnknown(data['google_id'], _googleIdMeta));
    } else if (isInserting) {
      context.missing(_googleIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email'], _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('jwt_token')) {
      context.handle(_jwtTokenMeta,
          jwtToken.isAcceptableOrUnknown(data['jwt_token'], _jwtTokenMeta));
    } else if (isInserting) {
      context.missing(_jwtTokenMeta);
    }
    if (data.containsKey('avatar')) {
      context.handle(_avatarMeta,
          avatar.isAcceptableOrUnknown(data['avatar'], _avatarMeta));
    } else if (isInserting) {
      context.missing(_avatarMeta);
    }
    if (data.containsKey('is_topic_selected')) {
      context.handle(
          _isTopicSelectedMeta,
          isTopicSelected.isAcceptableOrUnknown(
              data['is_topic_selected'], _isTopicSelectedMeta));
    } else if (isInserting) {
      context.missing(_isTopicSelectedMeta);
    }
    if (data.containsKey('jwt_issue_date')) {
      context.handle(
          _jwtIssueDateMeta,
          jwtIssueDate.isAcceptableOrUnknown(
              data['jwt_issue_date'], _jwtIssueDateMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id, googleId};
  @override
  MUser map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MUser.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(_db, alias);
  }
}

class MTopic extends DataClass implements Insertable<MTopic> {
  final String id;
  final String name;
  final String color;
  final String imageUrl;
  final DateTime createdAt;
  final DateTime updatedAt;
  MTopic(
      {@required this.id,
      @required this.name,
      @required this.color,
      @required this.imageUrl,
      @required this.createdAt,
      @required this.updatedAt});
  factory MTopic.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return MTopic(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      color:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}color']),
      imageUrl: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}image_url']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || color != null) {
      map['color'] = Variable<String>(color);
    }
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  TopicsCompanion toCompanion(bool nullToAbsent) {
    return TopicsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      color:
          color == null && nullToAbsent ? const Value.absent() : Value(color),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory MTopic.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MTopic(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      color: serializer.fromJson<String>(json['color']),
      imageUrl: serializer.fromJson<String>(json['imageUrl']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'color': serializer.toJson<String>(color),
      'imageUrl': serializer.toJson<String>(imageUrl),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  MTopic copyWith(
          {String id,
          String name,
          String color,
          String imageUrl,
          DateTime createdAt,
          DateTime updatedAt}) =>
      MTopic(
        id: id ?? this.id,
        name: name ?? this.name,
        color: color ?? this.color,
        imageUrl: imageUrl ?? this.imageUrl,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('MTopic(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('color: $color, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              color.hashCode,
              $mrjc(imageUrl.hashCode,
                  $mrjc(createdAt.hashCode, updatedAt.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MTopic &&
          other.id == this.id &&
          other.name == this.name &&
          other.color == this.color &&
          other.imageUrl == this.imageUrl &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class TopicsCompanion extends UpdateCompanion<MTopic> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> color;
  final Value<String> imageUrl;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const TopicsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.color = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  TopicsCompanion.insert({
    @required String id,
    @required String name,
    @required String color,
    @required String imageUrl,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        color = Value(color),
        imageUrl = Value(imageUrl);
  static Insertable<MTopic> custom({
    Expression<String> id,
    Expression<String> name,
    Expression<String> color,
    Expression<String> imageUrl,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (color != null) 'color': color,
      if (imageUrl != null) 'image_url': imageUrl,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  TopicsCompanion copyWith(
      {Value<String> id,
      Value<String> name,
      Value<String> color,
      Value<String> imageUrl,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return TopicsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
      imageUrl: imageUrl ?? this.imageUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TopicsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('color: $color, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $TopicsTable extends Topics with TableInfo<$TopicsTable, MTopic> {
  final GeneratedDatabase _db;
  final String _alias;
  $TopicsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _colorMeta = const VerificationMeta('color');
  GeneratedTextColumn _color;
  @override
  GeneratedTextColumn get color => _color ??= _constructColor();
  GeneratedTextColumn _constructColor() {
    return GeneratedTextColumn(
      'color',
      $tableName,
      false,
    );
  }

  final VerificationMeta _imageUrlMeta = const VerificationMeta('imageUrl');
  GeneratedTextColumn _imageUrl;
  @override
  GeneratedTextColumn get imageUrl => _imageUrl ??= _constructImageUrl();
  GeneratedTextColumn _constructImageUrl() {
    return GeneratedTextColumn(
      'image_url',
      $tableName,
      false,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    )..clientDefault = () => DateTime.now();
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      false,
    )..clientDefault = () => DateTime.now();
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, name, color, imageUrl, createdAt, updatedAt];
  @override
  $TopicsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'topics';
  @override
  final String actualTableName = 'topics';
  @override
  VerificationContext validateIntegrity(Insertable<MTopic> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color'], _colorMeta));
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(_imageUrlMeta,
          imageUrl.isAcceptableOrUnknown(data['image_url'], _imageUrlMeta));
    } else if (isInserting) {
      context.missing(_imageUrlMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MTopic map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MTopic.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $TopicsTable createAlias(String alias) {
    return $TopicsTable(_db, alias);
  }
}

class MPost extends DataClass implements Insertable<MPost> {
  final String id;
  final String title;
  final String description;
  final String authorName;
  final String authorAvatar;
  final int startTimestamp;
  final int endTimestamp;
  final String videoUrl;
  final String topicId;
  final DateTime createdAt;
  final DateTime updatedAt;
  MPost(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.authorName,
      @required this.authorAvatar,
      @required this.startTimestamp,
      @required this.endTimestamp,
      @required this.videoUrl,
      @required this.topicId,
      @required this.createdAt,
      @required this.updatedAt});
  factory MPost.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return MPost(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      authorName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}author_name']),
      authorAvatar: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}author_avatar']),
      startTimestamp: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}start_timestamp']),
      endTimestamp: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}end_timestamp']),
      videoUrl: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}video_url']),
      topicId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}topic_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || authorName != null) {
      map['author_name'] = Variable<String>(authorName);
    }
    if (!nullToAbsent || authorAvatar != null) {
      map['author_avatar'] = Variable<String>(authorAvatar);
    }
    if (!nullToAbsent || startTimestamp != null) {
      map['start_timestamp'] = Variable<int>(startTimestamp);
    }
    if (!nullToAbsent || endTimestamp != null) {
      map['end_timestamp'] = Variable<int>(endTimestamp);
    }
    if (!nullToAbsent || videoUrl != null) {
      map['video_url'] = Variable<String>(videoUrl);
    }
    if (!nullToAbsent || topicId != null) {
      map['topic_id'] = Variable<String>(topicId);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  PostsCompanion toCompanion(bool nullToAbsent) {
    return PostsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      authorName: authorName == null && nullToAbsent
          ? const Value.absent()
          : Value(authorName),
      authorAvatar: authorAvatar == null && nullToAbsent
          ? const Value.absent()
          : Value(authorAvatar),
      startTimestamp: startTimestamp == null && nullToAbsent
          ? const Value.absent()
          : Value(startTimestamp),
      endTimestamp: endTimestamp == null && nullToAbsent
          ? const Value.absent()
          : Value(endTimestamp),
      videoUrl: videoUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(videoUrl),
      topicId: topicId == null && nullToAbsent
          ? const Value.absent()
          : Value(topicId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory MPost.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MPost(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      authorName: serializer.fromJson<String>(json['authorName']),
      authorAvatar: serializer.fromJson<String>(json['authorAvatar']),
      startTimestamp: serializer.fromJson<int>(json['startTimestamp']),
      endTimestamp: serializer.fromJson<int>(json['endTimestamp']),
      videoUrl: serializer.fromJson<String>(json['videoUrl']),
      topicId: serializer.fromJson<String>(json['topicId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'authorName': serializer.toJson<String>(authorName),
      'authorAvatar': serializer.toJson<String>(authorAvatar),
      'startTimestamp': serializer.toJson<int>(startTimestamp),
      'endTimestamp': serializer.toJson<int>(endTimestamp),
      'videoUrl': serializer.toJson<String>(videoUrl),
      'topicId': serializer.toJson<String>(topicId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  MPost copyWith(
          {String id,
          String title,
          String description,
          String authorName,
          String authorAvatar,
          int startTimestamp,
          int endTimestamp,
          String videoUrl,
          String topicId,
          DateTime createdAt,
          DateTime updatedAt}) =>
      MPost(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        authorName: authorName ?? this.authorName,
        authorAvatar: authorAvatar ?? this.authorAvatar,
        startTimestamp: startTimestamp ?? this.startTimestamp,
        endTimestamp: endTimestamp ?? this.endTimestamp,
        videoUrl: videoUrl ?? this.videoUrl,
        topicId: topicId ?? this.topicId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('MPost(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('authorName: $authorName, ')
          ..write('authorAvatar: $authorAvatar, ')
          ..write('startTimestamp: $startTimestamp, ')
          ..write('endTimestamp: $endTimestamp, ')
          ..write('videoUrl: $videoUrl, ')
          ..write('topicId: $topicId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          title.hashCode,
          $mrjc(
              description.hashCode,
              $mrjc(
                  authorName.hashCode,
                  $mrjc(
                      authorAvatar.hashCode,
                      $mrjc(
                          startTimestamp.hashCode,
                          $mrjc(
                              endTimestamp.hashCode,
                              $mrjc(
                                  videoUrl.hashCode,
                                  $mrjc(
                                      topicId.hashCode,
                                      $mrjc(createdAt.hashCode,
                                          updatedAt.hashCode)))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MPost &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.authorName == this.authorName &&
          other.authorAvatar == this.authorAvatar &&
          other.startTimestamp == this.startTimestamp &&
          other.endTimestamp == this.endTimestamp &&
          other.videoUrl == this.videoUrl &&
          other.topicId == this.topicId &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class PostsCompanion extends UpdateCompanion<MPost> {
  final Value<String> id;
  final Value<String> title;
  final Value<String> description;
  final Value<String> authorName;
  final Value<String> authorAvatar;
  final Value<int> startTimestamp;
  final Value<int> endTimestamp;
  final Value<String> videoUrl;
  final Value<String> topicId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const PostsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.authorName = const Value.absent(),
    this.authorAvatar = const Value.absent(),
    this.startTimestamp = const Value.absent(),
    this.endTimestamp = const Value.absent(),
    this.videoUrl = const Value.absent(),
    this.topicId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  PostsCompanion.insert({
    @required String id,
    @required String title,
    @required String description,
    @required String authorName,
    @required String authorAvatar,
    @required int startTimestamp,
    @required int endTimestamp,
    @required String videoUrl,
    @required String topicId,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : id = Value(id),
        title = Value(title),
        description = Value(description),
        authorName = Value(authorName),
        authorAvatar = Value(authorAvatar),
        startTimestamp = Value(startTimestamp),
        endTimestamp = Value(endTimestamp),
        videoUrl = Value(videoUrl),
        topicId = Value(topicId);
  static Insertable<MPost> custom({
    Expression<String> id,
    Expression<String> title,
    Expression<String> description,
    Expression<String> authorName,
    Expression<String> authorAvatar,
    Expression<int> startTimestamp,
    Expression<int> endTimestamp,
    Expression<String> videoUrl,
    Expression<String> topicId,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (authorName != null) 'author_name': authorName,
      if (authorAvatar != null) 'author_avatar': authorAvatar,
      if (startTimestamp != null) 'start_timestamp': startTimestamp,
      if (endTimestamp != null) 'end_timestamp': endTimestamp,
      if (videoUrl != null) 'video_url': videoUrl,
      if (topicId != null) 'topic_id': topicId,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  PostsCompanion copyWith(
      {Value<String> id,
      Value<String> title,
      Value<String> description,
      Value<String> authorName,
      Value<String> authorAvatar,
      Value<int> startTimestamp,
      Value<int> endTimestamp,
      Value<String> videoUrl,
      Value<String> topicId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return PostsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      authorName: authorName ?? this.authorName,
      authorAvatar: authorAvatar ?? this.authorAvatar,
      startTimestamp: startTimestamp ?? this.startTimestamp,
      endTimestamp: endTimestamp ?? this.endTimestamp,
      videoUrl: videoUrl ?? this.videoUrl,
      topicId: topicId ?? this.topicId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (authorName.present) {
      map['author_name'] = Variable<String>(authorName.value);
    }
    if (authorAvatar.present) {
      map['author_avatar'] = Variable<String>(authorAvatar.value);
    }
    if (startTimestamp.present) {
      map['start_timestamp'] = Variable<int>(startTimestamp.value);
    }
    if (endTimestamp.present) {
      map['end_timestamp'] = Variable<int>(endTimestamp.value);
    }
    if (videoUrl.present) {
      map['video_url'] = Variable<String>(videoUrl.value);
    }
    if (topicId.present) {
      map['topic_id'] = Variable<String>(topicId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PostsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('authorName: $authorName, ')
          ..write('authorAvatar: $authorAvatar, ')
          ..write('startTimestamp: $startTimestamp, ')
          ..write('endTimestamp: $endTimestamp, ')
          ..write('videoUrl: $videoUrl, ')
          ..write('topicId: $topicId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $PostsTable extends Posts with TableInfo<$PostsTable, MPost> {
  final GeneratedDatabase _db;
  final String _alias;
  $PostsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn(
      'title',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      false,
    );
  }

  final VerificationMeta _authorNameMeta = const VerificationMeta('authorName');
  GeneratedTextColumn _authorName;
  @override
  GeneratedTextColumn get authorName => _authorName ??= _constructAuthorName();
  GeneratedTextColumn _constructAuthorName() {
    return GeneratedTextColumn(
      'author_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _authorAvatarMeta =
      const VerificationMeta('authorAvatar');
  GeneratedTextColumn _authorAvatar;
  @override
  GeneratedTextColumn get authorAvatar =>
      _authorAvatar ??= _constructAuthorAvatar();
  GeneratedTextColumn _constructAuthorAvatar() {
    return GeneratedTextColumn(
      'author_avatar',
      $tableName,
      false,
    );
  }

  final VerificationMeta _startTimestampMeta =
      const VerificationMeta('startTimestamp');
  GeneratedIntColumn _startTimestamp;
  @override
  GeneratedIntColumn get startTimestamp =>
      _startTimestamp ??= _constructStartTimestamp();
  GeneratedIntColumn _constructStartTimestamp() {
    return GeneratedIntColumn(
      'start_timestamp',
      $tableName,
      false,
    );
  }

  final VerificationMeta _endTimestampMeta =
      const VerificationMeta('endTimestamp');
  GeneratedIntColumn _endTimestamp;
  @override
  GeneratedIntColumn get endTimestamp =>
      _endTimestamp ??= _constructEndTimestamp();
  GeneratedIntColumn _constructEndTimestamp() {
    return GeneratedIntColumn(
      'end_timestamp',
      $tableName,
      false,
    );
  }

  final VerificationMeta _videoUrlMeta = const VerificationMeta('videoUrl');
  GeneratedTextColumn _videoUrl;
  @override
  GeneratedTextColumn get videoUrl => _videoUrl ??= _constructVideoUrl();
  GeneratedTextColumn _constructVideoUrl() {
    return GeneratedTextColumn(
      'video_url',
      $tableName,
      false,
    );
  }

  final VerificationMeta _topicIdMeta = const VerificationMeta('topicId');
  GeneratedTextColumn _topicId;
  @override
  GeneratedTextColumn get topicId => _topicId ??= _constructTopicId();
  GeneratedTextColumn _constructTopicId() {
    return GeneratedTextColumn(
      'topic_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    )..clientDefault = () => DateTime.now();
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      false,
    )..clientDefault = () => DateTime.now();
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        description,
        authorName,
        authorAvatar,
        startTimestamp,
        endTimestamp,
        videoUrl,
        topicId,
        createdAt,
        updatedAt
      ];
  @override
  $PostsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'posts';
  @override
  final String actualTableName = 'posts';
  @override
  VerificationContext validateIntegrity(Insertable<MPost> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title'], _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('author_name')) {
      context.handle(
          _authorNameMeta,
          authorName.isAcceptableOrUnknown(
              data['author_name'], _authorNameMeta));
    } else if (isInserting) {
      context.missing(_authorNameMeta);
    }
    if (data.containsKey('author_avatar')) {
      context.handle(
          _authorAvatarMeta,
          authorAvatar.isAcceptableOrUnknown(
              data['author_avatar'], _authorAvatarMeta));
    } else if (isInserting) {
      context.missing(_authorAvatarMeta);
    }
    if (data.containsKey('start_timestamp')) {
      context.handle(
          _startTimestampMeta,
          startTimestamp.isAcceptableOrUnknown(
              data['start_timestamp'], _startTimestampMeta));
    } else if (isInserting) {
      context.missing(_startTimestampMeta);
    }
    if (data.containsKey('end_timestamp')) {
      context.handle(
          _endTimestampMeta,
          endTimestamp.isAcceptableOrUnknown(
              data['end_timestamp'], _endTimestampMeta));
    } else if (isInserting) {
      context.missing(_endTimestampMeta);
    }
    if (data.containsKey('video_url')) {
      context.handle(_videoUrlMeta,
          videoUrl.isAcceptableOrUnknown(data['video_url'], _videoUrlMeta));
    } else if (isInserting) {
      context.missing(_videoUrlMeta);
    }
    if (data.containsKey('topic_id')) {
      context.handle(_topicIdMeta,
          topicId.isAcceptableOrUnknown(data['topic_id'], _topicIdMeta));
    } else if (isInserting) {
      context.missing(_topicIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MPost map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MPost.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PostsTable createAlias(String alias) {
    return $PostsTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $UsersTable _users;
  $UsersTable get users => _users ??= $UsersTable(this);
  $TopicsTable _topics;
  $TopicsTable get topics => _topics ??= $TopicsTable(this);
  $PostsTable _posts;
  $PostsTable get posts => _posts ??= $PostsTable(this);
  UsersDao _usersDao;
  UsersDao get usersDao => _usersDao ??= UsersDao(this as MyDatabase);
  TopicsDao _topicsDao;
  TopicsDao get topicsDao => _topicsDao ??= TopicsDao(this as MyDatabase);
  PostsDao _postsDao;
  PostsDao get postsDao => _postsDao ??= PostsDao(this as MyDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [users, topics, posts];
}
