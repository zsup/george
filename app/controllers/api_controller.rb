require 'rest_client'

class ApiController < ApplicationController
	respond_to :html, :json

	@api_base = 'http://swtch.co/device/'

	def get_status(device)
		RestClient.get(@api_base+device.device_id) do |response|
			if response.code == 200
				response
			else
				puts "Failed with #{response.code}"
			end
		end
	end

	def get_logs(device)
		RestClient.get(@api_base+device.device_id+'/logs') do |response|
			if response.code == 200
				response
			else
				puts "Failed with #{response.code}"
			end
		end
	end

	def get_history(device)
		RestClient.get(@api_base+device.device_id+'/history') do |response|
			if response.code == 200
				response
			else
				puts "Failed with #{response.code}"
			end
		end
	end

	def get_schedule(device)
		RestClient.get(@api_base+device.device_id+'/schedule') do |response|
			if response.code == 200
				response
			else
				puts "Failed with #{response.code}"
			end
		end
	end

	def turn_on(device)
		RestClient.put(@api_base+device.device_id+'/turnOn') do |response|
			if response.code == 200
				puts "Success!"
			else
				puts "Failed with #{response.code}"
			end
		end
	end

	def turn_off(device)
		RestClient.put(@api_base+device.device_id+'/turnOff') do |response|
			if response.code == 200
				puts "Success!"
			else
				puts "Failed with #{response.code}"
			end
		end
	end

	def toggle(device)
		RestClient.put(@api_base+device.device_id+'/toggle') do |response|
			if response.code == 200
				puts "Success!"
			else
				puts "Failed with #{response.code}"
			end
		end
	end

	def dim(device, dim_level)
		RestClient.put(@api_base+device.device_id+'/dim/'+dim_level) do |response|
			if response.code == 200
				puts "Success!"
			else
				puts "Failed with #{response.code}"
			end
		end
	end

	def pulse(device)
		RestClient.put(@api_base+device.device_id+'/pulse') do |response|
			if response.code == 200
				puts "Success!"
			else
				puts "Failed with #{response.code}"
			end
		end
	end

	def schedule(device, action)
		# TBD; scheduling has not yet been implemented
	end
end
