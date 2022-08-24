import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      home: profilePage(),
    );
  }
}

class profilePage extends StatefulWidget {
  @override
  profilePageState createState() => profilePageState();
}

class profilePageState extends State<profilePage>
    with TickerProviderStateMixin {
  static const List<Tab> _tabs = [
    Tab(
      child: Text(
        "Mon 22",
      ),
    ),
    Tab(
      child: Text(
        "Tue 23",
      ),
    ),
    Tab(
      child: Text(
        "Wed 24",
      ),
    ),
    Tab(
      child: Text(
        "Thu 25",
      ),
    ),
    Tab(
      child: Text(
        "Fri 26",
      ),
    ),
    Tab(
      child: Text(
        "Sat 27",
      ),
    ),
    Tab(
      child: Text(
        "Sun 28",
      ),
    ),
  ];

  // late AnimationController animation;
  // late Animation<double> _fadeInFadeOut;
  //
  //
  // @override
  // void initState() {
  //   super.initState();
  //   animation = AnimationController(vsync: this, duration: Duration(seconds: 3),);
  //   _fadeInFadeOut = Tween<double>(begin: 0.0, end: 0.1).animate(animation);
  //
  //   animation.addStatusListener((status){
  //     if(status == AnimationStatus.completed){
  //       // animation.reverse();
  //     }
  //     else if(status == AnimationStatus.dismissed){
  //       animation.forward();
  //     }
  //   });
  //   animation.forward();
  // }
  ///
  // late final Animation<double> _formElementAnimation;
  // late final Animation<double> _headerTextAnimation;
  // late final AnimationController _animationController;
  // Duration kLoginAnimationDuration = const Duration(milliseconds: 1000);
  //
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   _animationController = AnimationController(
  //     vsync: this,
  //     duration: kLoginAnimationDuration,
  //   );
  //   final fadeSlideTween = Tween<double>(begin: 0.0, end: 1.0);
  //   _headerTextAnimation = fadeSlideTween.animate(CurvedAnimation(
  //     parent: _animationController,
  //     curve: const Interval(
  //       0.0,
  //       0.6,
  //       curve: Curves.easeInOut,
  //     ),
  //   ));
  //   _formElementAnimation = fadeSlideTween.animate(CurvedAnimation(
  //     parent: _animationController,
  //     curve: const Interval(
  //       0.7,
  //       1.0,
  //       curve: Curves.easeInOut,
  //     ),
  //   ));
  //   super.initState();
  //   _animationController.forward();
  // }
  //
  // @override
  // void dispose() {
  //   _animationController.dispose();
  //   super.dispose();
  // }

  // late final TabController _tabController;
  // late final AnimationController _controller;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _controller = AnimationController(
  //     vsync: this,
  //     duration: Duration(milliseconds: 500),
  //     value: 1,
  //   );
  //
  //   _tabController = TabController(
  //     length: 7,
  //     vsync: this,
  //   )..addListener(() {
  //     if (_tabController.indexIsChanging) {
  //       _controller.forward(from: 0.5);
  //       setState(() {
  //
  //       });
  //
  //     }
  //   });
  // }

  late  TabController _tabController;
  late  AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
      value: 1,
    );

    _tabController = TabController(
      length: 7,
      vsync: this,
    )..addListener(() {
      if (_tabController.indexIsChanging) {
        _controller.forward(from: 0.1);
        setState(() {
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: SizedBox(
            height: 20,
            child: ScaleTransition(
             scale: _controller,
                child:[
                  Text("Mon 22"),
                  Text("Tue 23"),
                  Text("Wed 24"),
                  Text("Thu 25"),
                  Text("Fri 26"),
                  Text("Sat 27"),
                  Text("Sun 28"),
                ][_tabController.index]),
          ),
          centerTitle: true,
          backgroundColor: Colors.purple,
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 45,
                child: TabBar(
                     controller: _tabController,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey,
                    labelStyle: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                    unselectedLabelStyle:
                        const TextStyle(fontStyle: FontStyle.italic),
                    overlayColor: MaterialStateColor.resolveWith(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.transparent;
                      }
                      if (states.contains(MaterialState.focused)) {
                        return Colors.orange;
                      } else if (states.contains(MaterialState.hovered)) {
                        return Colors.pinkAccent;
                      }
                      return Colors.transparent;
                    }),
                    indicatorWeight: 2,
                    indicatorColor: Colors.red,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                      ),
                      color: Colors.purple,
                    ),
                    physics: const BouncingScrollPhysics(),
                    isScrollable: true,
                    tabs: _tabs),
              ),
              Expanded(
                child: TabBarView(
                    controller: _tabController,
                    children: _tabs),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
