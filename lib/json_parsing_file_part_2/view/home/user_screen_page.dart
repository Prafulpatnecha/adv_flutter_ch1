import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/golble_value.dart';
import '../../provider/user_provider.dart';

class UserScreenPage extends StatelessWidget {
  const UserScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    UserProvider userProviderTrue=Provider.of<UserProvider>(context,listen: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Json',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: ListView.builder(itemCount: userProviderTrue.userJsonList.length,itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          selectIndex=index;
          showDialog(context: context, builder: (context) {
            return AlertDialog(
              title: Column(
                children: [
                  Row(
                    children: [
                      Text('${userProviderTrue.userJsonList[index].id}) '),
                      FittedBox(
                        fit: BoxFit.cover,
                          child: Text(userProviderTrue.userJsonList[index].name,style: const TextStyle(color: Colors.black,fontSize: 20),)),
                    ],
                  ),
                  Text(userProviderTrue.userJsonList[index].username,style: const TextStyle(color: Colors.black),),
                ],
              ),
              content: ListTile(
                title: SizedBox(
                  height: 400,
                  width: 800,
                  child: Column(
                    children: [
                      Text(userProviderTrue.userJsonList[index].phone),
                      const Divider(color: Colors.blue,height: 5,),
                      Text(userProviderTrue.userJsonList[index].email),
                      const Divider(color: Colors.blue,height: 5,),
                      Text(userProviderTrue.userJsonList[index].address.street),
                      const Divider(color: Colors.blue,height: 5,),
                      Text(userProviderTrue.userJsonList[index].address.city),
                      const Divider(color: Colors.blue,height: 5,),
                      Text(userProviderTrue.userJsonList[index].address.suite),
                      const Divider(color: Colors.blue,height: 5,),
                      Text(userProviderTrue.userJsonList[index].address.zipcode),
                      const Divider(color: Colors.blue,height: 5,),
                      Text(userProviderTrue.userJsonList[index].website),
                      const Divider(color: Colors.blue,height: 5,),
                      Text('${userProviderTrue.userJsonList[index].address.geo.lng}/${userProviderTrue.userJsonList[index].address.geo.lat}'),
                      const Divider(color: Colors.blue,height: 5,),
                      Text(userProviderTrue.userJsonList[index].company.name),
                      const Divider(color: Colors.blue,height: 5,),
                      Text(userProviderTrue.userJsonList[index].company.catchPhrase,textAlign: TextAlign.center,),
                      const Divider(color: Colors.blue,height: 5,),
                      Text(userProviderTrue.userJsonList[index].company.bs,textAlign: TextAlign.center,),
                      // SizedBox(height: 5,),
                    ],
                  ),
                ),
              ),
              
              actions: [
                ElevatedButton(onPressed: () {
                  Navigator.of(context).pop();
                }, child: const Text('Back'))
              ],
            );
          },);
        },
        child: ListTile(
          leading: Text(userProviderTrue.userJsonList[index].id.toString()),
          title: Text(userProviderTrue.userJsonList[index].name,style: const TextStyle(color: Colors.black),),
          subtitle: Text(userProviderTrue.userJsonList[index].phone),
          trailing: Text('${userProviderTrue.userJsonList[index].address.geo.lat} ${userProviderTrue.userJsonList[index].address.geo.lng}'),
        ),
      ),),
    );
  }
}
