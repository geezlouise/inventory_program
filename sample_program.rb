class Inventory
  def initialize owner
    @owner = owner
  end

  def find_owner_inventory
    search = File.open("inventory.txt", "r")
    search_for = search.readlines
    search_for.each do |line|
      if line.match (/#{@owner}/)
        display_inventory_by_owner
        exit
      else
        puts "Sorry, that inventory does not exist."
        exit
      end
    end
  end

  def display_inventory_by_owner
    bag = File.open("inventory.txt", "r")
    item_properties = bag.readlines
    item = Hash.new

    item_properties.each do |line|
        if line.match (/#{@owner}/)
          item_name, qty, owner, uid, = line.match(/(.*) , (.*) , (#{@owner}) , (.*)/).captures
          item[uid] = { name: item_name, qty: qty, owner: owner }
        end
    end
  puts "----------------------".center(25)
  puts "#{@owner}'s Inventory:".center(25)
  puts "----------------------".center(25)
  item.each do
    |key, value|
    puts "[#{key}]  " + item[key][:name]
    puts "Quantity available: " + item[key][:qty].to_s
    puts "----------------------".center(25)
    end
  end
end
puts "Who's inventory are you looking for?"
username = gets.chomp

username_lookup = Inventory.new(username)
username_lookup.find_owner_inventory