/// @description Insert description here
// Checando se o challenge está ativo
var _current_challenge = gxc_get_query_param("challenge");

if (_current_challenge == global.ch_ultimate_lifesaver)
{
    //show_message("The Ultimate Lifesaver challenge has been activated!");
}


// enviando o score e atualizando
if (gxc_get_query_param("challenge") == global.ch_ultimate_lifesaver)
{
    gxc_challenge_submit_score(global.pontos);

    // Debug only
    //show_message("Score submitted for the Ultimate Lifesaver challenge!");
}
global.pontos=0;
if (global.pontos > global.pontos)
{
    if (gxc_get_query_param("challenge") == global.ch_ultimate_lifesaver)
    {
        gxc_challenge_submit_score(global.pontos);
        show_message("Score submitted for the Ultimate Lifesaver challenge!");
    }

    // Update highscore
    global.pontos = global.pontos;
}
