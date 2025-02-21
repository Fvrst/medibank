import 'package:flutter/material.dart';
import 'package:medibank/widget/claim_status_card.dart';
import 'package:medibank/screen/search.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Profile',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SearchScreen()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade200, blurRadius: 5)
                  ],
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/img/profile.png'),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Yessie',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'yessieklein@gmail.com',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Member No. 1239475605',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text('Edit Profile'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SectionHeader(title: 'Make a Claim'),
            ClaimStatusCard(
              current: 3,
              pending: 0,
              history: 5,
              color: Colors.blue,
            ),
            const SectionHeader(title: 'Claim Activity'),
            ClaimStatusCard(
                current: 3, pending: 0, history: 5, color: Colors.red),
            const SizedBox(height: 10),
            const Column(
              children: [
                ListItem(
                  title: 'Out of pocket estimator',
                  hasButton: true,
                  buttonText: '3',
                ),
                ListItem(
                  title: 'Manage payments',
                  hasButton: true,
                  buttonText: '32',
                ),
                ListItem(title: 'Members offer'),
                ListItem(title: 'Cover'),
                ListItem(title: 'Find'),
                ListItem(title: 'Help'),
                ListItem(
                  title: 'Language',
                  hasButton: true,
                  buttonText: 'English',
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  const SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final bool hasButton;
  final String? buttonText;

  const ListItem({
    required this.title,
    this.hasButton = false,
    this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [BoxShadow(color: Colors.white)],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SizedBox(width: 10),
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            if (hasButton)
              TextButton(
                onPressed: () {},
                child: Text(
                  buttonText ?? 'English',
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
