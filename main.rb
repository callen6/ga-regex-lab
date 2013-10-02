require_relative 'source'
require 'pry'

def valid_ip_addresses(text)
	text.scan(/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/) 
end
valid_ip_array = []
valid_ip_array << valid_ip_addresses($source_text)


def valid_mit_ip_addresses(mit_text)
	mit_text.scan(/18?\.\d{1,3}\.\d{1,3}\.\d{1,3}/) 
end
valid_mit_ip_array = []
valid_mit_ip_array << valid_mit_ip_addresses($source_text)


def non_mit_ip_addresses(non_mit_text)
	non_mit_text.scan(/\d{1,3}[^8]\.\d{1,3}\.\d{1,3}\.\d{1,3}/)  
end 
non_mit_array = []
non_mit_array << non_mit_ip_addresses($source_text)


def valid_phone_numbers(numbers)
	numbers.scan(/[^-][^1]\d{2}-\d{3}-\d{4}/)
	numbers.scan(/[^-]\d{3}-\d{4}/)  
end
valid_numbers_array = []
valid_numbers_array << valid_phone_numbers($source_text)

def area_codes 
end

def email_addresses 
end

def zip_codes 
end

def hex_colors 
end