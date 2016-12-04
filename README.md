# Simple hanami-rb based application, which uses google calendar API and renders your current events as JSON API.

This project uses <a href="http://hanamirb.org/" target="_blank">Hanami</a> ruby framework and <a href="https://github.com/northworld/google_calendar" target="_blank">google_calendar</a> ruby gem.


## Installation and usage

  1. Add your google calendar credentials into your system environment (.env file):

    ```bash
    CLIENT_ID="XXXXXXXXXX"
    CLIENT_SECRET="XXXXXXXXXX"
    CALENDAR_ID="XXXXXXXXXX"
    REDIRECT_URI="XXXXXXXXXX"
    REFRESH_TOKEN="XXXXXXXXXX"
    ```
  2. Run server
    ```bash
    bundle install && bundle exec hanami server
    ```

  3. Test your Google Calendar API:
    ```bash
    $ curl http://localhost:2300 -H "Content-Type: application/json"
[{"summary":"Daily Standup","visibility":"public","transparency":"transparent","description":null,"location":null,"start":{"dateTime":"2016-12-02T07:45:00Z","timeZone":"Europe/Volgograd"},"end":{"dateTime":"2016-12-02T08:00:00Z","timeZone":"Europe/Volgograd"},"reminders":{"useDefault":true},"guestsCanInviteOthers":null,"guestsCanSeeOtherGuests":null,"recurrence":["RRULE:FREQ=DAILY"]},{"summary":"Barcelona - Real","visibility":"default","transparency":"transparent","description":null,"location":null,"start":{"dateTime":"2016-12-03T11:00:00Z"},"end":{"dateTime":"2016-12-03T12:00:00Z"},"reminders":{"useDefault":true},"guestsCanInviteOthers":null,"guestsCanSeeOtherGuests":null}]%
    ```


## Changelog

### 0.0.1
- Basic JSON response for google calendar events.