require 'beatech/api/version'
require 'beatech/api/achievement'
require 'beatech/api/contest3rd'
require 'beatech/api/contestdate3rd'
require 'beatech/api/page'
require 'beatech/api/twitter_account'
require 'beatech/api/user'
require 'json'
require 'open-uri'
require 'active_support/core_ext/hash/keys'

module Beatech
  module API
    def all
      JSON.parse(get_json(table_name)).map{ |hash| hash.symbolize_keys }
    end

    def get_json(table_name)
      open("http://beatech.net/#{table_name}.json").read
    end
  end
end
