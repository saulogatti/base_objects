import 'package:base_objects/src/models/person/address.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address_entry.g.dart';

@JsonSerializable()
class AddressEntry extends Address {
  const new({required super.street, super.zipCode, super.neighborhood, super.city, super.state});

  factory fromJson(Map<String, dynamic> json) => _$AddressEntryFromJson(json);

  Map<String, dynamic> toJson() => _$AddressEntryToJson(this);
}
