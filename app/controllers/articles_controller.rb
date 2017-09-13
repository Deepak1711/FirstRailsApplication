class ArticlesController < ApplicationController
	def new 
		@article=Article.new
	end
	def create
		# render plain: params[:article].inspect
		@article=Article.new(article_params)
		if @article.save
			flash[:notice] = "Article was successfully created"
			redirect_to article_path(@article)
		else
			render 'new'
		end
	end
    def show()
    	@item=[]
    	@item[0]=Article.find(params[:id])
    	comments=@item[0].comments
    	i=1
    	comments.each do |comment|
    		@item[1]=comment
    		i=i.next
    	end
    end

	private 
	def article_params
		params.require(:article).permit(:title,:description)
	end
end