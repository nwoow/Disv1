include DisAdditiveFrequenciesHelper
class DisAdditiveFrequency < ActiveRecord::Base
   belongs_to :dis_status , foreign_key: "status_id"
  def self.query(c)
    @m = array = []
    c.each do |m|
    h = {}
    h["id"] = m.id
    h["name"] = m.name
    h["status_id"] = m.status_id
    # -- Start --- below line is calling a lookup from dis_status table
    dis_status(m.status_id,h)
    # -- End --- below line is calling a lookup from dis_status table
    h["frequency_value"] = m.frequency_value
    array << h
    end
    e = c.count
     c = c.as_json
    d = [{"Count" => e}]
    @n = {"a" => c ,"b" => d, "c" => @m}
    #  n = c.to_a << @m
  end
end
