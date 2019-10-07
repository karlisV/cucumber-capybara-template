# frozen_string_literal: true

Before() do
  @default_wait_time = 10
  Capybara.default_max_wait_time = 10
end

After() do |scenario|
  add_screenshot(scenario.name) if scenario.failed?
end
