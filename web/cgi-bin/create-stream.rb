#!/usr/bin/env ruby

require "cgi"
require 'securerandom'

# Print some variables
qs = ENV['QUERY_STRING']

qs_vars = CGI::parse(qs)

puts "Content-type: text/html"
puts ""

docker_image = "jcenzano/loadtestv1"
guid = SecureRandom.uuid
rtmp_url = qs_vars["url"][0]
media = qs_vars["media"][0]

#Run docker
exec_str = "docker run -d --name=\"loadtest_container_#{guid}\" -e \"FILE_TO_STREAM=#{media}\" -e \"DEST_URL=#{rtmp_url}\" -e \"SHOW_LOGS=0\" #{docker_image}"
puts exec_str
puts "<br>"

container_id = `#{exec_str}`

#TODO: save container to disk to list 
