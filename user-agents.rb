#!/bin/ruby

require "http"

resp = HTTP.post("https://user-agents.net/random", 
                 form: { "limit": ARGV[0], "action": "generate" }).to_s

resp.to_s.scan(/<li><a href="\/string.*">(.*)<\/a><\/li>/).each do |match|
  puts match
end
