import 'package:flutter/material.dart';
import 'package:whatsappui/colors.dart';
import 'package:whatsappui/widgets/chat_list.dart';
import 'package:whatsappui/widgets/info.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[0]['name'].toString(),
        ),
        centerTitle: false,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.video_call),),
          IconButton(onPressed: (){}, icon: const Icon(Icons.call),),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert),),
        ],
      ),
      body: Column(
        //Chat List
        children: const [
          Expanded(child: ChatList()
          ),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: mobileChatBoxColor,
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(Icons.emoji_emotions,color: Colors.grey,)),
                              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                // child: Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: const [
                //     Icon(Icons.camera_alt, color: Colors.grey,),
                //     Icon(Icons.attach_file, color: Colors.grey,),
                //     Icon(Icons.money, color: Colors.grey,),
                //   ],
                // ),
              ),
            ),
          )
        ],
      ),
      
    );
  }
}