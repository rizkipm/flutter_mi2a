
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PageRegister extends StatefulWidget {
  const PageRegister({super.key});

  @override
  State<PageRegister> createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {
  TextEditingController fullname = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController tglLahir = TextEditingController();
  TextEditingController password = TextEditingController();

  Future selectDate() async {
    DateTime? pickDate = await showDatePicker(
      initialDate: DateTime.now(),
      context: context,
      firstDate: DateTime(1950),
      lastDate: DateTime(2100),
    );
    if (pickDate != null) {
      tglLahir.text = DateFormat("dd-MM-yyyy").format(pickDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text("Form Register", style: TextStyle(fontSize: 18)),
                ),
                SizedBox(height: 13),
                CostumeInput(
                  labelInput: "Full Name",
                  controller: fullname,
                  hintText: "Roni Putra",
                  textInputType: TextInputType.text,
                ),
                SizedBox(height: 13),
                CostumeInput(
                  labelInput: "Username",
                  controller: username,
                  hintText: "r0n1",
                  textInputType: TextInputType.text,
                ),
                SizedBox(height: 13),
                CostumeInput(
                  labelInput: "Email",
                  controller: email,
                  hintText: "rn.putra@gmail.com",
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: 13),
                CostumeInput(
                  labelInput: "Tanggal Lahir",
                  controller: tglLahir,
                  hintText: "dd/mm/YYYY",
                  textInputType: TextInputType.datetime,
                  onTap: (){
                    selectDate();
                  },
                ),
                SizedBox(height: 13),
                CostumeInput(
                  labelInput: "Password",
                  controller: password,
                  hintText: "*****",
                  textInputType: TextInputType.text,
                  obscureText: true,
                ),
              ],
            ),
          ), // cara merapikan coding ctrl + l
        ),
      ),
    );
  }
}

class CostumeInput extends StatelessWidget {
  final String labelInput;
  final TextEditingController controller;
  final String hintText;
  final TextInputType textInputType;
  final VoidCallback? onTap;
  final bool obscureText;


  const CostumeInput({
    super.key,
    required this.labelInput,
    required this.controller,
    required this.hintText,
    required this.textInputType,
    this.obscureText = false,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelInput, style: TextStyle(fontSize: 18)),
        TextFormField(
          controller: controller,
          //fungsi untuk memproses input -> ambil data dari input
          validator: (val) {
            return val!.isEmpty ? "Input tidak boleh kosong" : null;
          },
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
          keyboardType: textInputType,
          obscureText: obscureText,
          onTap: (){
            //Event Ketika di klik//
            onTap?.call();
          },
        ),
      ],
    );
  }
}
