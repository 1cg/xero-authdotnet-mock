require 'sinatra'

get '/r' do 
  redirect = params[:url]
  if redirect
    redirect = URI.decode(redirect)
"""
<html>
  <body>
    <script type='text/javascript'>
      window.location='#{redirect}';
    </script>
  </body>
</html>
"""
  else
"""
<html>
  <body>
    <h1>No Redirect Supplied</h1>
  </body>
</html>
"""
  end
end

get '/' do 
"""
<html>
  <body>
    <h1>Hello Xero</h1>
  </body>
</html>
"""
end

