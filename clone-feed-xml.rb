#!/usr/bin/env ruby

require "fileutils"

FileUtils.mkdir_p("www")

1000.times do |i|
  xml = File.read("feed.xml").gsub("http://blog.url.com", "http://blog#{i}.url.com")
  File.write("www/feed#{i}.xml", xml)
end
