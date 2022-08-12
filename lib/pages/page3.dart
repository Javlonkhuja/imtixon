import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  static const path = "/page3";
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  bool? newlist;
  Size? _size;
  bool? mobil;
  @override
  void didChangeDependencies() {
    mobil = true;
    _size = MediaQuery.of(context).size;
    newlist = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: LayoutBuilder(builder: (context, constrains) {
          if (constrains.maxWidth < 500) {
            // mobil = true;
            return mobilBody();
          }
          // mobil = false;
          return Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                  flex: 4, child: SingleChildScrollView(child: mobileBody())),
              Expanded(
                flex: 10,
                child: Container(
                    padding: const EdgeInsets.all(20),
                    color: const Color(0xFFB3A1F8),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const ListTile(
                                title: Text(
                                  "Task List",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 22),
                                ),
                                // trailing: ButtonBar(children: [
                                //   Icon(Icons.restore_from_trash_rounded),
                                //   Icon(Icons.edit)
                                // ],),
                                iconColor: Colors.white,
                                trailing: Icon(Icons.edit)),
                            const TabBar(tabs: [
                              Tab(
                                text: "To Do",
                              ),
                              Tab(
                                text: "Completed",
                              ),
                              Tab(
                                text: "",
                              ),
                            ]),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: const ListTile(
                                trailing: Icon(
                                  Icons.star_rate,
                                  color: Colors.red,
                                ),
                                contentPadding: EdgeInsets.zero,
                                leading: Icon(Icons.check_box_outline_blank),
                                title: Text("Task Name"),
                                subtitle: Text("Today - Note"),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: const ListTile(
                                trailing: Icon(
                                  Icons.star_border_purple500_outlined,
                                ),
                                contentPadding: EdgeInsets.zero,
                                leading: Icon(Icons.check_box_outline_blank),
                                title: Text("Task Name"),
                                subtitle: Text("Note"),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: const ListTile(
                                trailing: Icon(
                                  Icons.star_border_purple500_outlined,
                                ),
                                contentPadding: EdgeInsets.zero,
                                leading: Icon(Icons.check_box_outline_blank),
                                title: Text("Task Name"),
                                subtitle: Text(""),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: const ListTile(
                                trailing: Icon(
                                  Icons.star_border_purple500_outlined,
                                ),
                                contentPadding: EdgeInsets.zero,
                                leading: Icon(Icons.check_box_outline_blank),
                                title: Text("Task Name"),
                                subtitle: Text("Wed, 30 Mar"),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: FloatingActionButton.extended(
                              extendedPadding:
                                  EdgeInsets.only(right: _size!.width * 0.5),
                              elevation: .0,
                              backgroundColor: const Color(0xFF9B8BD5),
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                              label: const Text("Add a task")),
                        )
                      ],
                    )),
              )
            ],
          );
        }),
      ),
    );
  }

  Widget mobilBody() {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: const Text(
                  "Antonio Bonilla",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                leading: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFF5D45DB)),
                  child: const Text(
                    "AB",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                trailing: const Icon(
                  Icons.search,
                  color: Color(0xFF5D45DB),
                ),
              ),
              const ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  "Important",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                leading: Icon(
                  Icons.star_rate_sharp,
                  color: Color(0xFFF85977),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: const Text(
                  "Tasks",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                leading: Image.asset('assets/images/home.png'),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                height: 1,
                color: Colors.grey,
              ),
              const ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  "Task List",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                leading: Icon(Icons.list),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  "House List",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                leading: Icon(Icons.list),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              newlist!
                  ? Container(
                      padding: const EdgeInsets.all(24),
                      height: 200,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.grey),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "New list",
                            style: TextStyle(fontSize: 22),
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              hintText: "Enter list title",
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 15),
                              filled: true,
                              hintStyle: TextStyle(fontSize: 17),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                width: 50,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text("Cancel")),
                              SizedBox(
                                height: 35,
                                child: FloatingActionButton.extended(
                                    backgroundColor: const Color(0xFF5D45DB),
                                    elevation: .0,
                                    onPressed: () {},
                                    label: Row(
                                      children: const [
                                        Icon(Icons.add),
                                        Text(
                                          "Create",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  : const SizedBox(),
              TextButton.icon(
                  onPressed: () {
                    newlist = !newlist!;
                    setState(() {});
                  },
                  icon: const Icon(Icons.add),
                  label: const Text("New List")),
            ],
          )
        ],
      ),
    ));
  }

  Widget mobileBody() {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: const Text(
                  "Antonio Bonilla",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                subtitle: const Text("antonio.bonilla@horus.com.uy"),
                leading: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFF5D45DB)),
                  child: const Text(
                    "AB",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search",
                  isDense: true,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  filled: true,
                  hintStyle: TextStyle(fontSize: 17),
                ),
              ),
              const ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  "Important",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                leading: Icon(
                  Icons.star_rate_sharp,
                  color: Color(0xFFF85977),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: const Text(
                  "Tasks",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                leading: Image.asset('assets/images/home.png'),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                height: 1,
                color: Colors.grey,
              ),
              const ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  "Task List",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                leading: Icon(Icons.list),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  "House List",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                leading: Icon(Icons.list),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
          SizedBox(height: _size!.height * 0.5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              newlist!
                  ? Container(
                      padding: const EdgeInsets.all(24),
                      height: 200,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.grey),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "New list",
                            style: TextStyle(fontSize: 22),
                          ),
                          const TextField(
                            decoration: InputDecoration(
                              hintText: "Enter list title",
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 15),
                              filled: true,
                              hintStyle: TextStyle(fontSize: 17),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                width: 50,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text("Cancel")),
                              SizedBox(
                                height: 35,
                                child: FloatingActionButton.extended(
                                    backgroundColor: const Color(0xFF5D45DB),
                                    elevation: .0,
                                    onPressed: () {},
                                    label: Row(
                                      children: const [
                                        Icon(Icons.add),
                                        Text(
                                          "Create",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  : const SizedBox(),
              TextButton.icon(
                  onPressed: () {
                    // newlist = !newlist!;
                    setState(() {});
                  },
                  icon: const Icon(Icons.add),
                  label: const Text("New List")),
            ],
          )
        ],
      ),
    ));
  }
}
