module Sortable
  module ActiveRecordModelExtension
    extend ActiveSupport::Concern

    included do
      def self.sort(sort, direction)
        order(sort + " " + direction)
      end
    end
  end
end