<?php

// Home
Breadcrumbs::register('home.index', function ($breadcrumbs) {
    $breadcrumbs->push('首頁', url('/'));
});

// Home > Works
Breadcrumbs::register('works.index', function ($breadcrumbs) {
    $breadcrumbs->parent('home.index');
    $breadcrumbs->push('作品', route('works.index'));
});

// Home > Works > Add
Breadcrumbs::register('works.showAddForm', function ($breadcrumbs) {
    $breadcrumbs->parent('works.index');
    $breadcrumbs->push('新增', route('works.showAddForm'));
});

// Home > Works > View
Breadcrumbs::register('works.view', function ($breadcrumbs, $work) {
    $breadcrumbs->parent('works.index');
    $breadcrumbs->push($work->title, route('works.view', $work));
});

// Home > Works > View > Edit
Breadcrumbs::register('works.showEditForm', function ($breadcrumbs, $work) {
    $breadcrumbs->parent('works.view', $work);
    $breadcrumbs->push('修改');
});

// Home > Works > View > Edit
Breadcrumbs::register('workTags.showUpdateForm', function ($breadcrumbs, $work) {
    $breadcrumbs->parent('works.view', $work);
    $breadcrumbs->push('修改');
});

// Home > About
Breadcrumbs::register('home.about', function ($breadcrumbs) {
    $breadcrumbs->parent('home.index');
    $breadcrumbs->push('關於', route('home.about'));
});

// Home > Login
Breadcrumbs::register('login', function ($breadcrumbs) {
    $breadcrumbs->parent('home.index');
    $breadcrumbs->push('登入', route('home.about'));
});
