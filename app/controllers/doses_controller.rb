class DosesController < ApplicationController
    before_action :find_cocktail, except: [:destroy]
    before_action :find_dose, only: [:destroy]

      # def index
      #   @doses = Dose.all
      # end
    
      # def show
      # end
    
      def new
        @dose = Dose.new
      end
    
      def create
        @dose = Dose.new(dose_params)
        @dose.cocktail = @cocktail
        if @dose.save
          redirect_to cocktail_path(@cocktail)
        else
          render :new
        end
      end
    
      # def edit
      # end
    
      # def update
      #   @dose.update(dose_params)
    
      #   redirect_to cocktail_dose_path(@dose)
      # end
    
      def destroy
        @dose = Dose.find(params[:id])
        @dose.destroy
        
        redirect_to cocktail_path(@dose)
      end
    
      private

      def find_cocktail
        @cocktail = Cocktail.find(params[:cocktail_id])
      end
    
      def find_dose
        @dose = Dose.find(params[:id])
      end
    
      def dose_params
        params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
      end
    
end
