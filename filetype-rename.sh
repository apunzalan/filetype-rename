for file in *;
do
    mime=$(file --brief --mime-type "$file")

    case "$mime" in
    "image/jpeg")
        extension="jpeg"
        ;;
    "text/plain")
        extension="txt"
        ;;
    "application/pdf")
        extension="pdf"
        ;;
    "image/png")
        extension="png"
        ;;
    "image/gif")
        extension="gif"
        ;;
    "image/bmp")
        extension="bmp"
        ;;
    "video/mp4")
        extension="mp4"
        ;;
    "video/quicktime")
        extension="mov"
        ;;
    *)
        continue;
        ;;
    esac

    filename="${file%.*}"

    mv "$file" "$filename.$extension"
done