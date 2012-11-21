class Pool < ActiveRecord::Base

   attr_accessible :title, :latitude, :longitude, :address, :ind_out, :size, :gmaps

   def description
    "#{self.title} \n #{self.address} \n #{self.ind_out} \n #{self.size}"
   end


end
