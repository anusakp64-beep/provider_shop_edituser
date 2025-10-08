import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/item_provider.dart';
import '../providers/user_profile_provider.dart';
import 'edit_user_screen.dart';

class ItemListScreen extends StatelessWidget {
  const ItemListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final username = context.watch<UserProfileProvider>().userProfile.username;

    return Scaffold(
      appBar: AppBar(
        title: Text('รายการสินค้า (ผู้ใช้: $username)'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const EditUserScreen()),
              );
            },
          )
        ],
      ),
      body: Consumer<ItemProvider>(
        builder: (ctx, itemProvider, child) => ListView.builder(
          itemCount: itemProvider.items.length,
          itemBuilder: (_, i) {
            final item = itemProvider.items[i];
            return ListTile(
              title: Text(item.name),
              subtitle: Text(item.description),
              trailing: Text('฿${item.price.toStringAsFixed(2)}'),
            );
          },
        ),
      ),
    );
  }
}
