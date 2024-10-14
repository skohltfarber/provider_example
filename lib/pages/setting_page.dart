import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/user_provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

// Settings Page
class _SettingsPageState extends State<SettingsPage> {
  final TextEditingController userNameController = TextEditingController();

  @override
  void dispose() {
    userNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text(
                  'Username: ',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  context.watch<UserProvider>().userName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: userNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                context
                    .read<UserProvider>()
                    .changeUserName(newUserName: userNameController.text);
                FocusManager.instance.primaryFocus?.unfocus();
                userNameController.clear();
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
