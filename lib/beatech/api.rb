require 'beatech/api/version'
require 'beatech/api/achievement'
require 'beatech/api/contest3rd'
require 'beatech/api/contestdate3rd'
require 'beatech/api/page'
require 'beatech/api/twitter_account'
require 'beatech/api/user'
require 'json'
require 'open-uri'

module Beatech
  module API
    def all
      JSON.parse(get_json(table_name))
    end

    def get_json(table_name)
      open("http://beatech.net/#{table_name}.json").read
    end
  end
end
