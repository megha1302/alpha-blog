class ArticlesController < ApplicationController
    before_action :set_article , only: [:edit,:update,:destroy,:show]
    def index
        @article=Article.all
    end    
    def new
        @article=Article.new
    end

    def create
        @article=Article.new(article_params)
        if @article.save
            flash[:notice]="Article Sucessfully created"
            redirect_to article_path(@article)
        else
            render 'new'
        end        
    end

    def edit
       
    end 

    def show
        
    end 

    def destroy
       
        @article.destroy
        if(@article.destroy)
            flash[:notice]='Article sucessfully destroyed'
        end    
        redirect_to article_path(@article) 
    end    

    
    def update
       
        if @article.update(article_params)
            flash[:notice]="Article Sucessfully update"
            redirect_to article_path(@article)
        else
            render 'edit'
        end        
    end     

    private
     def set_article
        @article=Article.find(params[:id])
     end   
     def article_params
        params.require(:article).permit(:title,:description)
     end           
end    