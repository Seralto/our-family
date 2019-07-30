# frozen_string_literal: true

module Api
  module V1
    class PersonsController < ApplicationController
      def index
        @persons = Person.all
        render json: @persons
      end

      def create
        @person = Person.new(person_params)

        if person.save
          render json: @person, status: :created
        else
          render json: @person.errors, status: :unprocessable_entity
        end
      end

      def update
        @person = Person.find(params[:id])

        if @person.update(person_params)
          render json: @person
        else
          render json: @person.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @person = Person.find(params['id'])
        @person.destroy
      end

      private

      def person_params
        params.require(:person).permit(:first_name, :last_name, :gender, :birthdate)
      end
    end
  end
end
