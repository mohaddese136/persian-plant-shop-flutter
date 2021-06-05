// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class PlantData extends DataClass implements Insertable<PlantData> {
  final int id;
  final String title;
  final String country;
  final String image;
  final int price;
  PlantData(
      {@required this.id,
      @required this.title,
      @required this.country,
      @required this.image,
      @required this.price});
  factory PlantData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    return PlantData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title']),
      country: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}country']),
      image: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image']),
      price: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}price']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || country != null) {
      map['country'] = Variable<String>(country);
    }
    if (!nullToAbsent || image != null) {
      map['image'] = Variable<String>(image);
    }
    if (!nullToAbsent || price != null) {
      map['price'] = Variable<int>(price);
    }
    return map;
  }

  PlantCompanion toCompanion(bool nullToAbsent) {
    return PlantCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      country: country == null && nullToAbsent
          ? const Value.absent()
          : Value(country),
      image:
          image == null && nullToAbsent ? const Value.absent() : Value(image),
      price:
          price == null && nullToAbsent ? const Value.absent() : Value(price),
    );
  }

  factory PlantData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PlantData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      country: serializer.fromJson<String>(json['country']),
      image: serializer.fromJson<String>(json['image']),
      price: serializer.fromJson<int>(json['price']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'country': serializer.toJson<String>(country),
      'image': serializer.toJson<String>(image),
      'price': serializer.toJson<int>(price),
    };
  }

  PlantData copyWith(
          {int id, String title, String country, String image, int price}) =>
      PlantData(
        id: id ?? this.id,
        title: title ?? this.title,
        country: country ?? this.country,
        image: image ?? this.image,
        price: price ?? this.price,
      );
  @override
  String toString() {
    return (StringBuffer('PlantData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('country: $country, ')
          ..write('image: $image, ')
          ..write('price: $price')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(title.hashCode,
          $mrjc(country.hashCode, $mrjc(image.hashCode, price.hashCode)))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PlantData &&
          other.id == this.id &&
          other.title == this.title &&
          other.country == this.country &&
          other.image == this.image &&
          other.price == this.price);
}

class PlantCompanion extends UpdateCompanion<PlantData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> country;
  final Value<String> image;
  final Value<int> price;
  const PlantCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.country = const Value.absent(),
    this.image = const Value.absent(),
    this.price = const Value.absent(),
  });
  PlantCompanion.insert({
    this.id = const Value.absent(),
    @required String title,
    @required String country,
    @required String image,
    @required int price,
  })  : title = Value(title),
        country = Value(country),
        image = Value(image),
        price = Value(price);
  static Insertable<PlantData> custom({
    Expression<int> id,
    Expression<String> title,
    Expression<String> country,
    Expression<String> image,
    Expression<int> price,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (country != null) 'country': country,
      if (image != null) 'image': image,
      if (price != null) 'price': price,
    });
  }

  PlantCompanion copyWith(
      {Value<int> id,
      Value<String> title,
      Value<String> country,
      Value<String> image,
      Value<int> price}) {
    return PlantCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      country: country ?? this.country,
      image: image ?? this.image,
      price: price ?? this.price,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (country.present) {
      map['country'] = Variable<String>(country.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (price.present) {
      map['price'] = Variable<int>(price.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlantCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('country: $country, ')
          ..write('image: $image, ')
          ..write('price: $price')
          ..write(')'))
        .toString();
  }
}

class $PlantTable extends Plant with TableInfo<$PlantTable, PlantData> {
  final GeneratedDatabase _db;
  final String _alias;
  $PlantTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
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

  final VerificationMeta _countryMeta = const VerificationMeta('country');
  GeneratedTextColumn _country;
  @override
  GeneratedTextColumn get country => _country ??= _constructCountry();
  GeneratedTextColumn _constructCountry() {
    return GeneratedTextColumn(
      'country',
      $tableName,
      false,
    );
  }

  final VerificationMeta _imageMeta = const VerificationMeta('image');
  GeneratedTextColumn _image;
  @override
  GeneratedTextColumn get image => _image ??= _constructImage();
  GeneratedTextColumn _constructImage() {
    return GeneratedTextColumn(
      'image',
      $tableName,
      false,
    );
  }

  final VerificationMeta _priceMeta = const VerificationMeta('price');
  GeneratedIntColumn _price;
  @override
  GeneratedIntColumn get price => _price ??= _constructPrice();
  GeneratedIntColumn _constructPrice() {
    return GeneratedIntColumn(
      'price',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, title, country, image, price];
  @override
  $PlantTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'plant';
  @override
  final String actualTableName = 'plant';
  @override
  VerificationContext validateIntegrity(Insertable<PlantData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title'], _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('country')) {
      context.handle(_countryMeta,
          country.isAcceptableOrUnknown(data['country'], _countryMeta));
    } else if (isInserting) {
      context.missing(_countryMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image'], _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price'], _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PlantData map(Map<String, dynamic> data, {String tablePrefix}) {
    return PlantData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $PlantTable createAlias(String alias) {
    return $PlantTable(_db, alias);
  }
}

abstract class _$DataBase extends GeneratedDatabase {
  _$DataBase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $PlantTable _plant;
  $PlantTable get plant => _plant ??= $PlantTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [plant];
}
