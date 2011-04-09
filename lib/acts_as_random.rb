
module Acts
  module AsRandom

    def self.included(base)
      base.extend AddActsAsMethod
    end

    module AddActsAsMethod
      def acts_as_random
        class_eval <<-END
           before_create :random_me!
           include Acts::AsRandom::InstanceMethods
        END
      end
    end


    # Istance methods
    module InstanceMethods

      def self.included(aClass)
        aClass.extend ClassMethods
      end
      
      module ClassMethods
        def random(skip_cache = false)
          unless skip_cache
            order("RAND()").first
          else
            where("created_at < '#{Time.now.to_s(:db)}'").order("RAND()").first
          end
        end
      end

      private

      def random_me!
        # Zakres integera obnizony o 1 zeby potem dodać 1 (zeby nie bylo opcji
        # że komuś się przydzieli ID == 0)
        range = 2147483646
        id = rand(range)+1
        while self.class.exists?(id) do
          id = rand(range)+1
        end
        self.id = id
      end

    end
  end
end
