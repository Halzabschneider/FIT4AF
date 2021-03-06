class EventsController < ApplicationController
	before_action :set_event, only: [:show, :edit, :update, :destroy]

	def index
		@events = Event.upcoming
	end

	def show
		#@event = Event.find(params[:id ]) wird über die before_action eingefügt
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.create(event_params)
		redirect_to events_url
	end

	def edit
		#@event = Event.find(params[:id ]) wird über die before_action eingefügt
	end

	def update
		#@event = Event.find(params[:id ]) wird über die before_action eingefügt
		@event.update(event_params)
		redirect_to events_url		
	end

	def destroy
		@event.destroy
		redirect_to events_url
	end


	private
		def event_params
		params.require(:event).permit(:name, :description, :location, :price, :start_at)	
		end

		def set_event
			@event = Event.find(params[:id ])
		end

end
