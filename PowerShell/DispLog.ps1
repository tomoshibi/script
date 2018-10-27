############################################################################################################
# 一行単位で出力する色を変更する
# 設定可能色
# Black	        0	    黒
# Blue	        9	    青
# Cyan	        11	    シアン (青緑)
# DarkBlue	    1	    濃い青
# DarkCyan	    3	    濃いシアン (濃い青緑)
# DarkGray	    8	    濃い灰色
# DarkGreen	    2	    濃い緑
# DarkMagenta	5	    濃いマゼンタ (濃い赤紫)
# DarkRed	    4	    濃い赤
# DarkYellow	6	    濃い黄色 (黄土色)
# Gray	        7	    灰色
# Green	        10	    緑
# Magenta	    13	    マゼンタ (赤紫)
# Red	        12	    赤
# White	        15	    白
# Yellow	    14	    黄色
############################################################################################################
function OutPutColorString($txtLine)  {
    if ($txtLine -match "c"){
        # 条件1
        Write-Host $txtLine -ForegroundColor DarkGray -BackgroundColor DarkRed
    }elseif($txtLine -match "a"){
        # 条件2
        Write-Host $txtLine -ForegroundColor Magenta
    }else{
        # その他は通常色
        Write-Host $txtLine
    }
}

 # tail -f 実行
Get-Content C:/Users/ota/Desktop/test.log -Wait -Tail 1 | ForEach-Object{ OutPutColorString($_) }
