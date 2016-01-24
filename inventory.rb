# Inventory Program
# Create a program that:
 
# 1. Lists several items
# 2. Allows a user to select an item and view the inventory count, change the number of the inventory, delete the item altogether, or even change the name.
# 3. Create a new item and give the item an inventory count, and have this item now show up in the list of items you can select. 
# 4. Loops through until the user does not want to edit the list anymore.



# --------___--- SAVED -------------------- 

# crystal_cabinet.push[]
# 	puts "You've added #{@quantity} pieces of #{@name}"


# crystal_cabinet.push ( Crystal.new("Amethyst", 6).instance_variable_get('@name'))
# crystal_cabinet.push ( Crystal.new("Aquamarine", 18).instance_variable_get('@name'))
# crystal_cabinet.push ( Crystal.new("Emerald", 3).instance_variable_get('@name'))
# crystal_cabinet.push ( Crystal.new("Ruby", 1).instance_variable_get('@name'))
# crystal_cabinet.push ( Crystal.new("Kyanite", 5).instance_variable_get('@name'))
# crystal_cabinet.push ( Crystal.new("Larimar", 3).instance_variable_get('@name'))
# crystal_cabinet.push ( Crystal.new("Labradorite", 19).instance_variable_get('@name'))
# crystal_cabinet.push ( Crystal.new("Moonstone", 12).instance_variable_get('@name'))



		# new_crystal = Crystal.new(name, quantity)

		# crystal_cabinet[name] = quantity

		# puts new_crystal.to_c
		
		# puts crystal_cabinet


# ----------------------------------------- 

# Program Classes

class Crystal

	attr_accessor :name, :quantity

	def initialize(name, quantity) #constructor
		@name = name
	    @quantity = quantity
	end

  	def to_c
  		puts "#{@name} = #{@quantity}"
  	end

end

# Starting Inventory

crystal_cabinet = Hash.new

crystal_cabinet = {"amethyst" => 6, "aquamarine" => 18, "emerald" => 3, "ruby" => 1, "kyanite" => 5, "larimar" => 3, "labradorite" => 19, "moonstone" => 12 }


# Crystal Descriptions

amethyst_desc = "Amethyst is a meditative and calming stone which works in the emotional, spiritual, and physical planes to provide calm, balance, patience, and peace."

aquamarine_desc = "Aquamarine is metaphysically known as a stone of courage and fortitude that can bring great power. It is said to assist with quick intellectual response. It brings inner peace, hope and self-love, gives shielding for the aura, and is said to bring angels for their guidance and protection. As such, it is an excellent crystal for meditaiton. Aquamarine is used metaphysically to dispel anger and fear."

emerald_desc = "Emerald is a stone that is used in crystal work to bring forth manifestation. This manifestation can be in the form of prosperity and abundance. When working with emerald for manifestation, as with all such efforts be certain to be very clear what you desire to have manifested or the Universe may surprise you."

ruby_desc = "Ruby is a high energy stone which is a type of sapphire. It is used to amplify energy and increase chi or prana. In this way it is considered a boost to Earth healing. It is also a stone that may bring a sense of adventurer to the wearer. It is considered to be a leadership stone as well."

kyanite_desc = "Kyanite is a stone of channeling, altered states, vivid dreams, dream recall, and visualizations. It gives protection during these states. It brings loyalty, honesty and tranquility, and diminishes anger and confusion. Kyanite does not retain negative energy and never needs energetic cleansing. It does align and balance all chakras, often very suddenly. Kyanite can remove energy blockages."

larimar_desc = "Larimar, found only in the Dominican Republic, is a stone of 'answers from the sea of consciousness.' The blue color of the larimar reflects the 'sea' of all consciousness, which gives freedom from self-imposed limitations and a sense of peace in finding truth. Larimar has excellent energy for working with sea creatures of all kinds. It is particularly good for communication with dolphins. It has some ability to enhance communication in general, with other animals, as well as people."

labradorite_desc = "Labradorite (also called Spectrolite sometimes) is a considered by mystics to be a stone of transformation and magic. It is said to clear, balance and protect the aura, as well as being an excellent stone for general protection. It is purported to help provide clarity and insight into your destiny, as well as attract success. It is used in metaphysics for dream recall, and finding ways to use dreams in daily life."

moonstone_desc = "Moonstone is said in crystal healing to help calm responses and stress, and avoid overreaction. It brings hope, enhances  feminine energies, sensitivity, intuition, and psychic abilities. It is also said to bring strong energies of abundance to one's life."


# Program Methods



# Program Start

crystal_option = 0

