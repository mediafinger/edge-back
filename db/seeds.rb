# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

events = [Fabricate(:event),
          Fabricate(:event, :name => 'Rails UGHH', :city => 'Hamburg', :country => 'de', :start_date => 20120314),
          Fabricate(:event, :name => 'XP', :description => 'Xtreme programming', :city => 'Hamburg', :country => 'de', :start_date => 20111218),
          Fabricate(:event, :name => 'Limited WIP Society', :description => 'Kanban & Co', :city => 'Hamburg', :country => 'de', :start_date => 20120330),
          Fabricate(:event, :name => 'Limited WIP Society', :description => 'Kanban & Co', :city => 'Muenchen',:country => 'de', :start_date => 20120326),
          Fabricate(:event, :name => 'Frozen Rails', :city => 'Helsinki', :country => 'fi', :description => 'Conference', :start_date => 20110917),
          Fabricate(:event, :name => 'Euruko', :city => 'Amsterdam', :country => 'nl',  :description => 'European Ruby Konferenz', :start_date => 20120601),
          Fabricate(:event, :name => 'Euruko', :city => 'Berlin', :country => 'de', :description => 'European Ruby Konferenz', :start_date => 20110601),
          Fabricate(:event, :name => 'Arrrrcamp', :city => 'Ghent', :country => 'be',  :description => 'Aye', :start_date => 20121004),
          Fabricate(:event, :name => 'Scotland on Rails', :city => 'Edinburgh', :country => 'gb',  :description => 'Cheers', :start_date => 20110623),
          Fabricate(:event, :name => 'Scottish Ruby Conference', :city => 'Edinburgh', :country => 'gb', :description => 'Cheers', :start_date => 20120628)       
         ]