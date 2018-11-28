class AddFontSizeAndFontColourToQuotations < ActiveRecord::Migration[5.2]
  def change
    add_column :quotations, :font_size, :string
    add_column :quotations, :font_colour, :string
  end
end
