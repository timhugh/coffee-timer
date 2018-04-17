# frozen_string_literal: true

module CoffeeTimer
  class Recipe
    def initialize(&block)
      @attrs = evaluate(&block)
    end

    def name
      @attrs[:name]
    end

    private

    def evaluate
      Evaluator.new(&block).attrs
    end

    class Evaluator
      def initialize(&block)
        @attrs = {
          steps: []
        }

        instance_eval(&block)
      end

      attr_reader :attrs

      def name(value)
        attrs[:name] = value
      end

      def grinds_amount(value)
        attrs[:grinds_amount] = value
      end

      def grind_size(value)
        attrs[:grind_size] = value
      end

      def prep(prompt)
        attrs[:steps] << { type: :prep, prompt: prompt }
      end

      def step(prompt, opts = {})
        attrs[:steps] << { type: :prompt, prompt: prompt, opts: opts }
      end

      def time(seconds)
        attrs[:steps] << { type: :timer }
      end
    end
  end
end
