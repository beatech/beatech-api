require 'beatech/api/version'
require 'beatech/api/achievement'
require 'beatech/api/contest3rd'
require 'beatech/api/contestdate3rd'
require 'beatech/api/page'
require 'beatech/api/twitter_account'
require 'beatech/api/user'

module Beatech
  module API
    def self.all
      JSON.parse(get_json(table_name))
    end

    def self.get_json(table_name)
      open("http://beatech.net/#{table_name}.json")
    end
  end
end
