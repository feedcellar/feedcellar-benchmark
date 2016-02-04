#!/usr/bin/env ruby

require "fileutils"

system("middleman", "init", "template", "--template=blog")

Dir.chdir("template") do
  Dir.chdir("source") do
    100.times do |i|
      FileUtils.cp("2012-01-01-example-article.html.markdown",
                   "2012-01-01-article#{i}.html.markdown")
    end
  end
  system("bundle", "exec", "middleman", "build")
end

FileUtils.cp("template/build/feed.xml", ".")
