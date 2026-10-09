<?php

namespace App\Http\ViewComposers;

use App\Models\Posts\PostCategoryModel;
use Illuminate\Contracts\View\view;
use App\Models\Settings\SettingModel;
use App\Models\Posts\PostModel;
use App\Models\Posts\PostTypeModel;

class FooterComposer{

	 public function __construct()
    {
        // Dependencies automatically resolved by service container...
    }

	public function compose(View $view){

        $view->with('about',PostModel::where(['id'=>'268','status'=>'1'])->first());
        $view->with('links',PostModel::where(['post_parent'=>'0','status'=>'1'])->orderby('post_order','asc')->take(4)->get());

		}
}
