function scrFilter(_MSG)
{

var originalString = _MSG;
var swearWords =
["faggot",
"nigger",
"nigga",
"omori"
];

for (var i = 0; i < array_length(swearWords); i++) {
    originalString = string_replace_all(originalString, swearWords[i], "****");
}

return originalString;

}

function SCRIPTS()
{

}