class ArchievenController < ApplicationController
	def index
    @archiefs = Archief.all.order("created_at DESC").paginate(:page => params[:page])
  end

	def new
		@archief = Archief.new
	end

	def create
		@archief = Archief.new(:file=>arch)
		@archief.save
	end
end
