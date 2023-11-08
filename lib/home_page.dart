import 'package:flutter/material.dart';
import 'package:voice_assitent/feature_box.dart';
import 'package:voice_assitent/pallet.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assitente de IA'),
        leading: const Icon(Icons.menu),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Virtual assistant picture
          Stack(
            children: [
              Center(
                child: Container(
                  height: 120,
                  width: 120,
                  margin: const EdgeInsets.only(top: 4),
                  decoration: const BoxDecoration(
                    color: Pallete.assistantCircleColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Container(
                height: 123,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image:
                            AssetImage('assets/images/virtualAssistant.png'))),
              )
            ],
          ),
          // chat bubble
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(
              top: 30,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Pallete.borderColor,
              ),
              borderRadius: BorderRadius.circular(20).copyWith(
                topLeft: Radius.zero,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                'Bom dia! O que posso fazer por você?',
                style: TextStyle(
                    fontFamily: 'Cera Pro',
                    color: Pallete.mainFontColor,
                    fontSize: 25),
              ),
            ),
          ),
          // suggestion list
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 10, left: 22),
            child: const Text(
              'Algumas funcionalidades',
              style: TextStyle(
                  fontFamily: 'Cero Pro',
                  color: Pallete.mainFontColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          // features list
          const Column(
            children: [
              FeatureBox(
                color: Pallete.firstSuggestionBoxColor,
                headerText: 'ChatGpt',
                descriptionText:
                    'Um jeito inteligente para estar organizado e informado com ChatGpT',
              ),
              FeatureBox(
                color: Pallete.secondSuggestionBoxColor,
                headerText: 'Dall-E',
                descriptionText:
                    'Se inspire e seja criativo com seu assistente pessoal desenvolvido por Dall-E',
              ),
              FeatureBox(
                color: Pallete.thirdSuggestionBoxColor,
                headerText: 'Assitente de voz inteligente',
                descriptionText:
                    'Tenha o melhor dos dois mundos com o assistente de voz desenvolvido por Dall-E',
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.mic),
      ),
    );
  }
}
