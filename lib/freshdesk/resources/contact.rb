# frozen_string_literal: true

require 'freshdesk/resources/base'

module Freshdesk
  module Resources
    class Contact < Base
      self.collection_path = '/contacts'

      def hard_delete(id)
        delete(File.join(self.class.collection_path, id.to_s, 'hard_delete'))
      end

      def restore(id)
        put(File.join(self.class.collection_path, id.to_s, 'restore'))
      end
    end
  end
end
