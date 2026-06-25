import 'dart:io';

void main() async {
  final server = await HttpServer.bind('localhost', 8080);
  final adminDir = Directory.fromUri(Platform.script.resolve('.'));
  print('Admin panel: http://localhost:8080/');
  print('To\'xtatish uchun Ctrl+C bosing');

  await for (final req in server) {
    final path = req.uri.path == '/' ? '/index.html' : req.uri.path;
    final file = File('${adminDir.path}$path');
    if (await file.exists()) {
      final ext = path.split('.').last;
      final mime = {'html': 'text/html', 'css': 'text/css', 'js': 'application/javascript'}[ext] ?? 'text/plain';
      req.response.headers.contentType = ContentType.parse(mime);
      await file.openRead().pipe(req.response);
    } else {
      req.response.statusCode = 404;
      await req.response.close();
    }
  }
}
