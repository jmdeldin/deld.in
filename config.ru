INDEX = File.open('index.html', 'r')          { |f| f.readlines }
CODE  = File.open('rock-paper-scissors', 'r') { |f| f.readlines }

index = Proc.new do |env|
  if env['HTTP_USER_AGENT'] =~ /curl|wget/i
    [200, {'Content-Type' => 'text/plain'}, CODE]
  else
    [200, {'Content-Type' => 'text/html'}, INDEX]
  end
end

run index
