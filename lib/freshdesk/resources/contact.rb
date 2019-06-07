# frozen_string_literal: true

module Freshdesk
  module Resources
    class Contact < Base
      collection_path '/contacts'

      def hard_delete(id)
        delete(File.join(self.class.collection_path, id.to_s, 'hard_delete'))
      end

      def restore(id)
        put(File.join(self.class.collection_path, id.to_s, 'restore'))
      end
    end
  end
end
