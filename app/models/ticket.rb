class Ticket < ApplicationRecord
  belongs_to :order
  belongs_to :ticket_type

  # TODO: complete the folowing
  before_save :update_stats
  after_save :update_attendance_up
  after_destroy :update_attendance_down


  private
    def update_stats
      es = self.ticket_type.event.event_stat
      # TODO: complete in order to update event stats
      puts "Capacity surpassed" , if es.tickets_sold >= es.event.event_venue.capacity
                                  end
    end

    def update_attendance_up
      event_stats.attendance.increment('attendance', by=1)
    end

    def update_attendance_down
      event_stats.attendance.decrement('attendance', by=1)
    end

end
