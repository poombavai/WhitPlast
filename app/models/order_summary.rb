class OrderSummary < ActiveRecord::Base
 acts_as_paranoid# sentinel_value: DateTime.new(0)
validates_presence_of :chemicals, :party, :goods_finished, :ra_material, :message => "fill this"
has_many :issue
has_many :production_report
has_many :labour
has_many :machine_time

#def self.db_selection(current_user)
#  if current_user.branch_id=="Ganapathy"
#        ActiveRecord::Base.establish_connection("#{Rails.env}".to_sym).connection
#        establish_connection "#{Rails.env}".to_sym
#  else
#        ActiveRecord::Base.establish_connection("#{Rails.env}_sec".to_sym).connection
#        establish_connection "#{Rails.env}_sec".to_sym
#  end
#end

def self.order_report_to_csv(options = {})
       CSV.generate(options) do |csv|
         csv << column_names
          all.each do |order_summary|
            csv << order_summary.attributes.values_at(*column_names)
          end
       end
     end
def self.search(search)
where("order_no LIKE '%#{search}%' OR party LIKE '%#{search}%'" )
 end
end
