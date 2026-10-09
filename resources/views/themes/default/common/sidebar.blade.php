<section class="bg-secondary uk-visible@m" id="section"
             uk-scrollspy="cls: uk-animation-slide-top-small; target:div, h1, p, a;  delay: 100; repeat: false;">
        	<div class="uk-container ">
            <ul class="uk-sub-menu uk-child-width-expand@s uk-text-center uk-grid-collapse" uk-grid>
                @if(has_posts($data->post_type))
                  @foreach(has_posts($data->post_type) as $row)
                    <li>
                        @if($row->external_link)
                            <a href="{{ $row->external_link }}" target="_blank"
                               class="{{(Request::segment(1) == geturl($row['uri'],$row['page_key']))?'active':''}}">{{$row->post_title}} </a>
                        @else
                            <a href="{{ url(geturl($row['uri'], $row['page_key'])) }}"
                                class="{{(Request::segment(1) == geturl($row['uri'],$row['page_key']))?'active':''}}">{{$row->post_title}} </a>
                        @endif
                    </li>                           
                    @endforeach
                @endif
            </ul>
        </div>
    </section>