class AddBannerToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :banner, :string, default: "https://s3-us-west-2.amazonaws.com/prd-rteditorial/wp-content/uploads/2018/03/13153742/RT_300EssentialMovies_700X250.jpg"
  end
end
