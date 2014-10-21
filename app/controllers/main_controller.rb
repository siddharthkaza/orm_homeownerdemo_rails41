class MainController < ApplicationController
  def index
    render :text=>"Hello! The is the ORM Lab!"
  end

  def add_homes

    #************************************************************
    #        DO NOT RUN THIS METHOD FROM THE BROWSER
    #               FOLLOW STEPS IN THE LAB
    #************************************************************


=begin
    this is a demo of many_to_many relationships in activerecord
    recall that there are two types:
    1. implicit: where the join table contains no fields other than the foreign keys
    2. explicit: where the join table contains more fields about the relationship itself
    
    The following examples use a simple scenario/schema where there are homes 
    that are owned by multiple owners and vice-versa
    
    the following statements can be called from the browser (by calling the action)
    but please use the rails console (type in the statements)
    in either case you will need to have the DB open to see the changes
=end

    ##############################################################
    #start of code for implicit relationship (uncomment if needed)
    #
    #the statement below would work with an implicit relationship
    #i.e., using the homes_owners table that has no corresponding model
    #the statement will automatically create the appropriate link in the table
    #see page 288  (about has_and_belongs_to_many method) in book
    #also to make this statement work you will need to uncomment the model code
    #with the has_an_belongs_to_many line and comment the ones using the ownership table
    #(if you just cloned the project, then this is already done for you)

    Owner.create(:first_name=>"john", :last_name=>"doe")

    h = Home.new(:number => "837", :street => "York Rd.", :city => "Towson", :state => "MD")
    h.owners << Owner.find(1) #gets us the record with the id=1 and assigns it to
    #as the owner of this home

    h.save #saves the record

    #check the DB for the result

    #### end of code for implicit relationship


    ##############################################################
    #start of code for explicit relationship (uncomment if needed)
    #

    Owner.create(:first_name=>"jane", :last_name=>"doe")

    h = Home.new(:number => "1600", :street => "Pennsylavia Ave.", :city => "Washington", :state => "DC")
    h.save

    #when we use a ownerships table and corresponding model,
    # then we will need to link them up manually

    ownership = Ownership.new
    ownership.home_id = h.id
    jane = Owner.find_by_first_name("jane")
    ownership.owner_id = jane.id
    ownership.bought = "today"
    ownership.save
    #### end of code for explicit relationship

  end

  def add_more_owners

  end
end
