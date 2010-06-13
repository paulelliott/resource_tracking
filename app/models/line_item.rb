class LineItem < ActiveRecord::Base
  belongs_to :activity
 
 # below should be STI's from codes table, imo
 # belongs_to :hssp_strategic_objective
 # belongs_to :mtefp

  def to_label
    @s="Line Item: "
    if description.nil? || description.empty?
      @s+"<No Description>"
    else
      @s+description.slice(0,15)
    end
  end
end
