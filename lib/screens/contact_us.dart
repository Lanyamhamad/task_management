import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsScreen extends StatelessWidget {
  final TextEditingController smsController = TextEditingController();

  ContactUsScreen({Key? key}) : super(key: key);

  Future<void> _launchURL(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildHeader(),
            const SizedBox(height: 20),
            _buildContactOptions(),
            const SizedBox(height: 20),
            _buildSocialMediaButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: const [
        Text('Get in Touch', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Text('Reach out to us for any inquiries or follow us on social media.',
            textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.grey)),
      ],
    );
  }

  Widget _buildContactOptions() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildContactButton(Icons.email, 'Send Email', 'mailto:taskmanager@gmail.com?subject=Inquiry&body=Hello, I would like to ask...'),
            const SizedBox(height: 10),
            _buildContactButton(Icons.sms, 'Send SMS', 'sms:0770123456789?body=Hello'),
          ],
        ),
      ),
    );
  }

  Widget _buildContactButton(IconData icon, String text, String url) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurpleAccent,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: () async => await _launchURL(url),
      icon: Icon(icon, color: Colors.white),
      label: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }

  Widget _buildSocialMediaButtons() {
    return Column(
      children: [
        const Text('Follow us on:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        _buildSocialButton(ButtonType.instagram, 'Instagram', 'https://www.instagram.com'),
        _buildSocialButton(ButtonType.youtube, 'YouTube', 'https://www.youtube.com'),
        _buildSocialButton(ButtonType.whatsapp, 'WhatsApp', 'https://www.whatsapp.com'),
      ],
    );
  }

  Widget _buildSocialButton(ButtonType buttonType, String title, String url) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: FlutterSocialButton(
        onTap: () => _launchURL(url),
        mini: false,
        buttonType: buttonType,
        title: title,
      ),
    );
  }
}
