import 'package:flutter/material.dart';
import '../HomePage/home.dart';
class SettingFragment extends StatefulWidget {
  @override
  _SettingFragmentState createState() => _SettingFragmentState();
}

class _SettingFragmentState extends State<SettingFragment> {
  bool isLoading = false;
  String nickname = '';
  String aboutMe = '';
  TextEditingController controllerAboutMe = TextEditingController();
  FocusNode focusNodeNickname = FocusNode();
  FocusNode focusNodeAboutMe = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
            }, icon: Icon(Icons.arrow_back)),
            SizedBox(width: 5,),
            Text(
              "Settings",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAvatar(),
            SizedBox(height: 20.0),
            _buildInputFields(),
            SizedBox(height: 20.0),
            _buildUpdateButton(),
            SizedBox(height: 10.0),
            _buildLogoutButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatar() {
    return Container(
      alignment: Alignment.center,
      child: Stack(
        children: [
          // Avatar widget
          IconButton(
            icon: Icon(
              Icons.camera_alt,
              color: Colors.blueGrey.withOpacity(0.5),
            ),
            onPressed: () {},
            padding: EdgeInsets.all(30.0),
            splashColor: Colors.transparent,
            highlightColor: Colors.blueGrey,
            iconSize: 30.0,
          ),
        ],
      ),
      width: double.infinity,
      margin: EdgeInsets.all(20.0),
    );
  }

  Widget _buildInputFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInputLabel('Nickname'),
        _buildTextField(controller: controllerAboutMe, onChanged: (value) => nickname = value, focusNode: focusNodeNickname),
        SizedBox(height: 20.0),
        _buildInputLabel('Username'),
        _buildTextField(controller: controllerAboutMe, onChanged: (value) => aboutMe = value, focusNode: focusNodeAboutMe),
      ],
    );
  }

  Widget _buildInputLabel(String label) {
    return Container(
      child: Text(
        label,
        style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, color: Colors.blueGrey),
      ),
      margin: EdgeInsets.only(bottom: 5.0),
    );
  }

  Widget _buildTextField({required TextEditingController controller, required Function(String) onChanged,required FocusNode focusNode}) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          hintText: '_',
          contentPadding: EdgeInsets.all(5.0),
          hintStyle: TextStyle(color: Colors.grey),
        ),
        controller: controller,
        onChanged: onChanged,
        focusNode: focusNode,
      ),
      margin: EdgeInsets.only(bottom: 20.0),
    );
  }

  Widget _buildUpdateButton() {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          // Add functionality to update settings
          print("Update settings pressed");
        },
        splashColor: new Color(0xff8d93a0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey[900],
            borderRadius: BorderRadius.circular(5.0),
          ),
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
          child: Text(
            'UPDATE',
            style: TextStyle(fontSize: 16.0, color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _buildLogoutButton() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            // Add your logout logic here
            print("Logout pressed");
          },
          highlightColor: new Color(0xff8d93a0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blueGrey[900],
              borderRadius: BorderRadius.circular(5.0),
            ),
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
            child: Text(
              'LOGOUT',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
