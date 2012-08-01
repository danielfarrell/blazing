require 'spec_helper'
require 'blazing/recipe_runner'

module Blazing

  describe RecipeRunner do

    describe '.recipes' do
      it 'returns the registerd recipes' do

      end

      it 'returns an empty array when no recipes are registered' do

      end
    end

    describe '.subscribe' do
      it 'subscribes the calling recipe to run after the given execution point' do
        pending
        subscribe(recipe, execution_point)
        recipes[execution_point].should include recipe
      end
    end

    describe '.trigger' do
      it 'triggers the recipes for the given execution point'
    end
  end
end

