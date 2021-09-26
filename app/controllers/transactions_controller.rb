class TransactionsController < ApplicationController
    def index
        @transactions = Transaction.all
        render json: @transactions
    end

    def create 
        Transaction.create(transaction_params)
    end

    private 
    def transaction_params
        params.require(:transaction).permit(:buyer_id, :seller_id, :item_id, :amount)
    end



end
