class Document < ActiveRecord::Base
  
  validates_presence_of :name, :requested_by
  
  STATUS_NAMES = {
    1 => "New",
    2 => "In Progress",
    3 => "In Proof",
    4 => "Completed"
  }
  
  def status_name
    STATUS_NAMES[status]
  end
  
  def self.status_name_option
    STATUS_NAMES.to_a.sort
  end
  
  # This calculates the date difference between deadline date and current date  
  def deadline_left
          a = deadline.strftime("%Y-%m-%d")
          b = Time.now.strftime("%Y-%m-%d")
          
          a = Date.parse(a)
          b = Date.parse(b)
          
      days=(a-b).to_i  
        
      if days == 1
        "Due tomorrow"
      elsif days == -1
        "Overdue yesterday"
      elsif days < 0
        "#{days.to_s.reverse.chop.reverse} days overdue"
        else
          "Deadline in #{days} days"
      end
  end
    
  
end
