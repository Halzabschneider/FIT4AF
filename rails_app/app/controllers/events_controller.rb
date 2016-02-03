class EventsController < ApplicationController
	before_action :set_event, only: [:show, :edit, :update, :destroy]


	def index
		@events = Event.all #where("start_at >= ?", Time.now)
	end

	def show
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params) #Event.create
			if @event.save
				#flash[:notice] = "Erfolgreich gespeichert."
				#flash[:alert] = "Da ist wohl was schief gegangen."
		redirect_to events_url, notice: "Update war Erfolgreich."
			else
				render :new
			end
	end

	def edit
	end

	def update
		@event.update(event_params)
			if @event.save
		redirect_to events_url, notice: "Update war Erfolgreich."
			else
				render :edit
			end
	end

	def destroy
		@event.destroy
		redirect_to events_url, alert: "Und gelöscht!"
	end

	private
		def event_params
			params.require(:event).permit(:name, :image_file, :capacity, :description, :location, :price, :start_at)
		end
		def set_event
			@event = Event.find(params[:id ])
		end

end
