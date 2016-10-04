module DisAdditiveFrequenciesHelper
  def dis_status(m,h)
    # Start - Logic to lookup for status inside statuses table
    if m.present?
    @DisStatus = DisStatus.where(id:m).last
    # Above m.status_id has value 1 and @DisStatus is an object
     h["status_name"] = @DisStatus.name
    else
    h["status_name"] ="no desc"
    end
      # End - Logic to lookup for status inside statuses table
  end
end
