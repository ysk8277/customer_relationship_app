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
*puts "\e[H\e[2j" - clear
=end
require './rolodex'
require './contact'

class Runner
  def initialize
    @rolodex = Rolodex.new  
  end

  def main_menu
    puts "--- CRM Main Menu ---\n\n"
    puts "1. Add a new contact"
    puts "2. Modify an existing contact"
    puts "3. Display all contacts"
    puts "4. Display all contacts by attribute"
    puts "5. Delete a contact"
    puts "6. Exit CRM\n\n"
    puts "Press 1-6 to continue:" 
  end

  def run
    done = false
    while done !=true
      main_menu
      user_input = gets.chomp.to_i
      if user_input == 1
        puts "\e[H\e[2J"
        add_contact
      elsif user_input == 2
        puts "\e[H\e[2J"
        modify_contact
      elsif user_input == 3
        puts "\e[H\e[2J"
        display_all_contacts
      elsif user_input == 4
        puts "\e[H\e[2J"
        display_contacts_by_attribute
      elsif user_input == 5
        puts "\e[H\e[2J"
        delete_contact
      elsif user_input == 6
        puts "\e[H\e[2J"
        puts "\n\nGood Bye!\n\n"
        done = true
      else 
        puts "\e[H\e[2J"
        puts "Invalid entry. Please select valid input(1-6).\n\n"
      end
    end
  end
  
  def add_contact
    puts "Enter customer's first name:"
    first_name = gets.chomp.to_s.downcase.capitalize
    puts "Enter customer's last Name:"
    last_name = gets.chomp.to_s.downcase.capitalize
    puts "Enter customer's email:"
    email = gets.chomp
    puts "Enter notes:"
    notes = gets.chomp
    @rolodex.create_contact(first_name, last_name, email, notes)
  end
  
  def modify_contact
    @rolodex.modify_contact
  end
  
  def display_all_contacts
    @rolodex.display_all_contacts
  end
  
  def display_contacts_by_attribute
    @rolodex.display_contacts_by_attribute
  end
  
  def delete_contact
  end
end

crm = Runner.new
puts "\e[H\e[2J"
crm.run

