require 'pry'

def p_hash
  {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
end

def nyc_pigeon_organizer(data) # I have no clue how this works.
  organized = {}

   data.each do |trait, options|
     options.each do |option, pigeons|
       pigeons.each do |pigeon|
         organized[pigeon] ||= {} # an empty hash is the value for pigeon
         organized[pigeon][trait] ||= [] # The value for each trait is an empty array
  #trait is :color, :gender, :lives
  #it's like organized["Theo"][:gender] = []       
         organized[pigeon][trait] << option.to_s 
  # organized["Theo"][:gender] = [] << :male to a string
       end
     end
   end

   organized

end











