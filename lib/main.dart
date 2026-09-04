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

      body: const Column(
        children: [
          Image(
            image: AssetImage('assets/images/magazineInfo.jpg'),
            width: double.infinity,
            height: 240,
            fit: BoxFit.cover,
          ),
          PartieTitre(),
          PartieTexte(),
          PartieIcone(),
          PartieRubrique(),
        ],
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

class PartieTitre extends StatelessWidget {
  const PartieTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bienvenue au Magazine Infos',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Votre magazine numérique, votre source d’information',
            style: TextStyle(
              fontSize: 11,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}


class PartieTexte extends StatelessWidget {
  const PartieTexte({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 8,
      ),
      child: const Text(
        'Magazine Infos est un magazine numérique qui propose '
        'à ses lecteurs des informations, des actualités et des '
        'contenus variés autour de différents sujets et rubriques.',
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 14,
          height: 1.4,
        ),
      ),
    );
  }
}

class PartieIcone extends StatelessWidget {
  const PartieIcone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(
                Icons.phone,
                color: Colors.pink,
              ),
              SizedBox(height: 5),
              Text(
                'TEL',
                style: TextStyle(
                  color: Colors.pink,
                ),
              ),
            ],
          ),

          Column(
            children: [
              Icon(
                Icons.email,
                color: Colors.pink,
              ),
              SizedBox(height: 5),
              Text(
                'MAIL',
                style: TextStyle(
                  color: Colors.pink,
                ),
              ),
            ],
          ),

          Column(
            children: [
              Icon(
                Icons.share,
                color: Colors.pink,
              ),
              SizedBox(height: 5),
              Text(
                'PARTAGE',
                style: TextStyle(
                  color: Colors.pink,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class PartieRubrique extends StatelessWidget {
  const PartieRubrique({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/presse.jpg',
                height: 85,
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(width: 10),

          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/mode.jpg',
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
