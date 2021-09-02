class Magazine < ActiveRecord::Base
    has_many :subscriptions
    has_many :readers, through: :subscriptions
  


    def email_list
        tronch = ""
        self.readers.all.map{|reader| print "#{tronch + reader.email};"}
    end

    def self.most_popular
        array = []
        length = 0
        chosen_one = []

        self.all.map{|mag| 
        if (mag.subscriptions.length > length)
            length = mag.subscriptions.length
            chosen_one = []
            chosen_one << mag

        end
    }
        puts chosen_one[0].title
    end
end