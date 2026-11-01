import 'package:flutter/material.dart';
//import 'package:nti6/onboarding1.dart'; // تأكدي أن هذا هو مسار ملف الصفحة الأولى لديك

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // اجعل شاشة الـ Splash هي البداية
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // الانتقال تلقائياً للصفحة الأولى بعد 3 ثوانٍ
    Future.delayed(const Duration(seconds: 3), () {
     // Navigator.of(context).pushReplacement(
       // MaterialPageRoute(
         // builder: (context) => const Onboarding1(), // استبدليها بكلاس الصفحة الأولى لديك
       // ),
    //  );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // خلفية سوداء بالكامل
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // المربع الذي يحتوي على حرف L باللون الذهبي
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 182, 161, 122), // لون ذهبي
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Center(
                child: Text(
                  "L",
                  style: TextStyle(
                    color: Color.fromARGB(255, 182, 161, 122),
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),

            // كلمة LUXE بخط أنيق ومتباعد
            const Text(
              "LUXE",
              style: TextStyle(
                color: Color.fromARGB(255, 182, 161, 122),
                fontSize: 18,
                letterSpacing: 6, // لزيادة التباعد بين الحروف لتشبه التصميم
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 8),

            // الخط الفاصل الصغير تحت الكلمة
            Container(
              width: 20,
              height: 1.5,
              color: const Color.fromARGB(255, 182, 161, 122),
            ),
          ],
        ),
      ),
    );
  }
}