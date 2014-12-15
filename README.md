# Atom Genesis Snippets

Genesis Framework code snippets for Atom text editor.

If you use WordPress, Genesis, and Atom then this package will be great for you! I've taken some of the most popular and most used Genesis code snippets and compiled them in an easy to use snippet library.

## Code Snippets
Snippets are arranged as the following:

Based on what type of action you are making, then you will use a specific character to begin the snippet.

### Snippet Prefixes
- **aa**: add action or just add in general
- **ra**: remove action
- **c**: cutomize/working with filters
- **l**: adding or changing layout
- **af**: add filter

Genesis Snippets works in that your text that you right to call a snippet is comprised of single letters representing words. For example if you want to remove the entry header, you would type `reh` + `tab`. The `r` states that this is a remove action, the `e` is for `entry` and the `h` is for `header`. I've tried to be as sensible as I can in how I write out these snippets.

### Snippets
The `$1` and `$2` represent placeholders where you will be able to *tab* through once you add the snippet to add your own function names.

| Snippet Code  | Description | Code        |
| ------------- | ----------- | ------------|
| af    | add function | function block with add action |
| aa    | add action | `add_action( '$1', '$2' );` |
| ra    | remove action     | `remove_action( '$1', '$2' );` |
| rast   | remove site title | `remove_action( 'genesis_site_title', 'genesis_seo_site_title' );` |
| aast   | add site title | `add_action( '$1', 'genesis_seo_site_title' );` |
| rasd   | remove site description | `remove_action( 'genesis_site_description', 'genesis_seo_site_description' );` |
| aasd   | add site description | `add_action( '$1', 'genesis_seo_site_description' );` |
| rahw   | remove header widget | `unregister_sidebar( 'header-right' );` |
| raem   | remove entry meta | `remove_action( 'genesis_entry_header', 'genesis_post_info', 12 );` |
| aaem   | add entry meta | `add_action( '$1', 'genesis_post_info' );` |
| raet   | remove entry title | `remove_action( 'genesis_entry_header', 'genesis_do_post_title' );` |
| aaet   | add entry title | `add_action( '$1', 'genesis_do_post_title' );` |
| raei   | remove entry image | `remove_action( 'genesis_entry_header', 'genesis_do_post_format_image', 4 );` |
| aaei   | add entry image | `add_action( '$1', 'genesis_do_post_format_image' );` |
| cfc   | customize footer copy | http://my.studiopress.com/snippets/footer/ |
| rapn   | remove primary nav | `remove_action( 'genesis_after_header', 'genesis_do_nav' );` |
| aapn   | add primary nav | `add_action( '$1', 'genesis_do_nav' );` |
| rasn   | remove secondary nav | `remove_action( 'genesis_after_header', 'genesis_do_subnav' );` |
| aasn   | add secondary nav | `add_action( '$1', '$genesis_do_subnav' );` |
| afbc   | add body class | http://my.studiopress.com/snippets/custom-body-class/ |
| aflfw   | layout full width | `add_filter( 'genesis_pre_get_option_site_layout', '__genesis_return_full_width_content' );` |
| ral    | remove layout (unregister) | `genesis_unregister_layout( '${1 layout-name}' );` |

## Notes
This may not work with other autocomplete packages. I am going to do some testing with major packages like Emmet to see how it handles the prefixes that I am using.
