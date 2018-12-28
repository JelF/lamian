# frozen_string_literal: true

# A patch for Raven::Context class
module Lamian::RavenContextExtension
  # Adds current lamian log to the extra part of all raven events generated inside Lamian.run block
  # @see https://www.rubydoc.info/gems/sentry-raven/0.9.2/Raven/Context#extra-instance_method
  def extra
    log = Lamian.dump(format: :txt)&.slice(0, Lamian.config.sentry_log_size_limit)
    log ? super.merge!(lamian_log: log) : super
  end
end
