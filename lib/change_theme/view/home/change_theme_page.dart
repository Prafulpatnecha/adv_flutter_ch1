import 'package:adv_flutter_ch1/utils/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/provider_method.dart';

class ChangeThemePage extends StatelessWidget {
  const ChangeThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderMethod(),
      builder: (context, child) =>  MaterialApp(
        theme: MyTheme2.lightThemes,
        darkTheme: MyTheme2.darkThemes,
        themeMode: Provider.of<ProviderMethod>(context,listen: true).isMode?ThemeMode.dark:ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home: const ChangeThemeProvider(),
      ),
    );
  }
}

class ChangeThemeProvider extends StatelessWidget {
  const ChangeThemeProvider({super.key});
  @override
  Widget build(BuildContext context) {
  ProviderMethod providerMethodTrue=Provider.of<ProviderMethod>(context,listen: true);
  ProviderMethod providerMethodFalse=Provider.of<ProviderMethod>(context,listen: false);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      // appBar: AppBar(
      //   // title: const Text('data'),
      //   leading:
      //   ),
      //   actions: [
      //   ],
      // ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  // Navigator.of(context).pushNamed('/');
                },
                icon: const Icon(
                  Icons.navigate_before,
                  size: 35,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_circle_outline,
                  size: 30,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Container(
            height: 150,
            width: 150,
            decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/img/girl.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            // child: Image.asset('assets/img/girl.jpg',fit: BoxFit.cover,),
          ),
          const SizedBox(height: 15,),
          Text('Testing User',style: TextStyle(color: Theme.of(context).colorScheme.primary,fontSize: 30,fontWeight: FontWeight.bold),),
          const SizedBox(height: 50,),
          ListTile(
            leading: Icon(!providerMethodTrue.isMode?Icons.sunny:Icons.brightness_3,color: Theme.of(context).colorScheme.onPrimary,size: 30,),
            title: Text((!providerMethodTrue.isMode)?'  Light Mode':'  Dark Mode',style: TextStyle(color: Theme.of(context).colorScheme.primary,fontSize: 20,fontWeight: FontWeight.bold),),
            trailing: Switch(
              value: providerMethodTrue.isMode, onChanged: (value) {
                providerMethodFalse.themeModeSet();
            },),
          ),
          ListTile(
            leading: Icon(Icons.grid_on,color: Theme.of(context).colorScheme.secondary,size: 30,),
            title: Text('  Story',style: TextStyle(color: Theme.of(context).colorScheme.primary,fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          ListTile(
            leading: Icon(Icons.settings,color: Theme.of(context).colorScheme.onSecondary,size: 30,),
            title: Text('  Setting and Privacy',style: TextStyle(color: Theme.of(context).colorScheme.primary,fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          ListTile(
            leading: Icon(Icons.message_outlined,color: Theme.of(context).colorScheme.onSurface,size: 30,),
            title: Text('  Help Center',style: TextStyle(color: Theme.of(context).colorScheme.primary,fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          ListTile(
            leading: Icon(Icons.notifications,color: Theme.of(context).colorScheme.surface,size: 30,),
            title: Text('  Notification',style: TextStyle(color: Theme.of(context).colorScheme.primary,fontSize: 20,fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }
}
