package MT::Plugin::ActionStreamFix;
use strict;
use MT;
use MT::Plugin;

our $VERSION = '1.12';
our $SCHEMA_VERSION = '0.974';

use base qw( MT::Plugin );

###################################### Init Plugin #####################################

my $plugin = MT::Plugin::ActionStreamFix->new( {
    id => 'ActionStreamFix',
    key => 'actionstreamfix',
    description => '<MT_TRANS phrase=\'_PLUGIN_DESCRIPTION\'>',
    name => 'ActionStreamFix',
    author_name => 'okayama',
    author_link => 'http://weeeblog.net/',
    version => $VERSION,
    schema_version => $SCHEMA_VERSION,
    l10n_class => 'ActionStreamFix::L10N',
} );

MT->add_plugin( $plugin );

sub init_registry {
    my $plugin = shift;
    $plugin->registry( {
        object_types => {
            'author' => {
                'other_profiles' => 'hash meta',
            },
        },
   } );
}

1;