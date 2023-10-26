import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fui/screen/widget/TextFromfiladDing.dart';

@immutable
class RegiterScreen extends StatefulWidget {
  const RegiterScreen({super.key});

  @override
  State<RegiterScreen> createState() => _RegiterScreenState();
}

class _RegiterScreenState extends State<RegiterScreen> {
  final passwordController = TextEditingController();
  final fnameController = TextEditingController();
  bool visibilityPass = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ສ້າງບັນຊີຜູ້ໃຊ້"),
      ),
      body: Container(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
            child: Column(children: [
              TextFromFiladDing(
                controller: fnameController,
                labelText: "ອີເມວ",
                icons: Icons.email,
                function: false,
                keyboard: TextInputType.emailAddress,
                icons_1: Icons.clear,
              ),
              _git(),
              TextFromFiladDing(
                controller: passwordController,
                labelText: "ລະຫັດຜ່ານ",
                icons: Icons.password,
                keyboard: TextInputType.visiblePassword,
                function: true,
                icons_1: Icons.visibility,
                icons_2: Icons.visibility_off,
              ),
              _git(),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.send),
                label: Text("ລົງທະບຽບ"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }

  _git() {
    return SizedBox(
      height: 15,
    );
  }
}