until crystal_option == 7


	puts "----------------------------------------------"
	puts "Welcome to the: * m a g i c a l -*- c r y s t a l -*- c a b i n e t *"
	puts "What would you like to do? (Select by number)"
	puts "----------------------------------------------"
	puts "1. View the crystals"
	puts "2. Select a crystal"
	puts "3. Change the quantity."
	puts "4. Destroy a crystal forever"
	puts "5. Add a new crystal"
	puts "6. Review the cabinet."
	puts "7. Leave. Now!"
	puts "----------------------------------------------"

	crystal_option = gets.chomp.to_i

	case crystal_option

	when 1 

		puts "Would you like to view the crystal cabinet? (yes / no)"
		view = gets.chomp.downcase

			if view == "yes"
				puts "< * opens magic door * >"
				crystal_cabinet.each do | name, quantity |
		  		puts "#{name}"
				end

			elsif view == "no"
				puts "Muwhahaha, you'll never know."
			else
				puts "Your future is uncertain."
			end

	when 2 

		puts "< * opens magic door * >"
				crystal_cabinet.each do | name, quantity |
		  		puts "#{name}"
				end

		puts "Which crystal would you like to inspect?"
		select = gets.chomp.downcase

		puts "There are #{crystal_cabinet.fetch(select)} pieces of #{select}"

		puts "Would you like to learn more? (yes / no)"
		learn = gets.chomp.downcase

		if learn == "yes" 

			if select == "amethyst"
			puts amethyst_desc

			elsif select == "aquamarine"
			puts aquamarine_desc

			elsif select == "emerald"
			puts emerald_desc

			elsif select == "ruby"
			puts ruby_desc

			elsif select == "kyanite"
			puts kyanite_desc

			elsif select == "larimar"
			puts larimar_desc

			elsif select == "moonstone"
			puts moonstone_desc

			elsif select == "labradorite"
			puts labradorite_desc

			elsif select == "new_crystal"
			puts newcrystal_desc

			else
			puts "I don't have information for that crystal."
			end

		elsif learn == "no"
			puts "Fine then."

		else
			puts "Your chakras are unaligned"
		end

	when 3

		puts "Which crystal's quantity do you need to change?"
		change = gets.chomp.downcase

		if change == "amethyst" || change == "aquamarine" || change == "larimar" || change == "ruby" || change == "emerald" || change == "moonstone" || change == "labradorite" || change == "kyanite"

			puts "What is the new amount of #{change}?"
			quantity_change = gets.chomp.to_i

			crystal_cabinet2 = Hash.new
			crystal_cabinet2 = { change.to_s => quantity_change.to_i }
			crystal_cabinet.update(crystal_cabinet2)



			puts "Review Crystal cabinet?"
			review = gets.chomp.downcase

				if review == "yes"
					crystal_cabinet.each do | name, quantity |
	  					puts "#{name}: #{quantity}"
					end
				end

		end

	when 4


	puts "Do you need to you destroy a crystal... forever?"
	delete_confirm = gets.chomp.downcase

		if delete_confirm == "yes"
			
			puts "Inside the Cyrstal cabinet:"
			
			crystal_cabinet.each do | name, quantity |
	  			puts "#{name}"
			end

			puts "Which crystal will you DESTROY?"
			delete = gets.chomp.downcase

			crystal_cabinet.delete(delete)

		elsif delete_confirm == "no"
			puts "phew, no one should destroy a magical stone!"

		else 
			puts "You are a wizard of a mysterious variety."
			
		end

	when 5

		puts "Are you going to add new types of crystals?"
		add = gets.chomp.downcase 

	 	if  add == "yes"

	 		puts "What kind of Crystal are you adding?"
			name = gets.chomp

			puts "How many pieces do you have?"
			quantity = gets.chomp.to_i

			puts "Would you like to add a description?"
			add_desc = gets.chomp.downcase

				if add_desc == "yes"

					puts "Enter description"
					newcrystal_desc = gets.chomp

				end

					puts "Would you like to review added crystal?"
					review_add = gets.chomp.downcase

					if review_add == "yes"

						puts "New crystal: #{name}"
						puts "Quantity added: #{quantity}"
						puts "#{name} description: #{newcrystal_desc}"

						puts "Is this correct?"
						confirm_add = gets.chomp.downcase

							if confirm_add == "yes"
								crystal_cabinet[name] = quantity
							elsif confirm_add == "no"
								puts "Try again"
							else
							end

					end
					
				

	 	end

	when 6

	puts "Would you like to review the crystal cabinet?"
	review = gets.chomp.downcase

		if review == "yes"
			crystal_cabinet.each do | name, quantity |
		  		puts "#{name}: #{quantity}"
			end	

		end
	end

end
