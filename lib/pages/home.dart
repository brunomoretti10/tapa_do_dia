import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _message = 'Clique abaixo para gerar uma frase!';

  List<String> messages = [
    'Pare de nadar oceanos por quem não pula nem uma poça por você.',
    'A pessoa que acaba com sua saúde mental não pode ser o grande amor da sua vida. ',
    'O dia que tu parar de jogar energia negativa nos outros, talvez ela pare de voltar para ti.',
    'Ligue o botão do foda-se.',
    'Não se desequilibre por conta de quem não merece um segundo do seu dia.',
    'Pra viver a vida que você sonha, você tem que abrir mão da vida que você leva.',
    'Correr atrás de alguém é um claro sinal de desvantagem.',
    'Se você precisa convencer o outro a ficar, quem não precisa mais ficar é você. ',
    'Uma dúvida na maioria das vezes significa um "Não". O sim é muito claro.',
    'O problema não é a piscina ser rasa, é a sua teimosia em querer mergulhar fundo onde a água só vai até a canela.',
    'Não complique sua vida, um adeus dói muito menos do que viver morrendo aos poucos.',
    'Não culpe um palhaço por agir como um palhaço. Pergunte a si mesmo o porquê você continua indo ao circo. ',
    'Nunca dê a pessoa o poder de voltar quando quiser.',
    'Prato muito disputado a gente deixa pra quem tá passando fome.',
    'Para o seu próprio bem: Pare de fuçar a vida de quem só te faz mal, se preserve.',
    'Deixe ir... se quisesse estar com você, estaria.',
    'Quando tu dá muito valor, tu é desvalorizado.',
    'Cada lugar que você se despede, tem outro fazendo festa pra te receber.',
    'Quando tu perde um ônibus, tu não corre atrás dele, você espera o próximo.',
    'Perca o amor da sua vida, mas não perca sua vida por um amor.',
    'Quando o diabo continua pedindo pra você olhar no passado, há algo no futuro que ele não quer que você veja.',
    'Feche todas as janelas que te machucam, não importa o quão bela seja a vista.',
    'A oportunidade é uma deusa desdenhosa que não perde tempo com os que não estão preparados.',
    'É preciso passar pela escuridão pra apreciar o nascer do sol.',
    'Quem não tem atitude dorme com a vontade.',
    'Eu errei mais de 9.000 arremessos na minha carreira. Perdi quase 300 jogos. Em 26 oportunidades, confiaram em mim para fazer o arremesso da vitória e eu errei. Eu falhei muitas e muitas vezes na minha vida. E é por isso que tenho sucesso. - Michael Jordan',
    'Viva sua vida do jeito que acha certo, antes que seu tempo esgote.',
    'Não estenda a mão para quem não está disposto a ser ajudado.'
  ];

  void _generateText() {
    int i = Random().nextInt(messages.length);
    setState(() {
      _message = messages[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('TAPA DO DIA',
            style: TextStyle(
              fontSize: 30,
            )),
        titleTextStyle: const TextStyle(color: Colors.black),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 500,
              height: 200,
            ),
            const SizedBox(height: 50),
            Text(
              _message,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () => _generateText(),
              child: const Text('Nova Frase'),
            ),
          ],
        ),
      ),
    );
  }
}
