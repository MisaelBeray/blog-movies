module ArticlesHelper
    def formatDate_mdy(datetime)
        datetime.strftime('%B %e, %Y')
    end
end
