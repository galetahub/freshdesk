# frozen_string_literal: true

require 'freshdesk/resources/base'

module Freshdesk
  module Resources
    class Ticket < Base
      self.collection_path = '/tickets'

      def create_outbound_email(params)
        post(File.join(self.class.collection_path, 'outbound_email'), body: params)
      end

      def restore(id)
        put(File.join(self.class.collection_path, id.to_s, 'restore'))
      end

      def ticket_fields
        get('/ticket_fields')
      end

      def conversations(id)
        get(File.join(self.class.collection_path, id.to_s, 'conversations'))
      end

      def time_entries(id)
        get(File.join(self.class.collection_path, id.to_s, 'time_entries'))
      end
    end
  end
end
