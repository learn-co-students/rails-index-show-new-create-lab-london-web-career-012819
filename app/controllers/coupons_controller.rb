class CouponsController < ApplicationController

  def new
  end

  def create
    @coupon = Coupon.new
    @coupon.coupon_code = coupon[:coupon_code]
    @coupon.store = coupon[:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

  def index
    @coupon = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

end
