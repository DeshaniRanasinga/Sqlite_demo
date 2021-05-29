import 'package:flutter/material.dart';
import 'package:insteller/global/app_colors.dart';
import 'package:insteller/ui/widgets/common.dart';
import 'package:insteller/ui/widgets/custom_text_field.dart';
import 'package:validators/validators.dart' as validator;

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: white225,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Form(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 60, 20, 20),
                child:  Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: textLabel('Email', 18.0, FontWeight.w700, black0),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Container(
                        child: CustomTextField(
                          isEmail: true,
                          validator: (String value) {
                            if (!validator.isEmail(value)) {
                              return 'Please enter a valid email';
                            }
                            return null;
                          },
                          onChanged: (String value) {
                            // model.email = value;
                          },
                        ),
                      ),
                      flex: 2,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child:  Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: textLabel('Password',18.0, FontWeight.w700, black0),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Container(
                        child: CustomTextField(
                          isPassword: true,
                          validator: (String value) {
                            if (value.length < 6) {
                              return 'Password should be minimum 6 characters';
                            }
                            // _formKey.currentState.save();
                            return null;
                          },
                          onChanged: (String value) {
                            // model.password = value;
                          },
                        ),
                      ),
                      flex: 2,
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ElevatedButton(
                  child:  textLabel('LOGIN', 16.0, FontWeight.w700, white225),
                  onPressed: () => {},
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                child: TextButton(
                  child:  textLabel('Don\'t you have a account? SignUp', 12.0, FontWeight.w700, green),
                  onPressed: () => {},
                ),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}