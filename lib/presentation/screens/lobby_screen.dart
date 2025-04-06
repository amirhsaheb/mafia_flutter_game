import 'package:flutter/material.dart';

class LobbyScreen extends StatelessWidget {
  const LobbyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('اتاق‌های فعال')),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
        ),
        itemBuilder: (context, index) => _buildRoomCard(index),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _createNewRoom(context),
        child: const Icon(Icons.add),
      ),
    );
  }
}
