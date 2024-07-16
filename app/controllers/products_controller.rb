# app/controllers/products_controller.rb
require 'roo'
require 'roo-xls'

class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
  end

  def create
    file = params[:file]
    if file.nil?
      redirect_to new_product_path, alert: "Please upload a file."
      return
    end

    # Explicitly specify the file type as Excel
    spreadsheet = Roo::Excel.new(file.path)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      product = Product.find_or_initialize_by(code: row['Code'])
      product.update(
        name: row['Name'],
        description: row['Description'],
        category: row['Category'],
        price_general: row['Price General'],
        price_group_1: row['Price Group 1'],
        price_group_2: row['Price Group 2'],
        price_sale: row['Price Sale'],
        on_sale: row['On Sale?'].to_s.downcase == 'true',
        product_photo: row['Product Photo'],
        meta_description: row['Meta Description'],
        meta_keywords: row['Meta Keywords']
      )
    end

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to products_path, notice: "Products imported successfully." }
    end
  end
end
