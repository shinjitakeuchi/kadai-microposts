require './character'

module TechAcademy
  module RPG
    module Characters
      class Slime < Character
        
        @@type = '魔王'
        
        attr_accessor :suffix
        
        def initialize(suffix)
          super(10,300)
          self.suffix = suffix
        end
        
        def name
          @@type + self.suffix
        end
        
        def self.description
          puts @@type + 'は、最弱のモンスターだ！'
        end
      end  
    end
  end
end