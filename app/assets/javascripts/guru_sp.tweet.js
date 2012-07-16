    jQuery(function($){
        $(".tweets").tweet({
            username: "guru_sp",
            join_text: "auto",
            avatar_size: 48,
            count: 5,
            auto_join_text_default: "Dissemos,",
            auto_join_text_ed: "Nós",
            auto_join_text_ing: "nós estavamos",
            auto_join_text_reply: "nós respondemos para",
            auto_join_text_url: "nós dissemos",
            loading_text: "carregando tweets..."
        });
    });
