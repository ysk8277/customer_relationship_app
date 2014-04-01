=begin
*methods- add, modify, display all, display contact, 
          display all, display attributes, delete, exit.
*attributes- firstname,lastname,email,notes
*add- add firstname,lastname,email,notes.
*modify- promt y/n to confirm; if yes, promt to
        choose which attributes to change (id,name,email,note), 
        promt to enter new value, if no back to main_menu.
*display all- show all contacts.
*diplay attributes- promt to choose attributes and
                  show contacts by chosen attribute.
*delete- promt to delete attribute value of the contact.
*exit- exit out of program
puts "\e[H\e[2J"
=end
class Rolodex

  def initialize 
    @contacts = []
  end

  def create_contact(first_name, last_name, email, notes)
    contact = Contact.new
    contact.first_name = first_name
    contact.last_name = last_name
    contact.email = email
    contact.notes = notes
    @contacts << contact
    puts "\e[H\e[2J"
    puts contact
    sleep (0.5)
    puts "\nNew contact created...\n\n"
    sleep (0.5)
  end
  
  def modify_contact   #need validation of input
    puts "Please enter customer ID:"
    @id = gets.chomp.to_i
    
    @contacts.each do |contact|
      if contact.id == @id
        puts "\e[H\e[2J"
        puts "Current values:"
        puts contact
        modify_contact_attribute 
        return #ends method with last value       
      end
    end
    puts "\nCould not find contact ID.\n\n"
    return #ends method last value
  end

  def modify_contact_attribute
    puts "\nPlease select attribute to change:\n\n"
    puts "1. First name."
    puts "2. Last name."
    puts "3. Email."
    puts "4. Notes."
    puts "5. Back to Main menu.\n\n"
    user_input = gets.chomp.to_i
    if user_input == 1
      modify_first_name
    elsif user_input == 2
      modify_last_name
    elsif user_input == 3
      modify_email
    elsif user_input == 4
      modify_notes
    elsif user_input == 5
      puts "\e[H\e[2J"
      return
    else 
      puts "Invalid entry."
    end
  end

  def modify_first_name
    puts "Enter new first name:"
    new_first_name = gets.chomp.to_s
    @contacts.each do |contact|
      if contact.id == @id
        contact.first_name = new_first_name
      end
    end
  end
  
  def modify_last_name
    puts "Enter new last name:"
    new_last_name = gets.chomp.to_s
    @contacts.each do |contact|
      if contact.id == @id
        contact.last_name = new_last_name
      end
    end
  end

  def modify_email
    puts "Enter new email:"
    new_email = gets.chomp
    @contacts.each do |contact|
      if contact.id == @id
        contact.email = new_email
      end
    end
  end

  def modify_notes
    puts "Enter new notes:"
    new_notes = gets.chomp.to_s
    @contacts.each do |contact|
      if contact.id == @id
        contact.notes = new_notes
      end
    end
  end

  def display_all_contacts
    @contacts.each do |contact|
      puts contact
    end
    puts ""
  end
end
