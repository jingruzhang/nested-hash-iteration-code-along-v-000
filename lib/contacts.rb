require 'pry'

def remove_strawberry(contacts)
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_ice_cream_flavors: ["chocolate", "vanilla"]
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
  contacts.each do |name, details|
    details.each do |item, value|
      if item == :favorite_ice_cream_flavors
        value.delete_if {|ice_cream| ice_cream == "strawberry"}
      end
    end
  end
end
