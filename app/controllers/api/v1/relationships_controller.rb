# frozen_string_literal: true

module Api
  module V1
    class RelationshipsController < ApplicationController
      def index
        @relationships = Relationship.includes(%i[relative_person kinship])
        render json: @relationships
      end

      def create
        @relationship = Relationship.new(relationship_params)

        if relationship.save
          render json: @relationship, status: :created
        else
          render json: @relationship.errors, status: :unprocessable_entity
        end
      end

      def update
        @relationship = Relationship.find(params[:id])

        if @relationship.update(relationship_params)
          render json: @relationship
        else
          render json: @relationship.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @relationship = Relationship.find(params['id'])
        @relationship.destroy
      end

      private

      def relationship_params
        params.require(:relationship).permit(:person_id, :relative_person_id, :kinship_id)
      end
    end
  end
end
