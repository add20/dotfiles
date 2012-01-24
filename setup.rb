#!/usr/bin/env ruby

require "erb"

erbs = Dir.glob('**/*.erb', File::FNM_DOTMATCH)
erbs.each do |from|
  File.open(from.sub(/\.erb$/, ''), "w") do |f|
    f.print ERB.new(File.read(from), nil, '-').result(binding)
  end
end

