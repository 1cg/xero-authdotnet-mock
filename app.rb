require 'sinatra'

get '/' do 
"""
<html>
  <body>
    <script type='text/javascript'>
      window.location='http://www.google.com';
    </script>
  </body>
</html>
"""
end
