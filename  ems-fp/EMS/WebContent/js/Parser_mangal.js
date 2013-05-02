var prevkey = 32;
var hidden=false;
var posChanged = true;
var isEng = false;
var isiframe = false;

var previousConsonant = false;
var previouspreviousConsonant = false;

function changeCursor(txtarea)	{

	if (txtarea.createTextRange)	{
		txtarea.cursorPos = document.selection.createRange().duplicate();
	}else if (isiframe)
	{
		
		if(txtarea.body.createTextRange) {
			txtarea.body.cursorPos = document.selection.createRange().duplicate();
		}
	}
}
function GetVowelCombination(key0, key1)
{
	var i=0;
	for(i=0;i<VowelCombination.length;i++)
	{
		if((VowelCombination[i][0] == key0) && (VowelCombination[i][1]==key1))
			alert(VowelCombination[i][2]);
			return VowelCombination[i][2];	
	}
}
function GetConsonantCombination(key0, key1)
{
	var i=0;
	for(i=0;i<ConsonantCombination.length;i++)
	{
		if((ConsonantCombination[i][0] == key0) && (ConsonantCombination[i][1]==key1))
			
return ConsonantCombination[i][2];	
	}
}

function positionChange(evt)
{


var keyCode = 
    document.layers ? evt.which :
    document.all ? evt.keyCode :
    document.getElementById ? evt.keyCode : 0;

/*if (keyCode == 123)
	{
		isEng = !isEng;
		var obj;
		obj = document.getElementById('lang');
		if (obj != 'undefined')
		{
			obj.innerHTML = "Selected Language: <b>" + (isEng? "English":language) + "</b>. Press F12 to change."
		
		}
	}
*/	
  if (keyCode >= 37 && keyCode <=40)
  {
	posChanged = true;
  }	
}

function change(txtarea, evt)
{ 
  isiframe = false;
  change(txtarea, evt,isiframe);

}

