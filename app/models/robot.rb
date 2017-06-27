require 'sqlite3'

class Robot
  def initialize(robot_params)
    @database = SQLite3::Database.new('db/robot_world_development.db')
    @database.results_as_hash = true
    @name        = robot_params["name"]
    @id          = robot_params["id"] if robot_params["id"]
    @city        = robot_params["city"]
    @department  = robot_params["department"]
  end
end
