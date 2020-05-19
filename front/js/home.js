/**
 * Created by junyi on 2017/5/27.
 */

$( function(){
      $( '.contentBox' ).pullToRefresh().on( 'pull-to-refresh', function(done){
            var self = this;
            setTimeout( function(){
                  $( self ).pullToRefreshDone();
            }, 2000 )
      } );
      $( ".swiper-container" ).swiper( {
            loop : true, autoplay : 3000
      } );
} );

