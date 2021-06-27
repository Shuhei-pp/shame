class ExportController < ApplicationController
    def form

    end

    def post
        form_id = params[:id]

        teacher = params[:teacher]
        school_id = params[:school_id]
        faculty = params[:faculty]
        department = params[:department]
        reason = params[:reason]
        wish = params[:wish]
        name = params[:name]
        lesson = params[:lesson]
        task = params[:task]
        lesson_name = params[:lesson_name]
        lesson_term = params[:lesson_term]
        lesson_number = params[:lesson_number]

        if form_id == '1'
            @export_text = "
#{teacher}教授

こんにちは。お忙しいところ失礼致します。
#{lesson}を受講している
#{faculty}、#{department}の#{school_id} #{name}と申します。

本日の講義ですが、#{reason}により出席することができませんでした。
私の不注意によるものです。大変申し訳ございません。

また、自分勝手で申し訳ないのですが、#{wish}していただけないでしょうか？大変横柄ではあることは承知の上ですが、是非、宜しくお願い致します。

これからは、より注意して行動することを意識していきたいと強く思います。

お手隙になりましたら宜しくお願い致します。

失礼致します。

名前 #{name}
"
        elsif form_id == '2'
            @export_text = "
#{teacher}教授

こんにちは。お忙しいところ失礼致します。
#{lesson}を受講している、
#{faculty}#{department}　#{school_id}の#{name}と申します。

申し上げにくいのですが、#{task}を提出することができませんでした。
大変申し訳ございません。

また、自分勝手で申し訳ないのですが、課題を受理していただくことは可能でしょうか？大変横柄ではあることは承知の上ですが、是非、宜しくお願い致します。

これからは、より注意して行動することを意識していきたいと強く思います。

お手隙になりましたらご対応の方、宜しくお願い致します。

失礼致します。

#{name}
            "
        elsif form_id == '3'

            @export_text = "

#{teacher}教授

こんにちは。お忙しい中失礼します。

#{faculty}#{department}#{school_id}の#{name}です。

#{requirement}ですが、ご返信頂きたいと思い、一方入れさせていただきました。

大変自分勝手で申し訳ないのですが、お手隙になりましたらご対応の方よろしくお願いします。

失礼します。

#{name}
            "
        elsif form_id == '4'
            @export_text = "
#{teacher}教授

こんにちは。お忙しい中失礼します。

#{faculty}#{department}#{school_id}の#{name}です。

先日、#{lesson_term}の開講番号#{lesson_number}、#{lesson_name}の講義の成績を発表していただき、ありがとうございます。そこでお手数なのですが成績の内訳を確認したく、連絡させていただきました。

大変自分勝手で申し訳ないのですが、お手隙になりましたらご対応の方よろしくお願いします。

失礼します。

#{name}
"
        elsif form_id == '5'
            @export_text = "
#{teacher}教授

こんにちは。お忙しい中失礼します。

#{faculty}#{department}#{school_id}の#{name}です。

先日、#{lesson_term}の開講番号#{lesson_number}、#{lesson_name}の講義の成績を発表していただき、ありがとうございます。成績を確認した所残念ながら単位取得には至らなかったです。
お手数ですが納得いかない為、再度確認して頂きたく連絡させていただきました。

大変自分勝手で申し訳ないのですが、お手隙になりましたらご対応の方よろしくお願いします。

失礼します。

#{name}
"
        end

        render 'form'
    end

end
