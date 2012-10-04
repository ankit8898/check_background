class UsersWorker
	include Sidekiq::Worker

	def perform
    Helper.test
  end

end