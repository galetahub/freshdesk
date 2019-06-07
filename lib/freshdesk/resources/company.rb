# frozen_string_literal: true

require 'freshdesk/resources/base'

module Freshdesk
  module Resources
    class Company < Base
      self.collection_path = '/companies'
    end
  end
end
