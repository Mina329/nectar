class AddressModel {
  final String? id;
  final String? district;
  final String? gorvernorate;
  final String? street;
  final String? buildingNumber;
  final String? floor;
  final String? appartmentNumber;
  final bool? isDefault;

  AddressModel(
      {required this.isDefault,
      required this.id,
      required this.district,
      required this.gorvernorate,
      required this.street,
      required this.buildingNumber,
      required this.floor,
      required this.appartmentNumber});
}
