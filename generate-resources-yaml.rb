#!/usr/bin/env ruby

File.open("resources.yaml", "a") do |f|
  0.upto(999) do |i|
    f.puts("- http://localhost/feed#{i}.xml")
  end
end