function change(txtarea, evt,isiframe)
{            
	
    var displace = 0;
	var text='';
    var previousValue = "";
    //var e = evt; //(evt)? e: ((window.event)? event : null);
    var e = window.event? event : evt;
    if( e.altKey || e.ctrlKey)
    {
		return true;
	}
	var key=0;
	var keychar='';
	var shift=false;
	var pos= 0; // doGetCaretPosition (txtarea);
	var prevpos = 0;
	if ( document.all )
	{
		key = e.keyCode;
	}	
	else
	{
		key = e.which;
	}

	if ((key <32) || (key >=33 && key <=47) ||(key>=59 && key <=64)||(key>=91 && key<=96 && !key==94)||(key>=123 && key<=127) )
		return true;
	

	keychar = String.fromCharCode(key);
	if(posChanged)
	{
		prevkey = 32;
		hidden=false;
		prevpos = 0;
		previousConsonant = false;
		previouspreviousConsonant = false;
		
	}

		switch(keychar)
		{
			case "a":
			case "e":
			case "i":
			case "o":
			case "u":
			case "A":
			case "I":
			case "U":
			case "O":
			case "E":
						var cComb = GetConsonantCombination(prevkey,key);
						var vComb = GetVowelCombination(prevkey,key);
						
						if(previousConsonant)
						{
							displace --;
							text=Consonant[key]; // nothing to append. just remove viram

						}
						else if (typeof(vComb) != 'undefined')
						{
							if(!previouspreviousConsonant)
							{
								
								displace --; // aa, ai, au.......
								text = vComb;
							}
							else
							{
								displace = 0;
								text = cComb;
							}
						}
						else
						{
							displace = 0;
							text = Vowel[key]; 
						}
						previouspreviousConsonant = previousConsonant;
						previousConsonant = false;
						hidden=false;
						break;
			case 'R':
						if(previousConsonant)
						{
							displace--; // replace the viram
							text = Consonant[VRU];
							// here no need for another U in VRU. by detecting VR it is assumed the whole word
						}
						else
						{
							displace=0; // nothing to displace
							text = Vowel[key];
						}
						previouspreviousConsonant = previousConsonant;
						previousConsonant = false;
						hidden = false;
						prevkey = key;
						break;
			case '^':
			case 'M':
						displace = 0;
						text = Consonant[key];
						previouspreviousConsonant = previousConsonant;
						previousConsonant = false;
						hidden = false;
						prevchar = keychar;
						break;
			case ' ':
						if(previousConsonant)
						{
							displace --;
						}
						else
						{
							displace = 0;
						}
						text = Symbol[key];
						previouspreviousConsonant = previousConsonant;
						previousConsonant = false;
						hidden = false;
						prevkey = key;
						break;
			default:
						var cComb = GetConsonantCombination(prevkey,key);

						
						if (hidden)
						{
							if(typeof(cComb) !='undefined')
							{
								displace = 0; // because previous word was not shown in textarea.
								text = cComb+ Consonant[VIRAM];
								previouspreviousConsonant = previousConsonant;
								previousConsonant = true;
							}
							else if (typeof(Consonant[key]) !='undefined')
							{
								displace = 0;
								text = Consonant[key] + Consonant[VIRAM];
								previouspreviousConsonant = previousConsonant;
								previousConsonant = true;
								hidden = false;
							}
							else
							{
								displace =0;
								previouspreviousConsonant = previousConsonant;
								previousConsonant = false;
							}
						}
						else
						{
							if(typeof(cComb) !='undefined')
							{
								displace -=2; // for d, dh, D, Dh etc.
								text = cComb+ Consonant[VIRAM];
								previouspreviousConsonant = previousConsonant;
								previousConsonant = true;
							}
							else if(typeof(Consonant[key])!='undefined')
							{
								displace = 0;
								text = Consonant[key] + Consonant[VIRAM]; // letter + viram
								previouspreviousConsonant = previousConsonant;
								previousConsonant = true;
							}
							else if (typeof(Symbol[key]) != 'undefined')
							{
								displace =0;
								text = Symbol[key];
								previouspreviousConsonant = previousConsonant;
								previousConsonant = false;
							}
							else
							{
								previouspreviousConsonant = previousConsonant;
								previousConsonant = true;
								hidden = true;
							}
							
						}
		}

		prevkey = key;

	if(txtarea.setSelectionRange)
	{
		// Mozilla specific
		pos = txtarea.selectionStart;
		var s1 = txtarea.value.substring(0,pos + displace);
		var s2 = txtarea.value.substring(pos, txtarea.value.length);
		var scrollPos = txtarea.scrollTop;
		if(typeof(text) != 'undefined')
			prevpos = pos + displace + text.length;
		else
			prevpos = pos + displace;
		txtarea.value = s1 + text + s2;

		txtarea.scrollTop = scrollPos;
		txtarea.focus();
		txtarea.setSelectionRange(prevpos,prevpos);
	}
	else if (txtarea.createTextRange && txtarea.cursorPos)
	{
		// IE specific
		var range = txtarea.cursorPos;
		range.moveStart('character', displace);
		range.text =	(range.text.charAt(range.text.length - 1)	== ' ' ? text +	' '	: text);
		range.collapse(false);
		range.scrollIntoView(true);
	}
	else if (isiframe)
	{
		if(txtarea.body.createTextRange && txtarea.body.cursorPos) {
			// IE specific
			var range = txtarea.body.cursorPos;
			range.moveStart('character', displace);
			range.text =	(range.text.charAt(range.text.length - 1)	== ' ' ? text +	' '	: text);
			range.collapse(false);
			range.scrollIntoView(true);
		}
	}
	
	else
	{
		
		// Other browser
		if (displace==0)
		{

			if(!isiframe) {
				txtarea.value += text;
			}else{
				txtarea.body.innerText+= text;
			}
		}
		else
		{
			if(!isiframe) {
				txtarea.value =	txtarea.value.substring(0, txtarea.value.length-1) + text;
			}else{
				txtarea.body.innerText= txtarea.body.innerText.substring(0,txtarea.body.innerText.length-1) + text;
			}
			
			
		}
	}
	
	if(!isiframe) {
	
		txtarea.focus();
	}else{
		//txtarea.body.focus();
		txtarea.focus();
		evt.keyCode=0;
	}
       
	posChanged=false;
	return false;
}
