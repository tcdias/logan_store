class CreateListings < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    create_table :listings, id: :uuid, default: 'gen_random_uuid()' do |t|

      t.timestamps
    end
  end
end
