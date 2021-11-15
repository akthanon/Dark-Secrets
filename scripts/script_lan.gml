var search = argument0;

switch (global.language)
{
    case 0: var lang = "español"; break;
    case 1: var lang = "english"; break;
}

ini_open("idiomas.txt");

var findstr = ini_read_string(lang, string(search), "..............................................................");

ini_close();
//findstr = string_replace_all(findstr,"*","#");
return findstr;
