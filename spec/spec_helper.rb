require('rspec')
require('task')
require('list')
require('pg')

DB = PG.connect({:dbname => 'todo_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM task *;")
    DB.exec("DELETE FROM list *;")
  end
end
