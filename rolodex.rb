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
  def display_all_contacts
    @contacts.each do |contact|
      puts contact
    end
  end
end
