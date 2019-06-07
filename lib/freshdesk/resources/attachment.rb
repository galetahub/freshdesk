# frozen_string_literal: true

require 'freshdesk/resources/base'

module Freshdesk
  module Resources
    class Attachment < Base
      self.collection_path = '/attachments'
    end
  end
end
