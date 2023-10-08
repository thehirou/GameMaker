_string=""

getFromString="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

_col=c_white
_alp=1

_condition=640/string_width("W")

for (var i = 0; i < _condition*_condition; ++i) {
  _string+=string_char_at(getFromString,irandom_range(0,string_length(getFromString)))+" "
}

