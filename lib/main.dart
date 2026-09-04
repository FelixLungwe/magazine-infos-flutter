import 'package:flutter/material.dart';

void main() {
  runApp(const MonAppli());
}

class MonAppli extends StatelessWidget {
  const MonAppli({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Magazine',
      debugShowCheckedModeBanner: false,
      home: pageAccueil(),
    );
  }
}

class pageAccueil extends StatelessWidget {
  const pageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Magazine Infos'),
        centerTitle: true,

        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),

        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),

      body: const Image(
        image: AssetImage('assets/images/magazineInfo.jpg'),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Tu as cliqué dessus'),
            ),
          );
        },
        child: const Text('Click'),
      ),
    );
  }
}
