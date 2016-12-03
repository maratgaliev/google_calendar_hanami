require 'rubygems'
require 'google_calendar'

module Calendar
	class GoogleCalendar
		def self.get_events
			cal = Google::Calendar.new(:client_id     => ENV['CLIENT_ID'],
			                           :client_secret => ENV['CLIENT_SECRET'],
			                           :calendar      => ENV['CALENDAR_ID'],
			                           :redirect_url  => ENV['REDIRECT_URI']
			                           )

			cal.login_with_refresh_token(ENV['REFRESH_TOKEN'])
			events = cal.events.map { |x| JSON.parse(x.to_json) }
			events
		end
	end
end