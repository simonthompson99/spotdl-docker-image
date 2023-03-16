color=$( convert $1 -format "%[pixel:p{0,0}]" info:- )
out=${1%.png}_sm.png
convert $1 -alpha off -bordercolor $color -border 1 \
    \( +clone -fuzz 2% -fill none -floodfill +0+0 $color \
       -alpha extract -geometry 200% -blur 0x0.5 \
       -morphology erode square:1 -geometry 50% \) \
    -compose CopyOpacity -composite -shave 1 $out
convert -trim -resize 16x16 $out $out
