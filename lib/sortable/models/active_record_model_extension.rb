module Sortable
  module ActiveRecordModelExtension
    extend ActiveSupport::Concern

    included do
      def self.sort(sort='created_at', direction='desc')
        order(sort + " " + direction)
      end
    end
  end
end