import 'package:moor/ffi.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:moor/moor.dart';
import 'dart:io';

part 'database.g.dart';

class Plant extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get country => text()();
  TextColumn get image => text()();
  IntColumn get price => integer()();
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'plant_shop.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [Plant])
class DataBase extends _$DataBase with ChangeNotifier {
  // tell the database where to store the data with this constructor
  DataBase() : super(_openConnection());

  // get all palnts
  Future<List<PlantData>> getAllPlants() {
    return select(plant).get();
  }

  // watch all palnts
  Stream<List<PlantData>> watchAllPlants() {
    return select(plant).watch();
  }

  // returns the generated id
  Future<int> addPlant(PlantData entry) {
    return into(plant).insert(entry);
  }

  Future updatePlant(PlantData entry) => update(plant).replace(entry);

  Future deletePlant(PlantData entry) => delete(plant).delete(entry);

  @override
  int get schemaVersion => 1;
}
