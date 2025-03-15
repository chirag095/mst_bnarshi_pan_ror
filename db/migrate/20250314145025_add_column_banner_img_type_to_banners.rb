class AddColumnBannerImgTypeToBanners < ActiveRecord::Migration[7.2]
  def change
    add_column :banners, :banner_img_type, :integer
  end
end
