# frozen_string_literal: true

require 'sinatra'

get '/' do
  request.env.each_with_object(String.new) do |(key, value), obj|
    obj << "#{key} = '#{value}'\n" if key.start_with?("HTTP_")
  end
end
