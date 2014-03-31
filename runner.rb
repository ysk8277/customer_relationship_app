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
class Runner
  
  def main_menu
    puts "\nCRM Main Menu:\n\n"
    puts "1. Add a new contact."
    puts "2. Modify an existing contact."
    puts "3. Display all contacts."
    puts "4. Display all contacts by attribute."
    puts "5. Delete a contact."
    puts "6. Exit.\n\n" 
  end

  def run
    done = true
    while done == true
    main_menu
    user_input = gets.chomp.to_i
      if user_input == 1
        add_contact
      elsif user_input == 2
        modify_contact
      elsif user_input == 3
        display_all
      elsif user_input == 4
        display_attribute
      elsif user_input == 5
        delete_contact
      elsif user_input == 6
        puts "\nGood Bye!\n\n"
        done = false
      else 
        puts "Invalid entry. Please select valid input(1-6)."
      end
    end
  end
end

crm = Runner.new
crm.run

