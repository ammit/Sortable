module Sortable
  class Railtie < Rails::Railtie
    initializer 'sortable' do |app|
      ActiveSupport::on_load(:action_view) do
        include Sortable::ActiveRecordModelExtension
      end
    end
  end
end