INDEX = File.open('index.html', 'r') { |f| f.readlines }

class App
  def self.call(env)
    [200, {'Content-Type' => 'text/html'}, INDEX]
  end
end

run App
