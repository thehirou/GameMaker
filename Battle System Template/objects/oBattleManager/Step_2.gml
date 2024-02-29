option=clamp(option,0,3)
if psyched=false or menu="combo" //if you get to the combo menu, parmesan / borzoi should not be displayed, as you can't "mix" those attacks
{
maxAlchemyOptions = array_length(defaultAlchemy) -1;
}
else
{
maxAlchemyOptions = array_length(comboAlchemy) -1;
}
optionAlchemy=clamp(optionAlchemy,0,maxAlchemyOptions)
