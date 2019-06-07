# frozen_string_literal: true

require 'freshdesk/version'
require 'freshdesk/configuration'

module Freshdesk
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
