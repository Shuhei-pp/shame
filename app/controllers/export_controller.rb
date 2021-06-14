class ExportController < ApplicationController
    def form
    
    end

    def post
        @teacher = params[:teacher]
        teacher = params[:teacher]
        school_id = params[:school_id]
        faclty = params[:faclty]
        department = params[:department]
        reason = params[:reason]
        wish =params[:wish]
        name =params[:name]
        redirect_to("/export/result")
        @export_text = "
        #{teacher}教授

        こんにちは。お忙しいところ失礼致します。
        #{faclty},#{department}の#{school_id} #{name}と申します。

        本日の講義ですが、#{reason}により出席することができなかったです。
        私の不注意によるものです。大変申し訳ございません。

        また、自分勝手で申し訳ないのですが、#{wish}していただけないでしょうか？大変横柄ではあることは承知の上ですが、是非、宜しくお願い致します。

        これからは、より注意して行動することを意識していきたいと強く思います。

        お手すきになりましたら宜しくお願い致します。

        失礼致します。

        名前 #{name}
        "

    end
end
