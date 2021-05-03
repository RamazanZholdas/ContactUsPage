import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HelpSection(),
    ),
  );
}

class HelpSection extends StatelessWidget {
  Widget createSection(String text1, String text2, Icon icon) {
    return AnimatedContainer(
      height: 100,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 20,
              offset: Offset(0,10),
            ),
      ]),
      duration: null,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Text(
            text1,
            style: TextStyle(color: Colors.orangeAccent),
          ),
          Text(
            text2,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
            'Свяжитесь с нами',
            style: TextStyle(
              color: Colors.orangeAccent,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
              child: Image.asset(
            'images/contactus2.png',
            height: 250,
          )),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'Если у вас проблемы или предложения \n свяжитесь с нами!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[800],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: createSection(
                    'Напишите нам',
                    'ghostcomrad@gmail.com',
                    Icon(
                      Icons.alternate_email,
                      color: Colors.orangeAccent,
                      size: 50,
                    )),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: createSection(
                      'Позвоните нам',
                      '+7 (800) 555 35 35',
                      Icon(
                        Icons.call,
                        color: Colors.orangeAccent,
                        size: 50,
                      ))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: createSection(
                      'FAQ',
                      'Часто задаваемы вопросы',
                      Icon(
                        Icons.help_outline_outlined,
                        color: Colors.orangeAccent,
                        size: 50,
                      ))),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: createSection(
                    'Мы здесь!',
                    'Показать на карте',
                    Icon(
                      Icons.location_on_sharp,
                      color: Colors.orangeAccent,
                      size: 50,
                    )),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Text('Коперигхт 2020 с Алиш Брат'),
          Text('Все права защищены отвечаю'),
        ],
      ),
    );
  }
}
