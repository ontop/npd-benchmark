# escapestr_sed()
# read a stream from stdin and escape characters in text that could be interpreted as
# special characters by sed
escape_sed() {
 echo $1 | sed \
  -e 's/\//\\\//g' \
  -e 's/\&/\\\&/g'
}

escape_sed $1