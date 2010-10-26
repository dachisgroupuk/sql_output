module SqlOutput
  
  def self.start
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    ActiveRecord::Base.clear_active_connections!
    reload!
  end

  def self.stop
    ActiveRecord::Base.logger = nil
    ActiveRecord::Base.clear_active_connections!
    reload!
  end

end
