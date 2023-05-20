#!/usr/bin/ruby -w
require 'net/ping'
require 'net/ssh'
#require 'net/ssh/gateway'
# Archivo con la lista de host 
hosts_file = File.expand_path("./hosts")
hosts = File.readlines(hosts_file).map(&:chomp)

if ARGV[0] == "p" then
	# Iterar sobre todas las maquinas y realizar ping al puerto 2
	hosts.each do |host|
  		t = Net::Ping::External.new("#{host}") #Ping en puerto 22 con timeout 0.02
  		if t.ping?
     			puts "#{host}: FUNCIONA"
  		else 
     			puts "#{host}: falla"
  		end
	end
elsif ARGV[0] == "s" 
	
#	hosts.each do |host|
	#	shell = Net::SSH.start(host, a796598).shell.sync
	#	shell.send_command(ARGV[1])
#	end
end
