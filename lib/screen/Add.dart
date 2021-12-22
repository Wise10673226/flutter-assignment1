import 'package:assignment1/screen/AodaUchiha.dart';
import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Vibe'),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: ListView(
          children: [
            Column(children: [
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter name, email, number',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      labelStyle: TextStyle(fontSize: 18)),
                ),
              )
            ]),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1492633423870-43d1cd2775eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGJsYWNrJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                  ),
                  title: Text('Aoda Uchiha'),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AodaUchiha(),
                    ));
                  },
                )
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1492462543947-040389c4a66c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fGJsYWNrJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                  ),
                  title: Text('Gamma Kichi'),
                  onTap: () {},
                )
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1589317621382-0cbef7ffcc4c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fGJsYWNrJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                  ),
                  title: Text('Orochi Maru'),
                  onTap: () {},
                )
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1523825036634-aab3cce05919?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzR8fGJsYWNrJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                  ),
                  title: Text('Gaara Kasekage'),
                  onTap: () {},
                )
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://media.istockphoto.com/photos/african-mid-woman-using-smartphone-at-home-picture-id1319763415?b=1&k=20&m=1319763415&s=170667a&w=0&h=J9vN7w33elL-hY1CogyTB2BzzKpiEbmPqTdsQ6fBbuI='),
                  ),
                  title: Text('Guy Sensei'),
                  onTap: () {},
                )
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://media.istockphoto.com/photos/portrait-of-cheerful-mid-adult-black-man-in-casual-clothing-picture-id1265576300?b=1&k=20&m=1265576300&s=170667a&w=0&h=hW1FZPrA_XktOu70WD8dweE2ErDNPAjW1ZjuXpJJz7A='),
                  ),
                  title: Text('Haku Mist'),
                  onTap: () {},
                )
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1589317621382-0cbef7ffcc4c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fGJsYWNrJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                  ),
                  title: Text('Kaguya Otsu'),
                  onTap: () {},
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListTile(
                    leading: Icon(Icons.archive),
                    title: Text('Archived Conversations'),
                    onTap: () {},
                  ),
                )
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.red,
        ));
  }
}
