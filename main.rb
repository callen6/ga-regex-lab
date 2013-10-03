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
	numbers.scan(/\d{3}?\d?-?\d{3}-\d{4}/).slice(1..3)
		#/[^-]\d{3}-\d{4}/  
		#/\d{3}?\d?-?\d{3}-\d{4}/
		#/[^-][^1]\d{2}-\d{3}-\d{4}/
end
valid_numbers_array = []
valid_numbers_array << valid_phone_numbers($source_text)

def area_codes(codes)
	codes.scan(/[6-8][0-1]0?7?/).slice(1,2)
end
valid_area_codes_array = []
valid_area_codes_array << area_codes($source_text)

def email_addresses(emails)
	emails.scan(/\w{1,20}@\w{1,20}.\w{1,6}/)
end
valid_emails_array = []
valid_emails_array << email_addresses($source_text)

def zip_codes (zip_codes)
	zip_codes.scan(/\b\d{5}\b/)
end
valid_zip_code_array =

def hex_colors(hex) 
	# hex.scan(/#\b\w{1,6}\b/)
	# hex.scan(/\b\w{6}\b\s?\./)
	# hex.scan(/#\w{6}/).slice(0..2)
	hex.scan(/\h{6}/).slice(1,3)
end
valid_hex_array = []
valid_hex_array << hex_colors($source_text)


