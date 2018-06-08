class Monocle::DropCommand

  attr_reader :view

  def initialize(view)
    @view = view
  end

  def call
    # Get the SQL from the file, skipping the timestamp row
    # Drop the newlines too
    sql = File.readlines(view.path_for_sql)[1..-1]
    # Generate the new timestamp line
    drop_directive = ["-- Drop\n"]
    # Put it back together
    new_sql = (drop_directive + sql).join
    # Open the file for writing (no w+, we want to clear it up)
    File.open(view.path_for_sql, "w") do |f|
      f << new_sql
    end
  end

end
