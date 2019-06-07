# frozen_string_literal: true

require 'httparty'

module Freshdesk
  module Resources
    class Base
      include HTTParty

      format :json

      def initialize
        self.class.base_uri "https://#{Freshdesk.configuration.domain}.freshdesk.com/api/v2"
      end

      def self.collection_path(value)
        @collection_path = value
      end

      def create(params)
        post(self.class.collection_path, body: params)
      end

      def find(id, params = nil)
        get(File.join(self.class.collection_path, id.to_s), query: params)
      end

      def all(params = nil)
        get(self.class.collection_path, query: params)
      end

      def update(id, params)
        put(File.join(self.class.collection_path, id.to_s), body: params)
      end

      def destroy(id)
        delete(File.join(self.class.collection_path, id.to_s))
      end

      private

      def get(*args)
        request(:get, *args)
      end

      def post(*args)
        request(:post, *args)
      end

      def put(*args)
        request(:post, *args)
      end

      def delete(*args)
        request(:delete, *args)
      end

      def request(method_type, path, options = {})
        response = self.class.send(method_type, path, options)
        return unless response

        response.parsed_response
      end
    end
  end
end
