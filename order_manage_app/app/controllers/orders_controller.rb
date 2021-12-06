class OrdersController < ApplicationController
  def index
    @categories = Category.all

    cate = params[:cate]

    if !cate.nil?
      @orders = Order.where(:category_id => cate)
    else
      @orders = Order.all
    end

  
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.create(order_params)


    if @order.save
      redirect_to @order
    else
      render :new
    end
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])

    if @order.update(order_params)
      redirect_to @order
    else
      render :edit
    end
  end

  def destroy
    @order = Order.find(params[:id])

    @order.destroy
    redirect_to :action => :index
  end


  private

  def order_params
    params.require(:order).permit(:title, :content, :category_id)
  end
end
