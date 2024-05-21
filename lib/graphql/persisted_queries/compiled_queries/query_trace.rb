# frozen_string_literal: true

module GraphQL
  module PersistedQueries
    module CompiledQueries
      module QueryTrace
        def execute_multiplex(multiplex:)
          multiplex.queries.each do |query|
            Instrumentation.before_query(query)
          end
          super
        end
      end
    end
  end
end
