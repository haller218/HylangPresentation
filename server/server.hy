(import http.server)
(import socketserver)

(setv PORT 8080)
(setv Handler http.server.SimpleHTTPRequestHandler)

(with [httpd (socketserver.TCPServer (, "" PORT) Handler)]
  (print "serving at port" PORT)
  (httpd.serve_forever))
