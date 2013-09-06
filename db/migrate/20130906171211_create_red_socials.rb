class CreateRedSocials < ActiveRecord::Migration
  def change
    create_table :red_socials do |t|
      t.string :url
      t.string :short, limit: 100
      t.string :user
      t.string :tipo, limit: 5
      t.references :persona, index: true

      t.timestamps
    end
  end
end
