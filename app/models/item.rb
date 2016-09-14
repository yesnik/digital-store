class Item < ApplicationRecord
  validates :name, presence: true
  validates :price, numericality: { greater_than: 0, allow_nil: true }

  after_initialize { puts 'after_initialize' }

  before_validation { puts 'before_validate' }
  after_validation { puts 'after_validate' }

  before_save { puts 'before_save' }

    before_create { puts 'before_create' }
    after_create { puts 'after_create' }

    before_update { puts 'before_update' }
    after_update { puts 'after_update' }

    before_destroy { puts 'before_destroy' }
    after_destroy { puts 'after_destroy' }

  after_save { puts 'after_save' }

  after_commit { puts 'after_commit' }

  after_create_commit { puts 'after_create_commit' }
  after_update_commit { puts 'after_update_commit' }
  after_destroy_commit { puts 'after_destroy_commit' }
end
