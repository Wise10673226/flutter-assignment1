import 'package:flutter/material.dart';

class AodaUchiha extends StatelessWidget {
  const AodaUchiha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String message = '';
    return Scaffold(
        appBar: AppBar(
          title: Text('Aoda Uchiha'),
        ),
        body: Container(
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                    textCapitalization: TextCapitalization.sentences,
                    autocorrect: true,
                    enableSuggestions: true,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white70,
                        labelText: 'Type your message',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 0),
                            gapPadding: 1,
                            borderRadius: BorderRadius.circular(25))),
                    onChanged: (value) {}),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                child: Icon(
                  Icons.send,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ));
  }
}
