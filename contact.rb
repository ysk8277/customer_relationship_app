class Contact

@@counter = 1000

attr_accessor :id, :first_name, :last_name, :email, :notes

def initialize 
  @id = Contact.get_id
  @first_name = ""
  @last_name = ""
  @notes = ""
  @email = ""
end

def to_s
  "\nID: #{@id}\nFirst Name: #{@first_name}\nLast Name: #{@last_name}\nEmail: #{@email}\nNotes: #{@notes}"
end

def self.get_id
  @@counter += 1
  @@counter
end

end

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