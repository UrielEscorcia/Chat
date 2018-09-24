import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {

    final _messages = [
        
        "yay",
        "yay asda dasd asdasd safdsf sdfdsf sd s asd asd a djalsdj alsd asd ad",
        "yay",
        'hola',
        "yay",
        'hola',
        "yay",
        'hola',
        "yay",
        'hola',
        "yay",
        'hola',
        "yay asda dasd asdasd safdsf sdfdsf sd s",
        'hola',
        "yay",
        
    ];

    Widget _input(){
        return Container(
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
                children: <Widget>[
                    Flexible(
                        child: TextField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                                border: InputBorder.none,
                                hintText: "type something",
                                hintStyle: TextStyle(color: Color(0xFF9CC2BF)),
                                
                            ),
                            keyboardType: TextInputType.text,
                            maxLines: 1,
                            maxLengthEnforced: false,
                        ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 4.0),
                        child: IconButton(
                        icon: Icon(Icons.send),
                        onPressed: null),
                    ),
                ],
            ),
        );
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Mimo', style: TextStyle(color: Colors.black87),),
                backgroundColor: Colors.transparent,
                elevation: 0.0,
            ),
            backgroundColor: Colors.white,
            body: Column(
                children: <Widget>[
                    Container(
                        child: Flexible(           
                            child: new ListView.builder(

                                padding: new EdgeInsets.all(8.0),                             
                                itemBuilder: (_, int index) {
                                    return BubbleMessage(
                                        text: _messages[index]
                                    );
                                },    
                                itemCount: _messages.length,     
                                reverse: true,                   
                            ),
                            ), 
                    ),
                    _input()
                ]
            )
        );
    }
}

class BubbleMessage extends StatelessWidget {

    final String text;
    BubbleMessage({this.text});

    @override
    Widget build(BuildContext context) {
        final me =  false;

        final textColor = me ? Color(0xFFF9F6F2) : Colors.black87;
        final align = me ? MainAxisAlignment.end : MainAxisAlignment.start;
        final bubbleColor = me ? Color(0xFF9CC2BF) : Colors.white;
        final shadowColor = me ? Color(0x609CC2BF) : Colors.black12;

        return Row(
            mainAxisAlignment: align,
            children: <Widget>[
                Flexible(
                    child: ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 250.0) ,
                        child: Container(
                            margin: EdgeInsets.all(8.0),
                            padding: EdgeInsets.all(12.0),
                            child: Text(text, style: TextStyle(color: textColor),),
                            decoration: BoxDecoration(
                                color: bubbleColor,
                                borderRadius: BorderRadius.circular(16.0),
                                boxShadow: [
                                    BoxShadow(  
                                        color: shadowColor,
                                        blurRadius: 14.0,
                                        offset: new Offset(3.0, 10.0),
                                    )
                                ]
                            ),
                        ),
                    ),
                )
                
            ],
        );
    }
}