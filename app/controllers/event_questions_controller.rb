class EventQuestionsController < ApplicationController
  # GET /event_questions
  # GET /event_questions.json
  def index
    @event_questions = EventQuestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @event_questions }
    end
  end

  # GET /event_questions/1
  # GET /event_questions/1.json
  def show
    @event_question = EventQuestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event_question }
    end
  end

  # GET /event_questions/new
  # GET /event_questions/new.json
  def new
    @event_question = EventQuestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event_question }
    end
  end

  # GET /event_questions/1/edit
  def edit
    @event_question = EventQuestion.find(params[:id])
  end

  # POST /event_questions
  # POST /event_questions.json
  def create
    @event_question = EventQuestion.new(params[:event_question])
    @event_question.event_id = params[:event_id]
    
    @event = Event.find(@event_question.event_id)

    respond_to do |format|
      if @event_question.save
        format.html { redirect_to @event, notice: 'Event question was successfully created.' }
        format.json { render json: @event, status: :created, location: @event }
      else
        format.html { render action: "new" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /event_questions/1
  # PUT /event_questions/1.json
  def update
    @event_question = EventQuestion.find(params[:id])

    respond_to do |format|
      if @event_question.update_attributes(params[:event_question])
        format.html { redirect_to @event_question, notice: 'Event question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_questions/1
  # DELETE /event_questions/1.json
  def destroy
    @event_question = EventQuestion.find(params[:id])
    @event_question.destroy

    respond_to do |format|
      format.html { redirect_to event_questions_url }
      format.json { head :no_content }
    end
  end
end
