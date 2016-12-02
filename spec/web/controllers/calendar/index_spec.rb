require 'spec_helper'
require_relative '../../../../apps/web/controllers/calendar/index'

describe Web::Controllers::Calendar::Index do
  let(:action) { Web::Controllers::Calendar::Index.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
    response[1]['Content-Type'].must_equal 'application/json; charset=utf-8'
  end
end
