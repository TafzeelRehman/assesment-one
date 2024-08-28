import 'package:flutter/material.dart';
import 'package:test/nextscreen.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212832),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Create your account',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                buildTextField(
                  label: 'Full Name',
                  hintText: 'User Name',
                  icon: Icons.person,
                  controller: nameController,
                ),
                const SizedBox(height: 10),
                buildTextField(
                  label: 'Email Address',
                  hintText: 'example@example.com',
                  icon: Icons.email,
                  controller: emailController,
                ),
                const SizedBox(height: 10),
                Container(
                    height: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 250,
                          child: buildTextField(
                            label: 'Password',
                            hintText: 'Password',
                            icon: Icons.lock,
                            controller: passwordController,
                            isPassword: true,
                          ),
                        ),
                        buildTextField(
                          label: '',
                          hintText: 'New fild',
                          icon: Icons.delete,
                          controller: passwordController,
                          isPassword: true,
                        ),
                        buildTextField(
                          label: '',
                          hintText: 'New field',
                          icon: Icons.delete,
                          controller: passwordController,
                          isPassword: true,
                        ),
                      ],
                    )),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (bool? value) {},
                      activeColor: Colors.amber,
                    ),
                    const Expanded(
                      child: Text(
                        'I have read & agree to DayTask Privacy Policy, Terms & Condition',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFfed36a),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Nextpage(),
                          ));
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    '____________Or continue with____________',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      side: const BorderSide(color: Colors.white),
                    ),
                    icon: const Icon(Icons.g_mobiledata, color: Colors.white),
                    onPressed: () {},
                    label: const Text(
                      'Google',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('already have an account?',
                          style: TextStyle(color: Colors.grey)),
                      Text('Login',
                          style: TextStyle(color: const Color(0xFFfed36a))),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField({
    required String label,
    required String hintText,
    required IconData icon,
    required TextEditingController controller,
    bool isPassword = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFF455A64),
          ),
        ),
        const SizedBox(height: 5),
        TextFormField(
          controller: controller,
          obscureText: isPassword,
          decoration: InputDecoration(
            prefixIcon: Icon(icon, color: Colors.white),
            hintText: hintText,
            filled: true,
            fillColor: const Color(0xFF455A64),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            hintStyle: const TextStyle(color: Colors.white),
          ),
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
