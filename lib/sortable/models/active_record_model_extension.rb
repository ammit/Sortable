module Sortable
  module ActiveRecordModelExtension
    extend ActiveSupport::Concern

    included do
      def self.sort(sort='created_at', direction='desc')
        if sort.present? && direction.present?
          order(sort + " " + direction)
        end
      end
    end
  end
end