class PetAdoptionsController < ApplicationController
    def index
        @pet_adoptions=PetAdoption.all

    end


    def new
        @pet_adoptions=PetAdoption.new
    end
   
    def create
        @pet_adoptions = PetAdoption.new(pet_adoption_params)
      
      
          respond_to do |format|
             if @pet_adoptions.save
                if user_signed_in?
                    current_user.gamification.create!(points:5)
                 end
                format.html { redirect_to pet_adoptions_path notice: 'Pet was successfully created.' }
              else
                format.html { render :new }
            end
        end
      end
    
      private
        # Only allow a list of trusted parameters through.
        def pet_adoption_params
          params.require(:pet_adoption).permit(:pet_name, :pet_type, :image,:image_cache, :location, :contact)
        end
end
