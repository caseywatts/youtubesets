require 'sinatra'
require "sinatra/reloader" if development?

helpers do
  def randomvideo()
    ["QczgvUDskk0",
            "VBmMU_iwe6U",
            "Vjw92oUduEM",
            "4m1EFMoRFvY",
            "FHp2KgyQUFk",
            "2EwViQxSJJQ",
            "xWKdMmH0B-E",
            "sQgd6MccwZc",
            "Ob7vObnFUJc",
            "2XY3AvVgDns",
            "NiF6-0UTqtc",
            "QczgvUDskk0",
            "bnVUHWCynig",
            "p1JPKLa-Ofc",
            "CGkvXp0vdng",
            "eY_mrU8MPfI",
            "hbnPkK76Ask",
            "KaasJ44O5lI",
            "JlxByc0-V40",
            "3xUfCUFPL-8",
            "rNM5HW13_O8",
            "4S37SGxZSMc",
            "qFJ3VKnwmJw",
            "Q1dUDzBdnmI",
            "RioOJ7dZxuw",
            "IyYnnUcgeMc",
            "ViwtNLUqkMY",
    ].sample
  end
  def embedyoutubeiframe(videonumber)
    '<iframe width="100%" height="100%" src="//www.youtube.com/embed/' + videonumber +'&autoplay=1" frameborder="0" allowfullscreen></iframe>'
  end
  def embedyoutube(videonumber)
    '<body style="margin:0;">' + \
    '<object height="100%" width="100%"><param name="movie" value="http://www.youtube.com/v/' + videonumber + '&autoplay=1" /><embed height="100%" src="http://www.youtube.com/v/' + videonumber + '&autoplay=1" type="application/x-shockwave-flash" width="100%"></embed></object>' + \
    '</body>'
  end
end

get '/' do
  embedyoutube(randomvideo())
end
