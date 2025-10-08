import 'package:flutter/foundation.dart';
import '../models/item.dart';

class ItemProvider with ChangeNotifier {
  final List<Item> _items = [
    Item(
      id: 'i1',
      name: 'ปากกาสีน้ำเงิน',
      description: 'หมึกเจล เขียนลื่น',
      price: 25.0,
    ),
    Item(
      id: 'i2',
      name: 'สมุดบันทึกปกแข็ง',
      description: 'ขนาด A5, 120 แผ่น',
      price: 89.0,
    ),
    Item(
      id: 'i3',
      name: 'คลิปหนีบกระดาษ',
      description: 'กล่องละ 50 ชิ้น, สีเงิน',
      price: 30.0,
    ),
  ];

  List<Item> get items => [..._items];
}
