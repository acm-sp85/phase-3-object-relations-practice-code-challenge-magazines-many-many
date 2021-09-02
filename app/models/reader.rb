class Reader < ActiveRecord::Base
    has_many :subscriptions
    has_many :magazines, through: :subscriptions
  

    def subscribe(magazine , price)
            Subscription.create(magazine_id: magazine.id , price: price, reader_id: self.id)
    end

    def total_subscription_price

        total = 0
        subscriptions.map{|mag| total = total +mag.price}
         puts total
    end

    def cancel_subscription(magazine)

        y = Subscription.all.select{|subs| subs.magazine_id == magazine.id}
        z = y.find{|subs| subs.reader_id == self.id}


        z.destroy
        z.save

    end
end