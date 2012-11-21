class Pool < ActiveRecord::Base

   attr_accessible :title, :latitude, :longitude, :address, :ind_out, :size, :gmaps

   acts_as_gmappable

   def description
   "#{self.title} #{self.address} #{self.ind_out} #{self.size}"
   end

end
