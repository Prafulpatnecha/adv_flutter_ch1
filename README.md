# adv_flutter_ch1

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


https://github.com/Prafulpatnecha/adv_flutter_ch1/assets/144161200/9588fb47-d514-49ef-a29b-1d6f1a6fea1f


<h2>➡️AdvFlutterCh1 </h2>
<hr>
<p>
<a href ="">
<img src="https://github.com/Prafulpatnecha/adv_flutter_ch1/blob/master/Screenshot_20240705_192002.png" width="22%" Height="35%">
<img src="https://github.com/Prafulpatnecha/adv_flutter_ch1/blob/master/Screenshot_20240705_191950.png" width="22%" Height="35%">
</a>
</p>
<hr>


# AdvFlutterCh1


## Run Locally

Dark And Light Mode

```bash
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(milliseconds: 1), (timer) {
      setState(() {

      });
    },);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      themeMode: isDark?ThemeMode.dark:ThemeMode.light,
      routes: AppRoutes.routes,
    );
  }
}
```

command Part

```bash
    darkTheme: ThemeData.dark(),
    theme: ThemeData.light(),
    themeMode: isDark?ThemeMode.dark:ThemeMode.light,
```

globle keys

```bash
    bool isDark=false;
    Color colorYellow=const Color(0xffFFCC00);
    Color colorRed=const Color(0xffFD3B31);
```

Command Run Button Full Details

```bash
        GestureDetector(
                onTap: () {
                  setState(() {
                    isDark=false;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height:115,
                    width: double.infinity,
                    decoration: BoxDecoration(
                    color: colorYellow,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Text('Light Icon',style: TextStyle(color: isDark?Colors.white:Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isDark=true;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height:115,
                    width: double.infinity,
                    decoration: BoxDecoration(
                    color: colorRed,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Text('Dark Icon',style: TextStyle(color: isDark?Colors.white:Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                  ),
                ),
              ),
```


