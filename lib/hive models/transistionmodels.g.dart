// // GENERATED CODE - DO NOT MODIFY BY HAND

// part of 'transistionmodels.dart';

// // **************************************************************************
// // TypeAdapterGenerator
// // **************************************************************************

// class TransistionAdapter extends TypeAdapter<Transistion> {
//   @override
//   final int typeId = 0;

//   @override
//   Transistion read(BinaryReader reader) {
//     final numOfFields = reader.readByte();
//     final fields = <int, dynamic>{
//       for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
//     };
//     return Transistion()
//       ..name = fields[0] as String
//       ..createDate = fields[1] as DateTime
//       ..isExpense = fields[2] as bool
//       ..amount = fields[3] as double;
//   }

//   @override
//   void write(BinaryWriter writer, Transistion obj) {
//     writer
//       ..writeByte(4)
//       ..writeByte(0)
//       ..write(obj.name)
//       ..writeByte(1)
//       ..write(obj.createDate)
//       ..writeByte(2)
//       ..write(obj.isExpense)
//       ..writeByte(3)
//       ..write(obj.amount);
//   }

//   @override
//   int get hashCode => typeId.hashCode;

//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is TransistionAdapter &&
//           runtimeType == other.runtimeType &&
//           typeId == other.typeId;
// }
