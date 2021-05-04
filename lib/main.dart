import 'package:flutter/material.dart';
import 'package:just_doing_some_fool_shit/some-new-page.dart';

void main() {
  runApp(
    MaterialApp(
      home: HelpSection(),
    ),
  );
}

class HelpSection extends StatefulWidget {

  @override
  _HelpSectionState createState() => _HelpSectionState();
}

class _HelpSectionState extends State<HelpSection> with SingleTickerProviderStateMixin{

  double _scale;
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void _tapDown(TapDownDetails details) {
    _controller.forward();
  }
  void _tapUp(TapUpDetails details) {
    _controller.reverse();
  }

  Widget createSection(String text1, String text2, Icon icon, func()) {
    return GestureDetector(
      onTap: func,
      onTapDown: _tapDown,
      onTapUp: _tapUp,
      child: Transform.scale(
        scale: _scale,
        child: Container(
          height: 115,
          width: 115,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              Text(
                text1,
                style: TextStyle(color: Colors.orangeAccent),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
            height: 20,
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
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                child: createSection(
                    'Напишите нам',
                    'ghostcomrad@gmail.com',
                    Icon(
                      Icons.alternate_email,
                      color: Colors.orangeAccent,
                      size: 50,
                    ),
                  ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SomeNewPage())),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                  child: createSection(
                      'Позвоните нам',
                      '+7 (800) 555 35 35',
                      Icon(
                        Icons.call,
                        color: Colors.orangeAccent,
                        size: 50,
                      ),
                        ()=>null,
                  ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                  child: createSection(
                      'FAQ',
                      'Часто задаваемы вопросы',
                      Icon(
                        Icons.help_outline_outlined,
                        color: Colors.orangeAccent,
                        size: 50,
                      ),
                        ()=>null,
                  ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                child: createSection(
                    'Мы здесь!',
                    'Показать на карте',
                    Icon(
                      Icons.location_on_sharp,
                      color: Colors.orangeAccent,
                      size: 50,
                    ),
                      ()=>null,
                ),
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
