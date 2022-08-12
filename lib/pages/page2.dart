import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  static const path = "/page2";
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  bool? mobil;
  @override
  void didChangeDependencies() {
    mobil = true;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(builder: (context, constrains) {
        if (constrains.maxWidth < 500) {
          mobil = true;
          return MobilBody(
            ismobil: mobil,
          );
        }
        mobil = false;
        return Padding(
          padding: const EdgeInsets.only(top: 32),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                MobilBody(
                  ismobil: mobil,
                ),
                Container(
                    color: const Color(0xFFF2F0FC),
                    child: Image.asset("assets/images/1.png"))
              ],
            ),
          ),
        );
      }),
    );
  }
}

class MobilBody extends StatelessWidget {
  bool? ismobil;
  MobilBody({
    this.ismobil,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: ismobil!
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/1.png', width: 360),
                  const SizedBox(height: 84),
                  const Text("Welcome to\n Uno To Do!",
                      style: TextStyle(fontSize: 36, color: Color(0xFF1C1B1F))),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Start using the best To Do app",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFF5D33ED)),
                      )),
                  Container(
                    margin: const EdgeInsets.only(top: 80),
                    height: 40,
                    width: 310,
                    child: CupertinoButton(
                        padding: EdgeInsets.zero,
                        color: const Color(0xFF5D33ED),
                        borderRadius: BorderRadius.circular(50),
                        child: const Text("Get started"),
                        onPressed: () {
                          Navigator.pushNamed(context, '/page3');
                        }),
                  )
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/uno.png', width: 360),
                  const SizedBox(height: 84),
                  const Text("Welcome to\n Uno To Do!",
                      style: TextStyle(fontSize: 36, color: Color(0xFF1C1B1F))),
                  const Text(
                    "Start using the best to-do app, you can\ncreate and manage your To Do lists to\nimprove your organization.",
                    style: TextStyle(fontSize: 16, color: Color(0xFF5D33ED)),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 80),
                    height: 40,
                    width: 310,
                    child: CupertinoButton(
                        padding: EdgeInsets.zero,
                        color: const Color(0xFF5D33ED),
                        borderRadius: BorderRadius.circular(50),
                        child: const Text("Get started"),
                        onPressed: () {
                          Navigator.pushNamed(context, '/page3');
                        }),
                  )
                ],
              ),
      ),
    );
  }
}
