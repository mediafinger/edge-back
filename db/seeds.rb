# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

events = [Fabricate(:event),
          Fabricate(:event, :name => 'Rails UGHH'),
          Fabricate(:event, :name => 'XP', :description => 'Xtreme programming'),
          Fabricate(:event, :name => 'Limited WIP Society', :description => 'Kanban & Co'),
          Fabricate(:event, :name => 'Limited WIP Society', :description => 'Kanban & Co', :city => 'Muenchen'),
          Fabricate(:event, :name => 'Frozen Rails', :city => 'Helsinki', :country => 'fi', :description => 'Conference'),
          Fabricate(:event, :name => 'Euruko', :city => 'Amsterdam', :country => 'nl',  :description => 'European Ruby Konferenz'),
          Fabricate(:event, :name => 'Euruko', :city => 'Berlin', :description => 'European Ruby Konferenz'),
          Fabricate(:event, :name => 'Arrrrcamp', :city => 'Ghent', :country => 'be',  :description => 'Aye'),
          Fabricate(:event, :name => 'Scotland on Rails', :city => 'Edinburgh', :country => 'sc',  :description => 'Cheers'),
          Fabricate(:event, :name => 'Scottish Ruby Conference', :city => 'Edinburgh', :country => 'sc', :description => 'Cheers')       
         ]