#!/usr/bin/env ruby

Dir.chdir("www") do
  system("sudo ruby -run -e httpd .")
end
