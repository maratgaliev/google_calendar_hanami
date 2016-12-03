module Web::Controllers::Calendar
  class Index
    include Web::Action

    def call(params)
		self.body = JSON.dump(Calendar::GoogleCalendar.get_events(params[:q]))
    end
  end
end
