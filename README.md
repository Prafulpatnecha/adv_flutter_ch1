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
<img src="https://github.com/Prafulpatnecha/adv_flutter_ch1/blob/master/img1.png" width="22%" Height="35%">
<img src="https://github.com/Prafulpatnecha/adv_flutter_ch1/blob/master/img2.png" width="22%" Height="35%">
<img src="https://github.com/Prafulpatnecha/adv_flutter_ch1/blob/master/img3.png" width="22%" Height="35%">
<img src="https://github.com/Prafulpatnecha/adv_flutter_ch1/blob/master/img4.png" width="22%" Height="35%">
<img src="https://github.com/Prafulpatnecha/adv_flutter_ch1/blob/master/img5.png" width="22%" Height="35%">
<img src="https://github.com/Prafulpatnecha/adv_flutter_ch1/blob/master/img6.png" width="22%" Height="35%">
<img src="https://github.com/Prafulpatnecha/adv_flutter_ch1/blob/master/img7.png" width="22%" Height="35%">


</a>
</p>
<hr>


https://github.com/Prafulpatnecha/adv_flutter_ch1/assets/144161200/812ab0e6-3477-4300-9f32-75f875bf47b5




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

###
<h1></h1>
<h3 align="center"><i>1.3 Provider Tree</i></h3>
<h1></h1>
<div align="center">
  <img src="https://github.com/Prafulpatnecha/adv_flutter_ch1/assets/144161200/034c2da5-0b07-4ac0-a50a-aecf5fc23680" height=450px hspace=20>
</div>

## What Is State Management?

State Management in Flutter, everything is a widget. The widget can be classified into two categories, one is a Stateless widget, and another is a Stateful widget. The Stateless widget does not have any internal state. It means once it is built, we cannot change or modify it until they are initialized again. On the other hand, a Stateful widget is dynamic and has a state. It means we can modify it easily throughout its lifecycle without reinitialized it again.

## What is provider And how to use definition?

~ A provider is a person who gives someone something they need. If your parents both have jobs so they can feed you and buy you what you need, you can call them providers.

~ In Flutter, a "provider" refers to a design pattern and a package that helps manage state in your application. It's commonly used to efficiently share and update data between different parts of your app, such as widgets, without the need for prop drilling (passing data through multiple widget layers).



###

<h1></h1>
<h3 align="center"><i>1.4 Provider & Change Theme using Provider</i></h3>
<h1></h1>
<div align="center">
<img src="https://github.com/Prafulpatnecha/adv_flutter_ch1/blob/master/provider_image_1.png" width="22%" Height="35%">
<img src="https://github.com/Prafulpatnecha/adv_flutter_ch1/blob/master/provider_image_2.png" width="22%" Height="35%">
</div>


https://github.com/Prafulpatnecha/adv_flutter_ch1/assets/144161200/2f2a4577-474a-4d48-b387-cdb7436b551f

###

<h1></h1>
<h3 align="center"><i>1.5 Quotes Data Solving with Provider</i></h3>
<h1></h1>
<div align="center">
<img src="https://github.com/Prafulpatnecha/adv_flutter_ch1/blob/master/quotes_app.png" height=450px hspace=20>

</div>

https://github.com/Prafulpatnecha/adv_flutter_ch1/assets/144161200/a1c8e552-1216-4693-b5ca-74381bba5b6c


###
<h1></h1>
<h3 align="center"><i>1.5 One Time Intro Screen in Flutter (intro png 1)</i></h3>
<h1></h1>
<div align="center">
<img src="https://github.com/Prafulpatnecha/adv_flutter_ch1/blob/master/intro_image_1.png" height=450px hspace=20>
<img src="https://github.com/Prafulpatnecha/adv_flutter_ch1/blob/master/intro_image_2.png" height=450px hspace=20>
<img src="https://github.com/Prafulpatnecha/adv_flutter_ch1/blob/master/intro_image_3.png" height=450px hspace=20>

</div>

<h1></h1>
<div align="center">
<a href="https://github.com/Prafulpatnecha/adv_flutter_ch1/tree/master/lib/introscreen">-> Code File Link <-</a>
</div>
<h1></h1>

https://github.com/user-attachments/assets/348aae2f-02de-43c3-87b5-59181af45456

