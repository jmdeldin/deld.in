INDEX = File.open('index.html', 'r') { |f| f.readlines }
CODE  = File.open('rock-paper-scissors', 'r') { |f| f.readlines }

class App
  def self.call(env)
    if env['HTTP_USER_AGENT'] =~ /curl/
      [200, {'Content-Type' => 'text/plain'}, CODE]
    else
      [200, {'Content-Type' => 'text/html'}, INDEX]
    end
  end
end

run App
