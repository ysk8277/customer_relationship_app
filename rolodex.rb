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
  end
  
  def modify_contact   #need validation of input

    puts "Please enter customer ID:"
    @id = gets.chomp.to_i
    
    @contacts.each do |contact|
      if contact.id == @id
        modify_contact_attribute 
        return #ends method with last value       
      end
    end

    puts "\n\nCould not find contact ID.\n\n"
    return #ends method last value
  end


  def modify_contact_attribute

    puts "Please select attribute to change:\n\n"
    puts "1. First name."
    puts "2. Last name."
    puts "3. Email."
    puts "4. Notes."
    puts "5. Back to Main menu."

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
      @Runner.main_menu
    else 
      puts "Invalid entry."
    end
  end

  def modify_first_name
    puts "#{@id}"  
  end


  def display_all_contacts
    @contacts.each do |contact|
      puts contact
    end
  end
end
