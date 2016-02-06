class Topic < ActiveRecord::Base
	has_many :votes, dependent: :destroy
	def upvote(topic)
		topic.votes.create
    end

    def downvote(topic)
   		topic.votes.last.destroy if topic.votes.present?
	end
end
