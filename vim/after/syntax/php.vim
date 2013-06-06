syn keyword phpFunctions get_called_class

" PHP 5.3+ stuff
syntax keyword phpSpecialFunction containedin=ALLBUT,phpComment,phpStringDouble,phpStringSingle,phpIdentifier
 \ __invoke

syn keyword phpConstant __DIR__ contained

syn keyword phpStructure namespace insteadof

syn keyword phpDefine use

" WordPress functions that I like to have colorized

" Plugin API
syn keyword phpFunctions add_action add_filter do_action apply_filters remove_action remove_filter has_action has_filter

" Rewrite API
syn keyword phpFunctions add_rewrite_rule add_rewrite_tag add_rewrite_endpoint add_permastruct add_feed flush_rewrite_rules

" Options API
syn keyword phpFunctions add_option delete_option add_site_option delete_site_option get_option update_option get_site_option update_site_option

" Transients API
syn keyword phpFunctions set_transient get_transient set_site_transient get_site_transient delete_transient delete_site_transient

" Shortcodes API
syn keyword phpFunctions do_shortcode add_shortcode remove_shortcode remove_all_shortcodes shortcode_atts

" Cache API
syn keyword phpFunctions wp_cache_add wp_cache_set wp_cache_delete wp_cache_replace wp_cache_incr wp_cache_decr wp_cache_add_global_groups
